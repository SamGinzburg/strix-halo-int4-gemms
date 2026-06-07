	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s36, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v14, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v13, 4, v0
	v_and_b32_e32 v29, 15, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v94, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v16, 16, v14
	v_or_b32_e32 v17, 32, v14
	v_and_b32_e32 v15, 48, v13
	v_or_b32_e32 v18, 48, v14
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s14, s15, 48
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s10, 0, s7
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s36, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s15, v14
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v20, v29, 4, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_hi_u32 s2, s9, s10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v21, s14, v20
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s8
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s37, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s37, v15
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s37, v14
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s8
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s37, v16
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s5, s4, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s37, v17
	v_or_b32_e32 v6, s37, v18
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s36, 63
.Ltmp13:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s2, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s31, s6, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s9, s15, s37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s7, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s36, v3
	v_cmp_gt_i32_e64 s3, s36, v4
	v_cmp_gt_i32_e64 s4, s36, v5
	v_cmp_gt_i32_e64 s5, s36, v6
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s6, s31, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s35, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s8, s30, s9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v22, v1, v15, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s8, v20
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s29, s15, 4
	s_lshl_b32 s28, s15, 5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s5, s5, s35
	s_and_b32 vcc_lo, vcc_lo, s35
	s_and_b32 s3, s3, s35
	s_and_b32 s4, s4, s35
	s_and_b32 s2, s2, s35
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v23, s29, v20
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s37, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s37, s37, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v24, s28, v20
	v_add_nc_u32_e32 v2, s8, v21
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v19, s37, v15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s8, v23
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v25, s37, v14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s8, v24
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v26, s37, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_lshl_b32 s5, s15, 6
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v27, s37, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v4, s3
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_add_i32 s8, s8, s5
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v42, s37, v22
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s36, v25
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v28, s37, v18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v5, s4
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v43, s8, v20
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s36, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v44, s8, v23
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s36, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[3:6], v3, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[7:10], v1, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v11, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v12, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v2, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v42, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v45, s8, v24
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s36, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v43, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v46, s8, v21
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v11, 0x80000000, v44, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v12, 0x80000000, v45, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_cmpk_gt_i32 s7, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v19, 0x80000000, v46, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[42:45], v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[46:49], v2, s[24:27], 0 offen
	buffer_load_b128 v[50:53], v11, s[24:27], 0 offen
	buffer_load_b128 v[54:57], v12, s[24:27], 0 offen
	buffer_load_b128 v[58:61], v19, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v94
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v12, 0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v25, v13, v1
	v_lshrrev_b32_e32 v1, 1, v0
	v_add_nc_u32_e32 v11, 0, v25
	s_waitcnt vmcnt(9)
	ds_store_b128 v11, v[3:6] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v12, v[7:10]
	s_waitcnt vmcnt(7)
	ds_store_b128 v12, v[30:33] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v12, v[34:37] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v12, v[38:41] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v11, v[42:45] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v12, v[46:49] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v12, v[50:53] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v12, v[54:57] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v12, v[58:61] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v19, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v95, v29, 6, v3
	v_xor_b32_e32 v96, 16, v95
	v_xor_b32_e32 v97, 32, v95
	v_xor_b32_e32 v98, 48, v95
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr19
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v2, 48, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s38, s7, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v29, 6, v2
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v19, 0x70, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v96, 16, v95
	v_xor_b32_e32 v97, 32, v95
	v_xor_b32_e32 v98, 48, v95
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v30, 0
	s_add_i32 s37, s37, 64
	s_mov_b32 s39, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s38, s38, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s5, 6
	s_mov_b32 s3, s4
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s4, s37, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v26, s3, v19, v29
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s4, v15
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s4, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s39, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v26 offset:3328
	ds_load_u8 v28, v26 offset:3072
	ds_load_u8 v99, v26 offset:3840
	ds_load_u8 v100, v26 offset:3584
	ds_load_u8 v101, v26 offset:2304
	ds_load_u8 v102, v26 offset:2048
	ds_load_u8 v103, v26 offset:2816
	ds_load_u8 v104, v26 offset:2560
	ds_load_u8 v105, v26 offset:1280
	ds_load_u8 v106, v26 offset:1024
	ds_load_u8 v107, v26 offset:1792
	ds_load_u8 v108, v26 offset:1536
	ds_load_u8 v109, v26 offset:256
	ds_load_u8 v110, v26
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:768
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v102, v104, v103, 0xc0c0004
	v_lshl_or_b32 v158, v99, 16, v27
	ds_load_u8 v27, v26 offset:7424
	ds_load_u8 v99, v26 offset:7168
	ds_load_u8 v104, v26 offset:7680
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v108, v107, 0xc0c0004
	v_lshl_or_b32 v157, v102, 16, v101
	v_perm_b32 v101, v106, v105, 0xc0c0004
	ds_load_u8 v102, v26 offset:7936
	ds_load_u8 v106, v26 offset:6912
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v110, v109, 0xc0c0004
	v_lshl_or_b32 v156, v103, 16, v101
	ds_load_u8 v101, v26 offset:6400
	ds_load_u8 v103, v26 offset:6144
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v27, v99, v27, 0xc0c0004
	ds_load_u8 v99, v26 offset:5376
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v102, v104, v102, 0xc0c0004
	ds_load_u8 v104, v26 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v103, v101, 0xc0c0004
	ds_load_u8 v103, v26 offset:5888
	v_lshl_or_b32 v162, v102, 16, v27
	ds_load_u8 v102, v26 offset:4608
	ds_load_u8 v100, v26 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v100, v28, 0xc0c0004
	ds_load_u8 v100, v26 offset:6656
	v_lshl_or_b32 v155, v28, 16, v105
	ds_load_u8 v27, v26 offset:4352
	ds_load_u8 v28, v26 offset:4096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v100, v106, 0xc0c0004
	ds_load_u8 v106, v26 offset:5632
	v_lshl_or_b32 v161, v100, 16, v101
	ds_load_u8 v100, v26 offset:4864
	v_perm_b32 v99, v104, v99, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:3968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v106, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v101, 16, v99
	ds_load_u8 v99, v26 offset:3456
	ds_load_u8 v101, v26 offset:3200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v100, v102, v100, 0xc0c0004
	ds_load_u8 v102, v26 offset:3712
	v_lshl_or_b32 v159, v100, 16, v27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v99, v101, v99, 0xc0c0004
	ds_load_u8 v101, v26 offset:2432
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v28, v102, v28, 0xc0c0004
	ds_load_u8 v102, v26 offset:2176
	v_lshl_or_b32 v166, v28, 16, v99
	ds_load_u8 v27, v26 offset:1408
	ds_load_u8 v28, v26 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v26 offset:2944
	ds_load_u8 v103, v26 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:1920
	ds_load_u8 v99, v26 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v99, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v165, v102, 16, v101
	v_lshl_or_b32 v164, v28, 16, v27
	ds_load_u8 v27, v26 offset:384
	ds_load_u8 v28, v26 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:896
	ds_load_u8 v99, v26 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v99, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v28, 16, v27
	ds_load_u8 v27, v26 offset:7552
	ds_load_u8 v28, v26 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:8064
	ds_load_u8 v99, v26 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v99, v28, 0xc0c0004
	ds_load_u8 v99, v26 offset:6528
	ds_load_u8 v100, v26 offset:6272
	v_lshl_or_b32 v170, v28, 16, v27
	ds_load_u8 v27, v26 offset:5504
	ds_load_u8 v28, v26 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v26 offset:7040
	ds_load_u8 v101, v26 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v100, 16, v99
	ds_load_u8 v28, v26 offset:6016
	ds_load_u8 v99, v26 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v99, v28, 0xc0c0004
	v_lshl_or_b32 v168, v28, 16, v27
	ds_load_u8 v27, v26 offset:4480
	ds_load_u8 v28, v26 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:4992
	ds_load_u8 v99, v26 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v99, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v28, 16, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v27, s0, v95
	v_add_nc_u32_e32 v28, s0, v96
	ds_load_b128 v[115:118], v27
	ds_load_b128 v[119:122], v28
	ds_load_b128 v[131:134], v27 offset:1024
	ds_load_b128 v[135:138], v28 offset:1024
	ds_load_b128 v[147:150], v27 offset:2048
	ds_load_b128 v[151:154], v28 offset:2048
	ds_load_b128 v[171:174], v27 offset:3072
	ds_load_b128 v[175:178], v28 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v26 offset:11520
	ds_load_u8 v28, v26 offset:11264
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[99:106], v[155:158], v[115:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[163:166], v[115:118], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[163:166], v[131:134], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[99:106], v[159:162], v[119:122], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[167:170], v[119:122], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[155:158], v[131:134], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[135:138], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[163:166], v[147:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[159:162], v[135:138], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[155:158], v[147:150], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[151:154], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[131:138], v[159:162], v[151:154], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[155:158], v[171:174], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[175:178], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[171:174], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v28, v26 offset:12032
	ds_load_u8 v163, v26 offset:11776
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[175:178], v[155:162] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v163, v28, 0xc0c0004
	ds_load_u8 v163, v26 offset:10496
	ds_load_u8 v164, v26 offset:10240
	v_lshl_or_b32 v166, v28, 16, v27
	ds_load_u8 v27, v26 offset:9472
	ds_load_u8 v28, v26 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v26 offset:11008
	ds_load_u8 v165, v26 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v164, 16, v163
	ds_load_u8 v28, v26 offset:9984
	ds_load_u8 v163, v26 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v163, v28, 0xc0c0004
	v_lshl_or_b32 v164, v28, 16, v27
	ds_load_u8 v27, v26 offset:8448
	ds_load_u8 v28, v26 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:8960
	ds_load_u8 v163, v26 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v163, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v28, 16, v27
	ds_load_u8 v27, v26 offset:11648
	ds_load_u8 v28, v26 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:12160
	ds_load_u8 v167, v26 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v167, v28, 0xc0c0004
	ds_load_u8 v167, v26 offset:10624
	ds_load_u8 v168, v26 offset:10368
	v_lshl_or_b32 v170, v28, 16, v27
	ds_load_u8 v27, v26 offset:9600
	ds_load_u8 v28, v26 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v26 offset:11136
	ds_load_u8 v169, v26 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v168, 16, v167
	ds_load_u8 v28, v26 offset:10112
	ds_load_u8 v167, v26 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v167, v28, 0xc0c0004
	v_lshl_or_b32 v168, v28, 16, v27
	ds_load_u8 v27, v26 offset:8576
	ds_load_u8 v28, v26 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:9088
	ds_load_u8 v167, v26 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v167, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v28, 16, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v27, s0, v97
	ds_load_b128 v[171:174], v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[99:106], v[163:166], v[171:174], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[167:170], v[171:174], v[107:114] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v27 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[163:166], v[171:174], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[171:174], v[123:130] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v27 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[163:166], v[171:174], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[171:174], v[139:146] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v27 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v26 offset:15616
	ds_load_u8 v28, v26 offset:15360
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[163:166], v[171:174], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:16128
	ds_load_u8 v163, v26 offset:15872
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[171:174], v[155:162] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v163, v28, 0xc0c0004
	ds_load_u8 v163, v26 offset:14592
	ds_load_u8 v164, v26 offset:14336
	v_lshl_or_b32 v166, v28, 16, v27
	ds_load_u8 v27, v26 offset:13568
	ds_load_u8 v28, v26 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v26 offset:15104
	ds_load_u8 v165, v26 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v164, 16, v163
	ds_load_u8 v28, v26 offset:14080
	ds_load_u8 v163, v26 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v163, v28, 0xc0c0004
	v_lshl_or_b32 v164, v28, 16, v27
	ds_load_u8 v27, v26 offset:12544
	ds_load_u8 v28, v26 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:13056
	ds_load_u8 v163, v26 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v163, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v28, 16, v27
	ds_load_u8 v27, v26 offset:15744
	ds_load_u8 v28, v26 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:16256
	ds_load_u8 v167, v26 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v167, v28, 0xc0c0004
	ds_load_u8 v167, v26 offset:14720
	ds_load_u8 v168, v26 offset:14464
	v_lshl_or_b32 v170, v28, 16, v27
	ds_load_u8 v27, v26 offset:13696
	ds_load_u8 v28, v26 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v26 offset:15232
	ds_load_u8 v169, v26 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v168, 16, v167
	ds_load_u8 v28, v26 offset:14208
	ds_load_u8 v167, v26 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v167, v28, 0xc0c0004
	v_lshl_or_b32 v168, v28, 16, v27
	ds_load_u8 v27, v26 offset:12672
	ds_load_u8 v28, v26 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:13184
	ds_load_u8 v26, v26 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v26, 16, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v26, s0, v98
	ds_load_b128 v[171:174], v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[99:106], v[163:166], v[171:174], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[167:170], v[171:174], v[107:114] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v105, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v93, v93, v100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v26 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v87, v87, v99 :: v_dual_add_f32 v92, v92, v101
	v_dual_add_f32 v91, v91, v102 :: v_dual_add_f32 v88, v88, v105
	v_add_f32_e32 v85, v85, v107
	v_dual_add_f32 v90, v90, v103 :: v_dual_add_f32 v83, v83, v109
	v_add_f32_e32 v82, v82, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[163:166], v[171:174], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[171:174], v[123:130] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v26 offset:2048
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v86, v86, v106 :: v_dual_add_f32 v81, v81, v111
	v_add_f32_e32 v80, v80, v112
	v_add_f32_e32 v84, v84, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[163:166], v[171:174], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[171:174], v[139:146] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v26 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v89, v89, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v79, v79, v113 :: v_dual_add_f32 v78, v78, v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[171:174], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[163:166], v[171:174], v[147:154] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v77, v77, v115 :: v_dual_add_f32 v76, v76, v116
	v_dual_add_f32 v75, v75, v117 :: v_dual_add_f32 v74, v74, v118
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v161
	v_cvt_f32_i32_e32 v27, v162
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s36, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s36, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s4, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s6, 2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v161, s4, v23
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s36, v160
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v160, s4, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s39, s6, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v164, 0x80000000, v161, s0
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v161, s4, v24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v160, 0x80000000, v160, vcc_lo
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_lshl_b32 s6, s39, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v73, v73, v119 :: v_dual_add_f32 v72, v72, v120
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v168, 0x80000000, v161, s1
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v161, s4, v21
	s_mov_b32 s4, s34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v71, v71, v121 :: v_dual_add_f32 v70, v70, v122
	v_dual_add_f32 v69, v69, v123 :: v_dual_add_f32 v68, v68, v124
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v172, 0x80000000, v161, s3
	s_clause 0x3
	buffer_load_b128 v[160:163], v160, s[24:27], 0 offen
	buffer_load_b128 v[164:167], v164, s[24:27], 0 offen
	buffer_load_b128 v[168:171], v168, s[24:27], 0 offen
	buffer_load_b128 v[172:175], v172, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s3, s6, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s6, s39, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v176, s3, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s34, s6, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v67, v67, v125 :: v_dual_add_f32 v66, v66, v126
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v176, v[9:12] offset:32768
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v65, v65, v127 :: v_dual_add_f32 v64, v64, v128
	v_dual_add_f32 v63, v63, v129 :: v_dual_add_f32 v62, v62, v130
	v_dual_add_f32 v61, v61, v131 :: v_dual_add_f32 v60, v60, v132
	v_dual_add_f32 v59, v59, v133 :: v_dual_add_f32 v58, v58, v134
	v_dual_add_f32 v57, v57, v135 :: v_dual_add_f32 v56, v56, v136
	v_dual_add_f32 v55, v55, v137 :: v_dual_add_f32 v54, v54, v138
	v_dual_add_f32 v53, v53, v139 :: v_dual_add_f32 v52, v52, v140
	v_dual_add_f32 v51, v51, v141 :: v_dual_add_f32 v50, v50, v142
	v_dual_add_f32 v49, v49, v143 :: v_dual_add_f32 v48, v48, v144
	v_dual_add_f32 v47, v47, v145 :: v_dual_add_f32 v46, v46, v146
	v_dual_add_f32 v45, v45, v147 :: v_dual_add_f32 v44, v44, v148
	v_dual_add_f32 v43, v43, v149 :: v_dual_add_f32 v42, v42, v150
	v_dual_add_f32 v41, v41, v151 :: v_dual_add_f32 v40, v40, v152
	v_dual_add_f32 v39, v39, v153 :: v_dual_add_f32 v38, v38, v154
	v_dual_add_f32 v37, v37, v155 :: v_dual_add_f32 v36, v36, v156
	v_dual_add_f32 v35, v35, v157 :: v_dual_add_f32 v34, v34, v158
	v_dual_add_f32 v33, v33, v159 :: v_dual_add_f32 v32, v32, v28
	v_dual_add_f32 v30, v30, v27 :: v_dual_add_nc_u32 v9, s34, v13
	v_add_f32_e32 v31, v31, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s5, 1
	s_mov_b32 s0, s33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s33, s3, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s38
	s_mov_b32 s5, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[160:163]
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[164:167] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[168:171] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[172:175] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow72
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v99, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v100, v19, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v110, s4, v100
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v101, s0, v98
	v_add_nc_u32_e32 v1, s0, v97
	v_add_nc_u32_e32 v111, s0, v96
	ds_load_b128 v[9:12], v101 offset:1024
	ds_load_b128 v[126:129], v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v110 offset:3328
	ds_load_u8 v3, v110 offset:3072
	ds_load_u8 v4, v110 offset:3840
	ds_load_u8 v5, v110 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1 offset:3072
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[21:24], v1 offset:1024
	ds_load_b128 v[118:121], v1
	ds_load_b128 v[25:28], v111 offset:1024
	ds_load_b128 v[122:125], v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v110 offset:2304
	ds_load_u8 v6, v110 offset:2048
	ds_load_u8 v7, v110 offset:2816
	ds_load_u8 v8, v110 offset:2560
	ds_load_u8 v102, v110 offset:1280
	ds_load_u8 v103, v110 offset:1024
	ds_load_u8 v104, v110 offset:1792
	ds_load_u8 v105, v110 offset:1536
	ds_load_u8 v113, v110 offset:3968
	ds_load_u8 v114, v110 offset:3712
	ds_load_u8 v115, v110 offset:3456
	ds_load_u8 v116, v110 offset:3200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v112, s0, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v4, v110 offset:256
	ds_load_u8 v5, v110
	ds_load_u8 v106, v110 offset:768
	ds_load_u8 v107, v110 offset:512
	ds_load_u8 v117, v110 offset:2944
	ds_load_u8 v138, v110 offset:2688
	ds_load_u8 v139, v110 offset:2432
	ds_load_u8 v140, v110 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v105, v104, 0xc0c0004
	v_lshl_or_b32 v160, v6, 16, v1
	v_lshl_or_b32 v161, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v107, v106, 0xc0c0004
	v_lshl_or_b32 v158, v2, 16, v1
	v_mov_b32_e32 v1, s4
	ds_load_u8 v102, v110 offset:7424
	ds_load_u8 v103, v110 offset:7168
	ds_load_u8 v104, v110 offset:7936
	ds_load_u8 v105, v110 offset:7680
	ds_load_u8 v106, v110 offset:6400
	ds_load_u8 v107, v110 offset:6144
	ds_load_u8 v108, v110 offset:6912
	ds_load_u8 v109, v110 offset:6656
	ds_load_u8 v149, v110 offset:5376
	ds_load_u8 v150, v110 offset:5120
	ds_load_u8 v151, v110 offset:5888
	ds_load_u8 v152, v110 offset:5632
	ds_load_u8 v154, v110 offset:8064
	ds_load_u8 v155, v110 offset:7808
	ds_load_u8 v156, v110 offset:7552
	ds_load_u8 v157, v110 offset:7296
	ds_load_u8 v174, v110 offset:9472
	ds_load_u8 v175, v110 offset:9216
	ds_load_u8 v178, v110 offset:9984
	ds_load_u8 v179, v110 offset:9728
	ds_load_u8 v180, v110 offset:8448
	ds_load_u8 v181, v110 offset:8192
	ds_load_u8 v182, v110 offset:8960
	ds_load_u8 v183, v110 offset:8704
	ds_load_u8 v202, v110 offset:11136
	ds_load_u8 v203, v110 offset:10880
	ds_load_u8 v204, v110 offset:10624
	ds_load_u8 v205, v110 offset:10368
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v3, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[134:137], v112 offset:1024
	ds_load_b128 v[130:133], v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v141, v110 offset:1920
	ds_load_u8 v142, v110 offset:1664
	ds_load_u8 v143, v110 offset:1408
	ds_load_u8 v144, v110 offset:1152
	ds_load_u8 v145, v110 offset:896
	ds_load_u8 v146, v110 offset:640
	ds_load_u8 v147, v110 offset:384
	ds_load_u8 v148, v110 offset:128
	ds_load_u8 v190, v110 offset:6016
	ds_load_u8 v191, v110 offset:5760
	ds_load_u8 v192, v110 offset:5504
	ds_load_u8 v193, v110 offset:5248
	ds_load_u8 v209, v110 offset:9088
	ds_load_u8 v210, v110 offset:8832
	ds_load_u8 v211, v110 offset:8576
	ds_load_u8 v212, v110 offset:8320
	ds_load_u8 v225, v110 offset:15232
	ds_load_u8 v226, v110 offset:14976
	ds_load_u8 v227, v110 offset:14720
	ds_load_u8 v228, v110 offset:14464
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v163, v107, v106, 0xc0c0004
	v_mov_b32_e32 v2, s5
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v164, v109, v108, 0xc0c0004
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_perm_b32 v153, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v150, v152, v151, 0xc0c0004
	v_perm_b32 v162, v105, v104, 0xc0c0004
	ds_load_u8 v102, v110 offset:4352
	ds_load_u8 v103, v110 offset:4096
	ds_load_u8 v104, v110 offset:4864
	ds_load_u8 v105, v110 offset:4608
	ds_load_u8 v186, v110 offset:7040
	ds_load_u8 v187, v110 offset:6784
	ds_load_u8 v188, v110 offset:6528
	ds_load_u8 v189, v110 offset:6272
	v_lshl_or_b32 v164, v164, 16, v163
	ds_load_u8 v151, v110 offset:11520
	ds_load_u8 v152, v110 offset:11264
	ds_load_u8 v166, v110 offset:12032
	ds_load_u8 v167, v110 offset:11776
	ds_load_u8 v194, v110 offset:4992
	ds_load_u8 v195, v110 offset:4736
	ds_load_u8 v196, v110 offset:4480
	ds_load_u8 v197, v110 offset:4224
	v_lshl_or_b32 v163, v150, 16, v149
	v_lshl_or_b32 v165, v162, 16, v153
	v_mov_b32_e32 v7, s10
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v168, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v169, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v152, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[102:109], v[158:161], v[130:133], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v169, 16, v168
	ds_load_u8 v149, v110 offset:10496
	ds_load_u8 v150, v110 offset:10240
	ds_load_u8 v153, v110 offset:11008
	ds_load_u8 v168, v110 offset:10752
	ds_load_u8 v198, v110 offset:12160
	ds_load_u8 v199, v110 offset:11904
	ds_load_u8 v200, v110 offset:11648
	ds_load_u8 v201, v110 offset:11392
	v_lshl_or_b32 v177, v152, 16, v151
	v_perm_b32 v152, v183, v182, 0xc0c0004
	ds_load_u8 v182, v110 offset:15616
	ds_load_u8 v183, v110 offset:15360
	v_perm_b32 v151, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[122:125], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v150, v168, v153, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[166:169], v111 offset:3072
	ds_load_b128 v[170:173], v111 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v111, v175, v174, 0xc0c0004
	v_lshl_or_b32 v174, v152, 16, v151
	v_lshl_or_b32 v176, v150, 16, v149
	v_perm_b32 v150, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v223, v183, v182, 0xc0c0004
	ds_load_u8 v182, v110 offset:12544
	ds_load_u8 v183, v110 offset:12288
	ds_load_u8 v149, v110 offset:10112
	ds_load_u8 v206, v110 offset:9856
	ds_load_u8 v207, v110 offset:9600
	ds_load_u8 v208, v110 offset:9344
	v_lshl_or_b32 v175, v150, 16, v111
	ds_load_u8 v111, v110 offset:16128
	ds_load_u8 v184, v110 offset:15872
	ds_load_u8 v185, v110 offset:14592
	ds_load_u8 v213, v110 offset:14336
	ds_load_u8 v214, v110 offset:15104
	ds_load_u8 v215, v110 offset:14848
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[178:181], v112 offset:3072
	ds_load_b128 v[150:153], v112 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v112, v110 offset:13568
	ds_load_u8 v216, v110 offset:13312
	ds_load_u8 v217, v110 offset:14080
	ds_load_u8 v218, v110 offset:13824
	ds_load_u8 v219, v110 offset:16256
	ds_load_u8 v220, v110 offset:16000
	ds_load_u8 v221, v110 offset:15744
	ds_load_u8 v222, v110 offset:15488
	v_wmma_i32_16x16x16_iu8 v[102:109], v[174:177], v[118:121], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v216, v216, v112, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_perm_b32 v214, v215, v214, 0xc0c0004
	v_perm_b32 v224, v184, v111, 0xc0c0004
	ds_load_u8 v111, v110 offset:13056
	ds_load_u8 v184, v110 offset:12800
	ds_load_u8 v215, v110 offset:14208
	ds_load_u8 v229, v110 offset:13952
	ds_load_u8 v230, v110 offset:13696
	ds_load_u8 v231, v110 offset:13440
	ds_load_u8 v218, v110 offset:13184
	ds_load_u8 v232, v110 offset:12928
	ds_load_u8 v233, v110 offset:12672
	ds_load_u8 v234, v110 offset:12416
	v_perm_b32 v110, v116, v115, 0xc0c0004
	v_perm_b32 v113, v140, v139, 0xc0c0004
	v_perm_b32 v114, v138, v117, 0xc0c0004
	v_perm_b32 v115, v144, v143, 0xc0c0004
	v_perm_b32 v116, v142, v141, 0xc0c0004
	v_perm_b32 v117, v148, v147, 0xc0c0004
	v_perm_b32 v138, v146, v145, 0xc0c0004
	v_perm_b32 v213, v213, v185, 0xc0c0004
	v_perm_b32 v235, v183, v182, 0xc0c0004
	v_lshl_or_b32 v185, v112, 16, v110
	v_lshl_or_b32 v183, v116, 16, v115
	v_lshl_or_b32 v182, v138, 16, v117
	v_perm_b32 v138, v157, v156, 0xc0c0004
	v_perm_b32 v140, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v139, v184, v111, 0xc0c0004
	v_lshl_or_b32 v184, v114, 16, v113
	v_perm_b32 v141, v189, v188, 0xc0c0004
	v_perm_b32 v142, v187, v186, 0xc0c0004
	v_perm_b32 v143, v193, v192, 0xc0c0004
	v_perm_b32 v144, v191, v190, 0xc0c0004
	v_perm_b32 v145, v197, v196, 0xc0c0004
	v_perm_b32 v146, v195, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[182:185], v[130:133], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v189, v140, 16, v138
	v_lshl_or_b32 v188, v142, 16, v141
	v_lshl_or_b32 v187, v144, 16, v143
	v_lshl_or_b32 v186, v146, 16, v145
	v_perm_b32 v130, v201, v200, 0xc0c0004
	v_perm_b32 v131, v199, v198, 0xc0c0004
	v_perm_b32 v132, v205, v204, 0xc0c0004
	v_perm_b32 v133, v203, v202, 0xc0c0004
	v_perm_b32 v138, v208, v207, 0xc0c0004
	v_perm_b32 v140, v206, v149, 0xc0c0004
	v_perm_b32 v141, v212, v211, 0xc0c0004
	v_perm_b32 v142, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[186:189], v[122:125], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v193, v131, 16, v130
	v_lshl_or_b32 v192, v133, 16, v132
	v_lshl_or_b32 v191, v140, 16, v138
	v_lshl_or_b32 v190, v142, 16, v141
	v_lshl_or_b32 v194, v139, 16, v235
	v_perm_b32 v130, v222, v221, 0xc0c0004
	v_perm_b32 v131, v220, v219, 0xc0c0004
	v_perm_b32 v132, v228, v227, 0xc0c0004
	v_perm_b32 v133, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v231, v230, 0xc0c0004
	v_perm_b32 v139, v229, v215, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v234, v233, 0xc0c0004
	v_perm_b32 v141, v232, v218, 0xc0c0004
	v_lshl_or_b32 v197, v224, 16, v223
	v_lshl_or_b32 v196, v214, 16, v213
	v_lshl_or_b32 v195, v217, 16, v216
	v_wmma_i32_16x16x16_iu8 v[110:117], v[190:193], v[118:121], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v201, v131, 16, v130
	v_lshl_or_b32 v200, v133, 16, v132
	v_lshl_or_b32 v199, v139, 16, v138
	v_lshl_or_b32 v198, v141, 16, v140
	v_wmma_i32_16x16x16_iu8 v[118:125], v[158:161], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[194:197], v[126:129], v[102:109] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[202:205], v101 offset:3072
	ds_load_b128 v[206:209], v101 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[110:117], v[198:201], v[126:129], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[182:185], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[162:165], v[25:28], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[186:189], v[25:28], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[174:177], v[21:24], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[190:193], v[21:24], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[194:197], v[9:12], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[198:201], v[9:12], v[126:133] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v104
	v_cvt_f32_i32_e32 v9, v103
	v_cvt_f32_i32_e32 v11, v105
	v_cvt_f32_i32_e32 v12, v106
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v92, v92, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[134:141], v[158:161], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[182:185], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[158:161], v[178:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[182:185], v[178:181], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v93, v93, v9 :: v_dual_add_f32 v90, v90, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[150:157], v[162:165], v[166:169], v[150:157] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v107
	v_wmma_i32_16x16x16_iu8 v[1:8], v[186:189], v[166:169], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v91, v91, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[150:157], v[174:177], v[13:16], v[150:157] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v109
	v_wmma_i32_16x16x16_iu8 v[1:8], v[190:193], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v110
	v_cvt_f32_i32_e32 v13, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v89, v89, v9 :: v_dual_add_f32 v86, v86, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v112
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v88, v88, v10 :: v_dual_add_f32 v85, v85, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v84, v84, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v113
	v_cvt_f32_i32_e32 v11, v114
	v_cvt_f32_i32_e32 v12, v115
	v_cvt_f32_i32_e32 v13, v116
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v83, v83, v9 :: v_dual_add_f32 v82, v82, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v117
	v_wmma_i32_16x16x16_iu8 v[134:141], v[162:165], v[170:173], v[134:141] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v81, v81, v11 :: v_dual_add_f32 v80, v80, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v118
	v_cvt_f32_i32_e32 v11, v119
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v79, v79, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v120
	v_cvt_f32_i32_e32 v13, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v78, v78, v9 :: v_dual_add_f32 v77, v77, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v122
	v_wmma_i32_16x16x16_iu8 v[142:149], v[186:189], v[170:173], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[174:177], v[17:20], v[134:141] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v76, v76, v11 :: v_dual_add_f32 v75, v75, v12
	v_add_f32_e32 v74, v74, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v123
	v_cvt_f32_i32_e32 v11, v124
	v_cvt_f32_i32_e32 v12, v125
	v_cvt_f32_i32_e32 v13, v126
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v73, v73, v9 :: v_dual_add_f32 v72, v72, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v127
	v_wmma_i32_16x16x16_iu8 v[142:149], v[190:193], v[17:20], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[134:141], v[194:197], v[206:209], v[134:141] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v71, v71, v11 :: v_dual_add_f32 v70, v70, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v128
	v_cvt_f32_i32_e32 v11, v129
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v130
	v_cvt_f32_i32_e32 v13, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v68, v68, v9 :: v_dual_add_f32 v67, v67, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v132
	v_wmma_i32_16x16x16_iu8 v[142:149], v[198:201], v[206:209], v[142:149] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v66, v66, v11 :: v_dual_add_f32 v65, v65, v12
	v_add_f32_e32 v64, v64, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v133
	v_cvt_f32_i32_e32 v11, v134
	v_cvt_f32_i32_e32 v12, v135
	v_cvt_f32_i32_e32 v13, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v63, v63, v9 :: v_dual_add_f32 v62, v62, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v61, v11 :: v_dual_add_f32 v60, v60, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v138
	v_cvt_f32_i32_e32 v11, v139
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v59, v59, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v140
	v_cvt_f32_i32_e32 v13, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v58, v58, v9 :: v_dual_add_f32 v57, v57, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v142
	v_wmma_i32_16x16x16_iu8 v[150:157], v[194:197], v[202:205], v[150:157] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v56, v56, v11 :: v_dual_add_f32 v55, v55, v12
	v_add_f32_e32 v54, v54, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v143
	v_cvt_f32_i32_e32 v11, v144
	v_cvt_f32_i32_e32 v12, v145
	v_cvt_f32_i32_e32 v13, v146
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v53, v53, v9 :: v_dual_add_f32 v52, v52, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v147
	v_wmma_i32_16x16x16_iu8 v[1:8], v[198:201], v[202:205], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v51, v51, v11 :: v_dual_add_f32 v50, v50, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v148
	v_cvt_f32_i32_e32 v11, v149
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v49, v49, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v150
	v_cvt_f32_i32_e32 v13, v151
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v48, v48, v9 :: v_dual_add_f32 v47, v47, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v45, v45, v12 :: v_dual_add_f32 v44, v44, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v153
	v_cvt_f32_i32_e32 v13, v156
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v157
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v154
	v_cvt_f32_i32_e32 v12, v155
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v13 :: v_dual_add_f32 v36, v36, v2
	v_dual_add_f32 v38, v38, v9 :: v_dual_add_f32 v35, v35, v3
	v_dual_add_f32 v37, v37, v1 :: v_dual_add_f32 v34, v34, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v102
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v10 :: v_dual_add_f32 v41, v41, v11
	v_dual_add_f32 v40, v40, v12 :: v_dual_add_f32 v33, v33, v1
	v_dual_add_f32 v32, v32, v2 :: v_dual_add_f32 v31, v31, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v30, v30, v4 :: v_dual_add_f32 v87, v87, v5
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, s34, v100
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v136, s11 :: v_dual_add_nc_u32 v21, s33, v98
	v_dual_mov_b32 v133, s8 :: v_dual_add_nc_u32 v108, s33, v95
	v_mov_b32_e32 v135, s10
	ds_load_u8 v95, v26 offset:2304
	ds_load_u8 v100, v26 offset:2048
	ds_load_u8 v101, v26 offset:2816
	ds_load_u8 v102, v26 offset:2560
	ds_load_u8 v103, v26 offset:1280
	ds_load_u8 v104, v26 offset:1024
	ds_load_u8 v105, v26 offset:1792
	ds_load_u8 v106, v26 offset:1536
	ds_load_u8 v109, v26 offset:3968
	ds_load_u8 v110, v26 offset:3712
	ds_load_u8 v111, v26 offset:3456
	ds_load_u8 v112, v26 offset:3200
	ds_load_u8 v113, v26 offset:256
	ds_load_u8 v114, v26
	ds_load_u8 v115, v26 offset:768
	ds_load_u8 v128, v26 offset:512
	ds_load_u8 v137, v26 offset:2944
	ds_load_u8 v138, v26 offset:2688
	ds_load_u8 v139, v26 offset:2432
	ds_load_u8 v140, v26 offset:2176
	v_dual_mov_b32 v134, s9 :: v_dual_add_nc_u32 v17, s33, v97
	v_dual_mov_b32 v132, s7 :: v_dual_add_nc_u32 v27, s33, v96
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[1:4], v21 offset:1024
	ds_load_b128 v[22:25], v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v26 offset:3328
	ds_load_u8 v96, v26 offset:3072
	ds_load_u8 v97, v26 offset:3840
	ds_load_u8 v98, v26 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[116:119], v17
	ds_load_b128 v[17:20], v27 offset:1024
	ds_load_b128 v[120:123], v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v193, v26 offset:15616
	ds_load_u8 v194, v26 offset:15360
	ds_load_u8 v141, v26 offset:1920
	ds_load_u8 v142, v26 offset:1664
	ds_load_u8 v143, v26 offset:1408
	ds_load_u8 v144, v26 offset:1152
	ds_load_u8 v160, v26 offset:6016
	ds_load_u8 v165, v26 offset:5760
	ds_load_u8 v166, v26 offset:5504
	ds_load_u8 v167, v26 offset:5248
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v100, v100, v95, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[177:180], v27 offset:3072
	ds_load_b128 v[181:184], v27 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v206, v26 offset:9088
	ds_load_u8 v207, v26 offset:8832
	ds_load_u8 v208, v26 offset:8576
	ds_load_u8 v209, v26 offset:8320
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v102, v104, v103, 0xc0c0004
	ds_load_u8 v220, v26 offset:15232
	ds_load_u8 v221, v26 offset:14976
	ds_load_u8 v222, v26 offset:14720
	ds_load_u8 v223, v26 offset:14464
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v103, v106, v105, 0xc0c0004
	v_lshl_or_b32 v171, v101, 16, v100
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v28, v96, v28, 0xc0c0004
	v_perm_b32 v100, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v107, v98, v97, 0xc0c0004
	v_lshl_or_b32 v170, v103, 16, v102
	ds_load_u8 v102, v26 offset:7424
	ds_load_u8 v103, v26 offset:7168
	ds_load_u8 v104, v26 offset:7936
	ds_load_u8 v105, v26 offset:7680
	v_perm_b32 v101, v128, v115, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[95:98], v108 offset:1024
	ds_load_b128 v[124:127], v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v172, v107, 16, v28
	ds_load_u8 v28, v26 offset:896
	ds_load_u8 v145, v26 offset:640
	ds_load_u8 v146, v26 offset:384
	ds_load_u8 v147, v26 offset:128
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v218, v194, v193, 0xc0c0004
	v_lshl_or_b32 v169, v101, 16, v100
	ds_load_u8 v100, v26 offset:6400
	ds_load_u8 v101, v26 offset:6144
	ds_load_u8 v106, v26 offset:6912
	ds_load_u8 v107, v26 offset:6656
	ds_load_u8 v113, v26 offset:5376
	ds_load_u8 v114, v26 offset:5120
	ds_load_u8 v115, v26 offset:5888
	ds_load_u8 v128, v26 offset:5632
	ds_load_u8 v148, v26 offset:8064
	ds_load_u8 v149, v26 offset:7808
	ds_load_u8 v150, v26 offset:7552
	ds_load_u8 v151, v26 offset:7296
	ds_load_u8 v193, v26 offset:12544
	ds_load_u8 v194, v26 offset:12288
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v110, v140, v139, 0xc0c0004
	v_dual_mov_b32 v131, s6 :: v_dual_mov_b32 v130, s5
	v_mov_b32_e32 v129, s4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v158, v101, v100, 0xc0c0004
	v_perm_b32 v152, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v159, v107, v106, 0xc0c0004
	v_perm_b32 v153, v105, v104, 0xc0c0004
	ds_load_u8 v102, v26 offset:4352
	ds_load_u8 v103, v26 offset:4096
	ds_load_u8 v104, v26 offset:4864
	ds_load_u8 v105, v26 offset:4608
	ds_load_u8 v154, v26 offset:7040
	ds_load_u8 v155, v26 offset:6784
	ds_load_u8 v156, v26 offset:6528
	ds_load_u8 v157, v26 offset:6272
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v114, v128, v115, 0xc0c0004
	ds_load_u8 v115, v26 offset:11520
	ds_load_u8 v128, v26 offset:11264
	ds_load_u8 v161, v26 offset:12032
	ds_load_u8 v162, v26 offset:11776
	ds_load_u8 v168, v26 offset:4992
	ds_load_u8 v197, v26 offset:4736
	ds_load_u8 v198, v26 offset:4480
	ds_load_u8 v199, v26 offset:4224
	v_lshl_or_b32 v176, v153, 16, v152
	v_lshl_or_b32 v175, v159, 16, v158
	v_perm_b32 v28, v145, v28, 0xc0c0004
	v_lshl_or_b32 v174, v114, 16, v113
	ds_load_u8 v113, v26 offset:10496
	ds_load_u8 v114, v26 offset:10240
	ds_load_u8 v152, v26 offset:11008
	ds_load_u8 v153, v26 offset:10752
	ds_load_u8 v158, v26 offset:12160
	ds_load_u8 v159, v26 offset:11904
	ds_load_u8 v200, v26 offset:11648
	ds_load_u8 v201, v26 offset:11392
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v231, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v163, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v164, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v115, v128, v115, 0xc0c0004
	v_perm_b32 v140, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v128, v162, v161, 0xc0c0004
	v_perm_b32 v139, v157, v156, 0xc0c0004
	v_lshl_or_b32 v173, v164, 16, v163
	ds_load_u8 v161, v26 offset:9472
	ds_load_u8 v162, v26 offset:9216
	ds_load_u8 v163, v26 offset:9984
	ds_load_u8 v164, v26 offset:9728
	ds_load_u8 v185, v26 offset:8448
	ds_load_u8 v186, v26 offset:8192
	ds_load_u8 v189, v26 offset:8960
	ds_load_u8 v190, v26 offset:8704
	ds_load_u8 v202, v26 offset:11136
	ds_load_u8 v203, v26 offset:10880
	ds_load_u8 v204, v26 offset:10624
	ds_load_u8 v205, v26 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v114, v153, v152, 0xc0c0004
	v_lshl_or_b32 v188, v128, 16, v115
	ds_load_u8 v27, v26 offset:10112
	ds_load_u8 v128, v26 offset:9856
	ds_load_u8 v152, v26 offset:9600
	ds_load_u8 v153, v26 offset:9344
	v_wmma_i32_16x16x16_iu8 v[100:107], v[169:172], v[124:127], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v187, v114, 16, v113
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v113, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[173:176], v[120:123], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v114, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v115, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v161, v190, v189, 0xc0c0004
	v_lshl_or_b32 v186, v114, 16, v113
	ds_load_u8 v113, v26 offset:16128
	ds_load_u8 v114, v26 offset:15872
	v_lshl_or_b32 v185, v161, 16, v115
	ds_load_u8 v115, v26 offset:14592
	ds_load_u8 v195, v26 offset:14336
	ds_load_u8 v196, v26 offset:15104
	ds_load_u8 v210, v26 offset:14848
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[189:192], v108 offset:3072
	ds_load_b128 v[161:164], v108 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v108, v26 offset:13568
	ds_load_u8 v211, v26 offset:13312
	ds_load_u8 v212, v26 offset:14080
	ds_load_u8 v213, v26 offset:13824
	ds_load_u8 v214, v26 offset:16256
	ds_load_u8 v215, v26 offset:16000
	ds_load_u8 v216, v26 offset:15744
	ds_load_u8 v217, v26 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v27, v128, v27, 0xc0c0004
	v_perm_b32 v128, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[100:107], v[185:188], v[116:119], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v211, v211, v108, 0xc0c0004
	v_perm_b32 v219, v114, v113, 0xc0c0004
	ds_load_u8 v113, v26 offset:13056
	ds_load_u8 v114, v26 offset:12800
	ds_load_u8 v225, v26 offset:14208
	ds_load_u8 v226, v26 offset:13952
	ds_load_u8 v227, v26 offset:13696
	ds_load_u8 v228, v26 offset:13440
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v212, v213, v212, 0xc0c0004
	ds_load_u8 v213, v26 offset:13184
	ds_load_u8 v229, v26 offset:12928
	ds_load_u8 v230, v26 offset:12672
	ds_load_u8 v26, v26 offset:12416
	v_perm_b32 v224, v195, v115, 0xc0c0004
	v_perm_b32 v108, v112, v111, 0xc0c0004
	v_perm_b32 v111, v138, v137, 0xc0c0004
	v_perm_b32 v112, v144, v143, 0xc0c0004
	v_perm_b32 v115, v142, v141, 0xc0c0004
	v_perm_b32 v137, v147, v146, 0xc0c0004
	v_perm_b32 v210, v210, v196, 0xc0c0004
	v_lshl_or_b32 v196, v109, 16, v108
	v_lshl_or_b32 v195, v111, 16, v110
	v_lshl_or_b32 v194, v115, 16, v112
	v_lshl_or_b32 v193, v28, 16, v137
	v_perm_b32 v28, v151, v150, 0xc0c0004
	v_perm_b32 v137, v149, v148, 0xc0c0004
	v_perm_b32 v141, v167, v166, 0xc0c0004
	v_perm_b32 v142, v165, v160, 0xc0c0004
	v_perm_b32 v143, v199, v198, 0xc0c0004
	v_perm_b32 v144, v197, v168, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v138, v114, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[193:196], v[124:127], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v127, v137, 16, v28
	v_lshl_or_b32 v126, v140, 16, v139
	v_lshl_or_b32 v125, v142, 16, v141
	v_lshl_or_b32 v124, v144, 16, v143
	v_perm_b32 v28, v201, v200, 0xc0c0004
	v_perm_b32 v137, v159, v158, 0xc0c0004
	v_perm_b32 v139, v205, v204, 0xc0c0004
	v_perm_b32 v140, v203, v202, 0xc0c0004
	v_perm_b32 v141, v153, v152, 0xc0c0004
	v_perm_b32 v142, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[124:127], v[120:123], v[108:115] neg_lo:[1,1,0]
	v_lshl_or_b32 v200, v137, 16, v28
	v_lshl_or_b32 v199, v140, 16, v139
	v_lshl_or_b32 v198, v27, 16, v141
	v_lshl_or_b32 v197, v142, 16, v128
	v_lshl_or_b32 v203, v210, 16, v224
	v_lshl_or_b32 v202, v212, 16, v211
	v_lshl_or_b32 v201, v138, 16, v231
	v_perm_b32 v27, v217, v216, 0xc0c0004
	v_perm_b32 v28, v215, v214, 0xc0c0004
	v_perm_b32 v128, v223, v222, 0xc0c0004
	v_perm_b32 v137, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v228, v227, 0xc0c0004
	v_perm_b32 v139, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v230, 0xc0c0004
	v_perm_b32 v140, v229, v213, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[209:212], v21 offset:3072
	ds_load_b128 v[213:216], v21 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[108:115], v[197:200], v[116:119], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[169:172], v[95:98], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v207, v137, 16, v128
	v_lshl_or_b32 v206, v139, 16, v138
	v_lshl_or_b32 v205, v140, 16, v26
	v_wmma_i32_16x16x16_iu8 v[137:144], v[193:196], v[95:98], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[169:172], v[161:164], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[193:196], v[161:164], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[169:172], v[189:192], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[193:196], v[189:192], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[173:176], v[17:20], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[124:127], v[17:20], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[173:176], v[181:184], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[124:127], v[181:184], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[173:176], v[177:180], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[124:127], v[177:180], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v219, 16, v218
	v_lshl_or_b32 v208, v28, 16, v27
	v_wmma_i32_16x16x16_iu8 v[116:123], v[185:188], v[13:16], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[197:200], v[13:16], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[9:12], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[197:200], v[9:12], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[185:188], v[5:8], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[197:200], v[5:8], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[201:204], v[22:25], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[205:208], v[22:25], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[201:204], v[1:4], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[205:208], v[1:4], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[201:204], v[213:216], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[205:208], v[213:216], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[201:204], v[209:212], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[205:208], v[209:212], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v100
	v_cvt_f32_i32_e32 v2, v101
	v_cvt_f32_i32_e32 v3, v102
	v_cvt_f32_i32_e32 v4, v103
	v_cvt_f32_i32_e32 v5, v104
	v_cvt_f32_i32_e32 v6, v105
	v_cvt_f32_i32_e32 v7, v106
	v_cvt_f32_i32_e32 v8, v107
	v_cvt_f32_i32_e32 v9, v108
	v_cvt_f32_i32_e32 v10, v109
	v_cvt_f32_i32_e32 v11, v110
	v_cvt_f32_i32_e32 v12, v111
	v_cvt_f32_i32_e32 v13, v112
	v_cvt_f32_i32_e32 v14, v113
	v_cvt_f32_i32_e32 v15, v114
	v_cvt_f32_i32_e32 v16, v115
	v_cvt_f32_i32_e32 v17, v116
	v_cvt_f32_i32_e32 v18, v117
	v_cvt_f32_i32_e32 v19, v118
	v_cvt_f32_i32_e32 v20, v119
	v_cvt_f32_i32_e32 v21, v120
	v_cvt_f32_i32_e32 v22, v121
	v_cvt_f32_i32_e32 v23, v122
	v_cvt_f32_i32_e32 v24, v123
	v_cvt_f32_i32_e32 v25, v137
	v_cvt_f32_i32_e32 v26, v138
	v_cvt_f32_i32_e32 v27, v139
	v_cvt_f32_i32_e32 v28, v140
	v_cvt_f32_i32_e32 v101, v141
	v_cvt_f32_i32_e32 v102, v142
	v_cvt_f32_i32_e32 v103, v143
	v_cvt_f32_i32_e32 v104, v144
	v_cvt_f32_i32_e32 v105, v145
	v_cvt_f32_i32_e32 v106, v146
	v_cvt_f32_i32_e32 v107, v147
	v_cvt_f32_i32_e32 v108, v148
	v_cvt_f32_i32_e32 v109, v149
	v_cvt_f32_i32_e32 v110, v150
	v_cvt_f32_i32_e32 v111, v151
	v_cvt_f32_i32_e32 v112, v152
	v_cvt_f32_i32_e32 v113, v153
	v_cvt_f32_i32_e32 v114, v154
	v_cvt_f32_i32_e32 v115, v155
	v_cvt_f32_i32_e32 v116, v156
	v_cvt_f32_i32_e32 v117, v157
	v_cvt_f32_i32_e32 v118, v158
	v_cvt_f32_i32_e32 v119, v159
	v_cvt_f32_i32_e32 v120, v160
	v_cvt_f32_i32_e32 v121, v161
	v_cvt_f32_i32_e32 v122, v162
	v_cvt_f32_i32_e32 v123, v163
	v_cvt_f32_i32_e32 v124, v164
	v_cvt_f32_i32_e32 v125, v165
	v_cvt_f32_i32_e32 v126, v166
	v_cvt_f32_i32_e32 v127, v167
	v_cvt_f32_i32_e32 v128, v168
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
.LBB0_10:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v95, s31, v29
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v96, s30, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v138, v87, v1 :: v_dual_lshlrev_b32 v95, 1, v95
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v92, v3 :: v_dual_lshlrev_b32 v96, 1, v96
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v97, 32, v95
	v_or_b32_e32 v98, 64, v95
	v_or_b32_e32 v100, 0x60, v95
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v93, v2 :: v_dual_add_f32 v5, v90, v5
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x3
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v97, v97, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v100, v100, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v70, v24 :: v_dual_add_f32 v27, v67, v27
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v96, v96, s[4:7], 0 offen
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s15, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v87, v138, s2
	v_cndmask_b32_e64 v87, v93, v2, s2
	v_cndmask_b32_e64 v24, v70, v24, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v141, v99, 2, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v137, 1, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v89, v6 :: v_dual_add_f32 v11, v83, v11
	v_dual_add_f32 v8, v86, v8 :: v_dual_add_f32 v9, v85, v9
	v_dual_add_f32 v10, v84, v10 :: v_dual_add_f32 v13, v81, v13
	v_add_f32_e32 v134, v32, v134
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v99, v99, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v92, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v82, v12 :: v_dual_add_f32 v15, v79, v15
	v_dual_add_f32 v14, v80, v14 :: v_dual_add_f32 v17, v77, v17
	v_dual_add_f32 v16, v78, v16 :: v_dual_add_f32 v19, v75, v19
	v_dual_add_f32 v18, v76, v18 :: v_dual_add_f32 v21, v73, v21
	v_dual_add_f32 v20, v74, v20 :: v_dual_add_f32 v23, v71, v23
	v_dual_add_f32 v22, v72, v22 :: v_dual_add_f32 v25, v69, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v8, s2
	v_cndmask_b32_e64 v85, v85, v9, s2
	v_cndmask_b32_e64 v84, v84, v10, s2
	v_cndmask_b32_e64 v83, v83, v11, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v82, v12, s2
	v_cndmask_b32_e64 v81, v81, v13, s2
	v_cndmask_b32_e64 v80, v80, v14, s2
	v_cndmask_b32_e64 v79, v79, v15, s2
	v_cndmask_b32_e64 v78, v78, v16, s2
	v_cndmask_b32_e64 v77, v77, v17, s2
	v_cndmask_b32_e64 v76, v76, v18, s2
	v_cndmask_b32_e64 v75, v75, v19, s2
	v_cndmask_b32_e64 v74, v74, v20, s2
	v_cndmask_b32_e64 v73, v73, v21, s2
	v_cndmask_b32_e64 v72, v72, v22, s2
	v_cndmask_b32_e64 v71, v71, v23, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v110, v56, v110 :: v_dual_add_f32 v113, v53, v113
	v_dual_add_f32 v4, v91, v4 :: v_dual_add_f32 v139, v88, v7
	v_dual_add_f32 v28, v66, v28 :: v_dual_add_f32 v103, v63, v103
	v_dual_add_f32 v102, v64, v102 :: v_dual_add_f32 v105, v61, v105
	v_dual_add_f32 v104, v62, v104 :: v_dual_add_f32 v107, v59, v107
	v_dual_add_f32 v106, v60, v106 :: v_dual_add_f32 v109, v57, v109
	v_dual_add_f32 v108, v58, v108 :: v_dual_add_f32 v111, v55, v111
	v_dual_add_f32 v112, v54, v112 :: v_dual_add_f32 v115, v51, v115
	v_dual_add_f32 v114, v52, v114 :: v_dual_add_f32 v117, v49, v117
	v_dual_add_f32 v116, v50, v116 :: v_dual_add_f32 v119, v47, v119
	v_dual_add_f32 v118, v48, v118 :: v_dual_add_f32 v121, v45, v121
	v_dual_add_f32 v120, v46, v120 :: v_dual_add_f32 v123, v43, v123
	v_dual_add_f32 v122, v44, v122 :: v_dual_add_f32 v125, v41, v125
	v_dual_add_f32 v124, v42, v124 :: v_dual_add_f32 v127, v39, v127
	v_dual_add_f32 v126, v40, v126 :: v_dual_add_f32 v129, v37, v129
	v_dual_add_f32 v128, v38, v128 :: v_dual_add_f32 v131, v35, v131
	v_dual_add_f32 v130, v36, v130 :: v_dual_add_f32 v133, v33, v133
	v_dual_add_f32 v132, v34, v132 :: v_dual_add_f32 v135, v31, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v53, v113, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s31, s31, s15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v68, v26 :: v_dual_add_f32 v101, v65, v101
	v_add_f32_e32 v136, v30, v136
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v91, v4, s2
	v_cndmask_b32_e64 v64, v64, v102, s2
	v_cndmask_b32_e64 v63, v63, v103, s2
	v_cndmask_b32_e64 v62, v62, v104, s2
	v_cndmask_b32_e64 v61, v61, v105, s2
	v_cndmask_b32_e64 v60, v60, v106, s2
	v_cndmask_b32_e64 v59, v59, v107, s2
	v_cndmask_b32_e64 v58, v58, v108, s2
	v_cndmask_b32_e64 v56, v56, v110, s2
	v_cndmask_b32_e64 v55, v55, v111, s2
	v_cndmask_b32_e64 v54, v54, v112, s2
	v_cndmask_b32_e64 v52, v52, v114, s2
	v_cndmask_b32_e64 v49, v49, v117, s2
	v_cndmask_b32_e64 v47, v47, v119, s2
	v_cndmask_b32_e64 v46, v46, v120, s2
	v_cndmask_b32_e64 v45, v45, v121, s2
	v_cndmask_b32_e64 v43, v43, v123, s2
	v_cndmask_b32_e64 v42, v42, v124, s2
	v_cndmask_b32_e64 v41, v41, v125, s2
	v_cndmask_b32_e64 v40, v40, v126, s2
	v_cndmask_b32_e64 v38, v38, v128, s2
	v_cndmask_b32_e64 v37, v37, v129, s2
	v_cndmask_b32_e64 v35, v35, v131, s2
	v_cndmask_b32_e64 v33, v33, v133, s2
	v_cndmask_b32_e64 v31, v31, v135, s2
	v_cndmask_b32_e64 v90, v90, v5, s2
	v_cndmask_b32_e64 v89, v89, v6, s2
	v_cndmask_b32_e64 v88, v88, v139, s2
	v_cndmask_b32_e64 v65, v65, v101, s2
	v_cndmask_b32_e64 v57, v57, v109, s2
	v_cndmask_b32_e64 v51, v51, v115, s2
	v_cndmask_b32_e64 v50, v50, v116, s2
	v_cndmask_b32_e64 v48, v48, v118, s2
	v_cndmask_b32_e64 v44, v44, v122, s2
	v_cndmask_b32_e64 v39, v39, v127, s2
	v_cndmask_b32_e64 v36, v36, v130, s2
	v_cndmask_b32_e64 v34, v34, v132, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v5, s28, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v136, s2
	v_cndmask_b32_e64 v25, v69, v25, s2
	v_cndmask_b32_e64 v27, v67, v27, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v66, v28, s2
	v_cndmask_b32_e64 v26, v68, v26, s2
	s_mov_b32 s0, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	v_mov_b16_e32 v66.h, v7.h
	v_mov_b16_e32 v67.h, v7.h
	v_mov_b16_e32 v68.h, v7.h
	v_mov_b16_e32 v69.h, v7.h
	s_mov_b32 s15, s7
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v93, 16, v97
	v_lshlrev_b32_e32 v70, 16, v95
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v140, 5, v0
	v_and_b32_e32 v94, 28, v94
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v2, 32, v140
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v134, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v2, v141, v2, v94
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v99
	ds_load_b128 v[12:15], v99 offset:16
	ds_load_b128 v[16:19], v99 offset:512
	ds_load_b128 v[20:23], v99 offset:528
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v94, 16, v98
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v2, s31, s30, v137
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v113, v10, v93
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v95, 16, v100
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v100, v12, v70
	v_mul_f32_e32 v97, v9, v70
	v_dual_mul_f32 v96, v8, v70 :: v_dual_add_nc_u32 v3, s14, v1
	v_mul_f32_e32 v98, v10, v70
	v_mul_f32_e32 v99, v11, v70
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v102, v14, v70 :: v_dual_mul_f32 v119, v16, v93
	v_dual_mul_f32 v103, v15, v70 :: v_dual_mul_f32 v112, v9, v93
	v_dual_mul_f32 v104, v16, v70 :: v_dual_mul_f32 v121, v18, v93
	v_dual_mul_f32 v105, v17, v70 :: v_dual_mul_f32 v114, v11, v93
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v106, v18, v70 :: v_dual_mul_f32 v123, v20, v93
	v_dual_mul_f32 v107, v19, v70 :: v_dual_mul_f32 v116, v13, v93
	v_dual_mul_f32 v108, v20, v70 :: v_dual_mul_f32 v125, v22, v93
	v_dual_mul_f32 v110, v22, v70 :: v_dual_mul_f32 v111, v8, v93
	v_mul_f32_e32 v117, v14, v93
	v_dual_mul_f32 v120, v17, v93 :: v_dual_mul_f32 v129, v11, v94
	v_dual_mul_f32 v124, v21, v93 :: v_dual_mul_f32 v133, v15, v94
	v_dual_mul_f32 v126, v8, v94 :: v_dual_mul_f32 v11, v11, v95
	v_mul_f32_e32 v128, v10, v94
	v_dual_mul_f32 v131, v13, v94 :: v_dual_mul_f32 v8, v8, v95
	v_mul_f32_e32 v134, v16, v94
	v_dual_mul_f32 v135, v17, v94 :: v_dual_mul_f32 v10, v10, v95
	v_dual_mul_f32 v140, v22, v94 :: v_dual_mul_f32 v29, v29, v96
	v_dual_mul_f32 v16, v16, v95 :: v_dual_mul_f32 v87, v87, v97
	v_dual_mul_f32 v22, v22, v95 :: v_dual_mul_f32 v81, v81, v108
	v_dual_mul_f32 v101, v13, v70 :: v_dual_add_nc_u32 v6, s29, v1
	v_dual_mul_f32 v115, v12, v93 :: v_dual_add_nc_u32 v4, 0x80, v2
	v_dual_mul_f32 v109, v21, v70 :: v_dual_mul_f32 v118, v15, v93
	v_mul_f32_e32 v70, v23, v70
	v_dual_mul_f32 v122, v19, v93 :: v_dual_mul_f32 v127, v9, v94
	v_dual_mul_f32 v130, v12, v94 :: v_dual_mul_f32 v15, v15, v95
	v_dual_mul_f32 v132, v14, v94 :: v_dual_mul_f32 v17, v17, v95
	v_mul_f32_e32 v136, v18, v94
	v_dual_mul_f32 v137, v19, v94 :: v_dual_mul_f32 v12, v12, v95
	v_mul_f32_e32 v138, v20, v94
	v_dual_mul_f32 v139, v21, v94 :: v_dual_mul_f32 v14, v14, v95
	v_dual_mul_f32 v94, v23, v94 :: v_dual_mul_f32 v89, v89, v101
	v_mul_f32_e32 v9, v9, v95
	v_mul_f32_e32 v13, v13, v95
	v_dual_mul_f32 v18, v18, v95 :: v_dual_mul_f32 v85, v85, v104
	v_mul_f32_e32 v19, v19, v95
	v_dual_mul_f32 v20, v20, v95 :: v_dual_mul_f32 v83, v83, v106
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v92, v92, v98 :: v_dual_mul_f32 v91, v91, v99
	v_dual_mul_f32 v86, v86, v103 :: v_dual_mul_f32 v75, v75, v113
	v_dual_mul_f32 v82, v82, v107 :: v_dual_mul_f32 v71, v71, v117
	v_dual_mul_f32 v58, v58, v129 :: v_dual_mul_f32 v47, v47, v140
	v_mul_f32_e32 v54, v54, v133
	v_dual_mul_f32 v8, v45, v8 :: v_dual_mul_f32 v11, v42, v11
	v_dual_mul_f32 v10, v43, v10 :: v_dual_mul_f32 v13, v40, v13
	v_dual_mul_f32 v22, v31, v22 :: v_dual_max_f32 v75, 0, v75
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v31, 0, v87
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v93, v23, v93
	v_mul_f32_e32 v21, v21, v95
	v_dual_mul_f32 v23, v23, v95 :: v_dual_mul_f32 v84, v84, v105
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v73, v73, v115 :: v_dual_mul_f32 v80, v80, v109
	v_dual_mul_f32 v25, v25, v119 :: v_dual_mul_f32 v76, v76, v112
	v_mul_f32_e32 v65, v65, v123
	v_dual_mul_f32 v60, v60, v127 :: v_dual_mul_f32 v49, v49, v138
	v_dual_mul_f32 v56, v56, v131 :: v_dual_max_f32 v29, 0, v29
	v_mul_f32_e32 v50, v50, v137
	v_dual_mul_f32 v46, v46, v94 :: v_dual_mul_f32 v9, v44, v9
	v_dual_mul_f32 v12, v41, v12 :: v_dual_mul_f32 v15, v38, v15
	v_dual_mul_f32 v18, v35, v18 :: v_dual_max_f32 v41, 0, v84
	v_dual_mul_f32 v34, v34, v19 :: v_dual_max_f32 v43, 0, v82
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v35, 0, v91
	v_dual_max_f32 v42, 0, v83 :: v_dual_max_f32 v65, 0, v65
	v_dual_max_f32 v58, 0, v58 :: v_dual_max_f32 v83, 0, v11
	v_dual_max_f32 v82, 0, v10 :: v_dual_mul_f32 v11, v31, v31
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v88, v88, v102 :: v_dual_mul_f32 v77, v77, v111
	v_dual_mul_f32 v70, v78, v70 :: v_dual_mul_f32 v27, v27, v121
	v_mul_f32_e32 v52, v52, v135
	v_mul_f32_e32 v48, v48, v139
	v_mul_f32_e32 v16, v37, v16
	v_dual_mul_f32 v20, v33, v20 :: v_dual_max_f32 v77, 0, v77
	v_dual_mul_f32 v32, v32, v21 :: v_dual_max_f32 v45, 0, v80
	v_dual_mul_f32 v30, v30, v23 :: v_dual_max_f32 v73, 0, v73
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v33, 0, v92
	v_max_f32_e32 v37, 0, v89
	v_dual_max_f32 v44, 0, v81 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v60, 0, v60 :: v_dual_max_f32 v81, 0, v9
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v23, 0, v15
	v_dual_max_f32 v80, 0, v8 :: v_dual_mul_f32 v9, v29, v29
	v_dual_max_f32 v84, 0, v12 :: v_dual_mul_f32 v15, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v11.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v90, v90, v100 :: v_dual_mul_f32 v79, v79, v110
	v_dual_mul_f32 v24, v24, v118 :: v_dual_mul_f32 v59, v59, v128
	v_dual_mul_f32 v14, v39, v14 :: v_dual_mul_f32 v17, v36, v17
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v39, 0, v86 :: v_dual_max_f32 v40, 0, v85
	v_dual_max_f32 v56, 0, v56 :: v_dual_max_f32 v85, 0, v13
	v_dual_max_f32 v50, 0, v50 :: v_dual_max_f32 v21, 0, v16
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v13, 0, v20
	v_dual_max_f32 v16, 0, v34 :: v_dual_and_b32 v31, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v33, v33
	v_mul_f32_e32 v20, v37, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v9.h
	v_mov_b16_e32 v7.l, v15.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v72, v72, v116 :: v_dual_mul_f32 v61, v61, v126
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v78, 0, v79
	v_dual_max_f32 v76, 0, v76 :: v_dual_max_f32 v59, 0, v59
	v_dual_max_f32 v79, 0, v24 :: v_dual_max_f32 v24, 0, v14
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v29, v39, v39 :: v_dual_max_f32 v10, 0, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v7
	v_mov_b16_e32 v67.l, v12.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, 0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v66
	v_mov_b16_e32 v7.l, v20.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v36, 0, v90 :: v_dual_max_f32 v71, 0, v71
	v_dual_max_f32 v8, 0, v30 :: v_dual_and_b32 v33, 1, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v9, v32, 0x7fff
	v_add3_u32 v9, v11, v31, 0x7fff
	v_and_b32_e32 v31, 1, v7
	v_mov_b16_e32 v7.l, v29.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v38, 0, v88 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v52, 0, v52 :: v_dual_max_f32 v19, 0, v17
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v17, 0, v18
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v36, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v15, v35, 0x7fff
	v_and_b32_e32 v15, 1, v7
	v_add3_u32 v12, v12, v33, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v22, v38, v38
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v74, v74, v114 :: v_dual_mul_f32 v63, v63, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v29, v15, 0x7fff
	v_mov_b16_e32 v11.l, v12.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v42, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v20, v31, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v41, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v18.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v61, 0, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v22.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v63, 0, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v68
	v_mov_b16_e32 v7.l, v31.h
	v_and_b32_e32 v20, 1, v69
	v_mov_b16_e32 v9.l, v32.h
	v_mov_b16_e32 v32.h, v7.h
	v_add3_u32 v18, v18, v34, 0x7fff
	v_mov_b16_e32 v35.h, v7.h
	v_mov_b16_e32 v34.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v64, v64, v124
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v53, v53, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v18.h
	v_add3_u32 v18, v22, v20, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v22, v43, v43
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v64, 0, v64 :: v_dual_max_f32 v49, 0, v49
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v18.h
	v_and_b32_e32 v18, 1, v7
	v_mov_b16_e32 v7.l, v22.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v30, v40, v40
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v62, v62, v93 :: v_dual_mul_f32 v51, v51, v136
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v31, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v7
	v_mov_b16_e32 v32.l, v30.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v31, v45, v45 :: v_dual_mul_f32 v26, v26, v120
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v57, v57, v130
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v62, 0, v62 :: v_dual_max_f32 v47, 0, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v32
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v44, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v31.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v53, 0, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v30, v20, 0x7fff
	v_mov_b16_e32 v30.l, v29.h
	v_mov_b16_e32 v30.h, v7.h
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v37.h, v7.h
	v_mov_b16_e32 v18.l, v20.h
	v_add3_u32 v20, v22, v33, 0x7fff
	v_and_b32_e32 v30, 1, v30
	v_and_b32_e32 v22, 1, v34
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v34, v77, v77 :: v_dual_mul_f32 v33, v78, v78
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v74, 0, v74 :: v_dual_max_f32 v57, 0, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v29, v30, 0x7fff
	v_and_b32_e32 v30, 1, v7
	v_mov_b16_e32 v35.l, v34.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v28, v28, v122 :: v_dual_mul_f32 v55, v55, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v70, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v32, v32, v22, 0x7fff
	v_add3_u32 v22, v31, v30, 0x7fff
	v_mov_b16_e32 v30.l, v33.h
	v_mov_b16_e32 v30.h, v7.h
	v_mov_b16_e32 v7.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v76, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v32.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v72, 0, v72 :: v_dual_max_f32 v55, 0, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	v_and_b32_e32 v32, 1, v7
	v_mov_b16_e32 v7.l, v31.h
	v_mov_b16_e32 v40.h, v7.h
	v_mov_b16_e32 v39.h, v7.h
	v_add3_u32 v30, v33, v30, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v75, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v29, v32, 0x7fff
	v_and_b32_e32 v32, 1, v7
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v51, 0, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v33.h
	v_mov_b16_e32 v29.l, v30.h
	v_add3_u32 v30, v34, v35, 0x7fff
	v_add3_u32 v31, v31, v32, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v73, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v37
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v72, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v37, v71, v71 :: v_dual_mul_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v33, v32, 0x7fff
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e32 v33.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v74, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v37.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	v_mov_b16_e32 v7.l, v36.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.h, v7.h
	v_mov_b16_e32 v43.h, v7.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v13, v13, v13 :: v_dual_and_b32 v30, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v34.h
	v_mov_b16_e32 v45.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v23, v23, v23
	v_mul_f32_e32 v19, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v36, v30, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v79, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v30.l, v32.h
	v_add3_u32 v32, v35, v33, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v24, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v36.h
	v_add3_u32 v33, v34, v38, 0x7fff
	v_and_b32_e32 v34, 1, v39
	v_mov_b16_e32 v33.l, v32.h
	v_mov_b16_e32 v38.h, v7.h
	v_and_b32_e32 v35, 1, v7
	v_mov_b16_e32 v7.l, v26.h
	v_add3_u32 v32, v37, v34, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v64, v64
	v_mul_f32_e32 v16, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v36, v35, 0x7fff
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v35.h, v7.h
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v36.l, v27.h
	v_mov_b16_e32 v36.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v35
	v_and_b32_e32 v35, 1, v7
	v_mov_b16_e32 v7.l, v28.h
	v_and_b32_e32 v36, 1, v36
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v25, v32, 0x7fff
	v_add3_u32 v26, v26, v35, 0x7fff
	v_and_b32_e32 v35, 1, v7
	v_mov_b16_e32 v7.l, v37.h
	s_mov_b32 s14, s6
	v_mov_b16_e32 v26.l, v25.h
	v_add3_u32 v25, v27, v36, 0x7fff
	v_add3_u32 v27, v28, v35, 0x7fff
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v35, v62, v62 :: v_dual_mul_f32 v36, v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v25.h
	v_and_b32_e32 v25, 1, v7
	v_mov_b16_e32 v7.l, v35.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v37, v25, 0x7fff
	v_and_b32_e32 v39, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v38.l, v32.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v37, v60, v60 :: v_dual_and_b32 v28, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v37.h
	v_add3_u32 v28, v32, v28, 0x7fff
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v25.l, v28.h
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v36, v32, 0x7fff
	v_add3_u32 v32, v35, v39, 0x7fff
	v_and_b32_e32 v36, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v39, v59, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v28, v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v37, v36, 0x7fff
	v_mov_b16_e32 v37.l, v39.h
	v_mov_b16_e32 v37.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v7.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v61, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v38.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v35, 1, v40
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v40, v57, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v38, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v40.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v56, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v35.h
	v_and_b32_e32 v35, 1, v37
	v_and_b32_e32 v37, 1, v7
	v_and_b32_e32 v41, 1, v41
	v_mov_b16_e32 v7.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v39, v35, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v39, v55, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v37, 0x7fff
	v_and_b32_e32 v37, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v28.l, v35.h
	v_mov_b16_e32 v43.l, v39.h
	v_add3_u32 v35, v40, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v38, v37, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v41, v53, v53 :: v_dual_mul_f32 v40, v52, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v37.l, v35.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v51, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v39, v38, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v42, v54, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v7.l, v42.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v35, 1, v7
	v_mov_b16_e32 v7.l, v40.h
	v_add3_u32 v35, v42, v35, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v42, v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v7
	v_mov_b16_e32 v35.l, v38.h
	v_add3_u32 v38, v41, v39, 0x7fff
	v_mov_b16_e32 v50.h, v7.h
	v_mov_b16_e32 v7.l, v42.h
	v_and_b32_e32 v41, 1, v7
	v_add3_u32 v39, v40, v44, 0x7fff
	v_and_b32_e32 v40, 1, v45
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v44, v49, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v38.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v48, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v42, v41, 0x7fff
	v_add3_u32 v40, v43, v40, 0x7fff
	v_mov_b16_e32 v42.l, v44.h
	v_mov_b16_e32 v42.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v45, v47, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v38.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v46, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v40, 1, v42
	v_mov_b16_e32 v46.l, v45.h
	v_mov_b16_e32 v46.h, v7.h
	v_and_b32_e32 v42, 1, v7
	v_mov_b16_e32 v7.l, v43.h
	v_add3_u32 v40, v44, v40, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v44, v80, v80
	v_dual_mul_f32 v47, v81, v81 :: v_dual_and_b32 v46, 1, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v38, v42, 0x7fff
	v_and_b32_e32 v42, 1, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v44.h
	v_mov_b16_e32 v48.h, v7.h
	v_mov_b16_e32 v38.l, v40.h
	v_add3_u32 v40, v45, v46, 0x7fff
	v_mov_b16_e32 v7.l, v47.h
	v_add3_u32 v42, v43, v42, 0x7fff
	v_and_b32_e32 v43, 1, v48
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v45, v83, v83 :: v_dual_mul_f32 v46, v82, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v40.h
	v_and_b32_e32 v40, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v44, v43, 0x7fff
	v_mov_b16_e32 v7.l, v45.h
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v44.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v48, v84, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v47, v40, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v47, v85, v85
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v7
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v50.l, v48.h
	v_mov_b16_e32 v40.l, v43.h
	v_mov_b16_e32 v7.l, v47.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v46, v44, 0x7fff
	v_add3_u32 v44, v45, v49, 0x7fff
	v_and_b32_e32 v45, 1, v50
	v_and_b32_e32 v46, 1, v7
	v_mov_b16_e32 v7.l, v23.h
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v48, v45, 0x7fff
	v_add3_u32 v45, v47, v46, 0x7fff
	v_mov_b16_e32 v46.l, v24.h
	v_mov_b16_e32 v46.h, v7.h
	v_mov_b16_e32 v47.l, v21.h
	v_mov_b16_e32 v45.l, v43.h
	v_mov_b16_e32 v47.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 1, v46
	v_and_b32_e32 v46, 1, v7
	v_mov_b16_e32 v7.l, v19.h
	v_add3_u32 v24, v24, v43, 0x7fff
	v_and_b32_e32 v43, 1, v47
	v_mov_b16_e32 v47.l, v17.h
	v_add3_u32 v23, v23, v46, 0x7fff
	v_and_b32_e32 v46, 1, v7
	v_mov_b16_e32 v23.l, v24.h
	v_add3_u32 v21, v21, v43, 0x7fff
	v_and_b32_e32 v24, 1, v47
	v_mov_b16_e32 v7.l, v16.h
	v_mov_b16_e32 v43.l, v10.h
	v_mov_b16_e32 v43.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v17, v24, 0x7fff
	v_mov_b16_e32 v24.l, v13.h
	v_mov_b16_e32 v24.h, v7.h
	v_add3_u32 v19, v19, v46, 0x7fff
	v_mov_b16_e32 v19.l, v21.h
	v_and_b32_e32 v21, 1, v7
	v_and_b32_e32 v43, 1, v43
	v_mov_b16_e32 v7.l, v14.h
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v16, v21, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_and_b32_e32 v21, 1, v7
	v_mov_b16_e32 v7.l, v8.h
	v_add3_u32 v13, v13, v24, 0x7fff
	v_dual_cndmask_b32 v17, v33, v31 :: v_dual_cndmask_b32 v24, v26, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v14, v14, v21, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v10, v10, v43, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b32_e32 v13, v20, v29, vcc_lo
	v_cndmask_b32_e32 v21, v30, v34, vcc_lo
	v_add3_u32 v0, v8, v7, 0x7fff
	v_mov_b16_e32 v0.l, v10.h
	v_dual_cndmask_b32 v8, v12, v9 :: v_dual_cndmask_b32 v7, v9, v12
	v_cndmask_b32_e32 v10, v15, v11, vcc_lo
	v_dual_cndmask_b32 v9, v11, v15 :: v_dual_cndmask_b32 v12, v22, v18
	v_dual_cndmask_b32 v11, v18, v22 :: v_dual_cndmask_b32 v18, v31, v33
	v_dual_cndmask_b32 v22, v25, v26 :: v_dual_cndmask_b32 v25, v32, v27
	v_dual_cndmask_b32 v26, v27, v32 :: v_dual_cndmask_b32 v31, v38, v39
	v_cndmask_b32_e32 v32, v39, v38, vcc_lo
	v_cndmask_b32_e32 v38, v14, v19, vcc_lo
	v_dual_cndmask_b32 v14, v19, v14 :: v_dual_mov_b32 v19, 0x5410
	v_dual_cndmask_b32 v15, v29, v20 :: v_dual_cndmask_b32 v20, v34, v30
	v_cndmask_b32_e32 v39, v0, v16, vcc_lo
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v16, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v19, vcc_lo
	v_cndmask_b32_e32 v27, v37, v36, vcc_lo
	v_cndmask_b32_e32 v29, v36, v37, vcc_lo
	v_cndmask_b32_e32 v36, v40, v45, vcc_lo
	v_cndmask_b32_e32 v34, v41, v42, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	v_cndmask_b32_e32 v37, v23, v44, vcc_lo
	v_cndmask_b32_e32 v23, v44, v23, vcc_lo
	v_cndmask_b32_e32 v33, v42, v41, vcc_lo
	v_permlanex16_b32 v41, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x540054, v7
	v_permlanex16_b32 v42, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_cndmask_b32_e32 v30, v35, v28, vcc_lo
	v_dual_cndmask_b32 v28, v28, v35 :: v_dual_cndmask_b32 v35, v45, v40
	v_mov_b32_e32 v40, 0x7632
	v_and_b32_e32 v43, 0x5040504, v7
	v_permlanex16_b32 v45, v14, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v19, 0x3276, v40, vcc_lo
	v_permlanex16_b32 v40, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v16, v8, v43
	v_perm_b32 v11, v41, v12, v43
	v_perm_b32 v13, v42, v15, v43
	v_lshl_or_b32 v9, v19, 8, v19
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v24, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v9, 0x760076, v9
	v_permlanex16_b32 v24, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v9, 4, v9
	v_permlanex16_b32 v34, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v26, v27, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v44, 0x7060706, v9
	v_perm_b32 v9, v40, v10, v43
	v_perm_b32 v8, v16, v8, v44
	v_perm_b32 v10, v40, v10, v44
	v_perm_b32 v12, v41, v12, v44
	v_perm_b32 v14, v42, v15, v44
	v_perm_b32 v15, v18, v17, v43
	v_perm_b32 v16, v18, v17, v44
	v_perm_b32 v17, v19, v20, v43
	v_perm_b32 v18, v19, v20, v44
	v_add_lshl_u32 v40, v2, v6, 1
	v_perm_b32 v19, v21, v22, v43
	v_perm_b32 v20, v21, v22, v44
	v_perm_b32 v21, v24, v25, v43
	v_perm_b32 v22, v24, v25, v44
	v_perm_b32 v24, v26, v27, v44
	v_perm_b32 v25, v28, v30, v43
	v_perm_b32 v26, v28, v30, v44
	v_perm_b32 v27, v29, v31, v43
	v_perm_b32 v28, v29, v31, v44
	v_perm_b32 v29, v32, v33, v43
	v_perm_b32 v30, v32, v33, v44
	v_perm_b32 v31, v34, v35, v43
	v_perm_b32 v32, v34, v35, v44
	v_perm_b32 v33, v36, v37, v43
	v_perm_b32 v34, v36, v37, v44
	v_perm_b32 v35, v45, v38, v43
	v_perm_b32 v36, v45, v38, v44
	v_perm_b32 v37, v0, v39, v43
	v_perm_b32 v38, v0, v39, v44
	v_add_lshl_u32 v0, v4, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v1, s[12:15], 0 offen
	buffer_store_b128 v[11:14], v1, s[12:15], 0 offen offset:256
	buffer_store_b128 v[15:18], v40, s[12:15], 0 offen
	v_add_lshl_u32 v1, v2, v5, 1
	v_add_lshl_u32 v5, v4, v5, 1
	v_add_lshl_u32 v2, v2, v3, 1
	v_add_lshl_u32 v3, v4, v3, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[12:15], 0 offen
	buffer_store_b128 v[23:26], v1, s[12:15], 0 offen
	buffer_store_b128 v[27:30], v5, s[12:15], 0 offen
	buffer_store_b128 v[31:34], v2, s[12:15], 0 offen
	buffer_store_b128 v[35:38], v3, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 236
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16540
; TotalNumSgprs: 42
; NumVgprs: 236
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     236
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
