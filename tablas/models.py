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