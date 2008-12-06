
(**
   Automatically opened module.

   @topic IO
   @topic Printing
   @topic Files
*)
module Standard = Extlib.ExtPervasives.Pervasives

(** Access to the modules provided by INRIA. 

    For more information, see the documentation of OCaml.

    @topic Legacy
*)
module Legacy = struct
  (**/**)
  module Array     = Array
  module ArrayLabels= ArrayLabels
  module Bigarray  = Bigarray
  module Hashtbl   = Hashtbl
  module Queue     = Queue
  module Stack     = Stack
  module Stream    = Stream
  module Lazy      = Lazy
  module List      = List
  module ListLabels= ListLabels
  module Map       = Map
  module MoreLabels= MoreLabels
  module Set       = Set
  module Big_int   = Big_int
  module Complex   = Complex
  module Int32     = Int32
  module Int64     = Int64
  module Num       = Num
  module Buffer    = Buffer
  module Char      = Char
  module String    = String
  module StringLabels = StringLabels
  module Genlex    = Genlex
  module Lexing    = Lexing
  module Parsing   = Parsing
  module Scanf     = Scanf
  module Str       = Str
  module Format    = Format
  module Printexc  = Printexc
  module Printf    = Printf
  module Marshal   = Marshal
  module Oo        = Oo
  module Callback  = Callback
  module Gc        = Gc
  module Weak      = Weak
  module Obj       = Obj
  module CamlinternalMod = CamlinternalMod
  module CamlinternalOO  = CamlinternalOO
  module Arg       = Arg
  module Filename  = Filename
  module Unix      = Unix
  module UnixLabels= UnixLabels
  module Sys       = Sys
  module Random    = Random
  module Pervasives = Pervasives
    (**/**)
end

(**
   Preview of future modules.

   @topic Future
*)
module  Future =
struct
(*  module Lexers = Extlib.ExtGenlex.Languages*)
  module  Genlex     = Extlib.ExtGenlex.Genlex
  module  CharParser = Extlib.CharParser
  module UCharParser = Extlib.UCharParser
  module ParserCo    = Extlib.ParserCo
end
        
(**
   {1 Control}

   @topic Control flow
*)

module  Exceptions= Extlib.ExtPrintexc.Printexc
module  Return   = Extlib.Return
module  Monad    = Extlib.Monad

(**
   {2 Concurrency}

   @topic Concurrency
*)

module  Concurrency = Extlib.Concurrent

(**
   {3 Built-in threads}

   These modules are only defined in multi-threaded versions of OCaml Batteries
   Included. To use a multi-threaded version, please see {{:???}the documentation}.
*)

module  Condition = Condition
module  Event     = Event
module  Mutex     = Extlib_threads.ExtMutex.Mutex
module  RMutex    = Extlib_threads.RMutex
module  Thread    = Thread

(**
   All the definitions of built-in concurrency primitives.

   These definitions are grouped as one module to allow simple replacement of these
   primitives by other implementations of concurrency, such as coThreads.

   @inline none
*)
module  Threads   =
struct
  module Condition = Condition
  module Event     = Event
  module Mutex     = Mutex
  module RMutex    = RMutex
  module Thread    = Thread
end

(*
  {3 coThreads}

  Not implemented yet.

module  CoCondition = CoThread.Condition
module  CoEvent     = CoThread.Event
module  CoMutex     = CoThread.Mutex
module  CoRMutex    = CoThread.RMutex
module  CoThread    = CoThread.Thread
module  Threads   =
struct
  module Condition = CoCondition
  module Event     = CoEvent
  module Mutex     = CoMutex
  module RMutex    = CoRMutex
  module Thread    = CoThread
end
*)

(*
  {3 Shared memory}
  Not implemented yet
*)

(**{1 Input/Output}

   @topic IO*)

module  IO = Extlib.IO
(*module Netchannels (*also with topic Network*)*)


(**{2 Compression / decompression}

   @topic Compression
   @topic Decompression
*)

module  Codec = Libs.Common.Compress
module  GZip  = Libs.GZip
(*
module  Bz2
module  Zip
module  Transcode  (*Unicode transcoding*)
*)

(**{1 Data containers}

   @topic Data
   @topic Container*)

(**
   {2 Mutable data containers}

   @topic Mutable
*)

