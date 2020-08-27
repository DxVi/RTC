from django.db import models
from django.utils import timezone


class Category(models.Model):
    name = models.CharField(max_length=50)
    description = models.CharField(max_length=255, null=True, blank=True)


class Product(models.Model):
    name = models.CharField(max_length=255)
    price = models.FloatField()
    stock = models.IntegerField()
    image_url = models.CharField(max_length=100)
    category = models.IntegerField(null=True)


class Offer(models.Model):
    code = models.CharField(max_length=10)
    description = models.CharField(max_length=255)
    discount = models.FloatField()

class VanRental(models.Model):
    origin = models.CharField(max_length=255)
    destination = models.CharField(max_length=255)
    rental = models.FloatField()

class Booking(models.Model):
    name = models.CharField(max_length=30)
    phone = models.CharField(max_length=30)
    tripfrom = models.CharField(max_length=30)
    tripto = models.CharField(max_length=30)
    date = models.DateField(default=timezone.now)
    time = models.CharField(max_length=10)
    pax = models.IntegerField(default=0)
    message = models.CharField(max_length=255)

class Members(models.Model):
    queue = models.CharField(max_length=3, default='')
    area = models.CharField(max_length=30, default='')
    title = models.CharField(max_length=10, default='')
    fname = models.CharField(max_length=100, default='')
    mname = models.CharField(max_length=100, default='')
    lname = models.CharField(max_length=100, default='')
    mobile = models.CharField(max_length=100, default='')
    address = models.CharField(max_length=255, default='')
    plate = models.CharField(max_length=10, default='')
    unit = models.CharField(max_length=50, default='')
    orno = models.CharField(max_length=20, default='')
    crno = models.CharField(max_length=20, default='')
    
class Trips(models.Model):
    queue = models.CharField(max_length=3, default='')
    date = models.DateField(default=timezone.now)
    sacrifice = models.BooleanField()

class TripBoard(models.Model):
    queue = models.CharField(max_length=3, default='')
    lname = models.CharField(max_length=100, default='')
    r1 = models.BooleanField()
    r2 = models.BooleanField()
    r3 = models.BooleanField()
    r4 = models.BooleanField()
    r5 = models.BooleanField()

class Logins(models.Model):
    lname = models.CharField(max_length=100, default='')
    plate = models.CharField(max_length=10, default='')
    valid = models.IntegerField()
    date = models.DateField(default=timezone.now) 