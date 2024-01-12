import { useParams } from '../../hooks/useParams';
<template>
  <div>id:{{ route.id }}</div>
</template>

<script setup lang="ts">
import { useParams } from '@/hooks/index';
type Params = {
  id: string;
};

const route = useParams<Params>();
</script>

<style scoped></style>
