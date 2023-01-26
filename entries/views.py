from django.shortcuts import render, redirect
from .models import Entry, Comment
from .forms import EntriesForm, CommentForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def entries_list(request):
    entries = Entry.objects.all().order_by('-date')

    p = Paginator(entries, 5)
    page_num = request.GET.get('page', 1)

    try:
        page = p.page(page_num)
    except PageNotAnInteger:
        page = p.page(1)
    except EmptyPage:
        page = p.page(1)

    return render(request, 'entries/entries_list.html', {'entries': page})

def entry(request, id, slug):
    entries = Entry.objects.get(id=id)
    
    if request.method == "POST":  
        comment_form = CommentForm(request.POST)  
        if comment_form.is_valid():  
            try:  
                comment_form.save(commit=False)  
                # return redirect('entries')  
                # comment_form.name = 'karol'
                # comment_form = CommentForm(initial={'name': 'wiesiek'})
                # comment_form.cleaned_data['Name'] = 'karol'

                comment_form.instance.name = request.user
                comment_form.instance.entry = entries
                comment_form.save()  
                comment_form = CommentForm()  
            except:  
                pass  
    else:  
        comment_form = CommentForm()  

    return render(request, 'entries/entry.html', {'entries': entries, 
                                                  'comment_form': comment_form})


def add_new(request):
    
    if request.method == "POST":  
        form = EntriesForm(request.POST)  
        if form.is_valid():  
            try:  
                form.save()  
                return redirect('entries')  
            except:  
                pass  
    else:  
        form = EntriesForm()  
    return render(request,'entries/new_entry.html',{'form': form})  

def destroy(request, id):  
    entry = Entry.objects.get(id=id)  
    entry.delete()  
    return redirect("entries")  

def edit(request, id):  
    entry = Entry.objects.get(id=id)  
    return render(request,'entries/edit.html', {'entry':entry})  

def update(request, id):  
    entry = Entry.objects.get(id=id)  
    form = EntriesForm(request.POST, instance = entry)  
    if form.is_valid():  
        form.save()  
        return redirect("entries")  
    return render(request, 'entries/edit.html', {'entry': entry})  