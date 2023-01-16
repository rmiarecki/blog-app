from django.shortcuts import render
from .models import Entry

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
    return render(request, 'entries/entry.html', {'entries': entries})