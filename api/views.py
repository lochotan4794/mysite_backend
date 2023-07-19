from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
# import numpy as np
import json
from ast import literal_eval
import os
from django.conf import settings
from django.templatetags.static import static


class HelloView(APIView):
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        content = {'message': 'Hello, World!'}
        return Response(content)
    
# @csrf_exempt
# def smo_predict(request):
#     if request.method == "POST":        
#         features = request.POST['features'].split(',')
#         X = np.array(features, dtype=float)
#         W = np.ones(shape=(X.shape[0], 1))
#         prediction = np.dot(W.T, X)
#         return JsonResponse(prediction.tolist(), safe=False)
    
# @csrf_exempt
# def lasso_predict(request):
#     if request.method == "POST" or request.method == "GET":        
#         features = request.POST['features'].split(',')
#         X = np.array(features, dtype=float)
#         # W_url = static('model/Lasso_W.txt')
#         # b_url = static('model/Lasso_b.txt')
#         # W = np.fromfile(W_url)
#         # b = np.fromfile(b_url)
#         W = np.fromfile(os.path.join(settings.STATIC_ROOT, 'model/Lasso_W.txt'))
#         b = np.fromfile(os.path.join(settings.STATIC_ROOT, 'model/Lasso_b.txt'))
#         prediction = np.dot(W.T, X) + b
#         return JsonResponse(prediction.tolist(), safe=False)