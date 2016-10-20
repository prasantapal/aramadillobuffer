#include<armadillo>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <sstream>
#include <fstream>
#include <memory>
#include <mutex>
#include <ctime>
#include <thread>
#include <string>
#include <vector>
#include <map>
#include <set>

class ArmaThread{
	public:
		ArmaThread();
		~ArmaThread();
		void update_row(std::vector<double>& v,unsigned index);
		void update_col(std::vector<double>& v,unsigned index);


	private:
		arma::mat matrix_;
		std::mutex mtx_;

};
