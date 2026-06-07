	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s36, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v13, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v30, 4, v0
	v_and_b32_e32 v34, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b32_e32 v14, 16, v13
	v_or_b32_e32 v15, 32, v13
	v_and_b32_e32 v29, 48, v30
	v_or_b32_e32 v16, 48, v13
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 63
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
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s24, s25, 48
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
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
	v_mul_lo_u32 v2, s25, v13
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v17, v34, 4, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v18, s24, v17
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s9, s10
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
	v_or_b32_e32 v2, s37, v29
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s37, v13
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s8
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s37, v14
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s5, s4, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s37, v15
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s5, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s37, v16
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s30, s6, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s36, 0xff
.Ltmp13:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s31, s2, 8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s6, s30, s36
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s9, s25, s37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s7, 0xff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s36, v3
	v_cmp_gt_i32_e64 s3, s36, v4
	v_cmp_gt_i32_e64 s4, s36, v5
	v_cmp_gt_i32_e64 s5, s36, v6
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v19, v1, v29, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s35, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s8, s31, s9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s8, v17
	s_lshl_b32 s29, s25, 4
	s_lshl_b32 s28, s25, 5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s8, v18
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s5, s5, s35
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s37, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s35
	s_and_b32 s3, s3, s35
	s_and_b32 s4, s4, s35
	s_and_b32 s2, s2, s35
	s_cmpk_gt_i32 s7, 0x1ff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v20, s29, v17
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s37, 0x100
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v21, s28, v17
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v2, s5
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v22, s37, v29
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s8, v20
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v27, s37, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s8, v21
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v28, s37, v14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s5, s25, 8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v22
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v31, s37, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v4, s3
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_add_i32 s8, s8, s5
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v33, s37, v19
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s36, v27
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v32, s37, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v5, s4
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v43, s8, v17
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s36, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v44, s8, v20
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s36, v31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[2:5], v2, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[6:9], v1, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v11, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v12, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v10, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v33, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v45, s8, v21
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s36, v32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v10, 0x80000000, v43, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v46, s8, v18
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v11, 0x80000000, v44, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v12, 0x80000000, v45 :: v_dual_lshlrev_b32 v31, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v22, 0x80000000, v46, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[43:46], v1, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[47:50], v10, s[20:23], 0 offen
	buffer_load_b128 v[51:54], v11, s[20:23], 0 offen
	buffer_load_b128 v[55:58], v12, s[20:23], 0 offen
	buffer_load_b128 v[59:62], v22, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v11, 0, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s7, 0x2ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v22, v30, v1
	v_lshlrev_b32_e32 v1, 3, v0
	v_add_nc_u32_e32 v10, 0, v22
	s_waitcnt vmcnt(9)
	ds_store_b128 v10, v[2:5] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v11, v[6:9]
	s_waitcnt vmcnt(7)
	ds_store_b128 v11, v[23:26] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v11, v[35:38] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v11, v[39:42] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v10, v[43:46] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v11, v[47:50] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v11, v[51:54] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v11, v[55:58] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[59:62] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v34, 6, v2
	v_xor_b32_e32 v98, 16, v97
	v_xor_b32_e32 v99, 32, v97
	v_xor_b32_e32 v100, 48, v97
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[26:27], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[26:27], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v1, 48, v1
	v_lshrrev_b32_e32 v2, 1, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s38, s7, 8
	s_mov_b32 s5, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v34, 6, v1
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v23, 0x70, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v98, 16, v97
	v_xor_b32_e32 v99, 32, v97
	v_xor_b32_e32 v100, 48, v97
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v33, 0
	s_addk_i32 s37, 0x100
	s_mov_b32 s39, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s38, s38, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s5, 8
	s_mov_b32 s3, s4
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s4, s37, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v28, s3, v23, v34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s4, v29
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s4, v19
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v161, s0, v97
	v_add_nc_u32_e32 v162, s0, v98
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_add_i32 s6, s39, 1
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v24, v28 offset:3328
	ds_load_u8 v25, v28 offset:3072
	ds_load_u8 v26, v28 offset:3840
	ds_load_u8 v27, v28 offset:3584
	ds_load_u8 v101, v28 offset:2304
	ds_load_u8 v102, v28 offset:2048
	ds_load_u8 v103, v28 offset:2816
	ds_load_u8 v104, v28 offset:2560
	ds_load_u8 v105, v28 offset:1280
	ds_load_u8 v106, v28 offset:1024
	ds_load_u8 v107, v28 offset:1792
	ds_load_u8 v108, v28 offset:1536
	ds_load_u8 v109, v28 offset:256
	ds_load_u8 v110, v28
	ds_load_u8 v111, v28 offset:768
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[117:120], v161
	ds_load_b128 v[121:124], v162
	ds_load_b128 v[133:136], v161 offset:1024
	ds_load_b128 v[137:140], v162 offset:1024
	ds_load_b128 v[149:152], v161 offset:2048
	ds_load_b128 v[153:156], v162 offset:2048
	ds_load_b128 v[173:176], v161 offset:3072
	ds_load_b128 v[177:180], v162 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v25, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v26, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:7936
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v104, v103, 0xc0c0004
	v_lshl_or_b32 v27, v25, 16, v24
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v25, v106, v105, 0xc0c0004
	ds_load_u8 v104, v28 offset:7680
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v103, v108, v107, 0xc0c0004
	ds_load_u8 v107, v28 offset:6912
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v106, v110, v109, 0xc0c0004
	ds_load_u8 v109, v28 offset:6656
	ds_load_u8 v110, v28 offset:5376
	v_lshl_or_b32 v25, v103, 16, v25
	ds_load_u8 v103, v28 offset:6400
	ds_load_u8 v105, v28 offset:6144
	v_lshl_or_b32 v26, v101, 16, v26
	ds_load_u8 v24, v28 offset:7424
	ds_load_u8 v101, v28 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v28 offset:5888
	v_perm_b32 v107, v109, v107, 0xc0c0004
	ds_load_u8 v109, v28 offset:5632
	v_perm_b32 v102, v104, v102, 0xc0c0004
	ds_load_u8 v104, v28 offset:5120
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v101, v101, v24, 0xc0c0004
	v_lshl_or_b32 v159, v107, 16, v103
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v160, v102, 16, v101
	ds_load_u8 v101, v28 offset:4352
	ds_load_u8 v102, v28 offset:4096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v104, v110, 0xc0c0004
	ds_load_u8 v104, v28 offset:4864
	v_perm_b32 v105, v109, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v105, 16, v103
	ds_load_u8 v103, v28 offset:3456
	ds_load_u8 v105, v28 offset:3200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:3968
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v28 offset:2432
	ds_load_u8 v112, v28 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v108, 16, v106
	ds_load_u8 v106, v28 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v106, v104, 0xc0c0004
	ds_load_u8 v106, v28 offset:3712
	v_lshl_or_b32 v157, v104, 16, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v106, v102, 0xc0c0004
	ds_load_u8 v106, v28 offset:2176
	v_lshl_or_b32 v168, v102, 16, v103
	ds_load_u8 v101, v28 offset:1408
	ds_load_u8 v102, v28 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v28 offset:2944
	ds_load_u8 v107, v28 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:1920
	ds_load_u8 v103, v28 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v167, v106, 16, v105
	v_lshl_or_b32 v166, v102, 16, v101
	ds_load_u8 v101, v28 offset:384
	ds_load_u8 v102, v28 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:896
	ds_load_u8 v103, v28 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v102, 16, v101
	ds_load_u8 v101, v28 offset:7552
	ds_load_u8 v102, v28 offset:7296
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[149:152], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:8064
	ds_load_u8 v103, v28 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v28 offset:6528
	ds_load_u8 v104, v28 offset:6272
	v_lshl_or_b32 v172, v102, 16, v101
	ds_load_u8 v101, v28 offset:5504
	ds_load_u8 v102, v28 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v28 offset:7040
	ds_load_u8 v105, v28 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v104, 16, v103
	ds_load_u8 v102, v28 offset:6016
	ds_load_u8 v103, v28 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v170, v102, 16, v101
	ds_load_u8 v101, v28 offset:4480
	ds_load_u8 v102, v28 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:4992
	ds_load_u8 v103, v28 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v169, v102, 16, v101
	v_wmma_i32_16x16x16_iu8 v[101:108], v[24:27], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[169:172], v[121:124], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[157:160], v[121:124], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[24:27], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[169:172], v[137:140], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[169:172], v[153:156], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[157:160], v[137:140], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[24:27], v[149:152], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[157:160], v[153:156], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[24:27], v[173:176], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v24, v28 offset:11520
	ds_load_u8 v25, v28 offset:11264
	v_wmma_i32_16x16x16_iu8 v[149:156], v[157:160], v[177:180], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[173:176], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v173, s0, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[157:164], v[169:172], v[177:180], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:12032
	ds_load_u8 v26, v28 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v28 offset:10496
	ds_load_u8 v27, v28 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v28 offset:11008
	ds_load_u8 v165, v28 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v27, 0xc0c0004
	v_lshl_or_b32 v27, v25, 16, v24
	ds_load_u8 v24, v28 offset:9472
	ds_load_u8 v25, v28 offset:9216
	v_lshl_or_b32 v26, v165, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:9984
	ds_load_u8 v165, v28 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v165, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	ds_load_u8 v24, v28 offset:8448
	ds_load_u8 v165, v28 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v165, v24, 0xc0c0004
	ds_load_u8 v165, v28 offset:8960
	ds_load_u8 v166, v28 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v165, 16, v24
	ds_load_u8 v165, v28 offset:11648
	ds_load_u8 v166, v28 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:12160
	ds_load_u8 v167, v28 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v28 offset:10624
	ds_load_u8 v168, v28 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v28 offset:11136
	ds_load_u8 v169, v28 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v168, 0xc0c0004
	v_lshl_or_b32 v168, v166, 16, v165
	ds_load_u8 v165, v28 offset:9600
	ds_load_u8 v166, v28 offset:9344
	v_lshl_or_b32 v167, v169, 16, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:10112
	ds_load_u8 v169, v28 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v169, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v165
	ds_load_u8 v165, v28 offset:8576
	ds_load_u8 v169, v28 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v169, v165, 0xc0c0004
	ds_load_u8 v169, v28 offset:9088
	ds_load_u8 v170, v28 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v169, 16, v165
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v173
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[24:27], v[169:172], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[169:172], v[109:116] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v173 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[24:27], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[169:172], v[125:132] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v173 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[24:27], v[169:172], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[169:172], v[141:148] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v173 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[24:27], v[169:172], v[149:156] neg_lo:[1,1,0]
	ds_load_u8 v24, v28 offset:15616
	ds_load_u8 v25, v28 offset:15360
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[169:172], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:16128
	ds_load_u8 v26, v28 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v28 offset:14592
	ds_load_u8 v27, v28 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v28 offset:15104
	ds_load_u8 v165, v28 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v27, 0xc0c0004
	v_lshl_or_b32 v27, v25, 16, v24
	ds_load_u8 v24, v28 offset:13568
	ds_load_u8 v25, v28 offset:13312
	v_lshl_or_b32 v26, v165, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:14080
	ds_load_u8 v165, v28 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v165, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	ds_load_u8 v24, v28 offset:12544
	ds_load_u8 v165, v28 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v165, v24, 0xc0c0004
	ds_load_u8 v165, v28 offset:13056
	ds_load_u8 v166, v28 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v165, 16, v24
	ds_load_u8 v165, v28 offset:15744
	ds_load_u8 v166, v28 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:16256
	ds_load_u8 v167, v28 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v28 offset:14720
	ds_load_u8 v168, v28 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v28 offset:15232
	ds_load_u8 v169, v28 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v168, 0xc0c0004
	v_lshl_or_b32 v168, v166, 16, v165
	ds_load_u8 v165, v28 offset:13696
	ds_load_u8 v166, v28 offset:13440
	v_lshl_or_b32 v167, v169, 16, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:14208
	ds_load_u8 v169, v28 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v169, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v165
	ds_load_u8 v165, v28 offset:12672
	ds_load_u8 v169, v28 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v169, v165, 0xc0c0004
	ds_load_u8 v169, v28 offset:13184
	ds_load_u8 v28, v28 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v28, 16, v165
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v28, s0, v100
	ds_load_b128 v[169:172], v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[24:27], v[169:172], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[169:172], v[109:116] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v28 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[24:27], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[169:172], v[125:132] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v28 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[24:27], v[169:172], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[169:172], v[141:148] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v28 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v102
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v134, v136
	v_cvt_f32_i32_e32 v136, v138
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[24:27], v[169:172], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[169:172], v[157:164] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v138, v140
	v_cvt_f32_i32_e32 v140, v142
	v_cvt_f32_i32_e32 v142, v144
	v_cvt_f32_i32_e32 v144, v146
	v_cvt_f32_i32_e32 v146, v148
	v_cvt_f32_i32_e32 v148, v150
	v_cvt_f32_i32_e32 v150, v152
	v_cvt_f32_i32_e32 v152, v154
	v_cvt_f32_i32_e32 v154, v156
	v_cvt_f32_i32_e32 v156, v158
	v_cvt_f32_i32_e32 v158, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v101
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v105, v107
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v113, v115
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s36, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v115, v117
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v121, v123
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s36, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v160, s4, v16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s4, s25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v125
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v131, v133
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v135, v137
	v_cvt_f32_i32_e32 v137, v139
	v_cvt_f32_i32_e32 v139, v141
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v143, v145
	v_cvt_f32_i32_e32 v145, v147
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v149, v151
	v_cvt_f32_i32_e32 v151, v153
	v_cvt_f32_i32_e32 v153, v155
	v_cvt_f32_i32_e32 v155, v157
	v_cvt_f32_i32_e32 v157, v159
	v_cvt_f32_i32_e32 v159, v161
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v94, v94, v102 :: v_dual_add_nc_u32 v161, s4, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v164
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s36, v160
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v89, v89, v106 :: v_dual_add_nc_u32 v160, s4, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v164, 0x80000000, v161, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v92, v92, v104 :: v_dual_add_nc_u32 v161, s4, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v160, 0x80000000, v160, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v88, v88, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v168, 0x80000000, v161, s1
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v161, s4, v18
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v24, v163
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s6, 2
	s_mov_b32 s4, s34
	s_cselect_b32 s39, s6, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v172, 0x80000000, v161, s3
	s_clause 0x3
	buffer_load_b128 v[160:163], v160, s[20:23], 0 offen
	buffer_load_b128 v[164:167], v164, s[20:23], 0 offen
	buffer_load_b128 v[168:171], v168, s[20:23], 0 offen
	buffer_load_b128 v[172:175], v172, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s6, s39, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s6, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s6, s39, 14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v87, v87, v108 :: v_dual_add_nc_u32 v176, s3, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s34, s6, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v90, v90, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v176, v[9:12] offset:32768
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v96, v96, v28 :: v_dual_add_f32 v95, v95, v101
	v_add_f32_e32 v93, v93, v103
	v_add_f32_e32 v91, v91, v105
	v_dual_add_f32 v86, v86, v109 :: v_dual_add_f32 v85, v85, v110
	v_dual_add_f32 v84, v84, v111 :: v_dual_add_f32 v83, v83, v112
	v_dual_add_f32 v82, v82, v113 :: v_dual_add_f32 v81, v81, v114
	v_dual_add_f32 v80, v80, v115 :: v_dual_add_f32 v79, v79, v116
	v_dual_add_f32 v78, v78, v117 :: v_dual_add_f32 v77, v77, v118
	v_dual_add_f32 v76, v76, v119 :: v_dual_add_f32 v75, v75, v120
	v_dual_add_f32 v74, v74, v121 :: v_dual_add_f32 v73, v73, v122
	v_dual_add_f32 v72, v72, v123 :: v_dual_add_f32 v71, v71, v124
	v_dual_add_f32 v70, v70, v125 :: v_dual_add_f32 v69, v69, v126
	v_dual_add_f32 v68, v68, v127 :: v_dual_add_f32 v67, v67, v128
	v_dual_add_f32 v66, v66, v129 :: v_dual_add_f32 v65, v65, v130
	v_dual_add_f32 v64, v64, v131 :: v_dual_add_f32 v63, v63, v132
	v_dual_add_f32 v62, v62, v133 :: v_dual_add_f32 v61, v61, v134
	v_dual_add_f32 v60, v60, v135 :: v_dual_add_f32 v59, v59, v136
	v_dual_add_f32 v58, v58, v137 :: v_dual_add_f32 v57, v57, v138
	v_dual_add_f32 v56, v56, v139 :: v_dual_add_f32 v55, v55, v140
	v_dual_add_f32 v54, v54, v141 :: v_dual_add_f32 v53, v53, v142
	v_dual_add_f32 v52, v52, v143 :: v_dual_add_f32 v51, v51, v144
	v_dual_add_f32 v50, v50, v145 :: v_dual_add_f32 v49, v49, v146
	v_dual_add_f32 v48, v48, v147 :: v_dual_add_f32 v47, v47, v148
	v_dual_add_f32 v46, v46, v149 :: v_dual_add_f32 v45, v45, v150
	v_dual_add_f32 v44, v44, v151 :: v_dual_add_f32 v43, v43, v152
	v_dual_add_f32 v42, v42, v153 :: v_dual_add_f32 v41, v41, v154
	v_dual_add_f32 v40, v40, v155 :: v_dual_add_f32 v39, v39, v156
	v_dual_add_f32 v38, v38, v157 :: v_dual_add_f32 v37, v37, v158
	v_dual_add_f32 v36, v36, v159 :: v_dual_add_f32 v35, v35, v26
	v_dual_add_f32 v32, v32, v25 :: v_dual_add_nc_u32 v9, s34, v30
	v_add_f32_e32 v33, v33, v24
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
.LBB0_6:                                ; %Flow448
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v101, 0xe0, v0
	v_and_b32_e32 v102, 0xf0, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshrrev_b32_e32 v1, 1, v101
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v103, v1, v34
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v113, s4, v103
	s_mov_b32 s4, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v104, s0, v100
	v_add_nc_u32_e32 v1, s0, v99
	v_add_nc_u32_e32 v114, s0, v98
	ds_load_b128 v[9:12], v104 offset:1024
	ds_load_b128 v[129:132], v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v113 offset:3328
	ds_load_u8 v3, v113 offset:3072
	ds_load_u8 v4, v113 offset:3840
	ds_load_u8 v5, v113 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1 offset:3072
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[21:24], v1 offset:1024
	ds_load_b128 v[121:124], v1
	ds_load_b128 v[25:28], v114 offset:1024
	ds_load_b128 v[125:128], v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v113 offset:2304
	ds_load_u8 v6, v113 offset:2048
	ds_load_u8 v7, v113 offset:2816
	ds_load_u8 v8, v113 offset:2560
	ds_load_u8 v105, v113 offset:1280
	ds_load_u8 v106, v113 offset:1024
	ds_load_u8 v107, v113 offset:1792
	ds_load_u8 v108, v113 offset:1536
	ds_load_u8 v116, v113 offset:3968
	ds_load_u8 v117, v113 offset:3712
	ds_load_u8 v118, v113 offset:3456
	ds_load_u8 v119, v113 offset:3200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v115, s0, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v4, v113 offset:256
	ds_load_u8 v5, v113
	ds_load_u8 v109, v113 offset:768
	ds_load_u8 v110, v113 offset:512
	ds_load_u8 v120, v113 offset:2944
	ds_load_u8 v141, v113 offset:2688
	ds_load_u8 v142, v113 offset:2432
	ds_load_u8 v143, v113 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v108, v107, 0xc0c0004
	v_lshl_or_b32 v163, v6, 16, v1
	v_lshl_or_b32 v164, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v110, v109, 0xc0c0004
	v_lshl_or_b32 v161, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	ds_load_u8 v105, v113 offset:7424
	ds_load_u8 v106, v113 offset:7168
	ds_load_u8 v107, v113 offset:7936
	ds_load_u8 v108, v113 offset:7680
	ds_load_u8 v109, v113 offset:6400
	ds_load_u8 v110, v113 offset:6144
	ds_load_u8 v111, v113 offset:6912
	ds_load_u8 v112, v113 offset:6656
	ds_load_u8 v152, v113 offset:5376
	ds_load_u8 v153, v113 offset:5120
	ds_load_u8 v154, v113 offset:5888
	ds_load_u8 v155, v113 offset:5632
	ds_load_u8 v157, v113 offset:8064
	ds_load_u8 v158, v113 offset:7808
	ds_load_u8 v159, v113 offset:7552
	ds_load_u8 v160, v113 offset:7296
	ds_load_u8 v177, v113 offset:9472
	ds_load_u8 v178, v113 offset:9216
	ds_load_u8 v181, v113 offset:9984
	ds_load_u8 v182, v113 offset:9728
	ds_load_u8 v183, v113 offset:8448
	ds_load_u8 v184, v113 offset:8192
	ds_load_u8 v185, v113 offset:8960
	ds_load_u8 v186, v113 offset:8704
	ds_load_u8 v205, v113 offset:11136
	ds_load_u8 v206, v113 offset:10880
	ds_load_u8 v207, v113 offset:10624
	ds_load_u8 v208, v113 offset:10368
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[137:140], v115 offset:1024
	ds_load_b128 v[133:136], v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v113 offset:1920
	ds_load_u8 v145, v113 offset:1664
	ds_load_u8 v146, v113 offset:1408
	ds_load_u8 v147, v113 offset:1152
	ds_load_u8 v148, v113 offset:896
	ds_load_u8 v149, v113 offset:640
	ds_load_u8 v150, v113 offset:384
	ds_load_u8 v151, v113 offset:128
	ds_load_u8 v193, v113 offset:6016
	ds_load_u8 v194, v113 offset:5760
	ds_load_u8 v195, v113 offset:5504
	ds_load_u8 v196, v113 offset:5248
	ds_load_u8 v212, v113 offset:9088
	ds_load_u8 v213, v113 offset:8832
	ds_load_u8 v214, v113 offset:8576
	ds_load_u8 v215, v113 offset:8320
	ds_load_u8 v228, v113 offset:15232
	ds_load_u8 v229, v113 offset:14976
	ds_load_u8 v230, v113 offset:14720
	ds_load_u8 v231, v113 offset:14464
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v166, v110, v109, 0xc0c0004
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v167, v112, v111, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v153, v155, v154, 0xc0c0004
	v_perm_b32 v156, v106, v105, 0xc0c0004
	v_lshl_or_b32 v167, v167, 16, v166
	v_perm_b32 v165, v108, v107, 0xc0c0004
	ds_load_u8 v105, v113 offset:4352
	ds_load_u8 v106, v113 offset:4096
	ds_load_u8 v107, v113 offset:4864
	ds_load_u8 v108, v113 offset:4608
	ds_load_u8 v189, v113 offset:7040
	ds_load_u8 v190, v113 offset:6784
	ds_load_u8 v191, v113 offset:6528
	ds_load_u8 v192, v113 offset:6272
	v_lshl_or_b32 v166, v153, 16, v152
	ds_load_u8 v154, v113 offset:11520
	ds_load_u8 v155, v113 offset:11264
	ds_load_u8 v169, v113 offset:12032
	ds_load_u8 v170, v113 offset:11776
	ds_load_u8 v197, v113 offset:4992
	ds_load_u8 v198, v113 offset:4736
	ds_load_u8 v199, v113 offset:4480
	ds_load_u8 v200, v113 offset:4224
	v_mov_b32_e32 v7, s10
	v_lshl_or_b32 v168, v165, 16, v156
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v171, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v172, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v155, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[105:112], v[161:164], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v172, 16, v171
	ds_load_u8 v152, v113 offset:10496
	ds_load_u8 v153, v113 offset:10240
	ds_load_u8 v156, v113 offset:11008
	ds_load_u8 v171, v113 offset:10752
	ds_load_u8 v201, v113 offset:12160
	ds_load_u8 v202, v113 offset:11904
	ds_load_u8 v203, v113 offset:11648
	ds_load_u8 v204, v113 offset:11392
	v_lshl_or_b32 v180, v155, 16, v154
	v_perm_b32 v155, v186, v185, 0xc0c0004
	ds_load_u8 v185, v113 offset:15616
	ds_load_u8 v186, v113 offset:15360
	v_perm_b32 v154, v184, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[125:128], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v153, v171, v156, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v114 offset:3072
	ds_load_b128 v[173:176], v114 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v114, v178, v177, 0xc0c0004
	v_lshl_or_b32 v177, v155, 16, v154
	v_lshl_or_b32 v179, v153, 16, v152
	v_perm_b32 v153, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v226, v186, v185, 0xc0c0004
	ds_load_u8 v185, v113 offset:12544
	ds_load_u8 v186, v113 offset:12288
	ds_load_u8 v152, v113 offset:10112
	ds_load_u8 v209, v113 offset:9856
	ds_load_u8 v210, v113 offset:9600
	ds_load_u8 v211, v113 offset:9344
	v_lshl_or_b32 v178, v153, 16, v114
	ds_load_u8 v114, v113 offset:16128
	ds_load_u8 v187, v113 offset:15872
	ds_load_u8 v188, v113 offset:14592
	ds_load_u8 v216, v113 offset:14336
	ds_load_u8 v217, v113 offset:15104
	ds_load_u8 v218, v113 offset:14848
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[181:184], v115 offset:3072
	ds_load_b128 v[153:156], v115 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v115, v113 offset:13568
	ds_load_u8 v219, v113 offset:13312
	ds_load_u8 v220, v113 offset:14080
	ds_load_u8 v221, v113 offset:13824
	ds_load_u8 v222, v113 offset:16256
	ds_load_u8 v223, v113 offset:16000
	ds_load_u8 v224, v113 offset:15744
	ds_load_u8 v225, v113 offset:15488
	v_wmma_i32_16x16x16_iu8 v[105:112], v[177:180], v[121:124], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v219, v219, v115, 0xc0c0004
	v_perm_b32 v115, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_perm_b32 v227, v187, v114, 0xc0c0004
	ds_load_u8 v114, v113 offset:13056
	ds_load_u8 v187, v113 offset:12800
	ds_load_u8 v218, v113 offset:14208
	ds_load_u8 v232, v113 offset:13952
	ds_load_u8 v233, v113 offset:13696
	ds_load_u8 v234, v113 offset:13440
	ds_load_u8 v221, v113 offset:13184
	ds_load_u8 v235, v113 offset:12928
	ds_load_u8 v236, v113 offset:12672
	ds_load_u8 v237, v113 offset:12416
	v_perm_b32 v113, v119, v118, 0xc0c0004
	v_perm_b32 v116, v143, v142, 0xc0c0004
	v_perm_b32 v117, v141, v120, 0xc0c0004
	v_perm_b32 v118, v147, v146, 0xc0c0004
	v_perm_b32 v119, v145, v144, 0xc0c0004
	v_perm_b32 v120, v151, v150, 0xc0c0004
	v_perm_b32 v141, v149, v148, 0xc0c0004
	v_perm_b32 v216, v216, v188, 0xc0c0004
	v_perm_b32 v238, v186, v185, 0xc0c0004
	v_lshl_or_b32 v188, v115, 16, v113
	v_lshl_or_b32 v186, v119, 16, v118
	v_lshl_or_b32 v185, v141, 16, v120
	v_perm_b32 v141, v160, v159, 0xc0c0004
	v_perm_b32 v143, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v142, v187, v114, 0xc0c0004
	v_lshl_or_b32 v187, v117, 16, v116
	v_perm_b32 v144, v192, v191, 0xc0c0004
	v_perm_b32 v145, v190, v189, 0xc0c0004
	v_perm_b32 v146, v196, v195, 0xc0c0004
	v_perm_b32 v147, v194, v193, 0xc0c0004
	v_perm_b32 v148, v200, v199, 0xc0c0004
	v_perm_b32 v149, v198, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[113:120], v[185:188], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v192, v143, 16, v141
	v_lshl_or_b32 v191, v145, 16, v144
	v_lshl_or_b32 v190, v147, 16, v146
	v_lshl_or_b32 v189, v149, 16, v148
	v_perm_b32 v133, v204, v203, 0xc0c0004
	v_perm_b32 v134, v202, v201, 0xc0c0004
	v_perm_b32 v135, v208, v207, 0xc0c0004
	v_perm_b32 v136, v206, v205, 0xc0c0004
	v_perm_b32 v141, v211, v210, 0xc0c0004
	v_perm_b32 v143, v209, v152, 0xc0c0004
	v_perm_b32 v144, v215, v214, 0xc0c0004
	v_perm_b32 v145, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[113:120], v[189:192], v[125:128], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v134, 16, v133
	v_lshl_or_b32 v195, v136, 16, v135
	v_lshl_or_b32 v194, v143, 16, v141
	v_lshl_or_b32 v193, v145, 16, v144
	v_lshl_or_b32 v197, v142, 16, v238
	v_perm_b32 v133, v225, v224, 0xc0c0004
	v_perm_b32 v134, v223, v222, 0xc0c0004
	v_perm_b32 v135, v231, v230, 0xc0c0004
	v_perm_b32 v136, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v234, v233, 0xc0c0004
	v_perm_b32 v142, v232, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v237, v236, 0xc0c0004
	v_perm_b32 v144, v235, v221, 0xc0c0004
	v_lshl_or_b32 v200, v227, 16, v226
	v_lshl_or_b32 v199, v217, 16, v216
	v_lshl_or_b32 v198, v220, 16, v219
	v_wmma_i32_16x16x16_iu8 v[113:120], v[193:196], v[121:124], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v134, 16, v133
	v_lshl_or_b32 v203, v136, 16, v135
	v_lshl_or_b32 v202, v142, 16, v141
	v_lshl_or_b32 v201, v144, 16, v143
	v_wmma_i32_16x16x16_iu8 v[121:128], v[161:164], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[197:200], v[129:132], v[105:112] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[205:208], v104 offset:3072
	ds_load_b128 v[209:212], v104 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[113:120], v[201:204], v[129:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[185:188], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[25:28], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[189:192], v[25:28], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[177:180], v[21:24], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[193:196], v[21:24], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[197:200], v[9:12], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[201:204], v[9:12], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v106
	v_cvt_f32_i32_e32 v10, v107
	v_cvt_f32_i32_e32 v11, v108
	v_cvt_f32_i32_e32 v12, v109
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v96, v96, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[137:144], v[161:164], v[153:156], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[153:156], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[161:164], v[181:184], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[185:188], v[181:184], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v95, v95, v10 :: v_dual_add_f32 v94, v94, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[153:160], v[165:168], v[169:172], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[189:192], v[169:172], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v93, v93, v12 :: v_dual_add_f32 v92, v92, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v111
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v12, v113
	v_cvt_f32_i32_e32 v9, v115
	v_wmma_i32_16x16x16_iu8 v[153:160], v[177:180], v[13:16], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[193:196], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v91, v91, v10 :: v_dual_add_f32 v88, v88, v12
	v_dual_add_f32 v89, v89, v11 :: v_dual_add_f32 v86, v86, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v116
	v_cvt_f32_i32_e32 v11, v117
	v_cvt_f32_i32_e32 v12, v118
	v_cvt_f32_i32_e32 v9, v120
	v_wmma_i32_16x16x16_iu8 v[137:144], v[165:168], v[173:176], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v87, v87, v13 :: v_dual_add_f32 v84, v84, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v119
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v85, v85, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v83, v83, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v122
	v_cvt_f32_i32_e32 v12, v123
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v81, v81, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v125
	v_wmma_i32_16x16x16_iu8 v[145:152], v[189:192], v[173:176], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[177:180], v[17:20], v[137:144] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v82, v82, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v124
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v80, v80, v10 :: v_dual_add_f32 v79, v79, v11
	v_add_f32_e32 v76, v76, v9
	v_add_f32_e32 v78, v78, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v126
	v_cvt_f32_i32_e32 v11, v127
	v_cvt_f32_i32_e32 v12, v128
	v_cvt_f32_i32_e32 v9, v130
	v_wmma_i32_16x16x16_iu8 v[145:152], v[193:196], v[17:20], v[145:152] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[197:200], v[209:212], v[137:144] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v77, v77, v13 :: v_dual_add_f32 v74, v74, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v129
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v75, v75, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v73, v73, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v132
	v_cvt_f32_i32_e32 v12, v133
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v135
	v_wmma_i32_16x16x16_iu8 v[145:152], v[201:204], v[209:212], v[145:152] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v72, v72, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v70, v70, v10 :: v_dual_add_f32 v69, v69, v11
	v_add_f32_e32 v66, v66, v9
	v_add_f32_e32 v68, v68, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v136
	v_cvt_f32_i32_e32 v11, v137
	v_cvt_f32_i32_e32 v12, v138
	v_cvt_f32_i32_e32 v9, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v67, v67, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v139
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v65, v65, v10 :: v_dual_add_f32 v64, v64, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v63, v63, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v142
	v_cvt_f32_i32_e32 v12, v143
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v61, v61, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v145
	v_wmma_i32_16x16x16_iu8 v[153:160], v[197:200], v[205:208], v[153:160] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v62, v62, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v144
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v60, v60, v10 :: v_dual_add_f32 v59, v59, v11
	v_add_f32_e32 v56, v56, v9
	v_add_f32_e32 v58, v58, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v146
	v_cvt_f32_i32_e32 v11, v147
	v_cvt_f32_i32_e32 v12, v148
	v_cvt_f32_i32_e32 v9, v150
	v_wmma_i32_16x16x16_iu8 v[1:8], v[201:204], v[205:208], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v57, v57, v13 :: v_dual_add_f32 v54, v54, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v149
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v55, v55, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v151
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v53, v53, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v152
	v_cvt_f32_i32_e32 v12, v153
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v155
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v52, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v154
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v49, v49, v11 :: v_dual_add_f32 v48, v48, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v158
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v160
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v156
	v_cvt_f32_i32_e32 v11, v157
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v47, v47, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v159
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v43, v43, v12 :: v_dual_add_f32 v40, v40, v1
	v_dual_add_f32 v41, v41, v9 :: v_dual_add_f32 v38, v38, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v5, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v45, v45, v10 :: v_dual_add_f32 v42, v42, v13
	v_add_f32_e32 v44, v44, v11
	v_dual_add_f32 v36, v36, v1 :: v_dual_add_f32 v35, v35, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v32, v32, v4 :: v_dual_add_f32 v33, v33, v3
	v_add_f32_e32 v90, v90, v5
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
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v139, s11 :: v_dual_add_nc_u32 v26, s34, v103
	v_dual_mov_b32 v132, s4 :: v_dual_add_nc_u32 v111, s33, v97
	ds_load_u8 v97, v26 offset:2304
	ds_load_u8 v103, v26 offset:2048
	ds_load_u8 v104, v26 offset:2816
	ds_load_u8 v105, v26 offset:2560
	ds_load_u8 v106, v26 offset:1280
	ds_load_u8 v107, v26 offset:1024
	ds_load_u8 v108, v26 offset:1792
	ds_load_u8 v109, v26 offset:1536
	ds_load_u8 v112, v26 offset:3968
	ds_load_u8 v113, v26 offset:3712
	ds_load_u8 v114, v26 offset:3456
	ds_load_u8 v115, v26 offset:3200
	v_dual_mov_b32 v138, s10 :: v_dual_add_nc_u32 v21, s33, v100
	ds_load_u8 v116, v26 offset:256
	ds_load_u8 v117, v26
	ds_load_u8 v118, v26 offset:768
	ds_load_u8 v131, v26 offset:512
	ds_load_u8 v140, v26 offset:2944
	ds_load_u8 v141, v26 offset:2688
	ds_load_u8 v142, v26 offset:2432
	ds_load_u8 v143, v26 offset:2176
	v_dual_mov_b32 v136, s8 :: v_dual_add_nc_u32 v17, s33, v99
	v_dual_mov_b32 v134, s6 :: v_dual_add_nc_u32 v27, s33, v98
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[1:4], v21 offset:1024
	ds_load_b128 v[22:25], v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v26 offset:3328
	ds_load_u8 v98, v26 offset:3072
	ds_load_u8 v99, v26 offset:3840
	ds_load_u8 v100, v26 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[119:122], v17
	ds_load_b128 v[17:20], v27 offset:1024
	ds_load_b128 v[123:126], v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v26 offset:15616
	ds_load_u8 v197, v26 offset:15360
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v103, v103, v97, 0xc0c0004
	ds_load_u8 v144, v26 offset:1920
	ds_load_u8 v145, v26 offset:1664
	ds_load_u8 v146, v26 offset:1408
	ds_load_u8 v147, v26 offset:1152
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v163, v26 offset:6016
	ds_load_u8 v168, v26 offset:5760
	ds_load_u8 v169, v26 offset:5504
	ds_load_u8 v170, v26 offset:5248
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v105, v107, v106, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v27 offset:3072
	ds_load_b128 v[184:187], v27 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v106, v109, v108, 0xc0c0004
	v_lshl_or_b32 v174, v104, 16, v103
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v103, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v104, v131, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v28, v98, v28, 0xc0c0004
	v_lshl_or_b32 v173, v106, 16, v105
	ds_load_u8 v105, v26 offset:7424
	ds_load_u8 v106, v26 offset:7168
	ds_load_u8 v107, v26 offset:7936
	ds_load_u8 v108, v26 offset:7680
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v110, v100, v99, 0xc0c0004
	v_lshl_or_b32 v172, v104, 16, v103
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[97:100], v111 offset:1024
	ds_load_b128 v[127:130], v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v209, v26 offset:9088
	ds_load_u8 v210, v26 offset:8832
	ds_load_u8 v211, v26 offset:8576
	ds_load_u8 v212, v26 offset:8320
	ds_load_u8 v223, v26 offset:15232
	ds_load_u8 v224, v26 offset:14976
	ds_load_u8 v225, v26 offset:14720
	ds_load_u8 v226, v26 offset:14464
	v_lshl_or_b32 v175, v110, 16, v28
	ds_load_u8 v103, v26 offset:6400
	ds_load_u8 v104, v26 offset:6144
	ds_load_u8 v109, v26 offset:6912
	ds_load_u8 v110, v26 offset:6656
	ds_load_u8 v116, v26 offset:5376
	ds_load_u8 v117, v26 offset:5120
	ds_load_u8 v118, v26 offset:5888
	ds_load_u8 v131, v26 offset:5632
	ds_load_u8 v151, v26 offset:8064
	ds_load_u8 v152, v26 offset:7808
	ds_load_u8 v153, v26 offset:7552
	ds_load_u8 v154, v26 offset:7296
	ds_load_u8 v28, v26 offset:896
	ds_load_u8 v148, v26 offset:640
	ds_load_u8 v149, v26 offset:384
	ds_load_u8 v150, v26 offset:128
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v221, v197, v196, 0xc0c0004
	ds_load_u8 v196, v26 offset:12544
	ds_load_u8 v197, v26 offset:12288
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v113, v143, v142, 0xc0c0004
	v_mov_b32_e32 v137, s9
	v_mov_b32_e32 v135, s7
	v_mov_b32_e32 v133, s5
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v161, v104, v103, 0xc0c0004
	v_perm_b32 v155, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v162, v110, v109, 0xc0c0004
	v_perm_b32 v156, v108, v107, 0xc0c0004
	ds_load_u8 v105, v26 offset:4352
	ds_load_u8 v106, v26 offset:4096
	ds_load_u8 v107, v26 offset:4864
	ds_load_u8 v108, v26 offset:4608
	ds_load_u8 v157, v26 offset:7040
	ds_load_u8 v158, v26 offset:6784
	ds_load_u8 v159, v26 offset:6528
	ds_load_u8 v160, v26 offset:6272
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v117, v131, v118, 0xc0c0004
	ds_load_u8 v118, v26 offset:11520
	ds_load_u8 v131, v26 offset:11264
	ds_load_u8 v164, v26 offset:12032
	ds_load_u8 v165, v26 offset:11776
	ds_load_u8 v171, v26 offset:4992
	ds_load_u8 v200, v26 offset:4736
	ds_load_u8 v201, v26 offset:4480
	ds_load_u8 v202, v26 offset:4224
	v_lshl_or_b32 v179, v156, 16, v155
	v_lshl_or_b32 v178, v162, 16, v161
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v28, v148, v28, 0xc0c0004
	v_lshl_or_b32 v177, v117, 16, v116
	ds_load_u8 v116, v26 offset:10496
	ds_load_u8 v117, v26 offset:10240
	ds_load_u8 v155, v26 offset:11008
	ds_load_u8 v156, v26 offset:10752
	ds_load_u8 v161, v26 offset:12160
	ds_load_u8 v162, v26 offset:11904
	ds_load_u8 v203, v26 offset:11648
	ds_load_u8 v204, v26 offset:11392
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v234, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v166, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v167, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	v_perm_b32 v143, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v165, v164, 0xc0c0004
	v_perm_b32 v142, v160, v159, 0xc0c0004
	v_lshl_or_b32 v176, v167, 16, v166
	ds_load_u8 v164, v26 offset:9472
	ds_load_u8 v165, v26 offset:9216
	ds_load_u8 v166, v26 offset:9984
	ds_load_u8 v167, v26 offset:9728
	ds_load_u8 v188, v26 offset:8448
	ds_load_u8 v189, v26 offset:8192
	ds_load_u8 v192, v26 offset:8960
	ds_load_u8 v193, v26 offset:8704
	ds_load_u8 v205, v26 offset:11136
	ds_load_u8 v206, v26 offset:10880
	ds_load_u8 v207, v26 offset:10624
	ds_load_u8 v208, v26 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v117, v156, v155, 0xc0c0004
	v_lshl_or_b32 v191, v131, 16, v118
	ds_load_u8 v27, v26 offset:10112
	ds_load_u8 v131, v26 offset:9856
	ds_load_u8 v155, v26 offset:9600
	ds_load_u8 v156, v26 offset:9344
	v_wmma_i32_16x16x16_iu8 v[103:110], v[172:175], v[127:130], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v190, v117, 16, v116
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[176:179], v[123:126], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v118, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v193, v192, 0xc0c0004
	v_lshl_or_b32 v189, v117, 16, v116
	ds_load_u8 v116, v26 offset:16128
	ds_load_u8 v117, v26 offset:15872
	v_lshl_or_b32 v188, v164, 16, v118
	ds_load_u8 v118, v26 offset:14592
	ds_load_u8 v198, v26 offset:14336
	ds_load_u8 v199, v26 offset:15104
	ds_load_u8 v213, v26 offset:14848
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[192:195], v111 offset:3072
	ds_load_b128 v[164:167], v111 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v111, v26 offset:13568
	ds_load_u8 v214, v26 offset:13312
	ds_load_u8 v215, v26 offset:14080
	ds_load_u8 v216, v26 offset:13824
	ds_load_u8 v217, v26 offset:16256
	ds_load_u8 v218, v26 offset:16000
	ds_load_u8 v219, v26 offset:15744
	ds_load_u8 v220, v26 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v27, v131, v27, 0xc0c0004
	v_perm_b32 v131, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[188:191], v[119:122], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v214, v214, v111, 0xc0c0004
	v_perm_b32 v222, v117, v116, 0xc0c0004
	ds_load_u8 v116, v26 offset:13056
	ds_load_u8 v117, v26 offset:12800
	ds_load_u8 v228, v26 offset:14208
	ds_load_u8 v229, v26 offset:13952
	ds_load_u8 v230, v26 offset:13696
	ds_load_u8 v231, v26 offset:13440
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	ds_load_u8 v216, v26 offset:13184
	ds_load_u8 v232, v26 offset:12928
	ds_load_u8 v233, v26 offset:12672
	ds_load_u8 v26, v26 offset:12416
	v_perm_b32 v227, v198, v118, 0xc0c0004
	v_perm_b32 v111, v115, v114, 0xc0c0004
	v_perm_b32 v114, v141, v140, 0xc0c0004
	v_perm_b32 v115, v147, v146, 0xc0c0004
	v_perm_b32 v118, v145, v144, 0xc0c0004
	v_perm_b32 v140, v150, v149, 0xc0c0004
	v_perm_b32 v213, v213, v199, 0xc0c0004
	v_lshl_or_b32 v199, v112, 16, v111
	v_lshl_or_b32 v198, v114, 16, v113
	v_lshl_or_b32 v197, v118, 16, v115
	v_lshl_or_b32 v196, v28, 16, v140
	v_perm_b32 v28, v154, v153, 0xc0c0004
	v_perm_b32 v140, v152, v151, 0xc0c0004
	v_perm_b32 v144, v170, v169, 0xc0c0004
	v_perm_b32 v145, v168, v163, 0xc0c0004
	v_perm_b32 v146, v202, v201, 0xc0c0004
	v_perm_b32 v147, v200, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v117, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[196:199], v[127:130], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v140, 16, v28
	v_lshl_or_b32 v129, v143, 16, v142
	v_lshl_or_b32 v128, v145, 16, v144
	v_lshl_or_b32 v127, v147, 16, v146
	v_perm_b32 v28, v204, v203, 0xc0c0004
	v_perm_b32 v140, v162, v161, 0xc0c0004
	v_perm_b32 v142, v208, v207, 0xc0c0004
	v_perm_b32 v143, v206, v205, 0xc0c0004
	v_perm_b32 v144, v156, v155, 0xc0c0004
	v_perm_b32 v145, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[127:130], v[123:126], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v203, v140, 16, v28
	v_lshl_or_b32 v202, v143, 16, v142
	v_lshl_or_b32 v201, v27, 16, v144
	v_lshl_or_b32 v200, v145, 16, v131
	v_lshl_or_b32 v206, v213, 16, v227
	v_lshl_or_b32 v205, v215, 16, v214
	v_lshl_or_b32 v204, v141, 16, v234
	v_perm_b32 v27, v220, v219, 0xc0c0004
	v_perm_b32 v28, v218, v217, 0xc0c0004
	v_perm_b32 v131, v226, v225, 0xc0c0004
	v_perm_b32 v140, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v231, v230, 0xc0c0004
	v_perm_b32 v142, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v233, 0xc0c0004
	v_perm_b32 v143, v232, v216, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[212:215], v21 offset:3072
	ds_load_b128 v[216:219], v21 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[111:118], v[200:203], v[119:122], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[172:175], v[97:100], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v210, v140, 16, v131
	v_lshl_or_b32 v209, v142, 16, v141
	v_lshl_or_b32 v208, v143, 16, v26
	v_wmma_i32_16x16x16_iu8 v[140:147], v[196:199], v[97:100], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[172:175], v[164:167], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[196:199], v[164:167], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[192:195], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[196:199], v[192:195], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[176:179], v[17:20], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[127:130], v[17:20], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[176:179], v[184:187], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[127:130], v[184:187], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[176:179], v[180:183], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[127:130], v[180:183], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v207, v222, 16, v221
	v_lshl_or_b32 v211, v28, 16, v27
	v_wmma_i32_16x16x16_iu8 v[119:126], v[188:191], v[13:16], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[200:203], v[13:16], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[188:191], v[9:12], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[200:203], v[9:12], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[188:191], v[5:8], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[200:203], v[5:8], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[204:207], v[22:25], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[208:211], v[22:25], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[204:207], v[1:4], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[208:211], v[1:4], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[204:207], v[216:219], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[208:211], v[216:219], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[204:207], v[212:215], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[208:211], v[212:215], v[132:139] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v103
	v_cvt_f32_i32_e32 v2, v104
	v_cvt_f32_i32_e32 v3, v105
	v_cvt_f32_i32_e32 v4, v106
	v_cvt_f32_i32_e32 v5, v107
	v_cvt_f32_i32_e32 v6, v108
	v_cvt_f32_i32_e32 v7, v109
	v_cvt_f32_i32_e32 v8, v110
	v_cvt_f32_i32_e32 v9, v111
	v_cvt_f32_i32_e32 v10, v112
	v_cvt_f32_i32_e32 v11, v113
	v_cvt_f32_i32_e32 v12, v114
	v_cvt_f32_i32_e32 v13, v115
	v_cvt_f32_i32_e32 v14, v116
	v_cvt_f32_i32_e32 v15, v117
	v_cvt_f32_i32_e32 v16, v118
	v_cvt_f32_i32_e32 v17, v119
	v_cvt_f32_i32_e32 v18, v120
	v_cvt_f32_i32_e32 v19, v121
	v_cvt_f32_i32_e32 v20, v122
	v_cvt_f32_i32_e32 v21, v123
	v_cvt_f32_i32_e32 v22, v124
	v_cvt_f32_i32_e32 v23, v125
	v_cvt_f32_i32_e32 v24, v126
	v_cvt_f32_i32_e32 v25, v140
	v_cvt_f32_i32_e32 v26, v141
	v_cvt_f32_i32_e32 v27, v142
	v_cvt_f32_i32_e32 v28, v143
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
	v_cvt_f32_i32_e32 v129, v169
	v_cvt_f32_i32_e32 v130, v170
	v_cvt_f32_i32_e32 v131, v171
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
.LBB0_10:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v34, s30, v34
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v90, v1 :: v_dual_lshlrev_b32 v34, 1, v34
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v97, s31, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v96, v2
	v_dual_add_f32 v9, v88, v9 :: v_dual_add_f32 v10, v87, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v98, 32, v34
	v_or_b32_e32 v99, 64, v34
	v_or_b32_e32 v100, 0x60, v34
	s_clause 0x3
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	buffer_load_u16 v100, v100, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v103, 1, v97
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s30, s30, s25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v9, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v9, s30, v97
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v80, v17 :: v_dual_add_f32 v18, v79, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v87, v10, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v21, v76, v21 :: v_dual_add_f32 v22, v75, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v10, 31, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v17, s2
	v_cndmask_b32_e64 v79, v79, v18, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v23, v74, v23 :: v_dual_add_f32 v24, v73, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[17:18], 2, v[9:10]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v108, v64, v108 :: v_dual_add_f32 v109, v63, v109
	v_dual_add_f32 v27, v70, v27 :: v_dual_add_f32 v28, v69, v28
	v_dual_add_f32 v106, v66, v106 :: v_dual_add_f32 v107, v65, v107
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v21, s2
	v_cndmask_b32_e64 v24, v73, v24, s2
	v_cndmask_b32_e64 v73, v64, v108, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v64, vcc_lo, s26, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v95, v3 :: v_dual_add_f32 v4, v94, v4
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v142, v102, 2, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v90, v1, s2
	v_cndmask_b32_e64 v27, v70, v27, s2
	v_cndmask_b32_e64 v70, v65, v107, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v65, null, s27, v18, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v93, v5 :: v_dual_add_f32 v6, v92, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v102, v102, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v2, s2
	v_cndmask_b32_e64 v95, v95, v3, s2
	v_cndmask_b32_e64 v94, v94, v4, s2
	v_cndmask_b32_e64 v93, v93, v5, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v11, v86, v11 :: v_dual_add_f32 v12, v85, v12
	v_dual_add_f32 v7, v91, v7 :: v_dual_add_f32 v8, v89, v8
	v_dual_add_f32 v13, v84, v13 :: v_dual_add_f32 v14, v83, v14
	v_dual_add_f32 v15, v82, v15 :: v_dual_add_f32 v16, v81, v16
	v_dual_add_f32 v110, v62, v110 :: v_dual_add_f32 v111, v61, v111
	v_dual_add_f32 v118, v54, v118 :: v_dual_add_f32 v119, v53, v119
	v_dual_add_f32 v120, v52, v120 :: v_dual_add_f32 v121, v51, v121
	v_dual_add_f32 v130, v42, v130 :: v_dual_add_f32 v131, v41, v131
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v11, s2
	v_cndmask_b32_e64 v92, v92, v6, s2
	v_cndmask_b32_e64 v91, v91, v7, s2
	v_cndmask_b32_e64 v89, v89, v8, s2
	v_cndmask_b32_e64 v85, v85, v12, s2
	v_cndmask_b32_e64 v84, v84, v13, s2
	v_cndmask_b32_e64 v83, v83, v14, s2
	v_cndmask_b32_e64 v82, v82, v15, s2
	v_cndmask_b32_e64 v81, v81, v16, s2
	v_cndmask_b32_e64 v61, v61, v111, s2
	v_cndmask_b32_e64 v53, v53, v119, s2
	v_cndmask_b32_e64 v52, v52, v120, s2
	v_cndmask_b32_e64 v111, v42, v130, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v72, v25 :: v_dual_add_f32 v26, v71, v26
	v_dual_add_f32 v104, v68, v104 :: v_dual_add_f32 v105, v67, v105
	v_dual_add_f32 v112, v60, v112 :: v_dual_add_f32 v113, v59, v113
	v_dual_add_f32 v114, v58, v114 :: v_dual_add_f32 v115, v57, v115
	v_dual_add_f32 v116, v56, v116 :: v_dual_add_f32 v117, v55, v117
	v_dual_add_f32 v124, v48, v124 :: v_dual_add_f32 v125, v47, v125
	v_dual_add_f32 v128, v44, v128 :: v_dual_add_f32 v129, v43, v129
	v_dual_add_f32 v132, v40, v132 :: v_dual_add_f32 v133, v39, v133
	v_dual_add_f32 v134, v38, v134 :: v_dual_add_f32 v135, v37, v135
	v_dual_add_f32 v136, v36, v136 :: v_dual_add_f32 v137, v35, v137
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v25, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v19, v78, v19 :: v_dual_add_f32 v20, v77, v20
	v_dual_add_f32 v122, v50, v122 :: v_dual_add_f32 v123, v49, v123
	v_dual_add_f32 v126, v46, v126 :: v_dual_add_f32 v127, v45, v127
	v_dual_add_f32 v138, v33, v138 :: v_dual_add_f32 v139, v32, v139
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v75, v22, s2
	v_cndmask_b32_e64 v23, v74, v23, s2
	v_cndmask_b32_e64 v71, v71, v26, s2
	v_cndmask_b32_e64 v28, v69, v28, s2
	v_cndmask_b32_e64 v68, v68, v104, s2
	v_cndmask_b32_e64 v69, v66, v106, s2
	v_cndmask_b32_e64 v63, v63, v109, s2
	v_cndmask_b32_e64 v62, v62, v110, s2
	v_cndmask_b32_e64 v60, v60, v112, s2
	v_cndmask_b32_e64 v74, v59, v113, s2
	v_cndmask_b32_e64 v75, v58, v114, s2
	v_cndmask_b32_e64 v57, v57, v115, s2
	v_cndmask_b32_e64 v56, v56, v116, s2
	v_cndmask_b32_e64 v104, v51, v121, s2
	v_cndmask_b32_e64 v106, v48, v124, s2
	v_cndmask_b32_e64 v109, v44, v128, s2
	v_cndmask_b32_e64 v110, v43, v129, s2
	v_cndmask_b32_e64 v112, v40, v132, s2
	v_cndmask_b32_e64 v113, v39, v133, s2
	v_cndmask_b32_e64 v114, v38, v134, s2
	v_cndmask_b32_e64 v115, v37, v135, s2
	v_cndmask_b32_e64 v116, v36, v136, s2
	v_cndmask_b32_e64 v19, v78, v19, s2
	v_cndmask_b32_e64 v20, v77, v20, s2
	v_cndmask_b32_e64 v77, v55, v117, s2
	v_cndmask_b32_e64 v49, v49, v123, s2
	v_cndmask_b32_e64 v107, v47, v125, s2
	v_cndmask_b32_e64 v108, v46, v126, s2
	v_cndmask_b32_e64 v117, v35, v137, s2
	v_cndmask_b32_e64 v67, v67, v105, s2
	v_cndmask_b32_e64 v105, v50, v122, s2
	v_cndmask_b32_e64 v45, v45, v127, s2
	v_cndmask_b32_e64 v78, v54, v118, s2
	v_cndmask_b32_e64 v41, v41, v131, s2
	v_cndmask_b32_e64 v118, v32, v139, s2
	s_mov_b32 s0, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v99
	v_lshlrev_b32_e32 v17, 16, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v141, 5, v0
	v_and_b32_e32 v140, 28, v31
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v144, 16, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v18, 16, v98
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v30, 0xcf0, v30
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v1, 32, v141
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v103
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_or_b32 v2, v31, 64, v144
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v103, v33, v138, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v1, v142, v1, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v5, v2, v30
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v102
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v143, 13, v0
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v11, 0xe000, v143, v5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[5:8], v102 offset:16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v120, v11, 32, 0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v130, v1, v21 :: v_dual_add_nc_u32 v119, 0, v11
	ds_load_b128 v[9:12], v102 offset:512
	ds_load_b128 v[13:16], v102 offset:528
	v_dual_mul_f32 v26, v1, v17 :: v_dual_lshlrev_b32 v25, 16, v100
	v_mul_f32_e32 v31, v3, v17
	v_mul_f32_e32 v30, v2, v17
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v36, v8, v17
	v_mul_f32_e32 v133, v4, v21
	v_mul_f32_e32 v132, v3, v21
	v_mul_f32_e32 v136, v7, v21
	v_mul_f32_e32 v33, v5, v17
	v_mul_f32_e32 v134, v5, v21
	v_mul_f32_e32 v35, v7, v17
	v_mul_f32_e32 v34, v6, v17
	v_mul_f32_e32 v32, v4, v17
	v_mul_f32_e32 v131, v2, v21
	v_mul_f32_e32 v135, v6, v21
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v37, v9, v17
	v_mul_f32_e32 v38, v10, v17
	v_dual_mul_f32 v40, v12, v17 :: v_dual_mul_f32 v51, v1, v18
	v_dual_mul_f32 v43, v13, v17 :: v_dual_mul_f32 v102, v7, v18
	v_dual_mul_f32 v44, v14, v17 :: v_dual_mul_f32 v59, v3, v18
	v_dual_mul_f32 v128, v15, v18 :: v_dual_mul_f32 v147, v1, v25
	v_dual_mul_f32 v47, v15, v17 :: v_dual_mul_f32 v126, v13, v18
	v_dual_mul_f32 v48, v16, v17 :: v_dual_mul_f32 v55, v2, v18
	v_mul_f32_e32 v99, v5, v18
	v_mul_f32_e32 v123, v10, v18
	v_mul_f32_e32 v124, v11, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v149, v3, v25 :: v_dual_mul_f32 v66, v81, v48
	v_mul_f32_e32 v98, v4, v18
	v_mul_f32_e32 v121, v8, v18
	v_mul_f32_e32 v151, v5, v25
	v_dual_mul_f32 v125, v12, v18 :: v_dual_mul_f32 v138, v9, v21
	v_mul_f32_e32 v153, v7, v25
	v_dual_mul_f32 v39, v11, v17 :: v_dual_mul_f32 v122, v9, v18
	v_dual_mul_f32 v127, v14, v18 :: v_dual_mul_f32 v140, v11, v21
	v_dual_mul_f32 v129, v16, v18 :: v_dual_mul_f32 v142, v13, v21
	v_mul_f32_e32 v150, v4, v25
	v_dual_mul_f32 v155, v9, v25 :: v_dual_mul_f32 v100, v6, v18
	v_dual_mul_f32 v137, v8, v21 :: v_dual_mul_f32 v38, v87, v38
	v_dual_mul_f32 v139, v10, v21 :: v_dual_mul_f32 v46, v85, v40
	v_dual_mul_f32 v141, v12, v21 :: v_dual_mul_f32 v42, v86, v39
	v_dual_mul_f32 v143, v14, v21 :: v_dual_mul_f32 v50, v84, v43
	v_dual_mul_f32 v145, v15, v21 :: v_dual_mul_f32 v58, v82, v47
	v_dual_mul_f32 v146, v16, v21 :: v_dual_mul_f32 v1, v90, v26
	v_dual_mul_f32 v148, v2, v25 :: v_dual_mul_f32 v5, v96, v30
	v_dual_mul_f32 v152, v6, v25 :: v_dual_mul_f32 v21, v92, v34
	v_mul_f32_e32 v154, v8, v25
	v_mul_f32_e32 v156, v10, v25
	v_dual_mul_f32 v157, v11, v25 :: v_dual_mul_f32 v18, v76, v99
	v_dual_mul_f32 v158, v12, v25 :: v_dual_mul_f32 v39, v71, v123
	v_dual_mul_f32 v159, v13, v25 :: v_dual_mul_f32 v10, v19, v59
	v_mul_f32_e32 v160, v14, v25
	v_dual_mul_f32 v161, v15, v25 :: v_dual_mul_f32 v22, v22, v100
	v_dual_mul_f32 v162, v16, v25 :: v_dual_mul_f32 v43, v27, v124
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v54, v83, v44
	v_dual_mul_f32 v2, v80, v51 :: v_dual_mul_f32 v3, v73, v130
	v_dual_mul_f32 v15, v61, v133 :: v_dual_mul_f32 v4, v106, v147
	v_mul_f32_e32 v9, v95, v31
	v_mul_f32_e32 v11, v62, v132
	v_dual_mul_f32 v27, v75, v136 :: v_dual_mul_f32 v12, v108, v149
	v_dual_mul_f32 v17, v93, v33 :: v_dual_mul_f32 v26, v23, v102
	v_mul_f32_e32 v14, v20, v98
	v_dual_mul_f32 v19, v60, v134 :: v_dual_mul_f32 v8, v107, v148
	v_mul_f32_e32 v20, v109, v151
	v_mul_f32_e32 v25, v91, v35
	v_dual_mul_f32 v47, v28, v125 :: v_dual_mul_f32 v44, v78, v140
	v_mul_f32_e32 v28, v111, v153
	v_mul_f32_e32 v30, v89, v36
	v_mul_f32_e32 v34, v88, v37
	v_dual_mul_f32 v6, v79, v55 :: v_dual_mul_f32 v35, v72, v122
	v_mul_f32_e32 v55, v67, v127
	v_dual_mul_f32 v59, v69, v128 :: v_dual_mul_f32 v36, v56, v138
	v_dual_mul_f32 v67, v70, v129 :: v_dual_mul_f32 v52, v52, v142
	v_dual_mul_f32 v16, v45, v150 :: v_dual_mul_f32 v37, v112, v155
	v_mul_f32_e32 v13, v94, v32
	v_dual_mul_f32 v31, v24, v121 :: v_dual_mul_f32 v40, v77, v139
	v_dual_mul_f32 v51, v68, v126 :: v_dual_mul_f32 v32, v57, v137
	v_dual_mul_f32 v7, v63, v131 :: v_dual_mul_f32 v48, v53, v141
	v_dual_mul_f32 v23, v74, v135 :: v_dual_mul_f32 v68, v49, v146
	v_mul_f32_e32 v56, v104, v143
	v_mul_f32_e32 v60, v105, v145
	v_dual_mul_f32 v24, v110, v152 :: v_dual_mul_f32 v33, v41, v154
	v_mul_f32_e32 v41, v113, v156
	v_mul_f32_e32 v45, v114, v157
	v_mul_f32_e32 v49, v115, v158
	v_mul_f32_e32 v53, v116, v159
	v_mul_f32_e32 v57, v117, v160
	v_mul_f32_e32 v61, v103, v161
	v_mul_f32_e32 v69, v118, v162
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	ds_store_b128 v119, v[1:4]
	ds_store_b128 v119, v[9:12] offset:256
	ds_store_b128 v119, v[17:20] offset:512
	ds_store_b128 v119, v[25:28] offset:768
	ds_store_b128 v119, v[34:37] offset:4096
	ds_store_b128 v119, v[42:45] offset:4352
	ds_store_b128 v119, v[50:53] offset:4608
	ds_store_b128 v119, v[58:61] offset:4864
	ds_store_b128 v120, v[5:8]
	ds_store_b128 v120, v[13:16] offset:256
	ds_store_b128 v120, v[21:24] offset:512
	ds_store_b128 v120, v[30:33] offset:768
	ds_store_b128 v120, v[38:41] offset:4096
	ds_store_b128 v120, v[46:49] offset:4352
	ds_store_b128 v120, v[54:57] offset:4608
	ds_store_b128 v120, v[66:69] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v67, v[64:65], off
	v_lshlrev_b32_e32 v1, 5, v101
	v_lshlrev_b32_e32 v2, 2, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, 0x300, v0, v1
	v_or3_b32 v0, v0, v2, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x2010, v0, 0
	ds_load_b128 v[60:63], v1
	ds_load_b128 v[28:31], v1 offset:128
	v_xad_u32 v1, 0x6030, v0, 0
	v_xad_u32 v3, 0x4020, v0, 0
	ds_load_b128 v[56:59], v2
	ds_load_b128 v[24:27], v2 offset:128
	ds_load_b128 v[52:55], v3
	ds_load_b128 v[20:23], v3 offset:128
	v_xad_u32 v2, 0x8040, v0, 0
	ds_load_b128 v[48:51], v1
	ds_load_b128 v[16:19], v1 offset:128
	v_xad_u32 v1, 0xa050, v0, 0
	v_xad_u32 v3, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[44:47], v2
	ds_load_b128 v[12:15], v2 offset:128
	ds_load_b128 v[40:43], v1
	ds_load_b128 v[8:11], v1 offset:128
	ds_load_b128 v[36:39], v3
	ds_load_b128 v[4:7], v3 offset:128
	ds_load_b128 v[32:35], v0
	ds_load_b128 v[0:3], v0 offset:128
.LBB0_11:                               ; %atomicrmw.start374
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v66, v67, v60
	global_atomic_cmpswap_b32 v66, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v66, v67
	v_mov_b32_e32 v67, v66
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end373
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v64, s30, s25, v97
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v64, vcc_lo, s26, v64
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_13:                               ; %atomicrmw.start368
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v66, v67, v56
	global_atomic_cmpswap_b32 v60, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v60, v67
	v_mov_b32_e32 v67, v60
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end367
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s25, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_15:                               ; %atomicrmw.start362
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v66, v67, v52
	global_atomic_cmpswap_b32 v56, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v56, v67
	v_mov_b32_e32 v67, v56
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end361
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_17:                               ; %atomicrmw.start356
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v66, v67, v48
	global_atomic_cmpswap_b32 v52, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v52, v67
	v_mov_b32_e32 v67, v52
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end355
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s25, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_19:                               ; %atomicrmw.start350
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v66, v67, v44
	global_atomic_cmpswap_b32 v48, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v48, v67
	v_mov_b32_e32 v67, v48
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end349
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_21:                               ; %atomicrmw.start344
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v66, v67, v40
	global_atomic_cmpswap_b32 v44, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v44, v67
	v_mov_b32_e32 v67, v44
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end343
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_23:                               ; %atomicrmw.start338
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v66, v67, v36
	global_atomic_cmpswap_b32 v40, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v40, v67
	v_mov_b32_e32 v67, v40
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end337
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_25:                               ; %atomicrmw.start332
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v66, v67, v32
	global_atomic_cmpswap_b32 v36, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v36, v67
	v_mov_b32_e32 v67, v36
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end331
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s0, s25, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_27:                               ; %atomicrmw.start326
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v28
	global_atomic_cmpswap_b32 v32, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v32, v67
	v_mov_b32_e32 v67, v32
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end325
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_29:                               ; %atomicrmw.start320
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v24
	global_atomic_cmpswap_b32 v28, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v67
	v_mov_b32_e32 v67, v28
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end319
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_31:                               ; %atomicrmw.start314
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v20
	global_atomic_cmpswap_b32 v24, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v67
	v_mov_b32_e32 v67, v24
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end313
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_33:                               ; %atomicrmw.start308
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v16
	global_atomic_cmpswap_b32 v20, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v67
	v_mov_b32_e32 v67, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end307
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_35:                               ; %atomicrmw.start302
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v12
	global_atomic_cmpswap_b32 v16, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v67
	v_mov_b32_e32 v67, v16
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end301
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_37:                               ; %atomicrmw.start296
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v8
	global_atomic_cmpswap_b32 v12, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v67
	v_mov_b32_e32 v67, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end295
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_39:                               ; %atomicrmw.start290
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v4
	global_atomic_cmpswap_b32 v8, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v67
	v_mov_b32_e32 v67, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end289
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s26, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_41:                               ; %atomicrmw.start284
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v66, v67, v0
	global_atomic_cmpswap_b32 v4, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v67
	v_mov_b32_e32 v67, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end283
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v64, s30, s29, v97
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v65, 31, v64
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v64, vcc_lo, s26, v64
	v_add_co_ci_u32_e64 v65, null, s27, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_43:                               ; %atomicrmw.start278
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v61
	global_atomic_cmpswap_b32 v0, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v67
	v_mov_b32_e32 v67, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end277
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v60, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v61, 31, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[60:61], 2, v[60:61]
	v_add_co_u32 v60, vcc_lo, s26, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v61, null, s27, v61, vcc_lo
	global_load_b32 v65, v[60:61], off
.LBB0_45:                               ; %atomicrmw.start272
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v64, v65, v57
	global_atomic_cmpswap_b32 v0, v[60:61], v[64:65], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v65
	v_mov_b32_e32 v65, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end271
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v56, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v57, 31, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[56:57], 2, v[56:57]
	v_add_co_u32 v56, vcc_lo, s26, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v57, null, s27, v57, vcc_lo
	global_load_b32 v61, v[56:57], off
.LBB0_47:                               ; %atomicrmw.start266
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v60, v61, v53
	global_atomic_cmpswap_b32 v0, v[56:57], v[60:61], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v61
	v_mov_b32_e32 v61, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end265
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v53, 31, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[52:53], 2, v[52:53]
	v_add_co_u32 v52, vcc_lo, s26, v52
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v53, null, s27, v53, vcc_lo
	global_load_b32 v57, v[52:53], off
.LBB0_49:                               ; %atomicrmw.start260
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v56, v57, v49
	global_atomic_cmpswap_b32 v0, v[52:53], v[56:57], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v57
	v_mov_b32_e32 v57, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end259
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v48, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v49, 31, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[48:49], 2, v[48:49]
	v_add_co_u32 v48, vcc_lo, s26, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v49, null, s27, v49, vcc_lo
	global_load_b32 v53, v[48:49], off
.LBB0_51:                               ; %atomicrmw.start254
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v52, v53, v45
	global_atomic_cmpswap_b32 v0, v[48:49], v[52:53], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v53
	v_mov_b32_e32 v53, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end253
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v44, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v45, 31, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[44:45], 2, v[44:45]
	v_add_co_u32 v44, vcc_lo, s26, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v45, null, s27, v45, vcc_lo
	global_load_b32 v49, v[44:45], off
.LBB0_53:                               ; %atomicrmw.start248
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v48, v49, v41
	global_atomic_cmpswap_b32 v0, v[44:45], v[48:49], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v49
	v_mov_b32_e32 v49, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end247
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v41, 31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[40:41], 2, v[40:41]
	v_add_co_u32 v40, vcc_lo, s26, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v41, null, s27, v41, vcc_lo
	global_load_b32 v45, v[40:41], off
.LBB0_55:                               ; %atomicrmw.start242
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v44, v45, v37
	global_atomic_cmpswap_b32 v0, v[40:41], v[44:45], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v45
	v_mov_b32_e32 v45, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end241
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v36, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v37, 31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	v_add_co_u32 v36, vcc_lo, s26, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s27, v37, vcc_lo
	global_load_b32 v41, v[36:37], off
.LBB0_57:                               ; %atomicrmw.start236
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v40, v41, v33
	global_atomic_cmpswap_b32 v0, v[36:37], v[40:41], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v41
	v_mov_b32_e32 v41, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end235
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v32, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s26, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s27, v33, vcc_lo
	global_load_b32 v37, v[32:33], off
.LBB0_59:                               ; %atomicrmw.start230
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v29
	global_atomic_cmpswap_b32 v0, v[32:33], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end229
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s26, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s27, v29, vcc_lo
	global_load_b32 v33, v[28:29], off
.LBB0_61:                               ; %atomicrmw.start224
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end223
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s26, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s27, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_63:                               ; %atomicrmw.start218
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end217
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s26, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s27, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_65:                               ; %atomicrmw.start212
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end211
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s26, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s27, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_67:                               ; %atomicrmw.start206
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end205
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s26, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s27, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_69:                               ; %atomicrmw.start200
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end199
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s26, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s27, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_71:                               ; %atomicrmw.start194
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end193
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s26, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s27, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_73:                               ; %atomicrmw.start188
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end187
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v0, s30, s28, v97
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s26, v0
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_75:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v62
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_75
; %bb.76:                               ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_77:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v58
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_77
; %bb.78:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_79:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v54
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_79
; %bb.80:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_81:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v50
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_81
; %bb.82:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_83:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v46
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_83
; %bb.84:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_85:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v42
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_85
; %bb.86:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_87:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v38
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_87
; %bb.88:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_89:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v34
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_89
; %bb.90:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_91:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v30
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_91
; %bb.92:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_93:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v26
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_93
; %bb.94:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_95:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v22
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_95
; %bb.96:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_97:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v18
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_97
; %bb.98:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_99:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v14
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_99
; %bb.100:                              ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_101:                              ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_101
; %bb.102:                              ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_103:                              ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v6
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_103
; %bb.104:                              ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_105:                              ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v2
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_105
; %bb.106:                              ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v0, s30, s24, v97
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s26, v0
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_107:                              ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v63
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_107
; %bb.108:                              ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_109:                              ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v59
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_109
; %bb.110:                              ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_111:                              ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v55
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_111
; %bb.112:                              ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_113:                              ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v51
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_113
; %bb.114:                              ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_115:                              ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v47
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_115
; %bb.116:                              ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_117:                              ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v43
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_117
; %bb.118:                              ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_119:                              ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v39
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_119
; %bb.120:                              ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_121:                              ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v35
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_121
; %bb.122:                              ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_123:                              ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_123
; %bb.124:                              ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_125:                              ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_125
; %bb.126:                              ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_127:                              ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_127
; %bb.128:                              ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_129:                              ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_129
; %bb.130:                              ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_131:                              ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_131
; %bb.132:                              ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_133:                              ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_133
; %bb.134:                              ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_135:                              ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_135
; %bb.136:                              ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s25, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s30, s0, v97
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_137:                              ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_137
; %bb.138:                              ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 239
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21024
; TotalNumSgprs: 42
; NumVgprs: 239
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
