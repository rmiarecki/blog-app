from django import forms
from entries.models import Entry, Comment

class EntriesForm(forms.ModelForm):
    class Meta:
        model = Entry
        fields = '__all__'

class CommentForm(forms.ModelForm):
    content = forms.CharField(widget=forms.Textarea(attrs={
        'rows': '5', 'class':'form-control'
    }))
    class Meta:
        model = Comment
        fields = ['content']