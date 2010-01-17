 
module MigrationHelper
 

  # 外部キー作成メソッド.
  # migrationで外部キーを実行する場合のSQLを見えないようにして、migrationファイルの可視性アップを狙う.
  def foreign_key(from_table, from_column, to_table, option='ON DELETE CASCADE')
		from_table = from_table.to_s
		to_table = to_table.to_s
		from_column = from_column.to_s
    constraint_name = "fk_#{from_table}_#{to_table}"
    execute "alter table #{from_table} add constraint #{constraint_name} foreign key (#{from_column}) references #{to_table}(id) #{option}"
  end

  def drop_foreign_key(table, number=1, type=:normal, column='member')
		table = table.to_s

	 	execute "alter table #{table} drop foreign key #{table}_FK_#{number}"
		case type
		  when :normal then execute "alter table #{table} drop key #{table}_FI_#{number}"
		  when :primary then #drop_primary_key( table)
		  when :unique then drop_index( table, "#{column}_uniques")
	  end
  end

	def add_primary_key( table)
		table = table.to_s
		execute "alter table #{table} add column `id` INTEGER  NOT NULL primary key AUTO_INCREMENT first;"

	end
	def drop_primary_key( table)
		table = table.to_s
		execute "alter table #{table} drop primary key"
	end

  def drop_index( table, index_name)
		table = table.to_s
		index_name = index_name.to_s
		execute "alter table #{table} drop index #{index_name}" ;
  end
 
end