module  Array    = Extlib.ExtArray.Array
module  Bigarray = Extlib.ExtBigarray.Bigarray
module  Enum     = Extlib.Enum
module  Global   = Extlib.Global
module  Hashtbl  = Extlib.ExtHashtbl.Hashtbl
module  RefList  = Extlib.RefList 
module  Queue    = Extlib.ExtQueue.Queue
module  Ref      = Extlib.Ref
module  Stack    = Extlib.ExtStack.Stack
module  Stream   = Extlib.ExtStream.Stream
         
  
(**
   {2 Persistent data containers}

   @topic Persistent
*)      

module  Lazy     = Lazy
module  List     = Extlib.ExtList.List
module  Map      = Extlib.ExtMap.Map
module  Option   = Extlib.Option
module  PMap     = Extlib.PMap
module  PSet     = Extlib.PSet
module  Set      = Extlib.ExtSet.Set

(**{1 Data}

   @topic Data
*)

module  Unit     = Extlib.ExtUnit.Unit

(**{2 Logical data}

   @topic Logical
   @topic Boolean
*)

module  Bool     = Extlib.ExtBool.Bool
module  BitSet   = Extlib.BitSet

(**{2 Numeric data}

   @topic Numeric
*)

module  Numeric  = Extlib.Number 
module  Big_int  = Extlib.ExtBig_int.Big_int
module  Complex  = Extlib.ExtComplex.Complex
module  Float    = Extlib.ExtFloat.Float
module  Int      = Extlib.ExtInt.Int
module  Int32    = Extlib.ExtInt32.Int32
module  Int64    = Extlib.ExtInt64.Int64
module  Native_int=Extlib.ExtNativeint.Native_int
module  Num      = Extlib.ExtNum.Num
(*module  Safe_float (*placeholder*)*)
module  Safe_int = Extlib.ExtInt.Safe_int

(**{2 Textual data}

   @topic Textual*)


(*module  Text (*Definition of text-related interfaces*)*)
module  Buffer  = Extlib.ExtBuffer.Buffer
module  Char    = Extlib.ExtChar.Char
module  UTF8    = Extlib.ExtUTF8.UTF8
module  Rope    = Extlib.Rope
module  UChar   = Extlib.ExtUChar.UChar
module  String  = Extlib.ExtString.String
(*module  StringText (A module containing aliases to String and modified
        Char)*)
(*module  RopeText (As StringText but with implementations from Rope and
        UChar
    70module  UTF8Text (*As StringText but with implementations from UTF8 and*)
        UChar 
module  Labels*)
         

(**{1 Tools included in the distribution}

   @topic Distribution
*)

(**{2 External tools}

   @topic Externals
*)

module  Packages = Toolchain.Batlib_Findlib_Findlib
module  Compilers= Toolchain.Builtin_tools

(**{2 Language internals}

   Here be dragons.

   @topic Internals
*)
module  Callback = Callback
module  Gc       = Extlib.ExtGc.Gc
module  Marshal  = Extlib.ExtMarshal.Marshal
module  Modules  = Batlib_Baselib_CamlinternalMod
module  Oo       = Extlib.ExtOo.Oo
module  Weak     = Weak

         
(*
              =====module  Network (*placeholders*) =====
module  URL
module  Netencoding 
module  Base64
module  QuotedPrintable
module  Q
module  URL
module  Html
         
              ====module module  Http ====
module  Http
module  Http_client
module  Cgi_*
module  Httpd_*
module  MIME  
              ====module module  Ftp ====
module  Ftp_client  
              ====module module  Mail ====
module  Netmail
module  Pop
module  Sendmail
module  Smtp  
              ====module module  Generic server ====
module  Netplex_*  
              ====module module  RPC ====
module  Rpc_*  
              ====module module  Languages ====*)

module  Genlex = Genlex
module  Lexing = Lexing
module  Parsing= Parsing
module  Format = Format
module  Printf = Extlib.ExtPrintf.Printf
module  Str    = Str
(*   100module  PCRE (*placeholder*)*)
module  Scanf  = Scanf
module  SExpr  = Toolchain.Batlib_Sexp_Conv


(**{1 Operations on the system}

   @topic System
*)

module  Arg = Arg
module  File= Extlib.File
module  OptParse = Extlib.OptParse
(*module  Path:placeholder*)
module  Shell = Sys
module  Unix  = Unix
(*module  Equeue:placeholder*)


(**{1 Unclassified}*)

module Digest = Digest
module Random = Random
(*module Date:placeholder*)
