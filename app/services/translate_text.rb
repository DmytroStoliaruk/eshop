require "google/cloud/translate"

class TranslateText
  CURRENCY_RATE_URL = "https://api.monobank.ua/bank/currency"

  def self.translate(input_str, from_language, to_language)
    translate = Google::Cloud::Translate.translation_service

    result = translate.translate_text contents: [input_str],
                                      mime_type: "text/plain",
                                      source_language_code: from_language,
                                      target_language_code: to_language,
                                      parent: "projects/smart-mark-411118"

    result.translations.first.translated_text
  end
end
