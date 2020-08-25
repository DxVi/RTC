
from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('home/', views.home, name='home'),
    path('products/', views.category, name='products'),  # url 'products'
    path('products/category/', views.product),     #category.html /category/?name=categoryname
    path('about/', views.about, name='about'), 
    path('faq/', views.faq, name='faq'), 
    path('officers/', views.officers, name='officers'), 
]
    
    