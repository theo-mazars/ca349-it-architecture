import type { GetServerSideProps } from 'next';
import { getSession } from 'next-auth/react';
import { Layout } from '../../components/layout/Layout';
import { SignInButton } from '../../components/auth/SignInButton';

export default function SignIn() {
  return (
    <Layout>
      <SignInButton />
    </Layout>
  );
}

export const getServerSideProps: GetServerSideProps = async (context) => {
  const session = await getSession(context);

  if (session) {
    return {
      redirect: {
        destination: '/',
        permanent: false,
      },
    };
  }

  return {
    props: {},
  };
};
