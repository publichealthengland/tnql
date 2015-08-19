require 'tnql/nodes'
require 'tnql/grammars'

module Tnql
  # This class simplifies TNQL queries by wrapping them in a little syntactic sugar.
  class Parser
    attr_reader :parser

    def initialize(query)
      @parser = TnqlParser.new
      @result = @parser.parse(query.downcase)

      return if valid?
      # FIXME: should log "Parser failed parsing \"#{query}\": #{@parser.failure_reason} " \
      #                   "(line: #{@parser.failure_line}, column: #{@parser.failure_column})"
    end

    def valid?
      !@result.nil?
    end

    def failure_reason
      valid? ? nil : @parser.failure_reason
    end

    def diagnosis_range
      tumour_diagnosisdate = meta_data['tumour.diagnosisdate']
      return nil unless tumour_diagnosisdate

      starts, ends = tumour_diagnosisdate[Tnql::LIMITS]
      Daterange.new(Date.parse(starts), Date.parse(ends))
    end

    def messages # check if any query conditions been ignored or modified
      msg = ''.html_safe
      meta_data.each do |_canonical_name, filter|
        msg += filter[Tnql::MESSAGE] if filter.key?(Tnql::MESSAGE)
      end
      msg
    end

    def meta_data
      valid? ? @result.meta_data : {}
    end
  end
end