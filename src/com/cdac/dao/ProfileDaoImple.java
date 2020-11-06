package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import com.cdac.dto.Profile;

@Repository
public class ProfileDaoImple implements ProfileDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertProfile(Profile profile) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
			Transaction tr=session.beginTransaction();
			session.save(profile);
			tr.commit();
			session.flush();
			session.close();
				return null;
			}
		});
			
		
	}

	@Override
	public void deleteProfile(int profileID) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
			Transaction tr=session.beginTransaction();
			session.delete(new Profile(profileID));
			tr.commit();
			session.flush();
			session.close();
				return null;
			}
		});
		
	}

	@Override
	public Profile selectProfile(int profileID) {
	Profile profile=hibernateTemplate.execute(new HibernateCallback<Profile>() {

		@Override
		public Profile doInHibernate(Session session) throws HibernateException {
			Transaction tr=session.beginTransaction();
			Profile pr=(Profile)session.get(Profile.class,profileID);
			tr.commit();
			session.flush();
			session.close();
				return pr;
		}
		
	});
		return profile;
	}

	@Override
	public void updateProfile(Profile profile) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
			Transaction tr=session.beginTransaction();
			session.update(profile);
			tr.commit();
			session.flush();
			session.close();
				return null;
			}
		});
		
	}

	@Override
	public List<Profile> selectAll() {
		List<Profile> profList = hibernateTemplate.execute(new HibernateCallback<List<Profile>>() {

			@Override
			public List<Profile> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Profile ");
				//q.setInteger(0, userId);
			//	System.out.print(userId);
				List<Profile> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return profList;
	}

	@Override
	public List<Profile> selectchoice(String cast, float height, String education) {
		List<Profile> cList = hibernateTemplate.execute(new HibernateCallback<List<Profile>>() {

			@Override
			public List<Profile> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Profile where cast=? and height=? and education=?");
				q.setString(0, cast);
				q.setFloat(1, height);
				q.setString(2, education);
			//	System.out.print(userId);
				List<Profile> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return cList;
	}

}
