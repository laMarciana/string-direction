module StringDirection
  class MarksAnalyzer < Analyzer
    LTR_MARK = "\u200e".freeze # left-to-right unicode mark
    RTL_MARK = "\u200f".freeze # right-to-left unicode mark

    def analyze
      if has_ltr_mark?(string) && has_rtl_mark?(string)
        StringDirection::BIDI
      elsif has_ltr_mark?(string)
        StringDirection::LTR
      elsif has_rtl_mark?(string)
        StringDirection::RTL
      end
    end

    private

    # returns whether string contains the unicode left-to-right mark
    #
    # @return [Boolean] true if it containts ltr mark, false otherwise
    def has_ltr_mark?(string)
      string.match(LTR_MARK_REGEX) ? true : false
    end

    # returns whether string contains the unicode right-to-left mark
    #
    # @return [Boolean] true if it containts rtl mark, false otherwise
    def has_rtl_mark?(string)
      string.match(RTL_MARK_REGEX) ? true : false
    end
  end
end