
from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('home/', views.home, name='home'),

    path('products/', views.category, name='products'),  # url 'products'
    path('products/category/', views.product),     #category.html /category/?name=categoryname
    path('about.html', views.about, name='about'),
    path('services.html', views.services, name='services'),
    path('contact.html', views.contact, name='contact'),
    path('booking.html', views.booking, name='booking'),
    path('member.html', views.member, name='member'),
    path('faq.html', views.faq, name='faq'),
    path('officers.html', views.officers, name='officers'),
    path('fares.html', views.fares, name='fares'),


    
    # path('about/', views.about, name='about'), 
    # path('faq/', views.faq, name='faq'), 
    # path('officers/', views.officers, name='officers'), 
]
    
    