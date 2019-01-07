;;; Compiled snippets and support files for `c++-mode'
;;; contents of the .yas-setup.el support file:
;;;
(require 'yasnippet)

(defun yas-c++-class-name (str)
  "Search for a class name like `DerivedClass' in STR
(which may look like `DerivedClass : ParentClass1, ParentClass2, ...')

If found, the class name is returned, otherwise STR is returned"
  (yas-substr str "[^: ]*"))

(defun yas-c++-class-method-declare-choice ()
  "Choose and return the end of a C++11 class method declaration"
  (yas-choose-value '(";" " = default;" " = delete;")))
;;; Snippet definitions:
;;;
(yas-define-snippets 'c++-mode
		     '(("vec" "std::vector<${1:Class}> ${2:var}${3:(${4:10}, $1($5))};" "vector" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/vector" nil nil)
		       ("using" "using namespace ${std};\n$0" "using namespace ..." nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/using" nil nil)
		       ("uqe" "auto pos = std::unique(std::begin(${1:container}), std::end($1));\n$0\n" "unique" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/uqe" nil nil)
		       ("upr" "std::transform(std::begin(${1:container}), std::end($1), std::begin($1), [](char c) {\nreturn std::toupper(c);\n});\n$2\n$0\n" "transform" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/upr" nil nil)
		       ("ucp" "std::unique_copy(std::begin(${1:container}), std::end($1),\n  std::ostream_iterator<string>(std::cout, \"\\n\"));\n$0\n" "unique_copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ucp" nil nil)
		       ("tryw" "try {\n    `(or yas/selected-text (car kill-ring))`\n} catch ${1:Exception} {\n\n}\n" "tryw" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/tryw" nil nil)
		       ("try" "try {\n    $0\n} catch (${1:type}) {\n\n}\n" "try" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/try" nil nil)
		       ("trm" "${1:container}.erase($1.find_last_not_of(\" \\t\\n\\r\") + 1);\n$0\n" "generate_n" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/trm" nil nil)
		       ("throw" "throw ${1:MyError}($0);" "throw" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/throw" nil nil)
		       ("th" "this" "this" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/this" nil nil)
		       ("tfm" "std::transform(std::begin(${1:container}), std::end($1),\n  std::begin($1), []($2) {\n$3%\n});\n$0\n" "transform" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/tfm" nil nil)
		       ("ts" "BOOST_AUTO_TEST_SUITE( ${1:test_suite1} )\n\n$0\n\nBOOST_AUTO_TEST_SUITE_END()" "test_suite" nil
			("testing")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/test_suite" nil nil)
		       ("test_main" "int main(int argc, char **argv)\n{\n      ::testing::InitGoogleTest(&argc, argv);\n       return RUN_ALL_TESTS();\n}" "test_main" nil
			("testing")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/test_main" nil nil)
		       ("tc" "BOOST_AUTO_TEST_CASE( ${1:test_case} )\n{\n        $0\n}" "test case" nil
			("testing")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/test case" nil nil)
		       ("temp" "template<${1:$$(yas/choose-value '(\"typename\" \"class\"))} ${2:T}>\n$0" "template" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/template" nil nil)
		       ("swr" "std::swap_ranges(std::begin(${1:container}), std::end($1), std::begin($2));\n$0\n" "swap_ranges" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/swr" nil nil)
		       ("stv" "std::vector<$2> $3\n$0\n" "vector" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/stv" nil nil)
		       ("sts" "std::stable_sort(std::begin(${1:container}), std::end($1));\n$0\n" "stable_sort" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/sts" nil nil)
		       ("str" "#include <string>" "str" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/str" nil nil)
		       ("sto" "std::cout <<\n$0\n" "cout" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/sto" nil nil)
		       ("sti" "std::cin >>\n$0\n" "cin" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/sti" nil nil)
		       ("sth" "std::sort_heap(std::begin(${1:container}), std::end($1));\n$0\n" "sort_heap" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/sth" nil nil)
		       ("st" "std::$0" "std::" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/std_colon" nil nil)
		       ("std" "using namespace std;" "std" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/std" nil nil)
		       ("ss" "#include <sstream>" "<sstream>" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/sstream" nil nil)
		       ("srt" "std::sort(std::begin(${1:container}), std::end($1));\n$0\n" "sort" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/srt" nil nil)
		       ("srn" "auto pos = std::search_n(std::begin(${1:container}), std::end($1),$2,$3);\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "search_n" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/srn" nil nil)
		       ("srh" "auto pos = std::search(std::begin(${1:container}), std::end($1),\n  std::begin($2), std::end($3));\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "search" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/srh" nil nil)
		       ("spt" "auto pos = std::stable_partition(std::begin(${1:container}), std::end($1), []($2) {\n  $3});\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "stable_partition" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/spt" nil nil)
		       ("shf" "std::random_shuffle(std::begin(${1:container}), std::end($1));\n$0\n" "random_shuffle" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/shf" nil nil)
		       ("rvr" "std::reverse(std::begin(${1:container}), std::end($1));\n$0\n" "reverse" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rvr" nil nil)
		       ("rvc" "std::reverse_copy(std::begin(${1:container}), std::end($1), std::begin($2));\n$0\n" "reverse_copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rvc" nil nil)
		       ("rte" "std::rotate(std::begin(${1:container}), std::begin($2), std::end($1));\n$0\n" "rotate" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rte" nil nil)
		       ("rtc" "std::rotate_copy(std::begin(${1:container}), std::begin($2), std::end($1),\n  std::begin($3));\n$0\n" "rotate_copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rtc" nil nil)
		       ("rpl" "std::replace(std::begin(${1:container}), std::end($1), $2, $3);\n$0\n" "replace" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rpl" nil nil)
		       ("rpi" "std::replace_if(std::begin(${1:container}), std::end($1), []($2) {\n$3\n}, $4);\n$0\n" "replace_if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rpi" nil nil)
		       ("rpc" "std::replace_copy(std::begin(${1:container}), std::end($1), std::begin($1), $2, $3);\n$0\n" "replace_copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rpc" nil nil)
		       ("rmv" "auto pos = std::remove(std::begin(${1:container}), std::end($1), $2);\nif (pos != std::end($1)) {\n  $3\n}\n$0\n" "remove" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rmv" nil nil)
		       ("rmi" "auto pos = std::remove_if(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n});\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "remove_if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rmi" nil nil)
		       ("rmf" "std::remove_copy_if(std::begin(${1:container}), std::end($1),\n  std::begin($1), []($2) {\n    $3\n});\n$0\n" "remove_copy_if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rmf" nil nil)
		       ("rmc" "std::remove_copy(std::begin(${1:container}), std::end($1),\n  std::begin($1), $2);\n$0\n" "remove_copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rmc" nil nil)
		       ("rci" "std::replace_copy_if(std::begin(${1:container}), std::end($1),\n  std::begin($1), []($2) {\n  $3\n}, $4);\n$0\n" "replace_copy_if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/rci" nil nil)
		       ("pb" "public:\n        $0" "public" nil nil
			((yas-also-auto-indent-first-line t))
			"/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/public" nil nil)
		       ("ptn" "auto pos = std::partition(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n});\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "partition" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ptn" nil nil)
		       ("ptc" "std::partition_copy(std::begin(${1:container}), std::end($1),\n                  std::begin($2), std::end($3));\n$0\n" "partition_copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ptc" nil nil)
		       ("pst" "std::partial_sort(std::begin(${1:container}), std::end($1), std::end($1));\n$0\n" "partial_sort" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/pst" nil nil)
		       ("psc" "std::partial_sort_copy(std::begin(${1:container}), std::end($1),\n                  std::begin($2), std::end($3));\n$0\n" "partial_sort_copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/psc" nil nil)
		       ("prp" "if (std::prev_permutation(std::begin(${1:container}), std::end($1))) {\n  $2\n}\n$0\n" "prev_permutation" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/prp" nil nil)
		       ("pt" "protected:\n        $0" "protected" nil nil
			((yas-also-auto-indent-first-line t))
			"/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/protected" nil nil)
		       ("pr" "private:\n        $0" "private" nil nil
			((yas-also-auto-indent-first-line t))
			"/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/private" nil nil)
		       ("ppt" "auto pos = std::partition_point(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n});\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "partition_point" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ppt" nil nil)
		       ("phh" "std::push_heap(std::begin(${1:container}), std::end($1));\n$0\n" "push_heap" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/phh" nil nil)
		       ("pack" "void cNetCommBuffer::pack(${1:type})\n{\n\n}\n\n$0" "pack" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/pack" nil nil)
		       ("os" "#include <ostream>" "ostream" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ostream" nil nil)
		       ("<<" "std::ostream& operator<<(std::ostream& os, const ${1:Class}& ${2:c})\n{\n         $0\n         return os;\n}" "operator<<" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator_ostream" nil nil)
		       (">>" "std::istream& operator>>(std::istream& is, const ${1:Class}& ${2:c})\n{\n         $0\n	 return is;\n}" "operator>>" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator_istream" nil nil)
		       ("[]" "${1:Type}& operator[](${2:int index})\n{\n        $0\n}" "operator[]" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator[]" nil nil)
		       ("==" "bool ${1:MyClass}::operator==(const $1 &other) const\n{\n     $0\n}" "operator==" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator==" nil nil)
		       ("=" "${1:MyClass}& $1::operator=(const $1 &rhs)\n{\n    // Check for self-assignment!\n    if (this == &rhs)\n      return *this;\n    $0\n    return *this;\n}" "operator=" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator=" nil nil)
		       ("+=" "${1:MyClass}& $1::operator+=(${2:const $1 &rhs})\n{\n  $0\n  return *this;\n}" "operator+=" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator+=" nil nil)
		       ("+" "${1:MyClass} $1::operator+(const $1 &other)\n{\n    $1 result = *this;\n    result += other;\n    return result;\n}" "operator+" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator+" nil nil)
		       ("!=" "bool ${1:MyClass}::operator!=(const $1 &other) const\n{\n    return !(*this == other);\n}" "operator!=" nil
			("operator overloading")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/operator!=" nil nil)
		       ("oit" "std::copy(std::begin(${1:container}), std::end($1), std::ostream_iterator<$2>{\n%\\istd::cout, \"$3\"\n});\n$0\n" "copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/oit" nil nil)
		       ("nxp" "if (std::next_permutation(std::begin(${1:container}), std::end($1))) {\n  $2\n}\n$0\n" "next_permutation" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/nxp" nil nil)
		       ("nth" "std::nth_element(std::begin(${1:container}), std::end($1), std::end($1));\n$0\n" "nth_element" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/nth" nil nil)
		       ("ns" "namespace " "namespace ..." nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ns" nil nil)
		       ("nno" "if (std::none_of(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n})) {\n  $4\n}\n$0\n" "none_of" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/nno" nil nil)
		       ("ns" "namespace ${1:Namespace} {\n\n          `yas/selected-text`\n\n}  // $1" "namespace" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/namespace" nil nil)
		       ("mxe" "auto pos = std::max_element(std::begin(${1:container}), std::end($1));\n$0\n" "max_element" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/mxe" nil nil)
		       ("msm" "auto values = std::mismatch(std::begin(${1:container}), std::end($1), std::begin($1));\nif (values.first == std::end($1)) {\n  $2\n} else {\n  $3\n}\n$0\n" "mismatch" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/msm" nil nil)
		       ("mrg" "std::merge(std::begin(${1:container}), std::end($1),\nstd::begin($2), std::end($3), std::begin($4));\n$0\n" "merge" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/mrg" nil nil)
		       ("mpb" "std::move_backward(std::begin(${1:container}), std::end($1), std::end($1));\n$0\n" "move_backward" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/mpb" nil nil)
		       ("mod" "class ${1:Class} : public cSimpleModule\n{\n   $0\n}" "module" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/module" nil nil)
		       ("mne" "auto pos = std::min_element(std::begin(${1:container}), std::end($1));\n$0\n" "min_element" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/mne" nil nil)
		       ("mme" "auto minmax = std::minmax_element(std::begin(${1:container}), std::end($1));\n$0\n" "minmax_element" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/mme" nil nil)
		       ("mkh" "std::make_heap(std::begin(${1:container}), std::end($1));\n$0\n" "make_heap" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/mkh" nil nil)
		       ("mf" "${1:type} ${2:Class}::${3:name}(${4:args})${5: const}\n{\n        $0\n}\n" "member_function" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/member_function" nil nil)
		       ("map" "std::map<${1:type1}$0> ${2:var};" "map" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/map" nil nil)
		       ("lxc" "if (std::lexigraphical_compare(std::begin(${1:container}), std::end($1),\n  std::begin($2), std::end($3)) {\n  $4\n}\n$0\n" "lexigraphical_compare" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/lxc" nil nil)
		       ("lwr" "std::transform(std::begin(${1:container}), std::end($1), std::begin($1), [](char c) {\nreturn std::tolower(c);});\n$0\n" "string to lower case" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/lwr" nil nil)
		       ("ltr" "${1:container}.erase(0, $1.find_first_not_of(\" \\t\\n\\r\"));\n$0\n" "remove whitespace at beginning" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ltr" nil nil)
		       ("iter" "${1:std::}${2:vector<int>}::iterator ${3:iter};\n" "iterator" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/iterator" nil nil)
		       ("ita" "std::iota(std::begin(${1:container}), std::end($1), $2);\n$0\n" "iota" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ita" nil nil)
		       ("isu" "auto pos = std::is_sorted_until(std::begin(${1:container}), std::end($1));\nif (pos != std::end($1)) {\n  $2\n}\n$0\n" "is_sorted_until" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/isu" nil nil)
		       ("iss" "if (std::is_sorted(std::begin(${1:container}), std::end($1))) {\n  $2\n}\n$0\n" "is_sorted" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/iss" nil nil)
		       ("ipt" "if (std::is_partitioned(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n})) {\n  $4\n}\n$0\n" "is_partitioned" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ipt" nil nil)
		       ("ipr" "if (std::is_permutation(std::begin(${1:container}), std::end($1), std::begin($2))) {\n  $3\n}\n$0\n" "is_permutation" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ipr" nil nil)
		       ("io" "#include <iostream>" "io" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/io" nil nil)
		       ("il" "inline $0" "inline" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/inline" nil nil)
		       ("ihu" "auto pos = std::is_heap_until(std::begin(${1:container}), std::end($1));\nif (pos != std::end($1)) {\n  $2\n}\n$0\n" "is_heap_until" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ihu" nil nil)
		       ("ihp" "if (std::is_heap(std::begin(${1:container}), std::end($1))) {\n  $2\n}\n$0\n" "is_heap" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ihp" nil nil)
		       ("ignore" "${1:std::}cin.ignore(std::numeric_limits<std::streamsize>::max(), '\\n');" "ignore" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ignore" nil nil)
		       ("gtest" "#include <gtest/gtest.h>" "gtest" nil
			("testing")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/gtest" nil nil)
		       ("gnr" "std::generate(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n});\n$0\n" "generate" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/gnr" nil nil)
		       ("gnn" "std::generate_n(std::begin(${1:container}), $2, []($3) {\n  $4\n});\n$0\n" "generate_n" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/gnn" nil nil)
		       ("f" "${1:type} ${2:name}(${3:args})${4: const};" "fun_declaration" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fun_declaration" nil nil)
		       ("fr" "friend $0;" "friend" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/friend" nil nil)
		       ("fre" "std::for_each(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n});\n$0\n" "for_each" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fre" nil nil)
		       ("fori" "for (${1:auto }${2:it} = ${3:var}.begin(); $2 != $3.end(); ++$2) {\n    $0\n}" "fori" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fori" nil nil)
		       ("fni" "auto pos = std::find_if(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n});\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "find_if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fni" nil nil)
		       ("fne" "auto pos = std::find_std::end(std::begin(${1:container}), std::end($1),\n  std::begin($2), std::end($3));\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "find_end" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fne" nil nil)
		       ("fnd" "auto pos = std::find(std::begin(${1:container}), std::end($1), $2);\nif (pos != std::end($1)) {\n  $3\n}\n$0\n" "find" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fnd" nil nil)
		       ("fln" "std::fill_n(std::begin(${1:container}), $2, $3);\n$0\n" "fill_n" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fln" nil nil)
		       ("fixt" "BOOST_FIXTURE_TEST_SUITE( ${1:name}, ${2:Fixture} )\n\n$0\n\nBOOST_AUTO_TEST_SUITE_END()" "fixture" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fixture" nil nil)
		       ("fin" "auto pos = std::find_if_not(std::begin(${1:container}), std::end($1),[]($2) {\n  $3\n});\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "find_if_not" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fin" nil nil)
		       ("fil" "std::fill(std::begin(${1:container}), std::end($1), $2);\n$0\n" "fill" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/fil" nil nil)
		       ("ffo" "auto pos = std::find_first_of(std::begin(${1:container}), std::end($1),\n  std::begin($2), std::end($3));\nif (pos != std::end($1)) {\n  $4\n}\n$0\n" "find_first_of" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ffo" nil nil)
		       ("erm" "${1:container}.erase(std::remove(std::begin($1), std::end($1), $2), std::end($1));\n$0\n" "remove" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/erm" nil nil)
		       ("eql" "if (std::equal(std::begin(${1:container}), std::end($1), std::begin($2))) {\n  $3\n}\n$0\n" "equal" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/eql" nil nil)
		       ("enum" "enum ${1:NAME}{\n$0\n};" "enum" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/enum" nil nil)
		       ("cast" "check_and_cast<${1:Type} *>(${2:msg});" "dynamic_casting" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/dynamic_casting" nil nil)
		       ("doc" "/**\n * $0\n */" "doc" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/doc" nil nil)
		       ("dla" "delete[] ${1:arr};" "delete[]" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/delete[]" nil nil)
		       ("dl" "delete ${1:pointer};" "delete" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/delete" nil nil)
		       ("<<" "friend std::ostream& operator<<(std::ostream&, const ${1:Class}&);" "d_operator<<" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/d_operator_ostream" nil nil)
		       (">>" "friend std::istream& operator>>(std::istream&, const ${1:Class}&);" "d_operator>>" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/d_operator_istream" nil nil)
		       ("c[" "const ${1:Type}& operator[](${2:int index}) const;" "d_operator[]_const" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/d_operator[]_const" nil nil)
		       ("[" "${1:Type}& operator[](${2:int index});" "d_operator[]" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/d_operator[]" nil nil)
		       ("<<" "friend std::ostream& operator<<(std::ostream&, const ${1:Class}&);" "d_operator<<" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/d_operator" nil nil)
		       ("d+=" "${1:MyClass}& operator+=(${2:const $1 &});" "d+=" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/d+=" nil nil)
		       ("cstd" "#include <cstdlib>" "cstd" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cstd" nil nil)
		       ("cpy" "std::copy(std::begin(${1:container}), std::end($1), std::begin($2));\n$0\n" "copy" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cpy" nil nil)
		       ("cpp" "#include \"`(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))`.h\"" "cpp" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cpp" nil nil)
		       ("cpn" "std::copy_n(std::begin(${1:container}), $2, std::end($1));\n$0\n" "copy_n" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cpn" nil nil)
		       ("cpi" "std::copy_if(std::begin(${1:container}), std::end($1), std::begin($2),\n[]($3) {\n  $4\n});\n$0\n" "copy_if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cpi" nil nil)
		       ("cpb" "std::copy_backward(std::begin(${1:container}), std::end($1), std::end($1));\n$0\n" "copy_backward" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cpb" nil nil)
		       ("cout" "`(progn (goto-char (point-min)) (unless (re-search-forward\n\"^using\\\\s-+namespace std;\" nil 'no-errer) \"std::\"))\n`cout << $0${1: << ${2:std::endl}};" "cout" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cout" nil nil)
		       ("ct" "${1:Class}::$1(${2:args}) ${3: : ${4:init}}\n{\n        $0\n}" "constructor" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/constructor" nil nil)
		       ("c[" "const ${1:Type}& operator[](${2:int index}) const\n{\n        $0\n}" "const_[]" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/const_[]" nil nil)
		       ("cnt" "auto n = std::count(std::begin(${1:container}), std::end($1), $2);\n$0\n" "count" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cnt" nil nil)
		       ("cni" "auto n = std::count_if(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n});\n$0\n" "count_if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cni" nil nil)
		       ("cls11" "class ${1:Name}\n{\npublic:\n${2:  ${3://! Default constructor\n  }${1:$(yas-c++-class-name yas-text)}()${4:;$(yas-c++-class-method-declare-choice)}\n\n}${5:  ${6://! Copy constructor\n  }${1:$(yas-c++-class-name yas-text)}(const ${1:$(yas-c++-class-name yas-text)} &other)${7:;$(yas-c++-class-method-declare-choice)}\n\n}${8:  ${9://! Move constructor\n  }${1:$(yas-c++-class-name yas-text)}(${1:$(yas-c++-class-name yas-text)} &&other)${10: noexcept}${11:;$(yas-c++-class-method-declare-choice)}\n\n}${12:  ${13://! Destructor\n  }${14:virtual }~${1:$(yas-c++-class-name yas-text)}()${15: noexcept}${16:;$(yas-c++-class-method-declare-choice)}\n\n}${17:  ${18://! Copy assignment operator\n  }${1:$(yas-c++-class-name yas-text)}& operator=(const ${1:$(yas-c++-class-name yas-text)} &other)${19:;$(yas-c++-class-method-declare-choice)}\n\n}${20:  ${21://! Move assignment operator\n  }${1:$(yas-c++-class-name yas-text)}& operator=(${1:$(yas-c++-class-name yas-text)} &&other)${22: noexcept}${23:;$(yas-c++-class-method-declare-choice)}\n\n}$0\n\nprotected:\nprivate:\n};" "class11" nil
			("c++11")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/class11" nil "d7c41f87-9b8a-479d-bb12-89f4cbdd46a7")
		       ("cls" "class ${1:Name}\n{\npublic:\n    ${1:$(yas/substr yas-text \"[^: ]*\")}();\n    ${2:virtual ~${1:$(yas/substr yas-text \"[^: ]*\")}();}\n};\n$0" "class" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/class" nil nil)
		       ("cin" "cin >> $0;" "cin" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cin" nil nil)
		       ("err" "cerr << $0;\n" "cerr" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/cerr" nil nil)
		       ("req" "BOOST_REQUIRE( ${1:condition} );\n$0" "boost_require" nil
			("boost")
			nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/boost_require" nil nil)
		       ("beginend" "${1:v}.begin(), $1.end" "v.begin(), v.end()" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/beginend" nil nil)
		       ("ass" "assert($0);" "assert" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/assert" nil nil)
		       ("ano" "if (std::any_of(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n})) {\n  $4\n}\n$0\n" "any_of" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ano" nil nil)
		       ("alo" "if (std::all_of(std::begin(${1:container}), std::end($1), []($2) {\n  $3\n})) {\n  $4\n}\n$0\n" "all_of" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/alo" nil nil)
		       ("ajf" "auto pos = std::adjacent_find(std::begin(${1:container}), std::end($1));\nif (pos != std::end($1)) {\n  $2\n}\n$0\n" "adjacent_find" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/ajf" nil nil)
		       ("acm" "auto sum = std::accumulate(std::begin(${1:container}), std::end($1), 0);\n$0\n" "accumulate" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/acm" nil nil)
		       ("acl" "auto sum = std::accumulate(std::begin(${1:container}), std::end($1), 0, [](int total, $2) {\n  $3\n});\n$0\n" "accumulate" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180714.1322/snippets/c++-mode/acl" nil nil)))


;;; Do not edit! File generated at Tue Aug 28 14:12:16 2018
