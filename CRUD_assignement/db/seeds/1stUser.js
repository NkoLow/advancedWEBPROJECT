exports.seed = function (knex) {
    return knex('users')
      .del()
      .then(function () {
        
        return knex('users').insert([
          {
            id: '01',
            username: 'Julien',
            email: 'jaudoly@uci.edu',
            created_at : '2023-10-08 15:30:45.123456+03'
          },
        ]);
      });
  };
  