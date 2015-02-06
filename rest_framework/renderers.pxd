#!/usr/bin/env python
# coding: utf-8

cdef class BaseRenderer(object):
    """
    All renderers should extend this class, setting the `media_type`
    and `format` attributes, and override the `.render()` method.
    """

    cpdef bytes render(self, dict data, accepted_media_type=?, renderer_context=?)

cdef class JSONRenderer(BaseRenderer):
    cpdef int get_indent(self, unicode accepted_media_type, dict renderer_context)

cdef class JSONPRenderer(JSONRenderer):
    cpdef unicode get_callback(self, dict renderer_context)
