# -*- encoding : utf-8 -*-

class ImportNewCompanyAndTopicBoxesWithContribution < Wagn::Migration
  def up
          import_json "new_company_and_topic_boxes_with_contribution.json"
      end
end
