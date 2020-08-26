from django.contrib import admin
from .models import Category, Product, Offer, VanRental


class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'description')


class ProductAdmin(admin.ModelAdmin):
    list_display = ('category','name', 'price', 'stock','image_url')


class OfferAdmin(admin.ModelAdmin):
    list_display = ('code', 'discount')

class VanRentalAdmin(admin.ModelAdmin):
    list_display = ('origin', 'destination', 'rental')

admin.site.register(Category, CategoryAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(Offer, OfferAdmin)
admin.site.register(VanRental, VanRentalAdmin)

