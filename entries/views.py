from django.shortcuts import render, redirect
from .models import Entry
from .forms import EntriesForm
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
    entries = Entry.objects.get(id=id,)
    return render(request, 'entries/entry.html', {'entries': entries})


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

