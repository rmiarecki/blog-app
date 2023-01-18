from django import forms
from entries.models import Entry

class EntriesForm(forms.ModelForm):
    class Meta:
        model = Entry
        fields = '__all__'