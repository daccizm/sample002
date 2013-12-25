# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

company001 = Company.new( :name=>'Sample Company 001' )
company001.units_attributes = {
	:unit1 => {
		:name =>'部署１', 
		:users_attributes => {
			:user1 => {
				:name                  => 'サンプル　太郎００１', 
				:email                 => 'sample001@test.co.jp',
				:password              => 'sample001',
				:password_confirmation => 'sample001',
			},
			:user2 => {
				:name                  => 'サンプル　太郎００２', 
				:email                 => 'sample002@test.co.jp',
				:password              => 'sample001',
				:password_confirmation => 'sample001',
			},
		},
	},
}
company001.save!

company002 = Company.new( :name=>'Sample Company 200' )
company002.units_attributes = {
	:unit1 => {
		:name =>'部署２０１', 
		:users_attributes => {
			:user1 => {
				:name                  => 'サンプル２００　太郎００１', 
				:email                 => 'sample201@test.co.jp',
				:password              => 'sample201',
				:password_confirmation => 'sample201',
			},
			:user2 => {
				:name                  => 'サンプル２００　太郎００２', 
				:email                 => 'sample202@test.co.jp',
				:password              => 'sample201',
				:password_confirmation => 'sample201',
			},
		},
	},
}
company002.save!