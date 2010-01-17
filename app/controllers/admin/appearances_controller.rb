class Admin::AppearancesController < Admin::AdminController
	active_scaffold :appearance do |config|
		config.list.per_page = 50
		#config.list.columns = [:id, :name, :as_worker_edit_link, :job, :pref_id, :city, :registed_at ]
		
		#config.list.sorting = { :registed_at   => :desc }
		#config.create.columns = [:id, :name, :job, :registed_at, :approval_status_id]
		#config.update.columns = [:id, :name, :job, :registed_at, :approval_status_id]
		#config.columns[:].ui_type = :select
	end

end
