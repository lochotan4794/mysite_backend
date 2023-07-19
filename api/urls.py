from django.urls import path
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
    TokenVerifyView,
)
from . import views

app_name = 'api'

urlpatterns = [
    path('hello/', views.HelloView.as_view(), name='hello'),
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('token/verify/', TokenVerifyView.as_view(), name='token_verify'),
    # path('smo/predict/', views.smo_predict, name='token_verify'),
    # path('lasso/predict/', views.lasso_predict, name='lasso_predict'),
]
