#!/usr/bin/env python
# coding: utf-8
from rest_framework cimport views

cdef class GenericAPIView(views.APIView):
    cpdef dict get_serializer_context(self)