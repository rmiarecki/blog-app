from django.db import models


class Entry(models.Model):
    title = models.CharField(max_length=50)  
    slug = models.SlugField()
    body = models.TextField()
    date = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'entries'

    def __str__(self):
        return self.title

    def reduction(self):
        return self.body[:280] + '...'
