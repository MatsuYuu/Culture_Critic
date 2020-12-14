class Genre < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '音楽' },
      { id: 3, name: '映画' },
      { id: 4, name: 'ドラマ' },
      { id: 5, name: 'アニメ' },
      { id: 6, name: 'マンガ' },
      { id: 7, name: '小説' },
      { id: ８, name: 'その他' }
    ]
    

    include ActiveHash::Associations
    has_many :comments
    
end
