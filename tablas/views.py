from django.http import HttpResponse
from django.shortcuts import render
from django.core.mail import send_mail
from .models import Product, Category, VanRental, Booking


def home(request):
    van_rentals = VanRental.objects.all().order_by('origin','destination')
    return render(request, 'home.html', {'van_rentals': van_rentals})

def about(request):
    return render(request, 'about.html', {})    

def category(request):
    categories = Category.objects.all().order_by('name')
    return render(request, 'category.html', {'categories': categories})


def product(request):
    category_id = request.GET.get('id')
    categories = Category.objects.filter(id=category_id)
    products = Product.objects.filter(category=category_id)
    return render(request, 'product.html', {'products': products, 'categories':categories})

def service(request):
    return render(request, 'service.html', {})

def contact(request):
    if request.method == 'POST':
        message_name = request.POST['message-name']
        message_email = request.POST['message-email']
        message = request.POST['message']
        # data = {
        #     'message_name': message_name, 
        #     'message_email': message_email, 
        #     'message': message, 
        # }

        # send an email
        send_mail(
            message_name, # subject
            message, # message
            message_email, # From email
            ['villandixon@yahoo.com'], # To email
        )

        # add try catch
        return render(request, 'contact.html', {'message_name': message_name})
    else:
        return render(request, 'contact.html', {})

def booking(request):
    if request.method == 'POST':
        name = request.POST['name']
        phone = request.POST['phone']
        tripfrom = request.POST['tripfrom']
        tripto = request.POST['tripto']
        date = request.POST['date']
        time = request.POST['time']
        pax = request.POST['pax']
        message = request.POST['message']

        data = {
            'name': name,
            'phone': phone,
            'tripfrom': tripfrom,
            'tripto': tripto,
            'date': date,
            'time': time,
            'pax': pax,
            'message': message
        }

        created_obj = Booking.objects.create(
            name = name,
            phone = phone,
            tripfrom = tripfrom,
            tripto = tripto,
            date = date,
            time = time,
            pax = pax,
            message = message
        )
 
        # add try catch
        return render(request, 'booking.html', data)
    else:
        return render(request, 'booking.html', {})

def faq(request):
    return render(request, 'faq.html', {})

def officers(request):
    return render(request, 'officers.html', {})

def bookings(request):
    bookings = Booking.objects.all().order_by('date','name')
    return render(request, 'bookings.html', {'bookings': bookings})