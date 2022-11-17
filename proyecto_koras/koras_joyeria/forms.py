from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class UserRegisterForm(UserCreationForm):
    first_name = forms.CharField(label='Nombre', max_length=50)
    last_name = forms.CharField(label='Apellido',  max_length=50)
    email = forms.EmailField(label='Correo electronico')
    password1 = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirmar contraseña', widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = Userfields = ['first_name', 'last_name', 'email', 'username','password1', 'password2']
        help_texts = {k:"" for k in fields}