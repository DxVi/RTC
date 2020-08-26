
from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('home/', views.home, name='home'),

    path('products/', views.category, name='products'),  # url 'products'
    path('products/category/', views.product),     #category.html /category/?name=categoryname
    path('about.html', views.about, name='about'),
    path('service.html', views.service, name='service'),
    path('contact.html', views.contact, name='contact'),
    path('booking.html', views.booking, name='booking'),
    path('bookings.html', views.bookings, name='bookings'),
    path('faq.html', views.faq, name='faq'),
    path('officers.html', views.officers, name='officers'),


    
    # path('about/', views.about, name='about'), 
    # path('faq/', views.faq, name='faq'), 
    # path('officers/', views.officers, name='officers'), 
]
    
    