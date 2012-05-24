class AlterTable < ActiveRecord::Migration
  def up
  	execute <<-SQL
  		alter table 
  			enderecos alter column created_at drop not null;
  		alter table 
  			enderecos alter column updated_at drop not null;
  		alter table 
  			projetos alter column created_at drop not null;
  		alter table 
  			projetos alter column updated_at drop not null;
      alter table 
        local_projetos alter column created_at drop not null;
      alter table 
        local_projetos alter column updated_at drop not null;
      alter table 
        regions alter column created_at drop not null;
      alter table 
        regions alter column updated_at drop not null;
      alter table 
        bairros alter column created_at drop not null;
      alter table 
        bairros alter column updated_at drop not null;
      alter table 
        leis alter column created_at drop not null;
      alter table 
        leis alter column updated_at drop not null;
  	SQL
  end

  def down
  end
end
