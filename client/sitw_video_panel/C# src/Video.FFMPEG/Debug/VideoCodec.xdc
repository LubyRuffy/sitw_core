<?xml version="1.0"?><doc>
<members>
<member name="F:AForge.Video.FFMPEG.VideoCodec.Default" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="26">
<summary>
Default video codec, which FFmpeg library selects for the specified file format.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.MPEG4" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="30">
<summary>
MPEG-4 part 2.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.WMV1" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="34">
<summary>
Windows Media Video 7.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.WMV2" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="38">
<summary>
Windows Media Video 8.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.MSMPEG4v2" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="42">
<summary>
MPEG-4 part 2 Microsoft variant version 2.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.MSMPEG4v3" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="46">
<summary>
MPEG-4 part 2 Microsoft variant version 3.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.H263P" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="50">
<summary>
H.263+ / H.263-1998 / H.263 version 2.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.FLV1" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="54">
<summary>
Flash Video (FLV) / Sorenson Spark / Sorenson H.263.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.MPEG2" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="58">
<summary>
MPEG-2 part 2.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.Raw" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="62">
<summary>
Raw (uncompressed) video.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.H264" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="66">
<summary>
H264 video.
</summary>
</member>
<member name="F:AForge.Video.FFMPEG.VideoCodec.MJPEG" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="70">
<summary>
MJPEG video.
</summary>
</member>
<member name="T:AForge.Video.FFMPEG.VideoCodec" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\videocodec.h" line="21">
<summary>
Enumeration of some video codecs from FFmpeg library, which are available for writing video files.
</summary>
</member>
<member name="M:libffmpeg.avutil_version" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="24">
@file
external API header

 @mainpage

 @section libav_intro Introduction

 This document describe the usage of the different libraries
 provided by FFmpeg.

 @li @ref libavc "libavcodec" encoding/decoding library
 @li @subpage libavfilter graph based frame editing library
 @li @ref libavf "libavformat" I/O and muxing/demuxing library
 @li @ref lavu "libavutil" common utility library
 @li @subpage libpostproc post processing library
 @li @subpage libswscale  color conversion and scaling library


 @defgroup lavu Common utility functions

 @brief
 libavutil contains the code shared across all the other FFmpeg
 libraries

 @note In order to use the functions provided by avutil you must include
 the specific header.

 @{

 @defgroup lavu_crypto Crypto and Hashing

 @{
 @}

 @defgroup lavu_math Maths
 @{

 @}

 @defgroup lavu_string String Manipulation

 @{

 @}

 @defgroup lavu_mem Memory Management

 @{

 @}

 @defgroup lavu_data Data Structures
 @{

 @}

 @defgroup lavu_audio Audio related

 @{

 @}

 @defgroup lavu_error Error Codes

 @{

 @}

 @defgroup lavu_misc Other

 @{

 @defgroup lavu_internal Internal

 Not exported functions, for internal usage only

 @{

 @}

 @defgroup preproc_misc Preprocessor String Macros

 String manipulation macros

 @{

@}

 @defgroup version_utils Library Version Macros

 Useful to check and match library version in order to maintain
 backward compatibility.

 @{

 @}

 @defgroup lavu_ver Version and Build diagnostics

 Macros and function useful to check at compiletime and at runtime
 which version of libavutil is in use.

 @{

 @}

 @defgroup depr_guards Deprecation guards
 Those FF_API_* defines are not part of public API.
 They may change, break or disappear at any time.

 They are used mostly internally to mark code that will be removed
 on the next major version.

 @{

@}

@addtogroup lavu_ver
@{

Return the LIBAVUTIL_VERSION_INT constant.

</member>
<member name="M:libffmpeg.avutil_configuration" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="211">
Return the libavutil build-time configuration.

</member>
<member name="M:libffmpeg.avutil_license" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="216">
Return the libavutil license.

</member>
<member name="T:libffmpeg.AVMediaType" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="221">
@}

@addtogroup lavu_media Media Type
@brief Media Type

</member>
<member name="M:libffmpeg.av_get_media_type_string(libffmpeg.AVMediaType)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="240">
Return a string describing the media_type enum, NULL if media_type
is unknown.

</member>
<member name="T:libffmpeg.AVPictureType" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="246">
 @defgroup lavu_const Constants
 @{

 @defgroup lavu_enc Encoding specific

 @note those definition should move to avcodec
 @{

 @}
 @defgroup lavu_time Timestamp specific

 FFmpeg internal timebase and timestamp definitions

 @{

 @brief Undefined timestamp value

 Usually reported by demuxer that work on containers that do not provide
 either pts or dts.

Internal time base represented as integer

Internal time base represented as fractional value

 @}
 @}
 @defgroup lavu_picture Image related

 AVPicture types, pixel formats and basic image planes manipulation.

 @{

</member>
<member name="M:libffmpeg.av_get_picture_type_char(libffmpeg.AVPictureType)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="314">
 Return a single letter to describe the given picture type
 pict_type.

 @param[in] pict_type the picture type @return a single character
 representing the picture type, '?' if pict_type is unknown

</member>
<member name="M:libffmpeg.av_x_if_null(System.Void!System.Runtime.CompilerServices.IsConst*,System.Void!System.Runtime.CompilerServices.IsConst*)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="323">
@}

Return x default pointer in case p is NULL.

</member>
<member name="T:libffmpeg._iobuf" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="21">
@file
common internal and external API header

</member>
<member name="F:libffmpeg.ff_log2_tab" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\attributes.h" line="21">
@file
Macro definitions for various function/variable attributes

Disable warnings about deprecated features
This is useful for sections of code kept for backward compatibility and
scheduled for removal.

Mark a variable as used and prevent the compiler from optimizing it
away.  This is useful for variables accessed only from inline
assembler without the compiler being aware.

</member>
<member name="M:libffmpeg.av_clip_c(System.Int32,System.Int32,System.Int32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="21">
@file
common internal and external API header

Clip a signed integer value into the amin-amax range.
@param a value to clip
@param amin minimum value of the clip range
@param amax maximum value of the clip range
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_uint8_c(System.Int32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="119">
Clip a signed integer value into the 0-255 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_int8_c(System.Int32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="130">
Clip a signed integer value into the -128,127 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_uint16_c(System.Int32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="141">
Clip a signed integer value into the 0-65535 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_int16_c(System.Int32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="152">
Clip a signed integer value into the -32768,32767 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clipl_int32_c(System.Int64)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="163">
Clip a signed 64-bit integer value into the -2147483648,2147483647 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_uintp2_c(System.Int32,System.Int32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="174">
Clip a signed integer to an unsigned power of two range.
@param  a value to clip
@param  p bit position to clip at
@return clipped value

</member>
<member name="M:libffmpeg.av_clipf_c(System.Single,System.Single,System.Single)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="186">
Clip a float value into the amin-amax range.
@param a value to clip
@param amin minimum value of the clip range
@param amax maximum value of the clip range
@return clipped value

</member>
<member name="M:libffmpeg.av_ceil_log2_c(System.Int32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="200">
Compute ceil(log2(x)).
 * @param x value used to compute ceil(log2(x))
 * @return computed ceiling of log2(x)

</member>
<member name="M:libffmpeg.av_popcount_c(System.UInt32)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="209">
Count number of bits set to one in x
@param x value to count bits of
@return the number of bits set to one in x

</member>
<member name="M:libffmpeg.av_strerror(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\common.h" line="226">
 Convert a UTF-8 character (up to 4 bytes) to its 32-bit UCS-4 encoded form.

 @param val      Output value, must be an lvalue of type uint32_t.
 @param GET_BYTE Expression reading one byte from the input.
                 Evaluated up to 7 times (4 for the currently
                 assigned Unicode range).  With a memory buffer
                 input, this could be *ptr++.
 @param ERROR    Expression to be evaluated on invalid input,
                 typically a goto statement.

 Convert a UTF-16 character (2 or 4 bytes) to its 32-bit UCS-4 encoded form.

 @param val       Output value, must be an lvalue of type uint32_t.
 @param GET_16BIT Expression returning two bytes of UTF-16 data converted
                  to native byte order.  Evaluated one or two times.
 @param ERROR     Expression to be evaluated on invalid input,
                  typically a goto statement.

@def PUT_UTF8(val, tmp, PUT_BYTE)
Convert a 32-bit Unicode character to its UTF-8 encoded form (up to 4 bytes long).
@param val is an input-only argument and should be of type uint32_t. It holds
a UCS-4 encoded Unicode character that is to be converted to UTF-8. If
val is given as a function it is executed only once.
@param tmp is a temporary variable and should be of type uint8_t. It
represents an intermediate value during conversion that is to be
output by PUT_BYTE.
@param PUT_BYTE writes the converted UTF-8 bytes to any proper destination.
It could be a function or a statement, and uses tmp as the input byte.
For example, PUT_BYTE could be "*output++ = tmp;" PUT_BYTE will be
executed up to 4 times for values in the valid UTF-8 range and up to
7 times in the general case, depending on the length of the converted
Unicode character.

@def PUT_UTF16(val, tmp, PUT_16BIT)
Convert a 32-bit Unicode character to its UTF-16 encoded form (2 or 4 bytes).
@param val is an input-only argument and should be of type uint32_t. It holds
a UCS-4 encoded Unicode character that is to be converted to UTF-16. If
val is given as a function it is executed only once.
@param tmp is a temporary variable and should be of type uint16_t. It
represents an intermediate value during conversion that is to be
output by PUT_16BIT.
@param PUT_16BIT writes the converted UTF-16 data to any proper destination
in desired endianness. It could be a function or a statement, and uses tmp
as the input byte.  For example, PUT_BYTE could be "*output++ = tmp;"
PUT_BYTE will be executed 1 or 2 times depending on input character.

@file
memory handling functions

@file
Macro definitions for various function/variable attributes

@file
error code definitions

 @addtogroup lavu_error

 @{

 Put a description of the AVERROR code errnum in errbuf.
 In case of failure the global variable errno is set to indicate the
 error. Even in case of failure av_strerror() will print a generic
 error message indicating the errnum provided to errbuf.

 @param errnum      error code to describe
 @param errbuf      buffer to which description is written
 @param errbuf_size the size in bytes of errbuf
 @return 0 on success, a negative value if a description for errnum
 cannot be found

</member>
<member name="M:libffmpeg.av_malloc(System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\error.h" line="75">
@}

@addtogroup lavu_mem
@{

Allocate a block of size bytes with alignment suitable for all
memory accesses (including vectors if available on the CPU).
@param size Size in bytes for the memory block to be allocated.
@return Pointer to the allocated block, NULL if the block cannot
be allocated.
@see av_mallocz()

</member>
<member name="M:libffmpeg.av_realloc(System.Void*,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="82">
Allocate or reallocate a block of memory.
If ptr is NULL and size &gt; 0, allocate a new block. If
size is zero, free the memory block pointed to by ptr.
@param ptr Pointer to a memory block already allocated with
av_malloc(z)() or av_realloc() or NULL.
@param size Size in bytes for the memory block to be allocated or
reallocated.
@return Pointer to a newly reallocated block or NULL if the block
cannot be reallocated or the function is used to free the memory block.
@see av_fast_realloc()

</member>
<member name="M:libffmpeg.av_realloc_f(System.Void*,System.UInt32,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="96">
Allocate or reallocate a block of memory.
This function does the same thing as av_realloc, except:
- It takes two arguments and checks the result of the multiplication for
  integer overflow.
- It frees the input block in case of failure, thus avoiding the memory
  leak with the classic "buf = realloc(buf); if (!buf) return -1;".

</member>
<member name="M:libffmpeg.av_free(System.Void*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="106">
Free a memory block which has been allocated with av_malloc(z)() or
av_realloc().
@param ptr Pointer to the memory block which should be freed.
@note ptr = NULL is explicitly allowed.
@note It is recommended that you use av_freep() instead.
@see av_freep()

</member>
<member name="M:libffmpeg.av_mallocz(System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="116">
Allocate a block of size bytes with alignment suitable for all
memory accesses (including vectors if available on the CPU) and
zero all the bytes of the block.
@param size Size in bytes for the memory block to be allocated.
@return Pointer to the allocated block, NULL if it cannot be allocated.
@see av_malloc()

</member>
<member name="M:libffmpeg.av_calloc(System.UInt32,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="126">
Allocate a block of nmemb * size bytes with alignment suitable for all
memory accesses (including vectors if available on the CPU) and
zero all the bytes of the block.
The allocation will fail if nmemb * size is greater than or equal
to INT_MAX.
@param nmemb
@param size
@return Pointer to the allocated block, NULL if it cannot be allocated.

</member>
<member name="M:libffmpeg.av_strdup(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="138">
Duplicate the string s.
@param s string to be duplicated
@return Pointer to a newly allocated string containing a
copy of s or NULL if the string cannot be allocated.

</member>
<member name="M:libffmpeg.av_freep(System.Void*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="146">
Free a memory block which has been allocated with av_malloc(z)() or
av_realloc() and set the pointer pointing to it to NULL.
@param ptr Pointer to the pointer to the memory block which should
be freed.
@see av_free()

</member>
<member name="M:libffmpeg.av_dynarray_add(System.Void*,System.Int32*,System.Void*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="155">
 Add an element to a dynamic array.

 @param tab_ptr Pointer to the array.
 @param nb_ptr  Pointer to the number of elements in the array.
 @param elem    Element to be added.

</member>
<member name="M:libffmpeg.av_size_mult(System.UInt32,System.UInt32,System.UInt32*)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mem.h" line="164">
Multiply two size_t values checking for overflow.
@return  0 if success, AVERROR(EINVAL) if overflow.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVRational'. -->
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_cmp_q(libffmpeg.AVRational,libffmpeg.AVRational)'. -->
<member name="M:libffmpeg.av_q2d(libffmpeg.AVRational)" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="64">
Convert rational to double.
@param a rational to convert
@return (double) a

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_reduce(System.Int32*,System.Int32*,System.Int64,System.Int64,System.Int64)'. -->
<member name="M:libffmpeg.av_mul_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="85">
Multiply two rationals.
@param b first rational
@param c second rational
@return b*c

</member>
<member name="M:libffmpeg.av_div_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="93">
Divide one rational by another.
@param b first rational
@param c second rational
@return b/c

</member>
<member name="M:libffmpeg.av_add_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="101">
Add two rationals.
@param b first rational
@param c second rational
@return b+c

</member>
<member name="M:libffmpeg.av_sub_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="109">
Subtract one rational from another.
@param b first rational
@param c second rational
@return b-c

</member>
<member name="M:libffmpeg.av_d2q(System.Double,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="117">
 Convert a double precision floating point number to a rational.
 inf is expressed as {1,0} or {-1,0} depending on the sign.

 @param d double to convert
 @param max the maximum allowed numerator and denominator
 @return (AVRational) d

</member>
<member name="M:libffmpeg.av_nearer_q(libffmpeg.AVRational,libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="127">
@return 1 if q1 is nearer to q than q2, -1 if q2 is nearer
than q1, 0 if they have the same distance.

</member>
<member name="M:libffmpeg.av_find_nearest_q_idx(libffmpeg.AVRational,libffmpeg.AVRational!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="133">
Find the nearest value in q_list to q.
@param q_list an array of rationals terminated by {0, 0}
@return the index of the nearest value found in the array

</member>
<member name="T:libffmpeg.AVRounding" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\rational.h" line="140">
@}

@addtogroup lavu_math
@{

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_gcd(System.Int64,System.Int64)'. -->
<member name="M:libffmpeg.av_rescale(System.Int64,System.Int64,System.Int64)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mathematics.h" line="81">
Rescale a 64-bit integer with rounding to nearest.
A simple a*b/c isn't possible as it can overflow.

</member>
<member name="M:libffmpeg.av_rescale_rnd(System.Int64,System.Int64,System.Int64,libffmpeg.AVRounding)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mathematics.h" line="87">
Rescale a 64-bit integer with specified rounding.
A simple a*b/c isn't possible as it can overflow.

</member>
<member name="M:libffmpeg.av_rescale_q(System.Int64,libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mathematics.h" line="93">
Rescale a 64-bit integer by 2 rational numbers.

</member>
<member name="M:libffmpeg.av_compare_ts(System.Int64,libffmpeg.AVRational,System.Int64,libffmpeg.AVRational)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mathematics.h" line="98">
Compare 2 timestamps each in its own timebases.
The result of the function is undefined if one of the timestamps
is outside the int64_t range when represented in the others timebase.
@return -1 if ts_a is before ts_b, 1 if ts_a is after ts_b or 0 if they represent the same position

</member>
<member name="M:libffmpeg.av_compare_mod(System.UInt64,System.UInt64,System.UInt64)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\mathematics.h" line="106">
 Compare 2 integers modulo mod.
 That is we compare integers a and b for which only the least
 significant log2(mod) bits are known.

 @param mod must be a power of 2
 @return a negative value if a is smaller than b
         a positive value if a is greater than b
         0                if a equals          b

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVExtFloat'. -->
<member name="T:libffmpeg.AVClass" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\attributes.h" line="21">
@file
Macro definitions for various function/variable attributes

Describe the class of an AVClass context structure. That is an
arbitrary struct of which the first field is a pointer to an
AVClass struct (e.g. AVCodecContext, AVFormatContext etc.).

</member>
<member name="F:libffmpeg.AVClass.class_name" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="34">
The name of the class; usually it is the same name as the
context structure type to which the AVClass is associated.

</member>
<member name="F:libffmpeg.AVClass.item_name" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="40">
A pointer to a function which returns the name of a context
instance ctx associated with the class.

</member>
<member name="T:libffmpeg.AVOption" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="46">
 a pointer to the first option specified in the class if any or NULL

 @see av_set_default_options()

</member>
<member name="F:libffmpeg.AVClass.version" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="53">
LIBAVUTIL_VERSION with which this structure was created.
This is used to allow fields to be added without requiring major
version bumps everywhere.

</member>
<member name="F:libffmpeg.AVClass.log_level_offset_offset" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="61">
Offset in the structure where log_level_offset is stored.
0 means there is no such variable

</member>
<member name="F:libffmpeg.AVClass.parent_log_context_offset" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="67">
Offset in the structure where a pointer to the parent context for loging is stored.
for example a decoder that uses eval.c could pass its AVCodecContext to eval as such
parent context. And a av_log() implementation could then display the parent context
can be NULL of course

</member>
<member name="F:libffmpeg.AVClass.child_next" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="75">
Return next AVOptions-enabled child or NULL

</member>
<member name="T:libffmpeg.AVClass" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="80">
 Return an AVClass corresponding to next potential
 AVOptions-enabled child.

 The difference between child_next and this is that
 child_next iterates over _already existing_ objects, while
 child_class_next iterates over _all possible_ children.

</member>
<member name="M:libffmpeg.av_log(System.Void*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="95">
Something went really wrong and we will crash now.

Something went wrong and recovery is not possible.
For example, no header was found for a format which depends
on headers or an illegal combination of parameters is used.

Something went wrong and cannot losslessly be recovered.
However, not all future data is affected.

Something somehow does not look correct. This may or may not
lead to problems. An example would be the use of '-vstrict -2'.

Stuff which is only useful for libav* developers.

 Send the specified message to the log if the level is less than or equal
 to the current av_log_level. By default, all logging messages are sent to
 stderr. This behavior can be altered by setting a different av_vlog callback
 function.

 @param avcl A pointer to an arbitrary struct of which the first field is a
 pointer to an AVClass struct.
 @param level The importance level of the message, lower values signifying
 higher importance.
 @param fmt The format string (printf-compatible) that specifies how
 subsequent arguments are converted to output.
 @see av_vlog

</member>
<member name="M:libffmpeg.av_log_set_flags(System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\log.h" line="150">
av_dlog macros
Useful to print debug messages that shouldn't get compiled in normally.

Skip repeated messages, this requires the user app to use av_log() instead of
(f)printf as the 2 would otherwise interfere and lead to
"Last message repeated x times" messages below (f)printf messages with some
bad luck.
Also to receive the last, "last repeated" line if any, the user app must
call av_log(NULL, AV_LOG_QUIET, "%s", ""); at the end

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.PixelFormat'. -->
<member name="T:libffmpeg.AVSampleFormat" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\avutil.h" line="343">
@}
@}

all in native-endian format

</member>
<member name="M:libffmpeg.av_get_sample_fmt_name(libffmpeg.AVSampleFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="44">
Return the name of sample_fmt, or NULL if sample_fmt is not
recognized.

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="50">
Return a sample format corresponding to name, or AV_SAMPLE_FMT_NONE
on error.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVSampleFormat'. -->
<member name="M:libffmpeg.av_get_sample_fmt_string(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,libffmpeg.AVSampleFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="64">
 Generate a string corresponding to the sample format with
 sample_fmt, or a header if sample_fmt is negative.

 @param buf the buffer where to write the string
 @param buf_size the size of buf
 @param sample_fmt the number of the sample format to print the
 corresponding info string, or a negative value to print the
 corresponding header.
 @return the pointer to the filled buffer or NULL if sample_fmt is
 unknown or in case of other errors

</member>
<member name="M:libffmpeg.av_get_bits_per_sample_fmt(libffmpeg.AVSampleFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="79">
@deprecated Use av_get_bytes_per_sample() instead.

</member>
<member name="M:libffmpeg.av_get_bytes_per_sample(libffmpeg.AVSampleFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="86">
 Return number of bytes per sample.

 @param sample_fmt the sample format
 @return number of bytes per sample or zero if unknown for the given
 sample format

</member>
<member name="M:libffmpeg.av_sample_fmt_is_planar(libffmpeg.AVSampleFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="95">
 Check if the sample format is planar.

 @param sample_fmt the sample format to inspect
 @return 1 if the sample format is planar, 0 if it is interleaved

</member>
<member name="M:libffmpeg.av_samples_get_buffer_size(System.Int32*,System.Int32,System.Int32,libffmpeg.AVSampleFormat,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="103">
 Get the required buffer size for the given audio parameters.

 @param[out] linesize calculated linesize, may be NULL
 @param nb_channels   the number of channels
 @param nb_samples    the number of samples in a single channel
 @param sample_fmt    the sample format
 @return              required buffer size, or negative error code on failure

</member>
<member name="M:libffmpeg.av_samples_fill_arrays(System.Byte**,System.Int32*,System.Byte*,System.Int32,System.Int32,libffmpeg.AVSampleFormat,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\samplefmt.h" line="115">
 Fill channel data pointers and linesize for samples with sample
 format sample_fmt.

 The pointers array is filled with the pointers to the samples data:
 for planar, set the start point of each channel's data within the buffer,
 for packed, set the start point of the entire buffer only.

 The linesize array is filled with the aligned size of each channel's data
 buffer for planar layout, or the aligned size of the buffer for all channels
 for packed layout.

 @param[out] audio_data  array to be filled with the pointer for each channel
 @param[out] linesize    calculated linesize
 @param buf              the pointer to a buffer containing the samples
 @param nb_channels      the number of channels
 @param nb_samples       the number of samples in a single channel
 @param sample_fmt       the sample format
 @param align            buffer size alignment (1 = no alignment required)
 @return                 0 on success or a negative error code on failure

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_samples_alloc(System.Byte**,System.Int32*,System.Int32,System.Int32,libffmpeg.AVSampleFormat,System.Int32)'. -->
<member name="M:libffmpeg.av_get_cpu_flags" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\cpu.h" line="46">
Return the flags which specify extensions supported by the CPU.

</member>
<member name="M:libffmpeg.av_force_cpu_flags(System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\cpu.h" line="52">
Disables cpu detection and forces the specified flags.

</member>
<member name="M:libffmpeg.av_dict_get(libffmpeg.AVDictionary*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVDictionaryEntry!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\dict.h" line="84">
 Get a dictionary entry with matching key.

 @param prev Set to the previous matching element to find the next.
             If set to NULL the first matching element is returned.
 @param flags Allows case as well as suffix-insensitive comparisons.
 @return Found entry or NULL, changing key or value leads to undefined behavior.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_dict_set(libffmpeg.AVDictionary**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)'. -->
<member name="M:libffmpeg.av_dict_copy(libffmpeg.AVDictionary**,libffmpeg.AVDictionary*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\dict.h" line="107">
Copy entries from one AVDictionary struct into another.
@param dst pointer to a pointer to a AVDictionary struct. If *dst is NULL,
           this function will allocate a struct for you and put it in *dst
@param src pointer to source AVDictionary struct
@param flags flags to use when setting entries in *dst
@note metadata is read using the AV_DICT_IGNORE_SUFFIX flag

</member>
<member name="M:libffmpeg.av_dict_free(libffmpeg.AVDictionary**)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\dict.h" line="117">
Free all the memory allocated for an AVDictionary struct
and all keys and values.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.CodecID'. -->
<member name="M:libffmpeg.av_get_channel_layout(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\audioconvert.h" line="27">
@file
audio conversion routines

@addtogroup lavu_audio
@{

@defgroup channel_masks Audio channel masks
@{

Channel mask value used for AVCodecContext.request_channel_layout
    to indicate that the user requests the channel order of the decoder output
    to be the native codec channel order. 
@}
@defgroup channel_mask_c Audio channel convenience macros
@{

@}

 * Return a channel layout id that matches name, 0 if no match.
 * name can be one or several of the following notations,
 * separated by '+' or '|':
 * - the name of an usual channel layout (mono, stereo, 4.0, quad, 5.0,
 *   5.0(side), 5.1, 5.1(side), 7.1, 7.1(wide), downmix);
 * - the name of a single channel (FL, FR, FC, LFE, BL, BR, FLC, FRC, BC,
 *   SL, SR, TC, TFL, TFC, TFR, TBL, TBC, TBR, DL, DR);
 * - a number of channels, in decimal, optionnally followed by 'c', yielding
 *   the default channel layout for that number of channels (@see
 *   av_get_default_channel_layout);
 * - a channel layout mask, in hexadecimal starting with "0x" (see the
 *   AV_CH_* macros).
 + Example: "stereo+FC" = "2+FC" = "2c+1c" = "0x7"

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_get_channel_layout_string(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.Int32,System.UInt64)'. -->
<member name="M:libffmpeg.av_get_channel_layout_nb_channels(System.UInt64)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\audioconvert.h" line="118">
Return the number of channels in the channel layout.

</member>
<member name="M:libffmpeg.av_get_default_channel_layout(System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavutil\audioconvert.h" line="123">
Return default channel layout for a given number of channels.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.Motion_Est_ID'. -->
<member name="T:libffmpeg.AVChromaLocation" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="579">
X   X      3 4 X      X are luma samples,
           1 2        1-6 are possible chroma positions
X   X      5 6 X      0 is undefined/unknown position

</member>
<member name="T:libffmpeg.AVLPCType" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="596">
LPC analysis type

</member>
<member name="T:libffmpeg.AVPanScan" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="641">
The parent program guarantees that the input for B-frames containing
streams is not written to for at least s-&gt;max_b_frames+1 frames, if
this is not set the input will be copied.

@defgroup deprecated_flags Deprecated codec flags
Use corresponding private codec options instead.
@{

@}

Codec uses get_buffer() for allocating buffers and supports custom allocators.
If not set, it might not use get_buffer() at all or use operations that
assume the buffer was allocated by avcodec_default_get_buffer.

Codec has a nonzero delay and needs to be fed with avpkt-&gt;data=NULL,
avpkt-&gt;size=0 at the end to get the delayed data until the decoder no longer
returns frames. If this is not set, the codec is guaranteed to never be fed
with NULL data.

Codec can be fed a final frame with a smaller size.
This can be used to prevent truncation of the last audio samples.

Codec can export data for HW decoding (VDPAU).

Codec can output multiple frames per AVPacket
Normally demuxers return one frame at a time, demuxers which do not do
are connected to a parser to split what they return into proper frames.
This flag is reserved to the very rare category of codecs which have a
bitstream that cannot be split into frames without timeconsuming
operations like full decoding. Demuxers carring such bitstreams thus
may return multiple frames in a packet. This has many disadvantages like
prohibiting stream copy in many cases thus it should only be considered
as a last resort.

Codec is experimental and is thus avoided in favor of non experimental
encoders

Codec should fill in channel configuration and samplerate instead of container

Codec is able to deal with negative linesizes

Codec supports frame-level multithreading.

Codec supports slice-based (or partition-based) multithreading.

Codec is lossless.

Pan Scan area.
This specifies the area which should be displayed.
Note there may be multiple such areas for one frame.

</member>
<member name="F:libffmpeg.AVPanScan.id" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="823">
id
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVPanScan.width" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="830">
width and height in 1/16 pel
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVPanScan.position" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="838">
position of the top left corner in 1/16 pel for up to 3 fields/frames
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVPacket.pts" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="877">
Presentation timestamp in AVStream-&gt;time_base units; the time at which
the decompressed packet will be presented to the user.
Can be AV_NOPTS_VALUE if it is not stored in the file.
pts MUST be larger or equal to dts as presentation cannot happen before
decompression, unless one wants to view hex dumps. Some formats misuse
the terms dts and pts/cts to mean something different. Such timestamps
must be converted to true pts/dts before they are stored in AVPacket.

</member>
<member name="F:libffmpeg.AVPacket.dts" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="887">
Decompression timestamp in AVStream-&gt;time_base units; the time at which
the packet is decompressed.
Can be AV_NOPTS_VALUE if it is not stored in the file.

</member>
<member name="F:libffmpeg.AVPacket.flags" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="896">
A combination of AV_PKT_FLAG values

</member>
<member name="F:libffmpeg.AVPacket.duration" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="911">
Duration of this packet in AVStream-&gt;time_base units, 0 if unknown.
Equals next_pts - this_pts in presentation order.

</member>
<member name="F:libffmpeg.AVPacket.convergence_duration" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="920">
 Time difference in AVStream-&gt;time_base units from the pts of this
 packet to the point at which the output from the decoder has converged
 independent from the availability of previous frames. That is, the
 frames are virtually identical no matter if decoding started from
 the very first frame or from this keyframe.
 Is AV_NOPTS_VALUE if unknown.
 This field is not the display duration of the current packet.
 This field has no meaning if the packet does not have AV_PKT_FLAG_KEY
 set.

 The purpose of this field is to allow seeking in streams that have no
 keyframes in the conventional sense. It corresponds to the
 recovery point SEI in H.264 and match_time_delta in NUT. It is also
 essential for some types of subtitle streams to ensure that all
 subtitles are correctly displayed after seeking.

</member>
<member name="T:libffmpeg.AVFrame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="942">
Audio Video Frame.
New fields can be added to the end of AVFRAME with minor version
bumps. Removal, reordering and changes to existing fields require
a major version bump.
sizeof(AVFrame) must not be used outside libav*.

</member>
<member name="F:libffmpeg.AVFrame.data" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="950">
pointer to the picture planes.
This might be different from the first allocated byte
- encoding:
- decoding:

</member>
<member name="F:libffmpeg.AVFrame.base" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="958">
pointer to the first allocated byte of the picture. Can be used in get_buffer/release_buffer.
This isn't used by libavcodec unless the default get/release_buffer() is used.
- encoding:
- decoding:

</member>
<member name="F:libffmpeg.AVFrame.key_frame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="965">
1 -&gt; keyframe, 0-&gt; not
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="T:libffmpeg.AVPictureType" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="972">
Picture type of the frame, see ?_TYPE below.
- encoding: Set by libavcodec. for coded_picture (and set by user for input).
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.pts" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="979">
presentation timestamp in time_base units (time when frame should be shown to user)
If AV_NOPTS_VALUE then frame_rate = 1/time_base will be assumed.
- encoding: MUST be set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.coded_picture_number" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="987">
picture number in bitstream order
- encoding: set by
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.display_picture_number" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="993">
picture number in display order
- encoding: set by
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.quality" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1000">
quality (between 1 (good) and FF_LAMBDA_MAX (bad))
- encoding: Set by libavcodec. for coded_picture (and set by user for input).
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.age" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1007">
buffer age (1-&gt;was last buffer and dint change, 2-&gt;..., ...).
Set to INT_MAX if the buffer has not been used yet.
- encoding: unused
- decoding: MUST be set by get_buffer().

</member>
<member name="F:libffmpeg.AVFrame.reference" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1015">
is this picture used as reference
The values for this are the same as the MpegEncContext.picture_structure
variable, that is 1-&gt;top field, 2-&gt;bottom field, 3-&gt;frame/both fields.
Set to 4 for delayed, non-reference frames.
- encoding: unused
- decoding: Set by libavcodec. (before get_buffer() call)).

</member>
<member name="F:libffmpeg.AVFrame.qscale_table" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1025">
QP table
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.qstride" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1031">
QP store stride
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.mbskip_table" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1038">
mbskip_table[mb]&gt;=1 if MB didn't change
stride= mb_width = (width+15)&gt;&gt;4
- encoding: unused
- decoding: Set by libavcodec.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVFrame.motion_val'. -->
<member name="F:libffmpeg.AVFrame.mb_type" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1060">
macroblock type table
mb_type_base + mb_width + 2
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.motion_subsample_log2" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1068">
log2 of the size of the block which a single vector in motion_val represents:
(4-&gt;16x16, 3-&gt;8x8, 2-&gt; 4x4, 1-&gt; 2x2)
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.opaque" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1076">
for some private data of the user
- encoding: unused
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVFrame.error'. -->
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVFrame.type'. -->
<member name="F:libffmpeg.AVFrame.repeat_pict" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1098">
When decoding, this signals how much the picture must be delayed.
extra_delay = repeat_pict / (2*fps)
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.qscale_type" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1106">


</member>
<member name="F:libffmpeg.AVFrame.interlaced_frame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1111">
The content of the picture is interlaced.
- encoding: Set by user.
- decoding: Set by libavcodec. (default 0)

</member>
<member name="F:libffmpeg.AVFrame.top_field_first" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1118">
If the content is interlaced, is top field displayed first.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.pan_scan" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1125">
Pan scan.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.palette_has_changed" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1132">
Tell user application that palette has changed from previous frame.
- encoding: ??? (no palette-enabled encoder yet)
- decoding: Set by libavcodec. (default 0).

</member>
<member name="F:libffmpeg.AVFrame.buffer_hints" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1139">
codec suggestion on buffer type if != 0
- encoding: unused
- decoding: Set by libavcodec. (before get_buffer() call)).

</member>
<member name="F:libffmpeg.AVFrame.dct_coeff" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1146">
DCT coefficients
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.ref_index" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1153">
motion reference frame index
the order in which these are stored can depend on the codec.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.reordered_opaque" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1161">
reordered opaque 64bit (generally an integer or a double precision float
PTS but can be anything).
The user sets AVCodecContext.reordered_opaque to represent the input at
that time,
the decoder reorders values as needed and sets AVFrame.reordered_opaque
to exactly one of the values provided by the user through AVCodecContext.reordered_opaque
@deprecated in favor of pkt_pts
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.hwaccel_picture_private" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1174">
hardware accelerator private data (FFmpeg-allocated)
- encoding: unused
- decoding: Set by libavcodec

</member>
<member name="F:libffmpeg.AVFrame.pkt_pts" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1181">
reordered pts from the last AVPacket that has been input into the decoder
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.pkt_dts" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1188">
dts from the last AVPacket that has been input into the decoder
- encoding: unused
- decoding: Read by user.

</member>
<member name="T:libffmpeg.AVCodecContext" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1195">
the AVCodecContext which ff_thread_get_buffer() was last called on
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.thread_opaque" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1202">
used by multithreading to store frame-specific info
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.best_effort_timestamp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1209">
frame timestamp estimated using various heuristics, in stream time base
- encoding: unused
- decoding: set by libavcodec, read by user.

</member>
<member name="F:libffmpeg.AVFrame.pkt_pos" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1216">
reordered pos from the last AVPacket that has been input into the decoder
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.sample_aspect_ratio" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1223">
reordered sample aspect ratio for the video frame, 0/1 if unknown\unspecified
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.width" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1230">
width and height of the video frame
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.format" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1237">
format of the frame, -1 if unknown or unset
It should be cast to the corresponding enum (enum PixelFormat
for video, enum AVSampleFormat for audio)
- encoding: unused
- decoding: Read by user.

</member>
<member name="T:libffmpeg.AVCodecContext" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1250">
main external API structure.
New fields can be added to the end with minor version bumps.
Removal, reordering and changes to existing fields require a major
version bump.
Please use AVOptions (av_opt* / av_set/get*()) to access these fields from user
applications.
sizeof(AVCodecContext) must not be used outside libav*.

</member>
<member name="F:libffmpeg.AVCodecContext.av_class" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1260">
information on struct for av_log
- set by avcodec_alloc_context3

</member>
<member name="F:libffmpeg.AVCodecContext.bit_rate" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1265">
the average bitrate
- encoding: Set by user; unused for constant quantizer encoding.
- decoding: Set by libavcodec. 0 or some bitrate if this info is available in the stream.

</member>
<member name="F:libffmpeg.AVCodecContext.bit_rate_tolerance" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1272">
number of bits the bitstream is allowed to diverge from the reference.
          the reference can be CBR (for CBR pass1) or VBR (for pass2)
- encoding: Set by user; unused for constant quantizer encoding.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.flags" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1280">
CODEC_FLAG_*.
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.sub_id" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1287">
Some codecs need additional format info. It is stored here.
If any muxer uses this then ALL demuxers/parsers AND encoders for the
specific codec MUST set it correctly otherwise stream copy breaks.
In general use of this field by muxers is not recommanded.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec. (FIXME: Is this OK?)

</member>
<member name="F:libffmpeg.AVCodecContext.me_method" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1297">
Motion estimation algorithm used for video coding.
1 (zero), 2 (full), 3 (log), 4 (phods), 5 (epzs), 6 (x1), 7 (hex),
8 (umh), 9 (iter), 10 (tesa) [7, 8, 10 are x264 specific, 9 is snow specific]
- encoding: MUST be set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.extradata" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1306">
some codecs need / can use extradata like Huffman tables.
mjpeg: Huffman tables
rv10: additional flags
mpeg4: global headers (they can be in the bitstream or here)
The allocated memory should be FF_INPUT_BUFFER_PADDING_SIZE bytes larger
than extradata_size to avoid prolems if it is read with the bitstream reader.
The bytewise contents of extradata must not depend on the architecture or CPU endianness.
- encoding: Set/allocated/freed by libavcodec.
- decoding: Set/allocated/freed by user.

</member>
<member name="F:libffmpeg.AVCodecContext.time_base" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1320">
This is the fundamental unit of time (in seconds) in terms
of which frame timestamps are represented. For fixed-fps content,
timebase should be 1/framerate and timestamp increments should be
identically 1.
- encoding: MUST be set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.width" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1331">
picture width / height.
- encoding: MUST be set by user.
- decoding: Set by libavcodec.
Note: For compatibility it is possible to set this instead of
coded_width/height before decoding.

</member>
<member name="F:libffmpeg.AVCodecContext.gop_size" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1342">
the number of pictures in a group of pictures, or 0 for intra_only
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1349">
Pixel format, see PIX_FMT_xxx.
May be set by the demuxer if known from headers.
May be overriden by the decoder if it knows better.
- encoding: Set by user.
- decoding: Set by user if known, overridden by libavcodec if known

</member>
<member name="F:libffmpeg.AVCodecContext.draw_horiz_band" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1358">
If non NULL, 'draw_horiz_band' is called by the libavcodec
decoder to draw a horizontal band. It improves cache usage. Not
all codecs can do that. You must check the codec capabilities
beforehand.
When multithreading is used, it may be called from multiple threads
at the same time; threads might draw different parts of the same AVFrame,
or multiple AVFrames, and there is no guarantee that slices will be drawn
in order.
The function is also used by hardware acceleration APIs.
It is called at least once during frame decoding to pass
the data needed for hardware render.
In that mode instead of pixel data, AVFrame points to
a structure specific to the acceleration API. The application
reads the structure and can change some fields to indicate progress
or mark state.
- encoding: unused
- decoding: Set by user.
@param height the height of the slice
@param y the y position of the slice
@param type 1-&gt;top field, 2-&gt;bottom field, 3-&gt;frame
@param offset offset into the AVFrame.data from which the slice should be read

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1389">
audio sample format
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.frame_size" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1397">
Samples per packet, initialized when calling 'init'.

</member>
<member name="F:libffmpeg.AVCodecContext.delay" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1403">
Encoding: Number of frames delay there will be from the encoder input to
          the decoder output. (we assume the decoder matches the spec)
Decoding: Number of frames delay in addition to what a standard decoder
          as specified in the spec would produce.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.qmin" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1417">
minimum quantizer
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.qmax" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1424">
maximum quantizer
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_qdiff" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1431">
maximum quantizer difference between frames
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_b_frames" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1438">
maximum number of B-frames between non-B-frames
Note: The output will be delayed by max_b_frames+1 relative to the input.
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.b_quant_factor'. -->
<member name="F:libffmpeg.AVCodecContext.rc_strategy" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1455">
obsolete FIXME remove 
</member>
<member name="F:libffmpeg.AVCodecContext.frame_bits" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1491">
number of bits used for the previously encoded frame
- encoding: Set by libavcodec.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.opaque" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1498">
Private data of the user, can be used to carry app specific stuff.
- encoding: Set by user.
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.codec_tag'. -->
<member name="F:libffmpeg.AVCodecContext.workaround_bugs" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1524">
Work around bugs in encoders which sometimes cannot be detected automatically.
- encoding: Set by user
- decoding: Set by user

</member>
<member name="F:libffmpeg.AVCodecContext.luma_elim_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1548">
luma single coefficient elimination threshold
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.chroma_elim_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1555">
chroma single coeff elimination threshold
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.strict_std_compliance" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1562">
strictly follow the standard (MPEG4, ...).
- encoding: Set by user.
- decoding: Set by user.
Setting this to STRICT or higher means the encoder and decoder will
generally do stupid things, whereas setting it to unofficial or lower
will mean the encoder might produce output that is not supported by all
spec-compliant decoders. Decoders don't differentiate between normal,
unofficial and experimental (that is, they always try to decode things
when they can) unless they are explicitly asked to behave stupidly
(=strictly conform to the specs)

</member>
<member name="F:libffmpeg.AVCodecContext.b_quant_offset" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1581">
qscale offset between IP and B-frames
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.error_recognition" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1589">
Error recognition; higher values will detect more errors but may
misdetect some more or less valid parts as errors.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.get_buffer" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1603">
Called at the beginning of each frame to get a buffer for it.
If pic.reference is set then the frame will be read later by libavcodec.
avcodec_align_dimensions2() should be used to find the required width and
height, as they normally need to be rounded up to the next multiple of 16.
if CODEC_CAP_DR1 is not set then get_buffer() must call
avcodec_default_get_buffer() instead of providing buffers allocated by
some other means.
If frame multithreading is used and thread_safe_callbacks is set,
it may be called from a different thread, but not from more than one at once.
Does not need to be reentrant.
- encoding: unused
- decoding: Set by libavcodec, user can override.

</member>
<member name="F:libffmpeg.AVCodecContext.release_buffer" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1619">
Called to release buffers which were allocated with get_buffer.
A released buffer can be reused in get_buffer().
pic.data[*] must be set to NULL.
May be called from a different thread if frame multithreading is used,
but not by more than one thread at once, so does not need to be reentrant.
- encoding: unused
- decoding: Set by libavcodec, user can override.

</member>
<member name="F:libffmpeg.AVCodecContext.has_b_frames" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1630">
Size of the frame reordering buffer in the decoder.
For MPEG-2 it is 1 IPB or 0 low delay IP.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.block_align" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1638">
number of bytes per packet if constant and known or 0
Used by some WAV based audio codecs.

</member>
<member name="F:libffmpeg.AVCodecContext.parse_only" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1645">
If true, only parsing is done. The frame data is returned.
Only MPEG audio decoders support this now.
- encoding: unused
- decoding: Set by user

</member>
<member name="F:libffmpeg.AVCodecContext.mpeg_quant" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1654">
0-&gt; h263 quant 1-&gt; mpeg quant
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.stats_out" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1661">
pass1 encoding statistics output buffer
- encoding: Set by libavcodec.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.stats_in" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1668">
pass2 encoding statistics input buffer
Concatenated stuff from stats_out of pass1 should be placed here.
- encoding: Allocated/set/freed by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_qsquish" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1676">
ratecontrol qmin qmax limiting method
0-&gt; clipping, 1-&gt; use a nice continous function to limit qscale wthin qmin/qmax.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_override" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1687">
ratecontrol override, see RcOverride
- encoding: Allocated/set/freed by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_eq" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1695">
rate control equation
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_max_rate" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1702">
maximum bitrate
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_min_rate" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1709">
minimum bitrate
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_buffer_size" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1716">
decoder bitstream buffer size
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.i_quant_factor'. -->
<member name="F:libffmpeg.AVCodecContext.i_quant_offset" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1733">
qscale offset between P and I-frames
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_initial_cplx" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1740">
initial complexity for pass1 ratecontrol
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.dct_algo" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1747">
DCT algorithm, see FF_DCT_* below
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lumi_masking" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1761">
luminance masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.temporal_cplx_masking" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1768">
temporary complexity masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.spatial_cplx_masking" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1775">
spatial complexity masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.p_masking" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1782">
p block masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.dark_masking" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1789">
darkness masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.idct_algo" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1796">
IDCT algorithm, see FF_IDCT_* below.
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.slice_count" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1828">
slice count
- encoding: Set by libavcodec.
- decoding: Set by user (or 0).

</member>
<member name="F:libffmpeg.AVCodecContext.slice_offset" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1834">
slice offsets in the frame in bytes
- encoding: Set/allocated by libavcodec.
- decoding: Set/allocated by user (or NULL).

</member>
<member name="F:libffmpeg.AVCodecContext.error_concealment" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1841">
error concealment flags
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.dsp_mask" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1850">
 dsp_mask could be add used to disable unwanted CPU features
 CPU features (i.e. MMX, SSE. ...)

 With the FORCE flag you may instead enable given CPU features.
 (Dangerous: Usable in case of misdetection, improper usage however will
 result into program crash.)

</member>
<member name="F:libffmpeg.AVCodecContext.bits_per_coded_sample" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1860">
bits per sample/pixel from the demuxer (needed for huffyuv).
- encoding: Set by libavcodec.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.prediction_method" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1867">
prediction method (needed for huffyuv)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.sample_aspect_ratio" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1877">
sample aspect ratio (0 if unknown)
That is the width of a pixel divided by the height of the pixel.
Numerator and denominator must be relatively prime and smaller than 256 for some video standards.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.coded_frame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1886">
the picture in the bitstream
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.debug" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1893">
debug
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.debug_mv" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1917">
debug
- encoding: Set by user.
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.error'. -->
<member name="F:libffmpeg.AVCodecContext.me_cmp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1934">
motion estimation comparison function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.me_sub_cmp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1940">
subpixel motion estimation comparison function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_cmp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1946">
macroblock comparison function (not supported yet)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.ildct_cmp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1952">
interlaced DCT comparison function
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.dia_size'. -->
<member name="F:libffmpeg.AVCodecContext.last_predictor_count" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1982">
amount of previous MV predictors (2a+1 x 2a+1 square)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.pre_me" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1989">
prepass for motion estimation
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.me_pre_cmp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="1996">
motion estimation prepass comparison function
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.pre_dia_size'. -->
<member name="F:libffmpeg.AVCodecContext.me_subpel_quality" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2010">
subpel ME quality
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2017">
callback to negotiate the pixelFormat
@param fmt is the list of formats which are supported by the codec,
it is terminated by -1 as 0 is a valid format, the formats are ordered by quality.
The first is always the native one.
@return the chosen format
- encoding: unused
- decoding: Set by user, if not set the native format will be chosen.

</member>
<member name="F:libffmpeg.AVCodecContext.dtg_active_format" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2028">
 DTG active format information (additional aspect ratio
 information only used in DVB MPEG-2 transport streams)
 0 if not set.

 - encoding: unused
 - decoding: Set by decoder.

</member>
<member name="F:libffmpeg.AVCodecContext.me_range" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2045">
 maximum motion estimation search range in subpel units
 If 0 then no limit.

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.intra_quant_bias" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2054">
intra quantizer bias
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.inter_quant_bias" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2062">
inter quantizer bias
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.color_table_id" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2069">
color table ID
- encoding: unused
- decoding: Which clrtable should be used for 8bit RGB images.
            Tables have to be stored somewhere. FIXME

</member>
<member name="F:libffmpeg.AVCodecContext.internal_buffer_count" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2078">
internal_buffer count
Don't touch, used by libavcodec default_get_buffer().
@deprecated this field was moved to an internal context

</member>
<member name="F:libffmpeg.AVCodecContext.internal_buffer" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2085">
internal_buffers
Don't touch, used by libavcodec default_get_buffer().
@deprecated this field was moved to an internal context

</member>
<member name="F:libffmpeg.AVCodecContext.global_quality" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2093">
Global quality for codecs which cannot change it per frame.
This should be proportional to MPEG-1/2/4 qscale.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.coder_type" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2106">
coder type
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.context_model" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2113">
context model
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.slice_flags" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2128">
slice flags
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.xvmc_acceleration" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2138">
XVideo Motion Acceleration
- encoding: forbidden
- decoding: set by decoder

</member>
<member name="F:libffmpeg.AVCodecContext.mb_decision" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2145">
macroblock decision mode
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.intra_matrix" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2155">
custom intra quantization matrix
- encoding: Set by user, can be NULL.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.inter_matrix" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2162">
custom inter quantization matrix
- encoding: Set by user, can be NULL.
- decoding: Set by libavcodec.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.stream_codec_tag'. -->
<member name="F:libffmpeg.AVCodecContext.scenechange_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2177">
scene change detection threshold
0 is default, larger means fewer detected scene changes.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lmin" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2185">
minimum Lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lmax" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2192">
maximum Lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.AVPaletteControl" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2200">
palette control structure
- encoding: ??? (no palette-enabled encoder yet)
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.noise_reduction" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2208">
noise reduction strength
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.reget_buffer" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2215">
Called at the beginning of a frame to get cr buffer for it.
Buffer type (size, hints) must be the same. libavcodec won't check it.
libavcodec will pass previous buffer in pic, function should return
same buffer or new buffer with old frame "painted" into it.
If pic.data[0] == NULL must behave like get_buffer().
if CODEC_CAP_DR1 is not set then reget_buffer() must call
avcodec_default_reget_buffer() instead of providing buffers allocated by
some other means.
- encoding: unused
- decoding: Set by libavcodec, user can override.

</member>
<member name="F:libffmpeg.AVCodecContext.rc_initial_buffer_occupancy" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2229">
Number of bits which should be loaded into the rc buffer before decoding starts.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.inter_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2236">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.flags2" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2243">
CODEC_FLAG2_*
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.error_rate" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2250">
Simulates errors in the bitstream to test error concealment.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.antialias_algo" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2258">
MP3 antialias algorithm, see FF_AA_* below.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.quantizer_noise_shaping" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2270">
quantizer noise shaping
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.thread_count" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2277">
thread count
is used to decide how many independent tasks should be passed to execute()
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.execute" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2285">
The codec may call this to execute several independent things.
It will return only after finishing all tasks.
The user may replace this with some multithreaded implementation,
the default implementation will execute the parts serially.
@param count the number of things to execute
- encoding: Set by libavcodec, user can override.
- decoding: Set by libavcodec, user can override.

</member>
<member name="F:libffmpeg.AVCodecContext.thread_opaque" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2296">
thread opaque
Can be used by execute() to store some per AVCodecContext stuff.
- encoding: set by execute()
- decoding: set by execute()

</member>
<member name="F:libffmpeg.AVCodecContext.me_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2304">
 Motion estimation threshold below which no motion estimation is
 performed, but instead the user specified motion vectors are used.

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2313">
Macroblock threshold below which the user specified macroblock types will be used.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.intra_dc_precision" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2320">
precision of the intra DC coefficient - 8
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.nsse_weight" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2327">
noise vs. sse weight for the nsse comparsion function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.skip_top" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2334">
Number of macroblock rows at the top which are skipped.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.skip_bottom" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2341">
Number of macroblock rows at the bottom which are skipped.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.profile" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2348">
profile
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.level" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2414">
level
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.lowres" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2422">
low resolution decoding, 1-&gt; 1/2 size, 2-&gt;1/4 size
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.coded_width" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2429">
Bitstream width / height, may be different from width/height if lowres enabled.
- encoding: unused
- decoding: Set by user before init if known. Codec should override / dynamically change if needed.

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2436">
frame skip threshold
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_factor" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2443">
frame skip factor
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_exp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2450">
frame skip exponent
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_cmp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2457">
frame skip comparison function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.border_masking" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2464">
Border processing masking, raises the quantizer for mbs on the borders
of the picture.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_lmin" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2472">
minimum MB lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_lmax" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2479">
maximum MB lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.me_penalty_compensation" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2486">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="T:libffmpeg.AVDiscard" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2493">

 - encoding: unused
 - decoding: Set by user.

</member>
<member name="T:libffmpeg.AVDiscard" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2500">

 - encoding: unused
 - decoding: Set by user.

</member>
<member name="T:libffmpeg.AVDiscard" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2507">

 - encoding: unused
 - decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.bidir_refine" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2514">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.brd_scale" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2521">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.crf" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2529">
constant rate factor - quality-based VBR - values ~correspond to qps
- encoding: Set by user.
- decoding: unused
  @deprecated use 'crf' libx264 private option

</member>
<member name="F:libffmpeg.AVCodecContext.cqp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2537">
constant quantization parameter rate control method
- encoding: Set by user.
- decoding: unused
  @deprecated use 'cqp' libx264 private option

</member>
<member name="F:libffmpeg.AVCodecContext.keyint_min" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2546">
minimum GOP size
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.refs" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2553">
number of reference frames
- encoding: Set by user.
- decoding: Set by lavc.

</member>
<member name="F:libffmpeg.AVCodecContext.chromaoffset" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2560">
chroma qp offset from luma
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.bframebias" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2568">
Influences how often B-frames are used.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.trellis" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2576">
trellis RD quantization
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.complexityblur" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2584">
Reduce fluctuations in qp (before curve compression).
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.deblockalpha" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2591">
in-loop deblocking filter alphac0 parameter
alpha is in the range -6...6
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.deblockbeta" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2599">
in-loop deblocking filter beta parameter
beta is in the range -6...6
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.partitions" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2607">
macroblock subpartition sizes to consider - p8x8, p4x4, b8x8, i8x8, i4x4
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.directpred" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2619">
direct MV prediction mode - 0 (none), 1 (spatial), 2 (temporal), 3 (auto)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.cutoff" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2627">
Audio cutoff bandwidth (0 means "automatic")
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.scenechange_factor" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2634">
Multiplied by qscale for each frame and added to scene_change_score.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mv0_threshold" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2641">

 Note: Value depends upon the compare function used for fullpel ME.
 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.b_sensitivity" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2649">
Adjusts sensitivity of b_frame_strategy 1.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.compression_level" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2656">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.min_prediction_order" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2663">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_prediction_order" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2669">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lpc_coeff_precision" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2676">
@name FLAC options
@deprecated Use FLAC encoder private options instead.
@{

LPC coefficient precision - used by FLAC encoder
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.prediction_order_method" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2689">
search method for selecting prediction order
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.min_partition_order" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2696">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_partition_order" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2702">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.timecode_frame_start" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2707">
@}

GOP timecode frame start number
- encoding: Set by user, in non drop frame format
- decoding: Set by libavcodec (timecode in the 25 bits format, -1 if unset)

</member>
<member name="F:libffmpeg.AVCodecContext.request_channels" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2720">
Decoder should decode to this many channels if it can (0 for default)
- encoding: unused
- decoding: Set by user.
@deprecated Deprecated in favor of request_channel_layout.

</member>
<member name="F:libffmpeg.AVCodecContext.drc_scale" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2730">
Percentage of dynamic range compression to be applied by the decoder.
The default value is 1.0, corresponding to full compression.
- encoding: unused
- decoding: Set by user.
@deprecated use AC3 decoder private option instead.

</member>
<member name="F:libffmpeg.AVCodecContext.reordered_opaque" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2740">
opaque 64bit number (generally a PTS) that will be reordered and
output in AVFrame.reordered_opaque
@deprecated in favor of pkt_pts
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.bits_per_raw_sample" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2749">
Bits per sample/pixel of internal libavcodec pixel/sample format.
- encoding: set by user.
- decoding: set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.channel_layout" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2756">
Audio channel layout.
- encoding: set by user.
- decoding: set by user, may be overwritten by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.request_channel_layout" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2763">
Request decoder to use this channel layout if it can (0 for default)
- encoding: unused
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.rc_max_available_vbv_use'. -->
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.rc_min_vbv_overflow_use'. -->
<member name="T:libffmpeg.AVHWAccel" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2784">
Hardware accelerator in use
- encoding: unused.
- decoding: Set by libavcodec

</member>
<member name="F:libffmpeg.AVCodecContext.ticks_per_frame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2791">
 For some codecs, the time base is closer to the field rate than the frame rate.
 Most notably, H.264 and MPEG-2 specify time_base as half of frame duration
 if no telecine is used ...

 Set to time_base ticks per frame. Default 1, e.g., H.264/MPEG-2 set it to 2.

</member>
<member name="F:libffmpeg.AVCodecContext.hwaccel_context" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2800">
Hardware accelerator context.
For some hardware accelerators, a global context needs to be
provided by the user. In that case, this holds display-dependent
data FFmpeg cannot instantiate itself. Please refer to the
FFmpeg HW accelerator documentation to know how to fill this
is. e.g. for VA API, this is a struct vaapi_context.
- encoding: unused
- decoding: Set by user

</member>
<member name="T:libffmpeg.AVColorPrimaries" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2812">
Chromaticity coordinates of the source primaries.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVColorTransferCharacteristic" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2819">
Color Transfer Characteristic.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVColorSpace" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2826">
YUV colorspace type.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVColorRange" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2833">
MPEG vs JPEG YUV range.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVChromaLocation" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2840">
This defines the location of chroma samples.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.execute2'. -->
<member name="F:libffmpeg.AVCodecContext.weighted_p_pred" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2868">
explicit P-frame weighted prediction analysis method
0: off
1: fast blind weighting (one reference duplicate with -1 offset)
2: smart weighting (full fade detection analysis)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.aq_mode" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2878">
AQ mode
0: Disabled
1: Variance AQ (complexity mask)
2: Auto-variance AQ (experimental)
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.aq_strength" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2888">
AQ strength
Reduces blocking and blurring in flat and textured areas.
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.psy_rd" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2896">
PSY RD
Strength of psychovisual optimization
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.psy_trellis" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2904">
PSY trellis
Strength of psychovisual optimization
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_lookahead" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2912">
RC lookahead
Number of frames for frametype and ratecontrol lookahead
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.crf_max" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2920">
Constant rate factor maximum
With CRF encoding mode and VBV restrictions enabled, prevents quality from being worse
than crf_max, even if doing so would violate VBV restrictions.
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.AVLPCType" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2933">
Determines which LPC analysis algorithm to use.
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lpc_passes" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2940">
Number of passes to use for Cholesky factorization during LPC analysis
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.slices" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2948">
Number of slices.
Indicates number of picture subdivisions. Used for parallelized
decoding.
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.subtitle_header" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2957">
Header containing style information for text subtitles.
For SUBTITLE_ASS subtitle type, it should contain the whole ASS
[Script Info] and [V4+ Styles] section, plus the [Events] line and
the Format line following. It shouldn't include any Dialogue line.
- encoding: Set/allocated/freed by user (before avcodec_open2())
- decoding: Set/allocated/freed by libavcodec (by avcodec_open2())

</member>
<member name="F:libffmpeg.AVCodecContext.pkt" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2968">
Current packet as passed into the decoder, to avoid having
to pass the packet into every function. Currently only valid
inside lavc and get/release_buffer callbacks.
- decoding: set by avcodec_decode_*, read by get_buffer() for setting pkt_pts
- encoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.is_copy" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2978">
 Whether this is a copy of the context which had init() called on it.
 This is used by multithreading - shared tables and picture pointers
 should be freed from the original context only.
 - encoding: Set by libavcodec.
 - decoding: Set by libavcodec.

 @deprecated this field has been moved to an internal context

</member>
<member name="F:libffmpeg.AVCodecContext.thread_type" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="2990">
 Which multithreading methods to use.
 Use of FF_THREAD_FRAME will increase decoding delay by one frame per thread,
 so clients which cannot provide future frames should not use it.

 - encoding: Set by user, otherwise the default is used.
 - decoding: Set by user, otherwise the default is used.

</member>
<member name="F:libffmpeg.AVCodecContext.active_thread_type" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3002">
Which multithreading methods are in use by the codec.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.thread_safe_callbacks" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3009">
Set by the client if its custom get_buffer() callback can be called
from another thread, which allows faster multithreaded decoding.
draw_horiz_band() will be called from other threads regardless of this setting.
Ignored if the default get_buffer() is used.
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.vbv_delay" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3019">
VBV delay coded in the last frame (in periods of a 27 MHz clock).
Used for compliant TS muxing.
- encoding: Set by libavcodec.
- decoding: unused.

</member>
<member name="T:libffmpeg.AVAudioServiceType" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3027">
Type of service that the audio stream conveys.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3034">
desired sample format
- encoding: Not used.
- decoding: Set by user.
Decoder will decode to this format if it can.

</member>
<member name="F:libffmpeg.AVCodecContext.err_recognition" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3042">
Error recognition; may misdetect some more or less valid parts as errors.
- encoding: unused
- decoding: Set by user.

</member>
<member name="T:libffmpeg.AVCodecInternal" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3057">
 Private context used for internal data.

 Unlike priv_data, this is not codec-specific. It is used in general
 libavcodec functions.

</member>
<member name="F:libffmpeg.AVCodecContext.pts_correction_num_faulty_pts" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3065">
Current statistics for PTS correction.
- decoding: maintained and used by libavcodec, not intended to be used by user apps
- encoding: unused

</member>
<member name="T:libffmpeg.AVProfile" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3077">
AVProfile.

</member>
<member name="T:libffmpeg.AVCodec" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3087">
AVCodec.

</member>
<member name="F:libffmpeg.AVCodec.name" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3091">
Name of the codec implementation.
The name is globally unique among encoders and among decoders (but an
encoder and a decoder can share the same name).
This is the primary way to find a codec from the user perspective.

</member>
<member name="F:libffmpeg.AVCodec.capabilities" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3105">
Codec capabilities.
see CODEC_CAP_*

</member>
<member name="F:libffmpeg.AVCodec.flush" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3111">
Flush buffers.
Will be called when seeking

</member>
<member name="F:libffmpeg.AVCodec.long_name" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3118">
Descriptive name for the codec, meant to be more human readable than name.
You should use the NULL_IF_CONFIG_SMALL() macro to define it.

</member>
<member name="F:libffmpeg.AVCodec.init_thread_copy" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3130">
@name Frame-level threading support functions
@{

If defined, called on thread contexts when they are created.
If the codec allocates writable tables in init(), re-allocate them here.
priv_data will be set to a copy of the original.

</member>
<member name="F:libffmpeg.AVCodec.update_thread_context" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3140">
 Copy necessary context variables from a previous thread context to the current one.
 If not defined, the next thread will start automatically; otherwise, the codec
 must call ff_thread_finish_setup().

 dst and src will (rarely) point to the same context, in which case memcpy should be skipped.

</member>
<member name="F:libffmpeg.AVCodec.defaults" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3148">
@} 
Private codec-specific defaults.

</member>
<member name="F:libffmpeg.AVCodec.init_static_data" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3155">
Initialize codec static data, called from avcodec_register().

</member>
<member name="T:libffmpeg.AVHWAccel" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3161">
AVHWAccel.

</member>
<member name="F:libffmpeg.AVHWAccel.name" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3165">
Name of the hardware accelerated codec.
The name is globally unique among encoders and among decoders (but an
encoder and a decoder can share the same name).

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3172">
 Type of codec implemented by the hardware accelerator.

 See AVMEDIA_TYPE_xxx

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3179">
 Codec implemented by the hardware accelerator.

 See CODEC_ID_xxx

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3186">
 Supported pixel format.

 Only hardware accelerated formats are supported here.

</member>
<member name="F:libffmpeg.AVHWAccel.capabilities" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3193">
Hardware accelerated codec capabilities.
see FF_HWACCEL_CODEC_CAP_*

</member>
<member name="F:libffmpeg.AVHWAccel.start_frame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3201">
 Called at the beginning of each frame or field picture.

 Meaningful frame information (codec specific) is guaranteed to
 be parsed at this point. This function is mandatory.

 Note that buf can be NULL along with buf_size set to 0.
 Otherwise, this means the whole frame is available at this point.

 @param avctx the codec context
 @param buf the frame data buffer base
 @param buf_size the size of the frame in bytes
 @return zero if successful, a negative value otherwise

</member>
<member name="F:libffmpeg.AVHWAccel.decode_slice" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3217">
 Callback for each slice.

 Meaningful slice information (codec specific) is guaranteed to
 be parsed at this point. This function is mandatory.

 @param avctx the codec context
 @param buf the slice data buffer base
 @param buf_size the size of the slice in bytes
 @return zero if successful, a negative value otherwise

</member>
<member name="F:libffmpeg.AVHWAccel.end_frame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3230">
 Called at the end of each frame or field picture.

 The whole picture is parsed at this point and can now be sent
 to the hardware accelerator. This function is mandatory.

 @param avctx the codec context
 @return zero if successful, a negative value otherwise

</member>
<member name="F:libffmpeg.AVHWAccel.priv_data_size" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3241">
 Size of HW accelerator private data.

 Private data is allocated with av_mallocz() before
 AVCodecContext.get_buffer() and deallocated after
 AVCodecContext.release_buffer().

</member>
<member name="T:libffmpeg.AVPicture" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3251">
four components are given, that's all.
the last component is alpha

</member>
<member name="T:libffmpeg.AVPaletteControl" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3263">
 AVPaletteControl
 This structure defines a method for communicating palette changes
 between and demuxer and a decoder.

 @deprecated Use AVPacket to send palette changes instead.
 This is totally broken.

</member>
<member name="F:SUBTITLE_TEXT" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3291">
Plain text, the text field must be set by the decoder and is
authoritative. ass and pict fields may contain approximations.

</member>
<member name="F:SUBTITLE_ASS" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3297">
Formatted text, the ass field must be set by the decoder and is
authoritative. pict and text fields may contain approximations.

</member>
<member name="F:libffmpeg.AVSubtitleRect.pict" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3311">
data+linesize for the bitmap of this subtitle.
can be set for text/ass as well once they where rendered

</member>
<member name="F:libffmpeg.AVSubtitleRect.ass" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3320">
0 terminated ASS/SSA compatible event line.
The pressentation of this is unaffected by the other values in this
struct.

</member>
<member name="M:libffmpeg.av_destruct_packet_nofree(libffmpeg.AVPacket*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3339">
@deprecated use NULL instead

</member>
<member name="M:libffmpeg.av_destruct_packet(libffmpeg.AVPacket*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3344">
Default packet destructor.

</member>
<member name="M:libffmpeg.av_init_packet(libffmpeg.AVPacket*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3349">
 Initialize optional fields of a packet with default values.

 @param pkt packet

</member>
<member name="M:libffmpeg.av_new_packet(libffmpeg.AVPacket*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3356">
 Allocate the payload of a packet and initialize its fields with
 default values.

 @param pkt packet
 @param size wanted payload size
 @return 0 if OK, AVERROR_xxx otherwise

</member>
<member name="M:libffmpeg.av_shrink_packet(libffmpeg.AVPacket*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3366">
 Reduce packet size, correctly zeroing padding

 @param pkt packet
 @param size new size

</member>
<member name="M:libffmpeg.av_grow_packet(libffmpeg.AVPacket*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3374">
 Increase packet size, correctly zeroing padding

 @param pkt packet
 @param grow_by number of bytes by which to increase the size of the packet

</member>
<member name="M:libffmpeg.av_dup_packet(libffmpeg.AVPacket*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3382">
@warning This is a hack - the packet memory allocation stuff is broken. The
packet is allocated if it was not really allocated.

</member>
<member name="M:libffmpeg.av_free_packet(libffmpeg.AVPacket*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3388">
 Free a packet.

 @param pkt packet to free

</member>
<member name="M:libffmpeg.av_packet_new_side_data(libffmpeg.AVPacket*,libffmpeg.AVPacketSideDataType,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3395">
 Allocate new information of a packet.

 @param pkt packet
 @param type side information type
 @param size side information size
 @return pointer to fresh allocated data or NULL otherwise

</member>
<member name="M:libffmpeg.av_packet_get_side_data(libffmpeg.AVPacket*,libffmpeg.AVPacketSideDataType,System.Int32*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3406">
 Get side information from packet.

 @param pkt packet
 @param type desired side information type
 @param size pointer for side information size to store (optional)
 @return pointer to data if present or NULL otherwise

</member>
<member name="M:libffmpeg.av_audio_resample_init(System.Int32,System.Int32,System.Int32,System.Int32,libffmpeg.AVSampleFormat,libffmpeg.AVSampleFormat,System.Int32,System.Int32,System.Int32,System.Double)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3429">
 *  Initialize audio resampling context.
 *
 * @param output_channels  number of output channels
 * @param input_channels   number of input channels
 * @param output_rate      output sample rate
 * @param input_rate       input sample rate
 * @param sample_fmt_out   requested output sample format
 * @param sample_fmt_in    input sample format
 * @param filter_length    length of each FIR filter in the filterbank relative to the cutoff frequency
 * @param log2_phase_count log2 of the number of entries in the polyphase filterbank
 * @param linear           if 1 then the used FIR filter will be linearly interpolated
                           between the 2 closest, if 0 the closest will be used
 * @param cutoff           cutoff frequency, 1.0 corresponds to half the output sampling rate
 * @return allocated ReSampleContext, NULL if error occured

</member>
<member name="M:libffmpeg.audio_resample_close(libffmpeg.ReSampleContext*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3454">
 Free resample context.

 @param s a non-NULL pointer to a resample context previously
          created with av_audio_resample_init()

</member>
<member name="T:libffmpeg.AVResampleContext" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3463">
 * Initialize an audio resampler.
 * Note, if either rate is not an integer then simply scale both rates up so they are.
 * @param filter_length length of each FIR filter in the filterbank relative to the cutoff freq
 * @param log2_phase_count log2 of the number of entries in the polyphase filterbank
 * @param linear If 1 then the used FIR filter will be linearly interpolated
                 between the 2 closest, if 0 the closest will be used
 * @param cutoff cutoff frequency, 1.0 corresponds to half the output sampling rate

</member>
<member name="M:libffmpeg.av_resample(libffmpeg.AVResampleContext*,System.Int16*,System.Int16*,System.Int32*,System.Int32,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3474">
Resample an array of samples using a previously configured context.
@param src an array of unconsumed samples
@param consumed the number of samples of src which have been consumed are returned here
@param src_size the number of unconsumed samples available
@param dst_size the amount of space in samples available in dst
@param update_ctx If this is 0 then the context will not be modified, that way several channels can be resampled with the same context.
@return the number of samples written in dst or -1 if an error occurred

</member>
<member name="M:libffmpeg.av_resample_compensate(libffmpeg.AVResampleContext*,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3486">
 Compensate samplerate/timestamp drift. The compensation is done by changing
 the resampler parameters, so no audible clicks or similar distortions occur
 @param compensation_distance distance in output samples over which the compensation should be performed
 @param sample_delta number of output samples which should be output less

 example: av_resample_compensate(c, 10, 500)
 here instead of 510 samples only 500 samples would be output

 note, due to rounding the actual compensation might be slightly different,
 especially if the compensation_distance is large and the in_rate used during init is small

</member>
<member name="M:libffmpeg.avpicture_alloc(libffmpeg.AVPicture*,libffmpeg.PixelFormat,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3501">
 Allocate memory for a picture.  Call avpicture_free() to free it.

 @see avpicture_fill()

 @param picture the picture to be filled in
 @param pix_fmt the format of the picture
 @param width the width of the picture
 @param height the height of the picture
 @return zero if successful, a negative value if not

</member>
<member name="M:libffmpeg.avpicture_free(libffmpeg.AVPicture*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3514">
 Free a picture previously allocated by avpicture_alloc().
 The data buffer used by the AVPicture is freed, but the AVPicture structure
 itself is not.

 @param picture the AVPicture to be freed

</member>
<member name="M:libffmpeg.avpicture_fill(libffmpeg.AVPicture*,System.Byte*,libffmpeg.PixelFormat,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3523">
 Fill in the AVPicture fields.
 The fields of the given AVPicture are filled in by using the 'ptr' address
 which points to the image data buffer. Depending on the specified picture
 format, one or multiple image data pointers and line sizes will be set.
 If a planar format is specified, several pointers will be set pointing to
 the different picture planes and the line sizes of the different planes
 will be stored in the lines_sizes array.
 Call with ptr == NULL to get the required size for the ptr buffer.

 To allocate the buffer and fill in the AVPicture fields in one call,
 use avpicture_alloc().

 @param picture AVPicture whose fields are to be filled in
 @param ptr Buffer which will contain or contains the actual image data
 @param pix_fmt The format in which the picture data is stored.
 @param width the width of the image in pixels
 @param height the height of the image in pixels
 @return size of the image data in bytes

</member>
<member name="M:libffmpeg.avpicture_layout(libffmpeg.AVPicture!System.Runtime.CompilerServices.IsConst*,libffmpeg.PixelFormat,System.Int32,System.Int32,System.Byte*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3546">
 Copy pixel data from an AVPicture into a buffer.
 The data is stored compactly, without any gaps for alignment or padding
 which may be applied by avpicture_fill().

 @see avpicture_get_size()

 @param[in] src AVPicture containing image data
 @param[in] pix_fmt The format in which the picture data is stored.
 @param[in] width the width of the image in pixels.
 @param[in] height the height of the image in pixels.
 @param[out] dest A buffer into which picture data will be copied.
 @param[in] dest_size The size of 'dest'.
 @return The number of bytes written to dest, or a negative value (error code) on error.

</member>
<member name="M:libffmpeg.avpicture_get_size(libffmpeg.PixelFormat,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3564">
 Calculate the size in bytes that a picture of the given width and height
 would occupy if stored in the given picture format.
 Note that this returns the size of a compact representation as generated
 by avpicture_layout(), which can be smaller than the size required for e.g.
 avpicture_fill().

 @param pix_fmt the given picture format
 @param width the width of the image
 @param height the height of the image
 @return Image data size in bytes or -1 on error (e.g. too large dimensions).

</member>
<member name="M:libffmpeg.avcodec_get_name(libffmpeg.CodecID)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3579">
Get the name of a codec.
@return  a static string identifying the codec; never NULL

</member>
<member name="M:libffmpeg.avcodec_get_pix_fmt_name(libffmpeg.PixelFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3586">
 Return the short name for a pixel format.

 \see av_get_pix_fmt(), av_get_pix_fmt_string().
 @deprecated Deprecated in favor of av_get_pix_fmt_name().

</member>
<member name="M:libffmpeg.avcodec_pix_fmt_to_codec_tag(libffmpeg.PixelFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3598">
Return a value representing the fourCC code associated to the
pixel format pix_fmt, or 0 if no associated fourCC code can be
found.

</member>
<member name="M:libffmpeg.av_get_codec_tag_string(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.UInt32,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3605">
 Put a string representing the codec tag codec_tag in buf.

 @param buf_size size in bytes of buf
 @return the length of the string that would have been generated if
 enough space had been available, excluding the trailing null

</member>
<member name="M:libffmpeg.avcodec_get_pix_fmt_loss(libffmpeg.PixelFormat,libffmpeg.PixelFormat,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3621">
 Compute what kind of losses will occur when converting from one specific
 pixel format to another.
 When converting from one pixel format to another, information loss may occur.
 For example, when converting from RGB24 to GRAY, the color information will
 be lost. Similarly, other losses occur when converting from some formats to
 other formats. These losses can involve loss of chroma, but also loss of
 resolution, loss of color depth, loss due to the color space conversion, loss
 of the alpha bits or loss due to color quantization.
 avcodec_get_fix_fmt_loss() informs you about the various types of losses
 which will occur when converting from one pixel format to another.

 @param[in] dst_pix_fmt destination pixel format
 @param[in] src_pix_fmt source pixel format
 @param[in] has_alpha Whether the source pixel format alpha channel is used.
 @return Combination of flags informing you what kind of losses will occur
 (maximum loss for an invalid dst_pix_fmt).

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.PixelFormat'. -->
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.PixelFormat'. -->
<member name="M:libffmpeg.img_get_alpha_info(libffmpeg.AVPicture!System.Runtime.CompilerServices.IsConst*,libffmpeg.PixelFormat,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3706">
Tell if an image really has transparent alpha values.
@return ored mask of FF_ALPHA_xxx constants

</member>
<member name="M:libffmpeg.av_codec_next(libffmpeg.AVCodec*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3722">
If c is NULL, returns the first registered codec,
if c is non-NULL, returns the next registered codec after c,
or NULL if c is the last one.

</member>
<member name="M:libffmpeg.avcodec_version" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3729">
Return the LIBAVCODEC_VERSION_INT constant.

</member>
<member name="M:libffmpeg.avcodec_configuration" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3734">
Return the libavcodec build-time configuration.

</member>
<member name="M:libffmpeg.avcodec_license" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3739">
Return the libavcodec license.

</member>
<member name="M:libffmpeg.avcodec_init" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3745">
@deprecated this function is called automatically from avcodec_register()
and avcodec_register_all(), there is no need to call it manually

</member>
<member name="M:libffmpeg.avcodec_register(libffmpeg.AVCodec*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3753">
 Register the codec codec and initialize libavcodec.

 @warning either this function or avcodec_register_all() must be called
 before any other libavcodec functions.

 @see avcodec_register_all()

</member>
<member name="M:libffmpeg.avcodec_find_encoder(libffmpeg.CodecID)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3763">
 Find a registered encoder with a matching codec ID.

 @param id CodecID of the requested encoder
 @return An encoder if one was found, NULL otherwise.

</member>
<member name="M:libffmpeg.avcodec_find_encoder_by_name(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3771">
 Find a registered encoder with the specified name.

 @param name name of the requested encoder
 @return An encoder if one was found, NULL otherwise.

</member>
<member name="M:libffmpeg.avcodec_find_decoder(libffmpeg.CodecID)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3779">
 Find a registered decoder with a matching codec ID.

 @param id CodecID of the requested decoder
 @return A decoder if one was found, NULL otherwise.

</member>
<member name="M:libffmpeg.avcodec_find_decoder_by_name(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3787">
 Find a registered decoder with the specified name.

 @param name name of the requested decoder
 @return A decoder if one was found, NULL otherwise.

</member>
<member name="M:libffmpeg.av_get_profile_name(libffmpeg.AVCodec!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3796">
 Return a name for the specified profile, if available.

 @param codec the codec that is searched for the given profile
 @param profile the profile value for which a name is requested
 @return A name for the profile if found, NULL otherwise.

</member>
<member name="M:libffmpeg.avcodec_get_context_defaults(libffmpeg.AVCodecContext*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3806">
 Set the fields of the given AVCodecContext to default values.

 @param s The AVCodecContext of which the fields should be set to default values.
 @deprecated use avcodec_get_context_defaults3

</member>
<member name="M:libffmpeg.avcodec_get_context_defaults2(libffmpeg.AVCodecContext*,libffmpeg.AVMediaType)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3815">
THIS FUNCTION IS NOT YET PART OF THE PUBLIC API!
 *  we WILL change its arguments and name a few times! 
</member>
<member name="M:libffmpeg.avcodec_get_context_defaults3(libffmpeg.AVCodecContext*,libffmpeg.AVCodec*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3821">
 Set the fields of the given AVCodecContext to default values corresponding
 to the given codec (defaults may be codec-dependent).

 Do not call this function if a non-NULL codec has been passed
 to avcodec_alloc_context3() that allocated this AVCodecContext.
 If codec is non-NULL, it is illegal to call avcodec_open2() with a
 different codec on this AVCodecContext.

</member>
<member name="M:libffmpeg.avcodec_alloc_context" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3833">
 Allocate an AVCodecContext and set its fields to default values.  The
 resulting struct can be deallocated by simply calling av_free().

 @return An AVCodecContext filled with default values or NULL on failure.
 @see avcodec_get_context_defaults

 @deprecated use avcodec_alloc_context3()

</member>
<member name="M:libffmpeg.avcodec_alloc_context2(libffmpeg.AVMediaType)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3845">
THIS FUNCTION IS NOT YET PART OF THE PUBLIC API!
 *  we WILL change its arguments and name a few times! 
</member>
<member name="M:libffmpeg.avcodec_alloc_context3(libffmpeg.AVCodec*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3851">
 Allocate an AVCodecContext and set its fields to default values.  The
 resulting struct can be deallocated by simply calling av_free().

 @param codec if non-NULL, allocate private data and initialize defaults
              for the given codec. It is illegal to then call avcodec_open2()
              with a different codec.

 @return An AVCodecContext filled with default values or NULL on failure.
 @see avcodec_get_context_defaults

</member>
<member name="M:libffmpeg.avcodec_copy_context(libffmpeg.AVCodecContext*,libffmpeg.AVCodecContext!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3864">
 Copy the settings of the source AVCodecContext into the destination
 AVCodecContext. The resulting destination codec context will be
 unopened, i.e. you are required to call avcodec_open2() before you
 can use this AVCodecContext to decode/encode video/audio data.

 @param dest target codec context, should be initialized with
             avcodec_alloc_context3(), but otherwise uninitialized
 @param src source codec context
 @return AVERROR() on error (e.g. memory allocation error), 0 on success

</member>
<member name="M:libffmpeg.avcodec_get_frame_defaults(libffmpeg.AVFrame*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3877">
 Set the fields of the given AVFrame to default values.

 @param pic The AVFrame of which the fields should be set to default values.

</member>
<member name="M:libffmpeg.avcodec_alloc_frame" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3884">
 Allocate an AVFrame and set its fields to default values.  The resulting
 struct can be deallocated by simply calling av_free().

 @return An AVFrame filled with default values or NULL on failure.
 @see avcodec_get_frame_defaults

</member>
<member name="M:libffmpeg.avcodec_get_edge_width" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3897">
 Return the amount of padding in pixels which the get_buffer callback must
 provide around the edge of the image for codecs which do not have the
 CODEC_FLAG_EMU_EDGE flag.

 @return Required padding in pixels.

</member>
<member name="M:libffmpeg.avcodec_align_dimensions(libffmpeg.AVCodecContext*,System.Int32*,System.Int32*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3905">
 Modify width and height values so that they will result in a memory
 buffer that is acceptable for the codec if you do not use any horizontal
 padding.

 May only be used if a codec with CODEC_CAP_DR1 has been opened.
 If CODEC_FLAG_EMU_EDGE is not set, the dimensions must have been increased
 according to avcodec_get_edge_width() before.

</member>
<member name="M:libffmpeg.avcodec_align_dimensions2(libffmpeg.AVCodecContext*,System.Int32*,System.Int32*,System.Int32*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3915">
 Modify width and height values so that they will result in a memory
 buffer that is acceptable for the codec if you also ensure that all
 line sizes are a multiple of the respective linesize_align[i].

 May only be used if a codec with CODEC_CAP_DR1 has been opened.
 If CODEC_FLAG_EMU_EDGE is not set, the dimensions must have been increased
 according to avcodec_get_edge_width() before.

</member>
<member name="M:libffmpeg.avcodec_thread_init(libffmpeg.AVCodecContext*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="3930">
@deprecated Set s-&gt;thread_count before calling avcodec_open2() instead of calling this.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avcodec_open(libffmpeg.AVCodecContext*,libffmpeg.AVCodec*)'. -->
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avcodec_open2(libffmpeg.AVCodecContext*,libffmpeg.AVCodec*,libffmpeg.AVDictionary**)'. -->
<member name="M:libffmpeg.avcodec_decode_audio3(libffmpeg.AVCodecContext*,System.Int16*,System.Int32*,libffmpeg.AVPacket*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4008">
 Decode the audio frame of size avpkt-&gt;size from avpkt-&gt;data into samples.
 Some decoders may support multiple frames in a single AVPacket, such
 decoders would then just decode the first frame. In this case,
 avcodec_decode_audio3 has to be called again with an AVPacket that contains
 the remaining data in order to decode the second frame etc.
 If no frame
 could be outputted, frame_size_ptr is zero. Otherwise, it is the
 decompressed frame size in bytes.

 @warning You must set frame_size_ptr to the allocated size of the
 output buffer before calling avcodec_decode_audio3().

 @warning The input buffer must be FF_INPUT_BUFFER_PADDING_SIZE larger than
 the actual read bytes because some optimized bitstream readers read 32 or 64
 bits at once and could read over the end.

 @warning The end of the input buffer avpkt-&gt;data should be set to 0 to ensure that
 no overreading happens for damaged MPEG streams.

 @note You might have to align the input buffer avpkt-&gt;data and output buffer
 samples. The alignment requirements depend on the CPU: On some CPUs it isn't
 necessary at all, on others it won't work at all if not aligned and on others
 it will work but it will have an impact on performance.

 In practice, avpkt-&gt;data should have 4 byte alignment at minimum and
 samples should be 16 byte aligned unless the CPU doesn't need it
 (AltiVec and SSE do).

 @note Codecs which have the CODEC_CAP_DELAY capability set have a delay
 between input and output, these need to be fed with avpkt-&gt;data=NULL,
 avpkt-&gt;size=0 at the end to return the remaining frames.

 @param avctx the codec context
 @param[out] samples the output buffer, sample type in avctx-&gt;sample_fmt
 @param[in,out] frame_size_ptr the output buffer size in bytes
 @param[in] avpkt The input AVPacket containing the input buffer.
            You can create such packet with av_init_packet() and by then setting
            data and size, some decoders might in addition need other fields.
            All decoders are designed to use the least fields possible though.
 @return On error a negative value is returned, otherwise the number of bytes
 used or zero if no frame data was decompressed (used) from the input AVPacket.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avcodec_decode_video2(libffmpeg.AVCodecContext*,libffmpeg.AVFrame*,System.Int32*,libffmpeg.AVPacket*)'. -->
<member name="M:libffmpeg.avcodec_decode_subtitle2(libffmpeg.AVCodecContext*,libffmpeg.AVSubtitle*,System.Int32*,libffmpeg.AVPacket*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4100">
 * Decode a subtitle message.
 * Return a negative value on error, otherwise return the number of bytes used.
 * If no subtitle could be decompressed, got_sub_ptr is zero.
 * Otherwise, the subtitle is stored in *sub.
 * Note that CODEC_CAP_DR1 is not available for subtitle codecs. This is for
 * simplicity, because the performance difference is expect to be negligible
 * and reusing a get_buffer written for video codecs would probably perform badly
 * due to a potentially very different allocation pattern.
 *
 * @param avctx the codec context
 * @param[out] sub The AVSubtitle in which the decoded subtitle will be stored, must be
                   freed with avsubtitle_free if *got_sub_ptr is set.
 * @param[in,out] got_sub_ptr Zero if no subtitle could be decompressed, otherwise, it is nonzero.
 * @param[in] avpkt The input AVPacket containing the input buffer.

</member>
<member name="M:libffmpeg.avsubtitle_free(libffmpeg.AVSubtitle*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4120">
 Frees all allocated data in the given subtitle struct.

 @param sub AVSubtitle to free.

</member>
<member name="M:libffmpeg.avcodec_encode_audio(libffmpeg.AVCodecContext*,System.Byte*,System.Int32,System.Int16!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4127">
 Encode an audio frame from samples into buf.

 @note The output buffer should be at least FF_MIN_BUFFER_SIZE bytes large.
 However, for PCM audio the user will know how much space is needed
 because it depends on the value passed in buf_size as described
 below. In that case a lower value can be used.

 @param avctx the codec context
 @param[out] buf the output buffer
 @param[in] buf_size the output buffer size
 @param[in] samples the input buffer containing the samples
 The number of samples read from this buffer is frame_size*channels,
 both of which are defined in avctx.
 For PCM audio the number of samples read from samples is equal to
 buf_size * input_sample_size / output_sample_size.
 @return On error a negative value is returned, on success zero or the number
 of bytes used to encode the data read from the input buffer.

</member>
<member name="M:libffmpeg.avcodec_encode_video(libffmpeg.AVCodecContext*,System.Byte*,System.Int32,libffmpeg.AVFrame!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4149">
 Encode a video frame from pict into buf.
 The input picture should be
 stored using a specific format, namely avctx.pix_fmt.

 @param avctx the codec context
 @param[out] buf the output buffer for the bitstream of encoded frame
 @param[in] buf_size the size of the output buffer in bytes
 @param[in] pict the input picture to encode
 @return On error a negative value is returned, on success zero or the number
 of bytes used from the output buffer.

</member>
<member name="M:libffmpeg.avcodec_register_all" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4168">
 Register all the codecs, parsers and bitstream filters which were enabled at
 configuration time. If you do not call this function you can select exactly
 which formats you want to support, by using the individual registration
 functions.

 @see avcodec_register
 @see av_register_codec_parser
 @see av_register_bitstream_filter

</member>
<member name="M:libffmpeg.avcodec_flush_buffers(libffmpeg.AVCodecContext*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4180">
Flush buffers, should be called when seeking or when switching to a different stream.

</member>
<member name="M:libffmpeg.av_get_pict_type_char(System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4190">
 Return a single letter to describe the given picture type pict_type.

 @param[in] pict_type the picture type
 @return A single character representing the picture type.
 @deprecated Use av_get_picture_type_char() instead.

</member>
<member name="M:libffmpeg.av_get_bits_per_sample(libffmpeg.CodecID)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4201">
 Return codec bits per sample.

 @param[in] codec_id the codec
 @return Number of bits per sample or zero if unknown for the given codec.

</member>
<member name="M:libffmpeg.av_get_bits_per_sample_format(libffmpeg.AVSampleFormat)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4210">
@deprecated Use av_get_bytes_per_sample() instead.

</member>
<member name="F:libffmpeg.AVCodecParserContext.repeat_pict" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4227">
 This field is used for proper frame duration computation in lavf.
 It signals, how much longer the frame duration of the current frame
 is compared to normal frame duration.

 frame_duration = (1 + repeat_pict) * time_base

 It is used by codecs like H.264 to display telecined material.

</member>
<member name="F:libffmpeg.AVCodecParserContext.offset" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4254">
Set if the parser has a valid file offset
</member>
<member name="F:libffmpeg.AVCodecParserContext.key_frame" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4260">
Set by parser to 1 for key frames and 0 for non-key frames.
It is initialized to -1, so if the parser doesn't set this flag,
old-style fallback using AV_PICTURE_TYPE_I picture type as key frames
will be used.

</member>
<member name="F:libffmpeg.AVCodecParserContext.convergence_duration" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4268">
 Time difference in stream time base units from the pts of this
 packet to the point at which the output from the decoder has converged
 independent from the availability of previous frames. That is, the
 frames are virtually identical no matter if decoding started from
 the very first frame or from this keyframe.
 Is AV_NOPTS_VALUE if unknown.
 This field is not the display duration of the current frame.
 This field has no meaning if the packet does not have AV_PKT_FLAG_KEY
 set.

 The purpose of this field is to allow seeking in streams that have no
 keyframes in the conventional sense. It corresponds to the
 recovery point SEI in H.264 and match_time_delta in NUT. It is also
 essential for some types of subtitle streams to ensure that all
 subtitles are correctly displayed after seeking.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecParserContext.dts_sync_point'. -->
<member name="F:libffmpeg.AVCodecParserContext.dts_ref_dts_delta" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4299">
 Offset of the current timestamp against last timestamp sync point in
 units of AVCodecContext.time_base.

 Set to INT_MIN when dts_sync_point unused. Otherwise, it must
 contain a valid timestamp offset.

 Note that the timestamp of sync point has usually a nonzero
 dts_ref_dts_delta, which refers to the previous sync point. Offset of
 the next frame after timestamp sync point will be usually 1.

 For example, this corresponds to H.264 cpb_removal_delay.

</member>
<member name="F:libffmpeg.AVCodecParserContext.pts_dts_delta" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4314">
 Presentation delay of current frame in units of AVCodecContext.time_base.

 Set to INT_MIN when dts_sync_point unused. Otherwise, it must
 contain valid non-negative timestamp delta (presentation time of a frame
 must not lie in the past).

 This delay represents the difference between decoding and presentation
 time of the frame.

 For example, this corresponds to H.264 dpb_output_delay.

</member>
<member name="F:libffmpeg.AVCodecParserContext.cur_frame_pos" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4328">
 Position of the packet in file.

 Analogous to cur_frame_pts/dts

</member>
<member name="F:libffmpeg.AVCodecParserContext.pos" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4335">
Byte position of currently parsed frame in stream.

</member>
<member name="F:libffmpeg.AVCodecParserContext.last_pos" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4340">
Previous frame byte position.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_parser_parse2(libffmpeg.AVCodecParserContext*,libffmpeg.AVCodecContext*,System.Byte**,System.Int32*,System.Byte!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Int64,System.Int64,System.Int64)'. -->
<member name="M:libffmpeg.av_fast_realloc(System.Void*,System.UInt32*,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4437">
 Reallocate the given block if it is not large enough, otherwise do nothing.

 @see av_realloc

</member>
<member name="M:libffmpeg.av_fast_malloc(System.Void*,System.UInt32*,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4444">
 Allocate a buffer, reusing the given one if large enough.

 Contrary to av_fast_realloc the current buffer contents might not be
 preserved and on error the old buffer is freed, thus no special
 handling to avoid memleaks is necessary.

 @param ptr pointer to pointer to already allocated buffer, overwritten with pointer to new buffer
 @param size size of the buffer *ptr points to
 @param min_size minimum size of *ptr buffer after returning, *ptr will be NULL and
                 *size 0 if an error occurred.

</member>
<member name="M:libffmpeg.av_picture_copy(libffmpeg.AVPicture*,libffmpeg.AVPicture!System.Runtime.CompilerServices.IsConst*,libffmpeg.PixelFormat,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4458">
Copy image src to dst. Wraps av_picture_data_copy() above.

</member>
<member name="M:libffmpeg.av_picture_crop(libffmpeg.AVPicture*,libffmpeg.AVPicture!System.Runtime.CompilerServices.IsConst*,libffmpeg.PixelFormat,System.Int32,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4464">
Crop image top and left side.

</member>
<member name="M:libffmpeg.av_picture_pad(libffmpeg.AVPicture*,libffmpeg.AVPicture!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Int32,libffmpeg.PixelFormat,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4470">
Pad image.

</member>
<member name="M:libffmpeg.av_xiphlacing(System.Byte*,System.UInt32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4476">
 Encode extradata length to a buffer. Used by xiph codecs.

 @param s buffer to write to; must be at least (v/255+1) bytes long
 @param v size of extradata in bytes
 @return number of bytes written to the buffer.

</member>
<member name="M:libffmpeg.av_log_missing_feature(System.Void*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4485">
Logs a generic warning message about a missing feature. This function is
intended to be used internally by FFmpeg (libavcodec, libavformat, etc.)
only, and would normally not be used by applications.
@param[in] avc a pointer to an arbitrary struct of which the first field is
a pointer to an AVClass struct
@param[in] feature string containing the name of the missing feature
@param[in] want_sample indicates if samples are wanted which exhibit this feature.
If want_sample is non-zero, additional verbage will be added to the log
message which tells the user how to report samples to the development
mailing list.

</member>
<member name="M:libffmpeg.av_log_ask_for_sample(System.Void*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4499">
Log a generic warning message asking for a sample. This function is
intended to be used internally by FFmpeg (libavcodec, libavformat, etc.)
only, and would normally not be used by applications.
@param[in] avc a pointer to an arbitrary struct of which the first field is
a pointer to an AVClass struct
@param[in] msg string containing an optional message, or NULL if no message

</member>
<member name="M:libffmpeg.av_register_hwaccel(libffmpeg.AVHWAccel*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4509">
Register the hardware accelerator hwaccel.

</member>
<member name="M:libffmpeg.av_hwaccel_next(libffmpeg.AVHWAccel*)" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4514">
If hwaccel is NULL, returns the first registered hardware accelerator,
if hwaccel is non-NULL, returns the next registered hardware accelerator
after hwaccel, or NULL if hwaccel is the last one.

</member>
<member name="T:libffmpeg.AVLockOp" decl="false" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4522">
Lock operation used by lockmgr

</member>
<member name="M:libffmpeg.av_lockmgr_register(=FUNC:System.Int32(System.Void**,libffmpeg.AVLockOp))" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4532">
 Register a user provided lock manager supporting the operations
 specified by AVLockOp. mutex points to a (void *) where the
 lockmgr should store/get a pointer to a user allocated mutex. It's
 NULL upon AV_LOCK_CREATE and != NULL for all other ops.

 @param cb User defined callback. Note: FFmpeg may invoke calls to this
           callback during the call to av_lockmgr_register().
           Thus, the application must be prepared to handle that.
           If cb is set to NULL the lockmgr will be unregistered.
           Also note that during unregistration the previously registered
           lockmgr callback may also be invoked.

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4547">
Get the type of the given codec.

</member>
<member name="M:libffmpeg.avcodec_get_class" decl="true" source="d:\cppws\ispy\ispy source\video.ffmpeg\ffmpeg\include\libavcodec\avcodec.h" line="4552">
 Get the AVClass for AVCodecContext. It can be used in combination with
 AV_OPT_SEARCH_FAKE_OBJ for examining options.

 @see av_opt_find().

</member>
</members>
</doc>