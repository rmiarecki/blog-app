from django.shortcuts import render, redirect

from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages

from .forms import RegisterUserForm

# Create your views here.

def login_page(request):
    if request.method=='POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            # Redirect to a success page.
            messages.success(request, ('Login success'))
            return redirect('about')
        else:
            # Return an 'invalid login' error message.
            messages.success(request, ('Wrong login or password. Try again...'))
            return redirect('login')
    else:
        return render(request, 'login.html', {})

def logout_user(request):
    logout(request)
    return redirect('entries')

def register_user(request):
    if request.method=='POST':
        form = RegisterUserForm(request.POST)
        if form.is_valid():
            form.save()

            username = form.cleaned_data['username']
            password = form.cleaned_data['password1']
            user = authenticate(username=username, password=password)
            login(request, user)
            messages.success(request, ('Registration success'))
            return redirect('entries')
    else:
        form  = RegisterUserForm()
    return render(request, 'register.html', {'form': form})