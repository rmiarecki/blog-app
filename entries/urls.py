from django.urls import path
from . import views

urlpatterns = [
    path('', views.entries_list, name='entries'),
    path('entry/<int:id>/<slug:slug>', views.entry),
]
