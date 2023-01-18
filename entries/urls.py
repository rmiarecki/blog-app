from django.urls import path
from . import views

urlpatterns = [
    path('', views.entries_list, name='entries'),
    path('entry/<int:id>/<slug:slug>', views.entry),
    path('new', views.add_new, name='new'),
    path('destroy/<int:id>', views.destroy, name='destroy'),
    path('edit/<int:id>', views.edit, name='edit'),
    path('update/<int:id>', views.update, name='update'),
]
