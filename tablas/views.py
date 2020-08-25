from django.http import HttpResponse
from django.shortcuts import render
from .models import Product, Category


def home(request):
    return render(request, 'home.html', {})


def category(request):
    categories = Category.objects.all().order_by('name')
    return render(request, 'category.html', {'categories': categories})


def product(request):
    category_id = request.GET.get('id')
    categories = Category.objects.filter(id=category_id)
    products = Product.objects.filter(category=category_id)
    return render(request, 'product.html', {'products': products, 'categories':categories})




def about(request):
    return render(request, 'about.html', {})


def faq(request):
    return render(request, 'faq.html', {})


def officers(request):
    return render(request, 'officers.html', {})

