	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[24:27], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s35, s[0:1], 0x38
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v48, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v57, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v50, 16, v48
	v_or_b32_e32 v51, 32, v48
	v_and_b32_e32 v49, 56, v2
	v_or_b32_e32 v52, 48, v48
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[28:29], s[26:27]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s27, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s27
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s26
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
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s35, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s19, v48
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v9, v12, 4, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v53, s19, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s9, s10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[10:11], null, s19, 48, v[9:10]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s11, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s10, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s10, v48
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s11
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s9, s35, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s10, v49
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s5, s4, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s10, v50
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s5, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s10, v51
	v_or_b32_e32 v7, s10, v52
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s34, s2, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s18, s6, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s8, s19, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s9, 63
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s35, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s6, s18, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s7, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s8, s34, s8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s35, v3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s35, v5
	v_cmp_gt_i32_e64 s4, s35, v6
	v_cmp_gt_i32_e64 s5, s35, v7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v54, v1, v49, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s8, v9
	v_add_nc_u32_e32 v3, s8, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s19, 4
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s5, s5, s7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s10, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s7
	s_and_b32 s3, s3, s7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s4, s7
	s_cmpk_gt_i32 s9, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v55, s33, v9
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s10, s10, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v8, 0x80000000, v5, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v25, s10, v49
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s8, v55
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v26, s10, v48
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s8, v10
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v27, s10, v50
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s4, s19, 6
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s35, v25
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v28, s10, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v6, s3
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_add_i32 s8, s8, s4
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v30, s10, v54
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s35, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v4, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v29, s10, v52
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v31, s8, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s35, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v32, s8, v55
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s35, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v7, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[7:8], v8, s[24:27], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[17:20], v1, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v11, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v30, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v33, s8, v53
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s35, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v11, 0x80000000, v31, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v34, s8, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v29, 0x80000000, v32, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b32 s8, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_cmpk_gt_i32 s9, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v37, 0x80000000, v34, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[41:42], v1, s[24:27], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v11, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v29, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v33, s[28:31], 0 offen
	buffer_load_b128 v[37:40], v37, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v11, 0, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v58, v2, v1
	v_lshrrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 48, v2
	v_add_nc_u32_e32 v43, 0, v58
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v11, v[13:16] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(7)
	ds_store_b64 v43, v[7:8] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v11, v[17:20]
	s_waitcnt vmcnt(5)
	ds_store_b128 v11, v[21:24] offset:4096
	ds_store_b128 v11, v[3:6] offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v43, v[41:42] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v11, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v11, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v11, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[37:40] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v44, v12, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v56, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v46, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v45, 48, v44
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v37, 0
	s_add_i32 s5, 0, 0x8000
	s_add_i32 s1, 0, 0x8800
	s_add_i32 s0, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr56
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v44, v12, 6, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s36, s9, 6
	s_add_i32 s6, s10, 64
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v56, 0x70, v1
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v2, s9
	v_xor_b32_e32 v46, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v45, 48, v44
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s4, 1
	s_add_i32 s5, 0, 0x8000
	s_add_i32 s1, 0, 0x8800
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s36, s36, -3
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s3, s5
	s_mov_b32 s5, s1
	s_mov_b32 s1, s8
	s_mov_b32 s8, s0
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s9, 6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v63, s1, v56, v12
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s6, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s4, 1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v64, s0, v49
	v_or_b32_e32 v65, s0, v48
	v_or_b32_e32 v66, s0, v50
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s1, s0, s19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v67, s0, v51
	v_or_b32_e32 v68, s0, v52
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s1, s1, s34
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v69, s0, v54
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v70, s1, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s35, v65
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s4, s35, v64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v71, s1, v55
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s35, v66
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v72, s1, v53
	v_add_nc_u32_e32 v73, s1, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s35, v67
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v59, s3, v44
	v_add_nc_u32_e32 v60, s3, v46
	v_add_nc_u32_e32 v61, s3, v47
	v_add_nc_u32_e32 v62, s3, v45
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s35, v68
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v64, 0x80000000, v69, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v65, 0x80000000, v70, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v71, s0
	v_cndmask_b32_e64 v67, 0x80000000, v72, s1
	v_cndmask_b32_e64 v68, 0x80000000, v73, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[163:164], v64, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[119:122], v65, s[28:31], 0 offen
	buffer_load_b128 v[123:126], v66, s[28:31], 0 offen
	buffer_load_b128 v[127:130], v67, s[28:31], 0 offen
	buffer_load_b128 v[131:134], v68, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[75:78], v59
	ds_load_b128 v[91:94], v59 offset:1024
	ds_load_b128 v[95:98], v60
	ds_load_b128 v[99:102], v60 offset:1024
	ds_load_b128 v[103:106], v61
	ds_load_b128 v[107:110], v61 offset:1024
	ds_load_b128 v[111:114], v62
	ds_load_b128 v[115:118], v62 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v59, v63 offset:3328
	ds_load_u8 v60, v63 offset:3072
	ds_load_u8 v61, v63 offset:3840
	ds_load_u8 v62, v63 offset:3584
	ds_load_u8 v64, v63 offset:3968
	ds_load_u8 v65, v63 offset:3712
	ds_load_u8 v66, v63 offset:3456
	ds_load_u8 v67, v63 offset:3200
	ds_load_u8 v68, v63 offset:2304
	ds_load_u8 v69, v63 offset:2048
	ds_load_u8 v70, v63 offset:2816
	ds_load_u8 v71, v63 offset:2560
	ds_load_u8 v72, v63 offset:2944
	ds_load_u8 v73, v63 offset:2688
	ds_load_u8 v74, v63 offset:2432
	ds_load_u8 v79, v63 offset:2176
	ds_load_u8 v80, v63 offset:1280
	ds_load_u8 v81, v63 offset:1024
	ds_load_u8 v82, v63 offset:1792
	ds_load_u8 v83, v63 offset:1536
	ds_load_u8 v84, v63 offset:1920
	ds_load_u8 v85, v63 offset:1664
	ds_load_u8 v86, v63 offset:1408
	ds_load_u8 v87, v63 offset:1152
	ds_load_u8 v88, v63 offset:256
	ds_load_u8 v89, v63
	ds_load_u8 v90, v63 offset:768
	ds_load_u8 v135, v63 offset:512
	ds_load_u8 v136, v63 offset:896
	ds_load_u8 v137, v63 offset:640
	ds_load_u8 v138, v63 offset:384
	ds_load_u8 v139, v63 offset:128
	ds_load_u8 v140, v63 offset:7424
	ds_load_u8 v141, v63 offset:7168
	ds_load_u8 v142, v63 offset:7936
	ds_load_u8 v143, v63 offset:7680
	ds_load_u8 v144, v63 offset:8064
	ds_load_u8 v145, v63 offset:7808
	ds_load_u8 v146, v63 offset:7552
	ds_load_u8 v147, v63 offset:7296
	ds_load_u8 v148, v63 offset:6400
	ds_load_u8 v149, v63 offset:6144
	ds_load_u8 v150, v63 offset:6912
	ds_load_u8 v151, v63 offset:6656
	ds_load_u8 v152, v63 offset:7040
	ds_load_u8 v153, v63 offset:6784
	ds_load_u8 v154, v63 offset:6528
	ds_load_u8 v155, v63 offset:6272
	ds_load_u8 v156, v63 offset:5376
	ds_load_u8 v157, v63 offset:5120
	ds_load_u8 v158, v63 offset:5888
	ds_load_u8 v159, v63 offset:5632
	ds_load_u8 v160, v63 offset:6016
	ds_load_u8 v161, v63 offset:5760
	ds_load_u8 v162, v63 offset:5504
	ds_load_u8 v165, v63 offset:5248
	ds_load_u8 v166, v63 offset:4352
	ds_load_u8 v167, v63 offset:4096
	ds_load_u8 v168, v63 offset:4864
	ds_load_u8 v169, v63 offset:4608
	ds_load_u8 v170, v63 offset:4992
	ds_load_u8 v171, v63 offset:4736
	ds_load_u8 v172, v63 offset:4480
	ds_load_u8 v173, v63 offset:4224
	ds_load_u8 v174, v63 offset:11520
	ds_load_u8 v175, v63 offset:11264
	ds_load_u8 v176, v63 offset:12032
	ds_load_u8 v177, v63 offset:11776
	ds_load_u8 v178, v63 offset:12160
	ds_load_u8 v179, v63 offset:11904
	ds_load_u8 v180, v63 offset:11648
	ds_load_u8 v181, v63 offset:11392
	ds_load_u8 v182, v63 offset:10496
	ds_load_u8 v183, v63 offset:10240
	ds_load_u8 v184, v63 offset:11008
	ds_load_u8 v185, v63 offset:10752
	ds_load_u8 v186, v63 offset:11136
	ds_load_u8 v187, v63 offset:10880
	ds_load_u8 v188, v63 offset:10624
	ds_load_u8 v189, v63 offset:10368
	ds_load_u8 v190, v63 offset:9472
	ds_load_u8 v191, v63 offset:9216
	ds_load_u8 v192, v63 offset:9984
	ds_load_u8 v193, v63 offset:9728
	ds_load_u8 v194, v63 offset:10112
	ds_load_u8 v195, v63 offset:9856
	ds_load_u8 v196, v63 offset:9600
	ds_load_u8 v197, v63 offset:9344
	ds_load_u8 v198, v63 offset:8448
	ds_load_u8 v199, v63 offset:8192
	ds_load_u8 v200, v63 offset:8960
	ds_load_u8 v201, v63 offset:8704
	ds_load_u8 v202, v63 offset:9088
	ds_load_u8 v203, v63 offset:8832
	ds_load_u8 v204, v63 offset:8576
	ds_load_u8 v205, v63 offset:8320
	ds_load_u8 v206, v63 offset:15616
	ds_load_u8 v207, v63 offset:15360
	ds_load_u8 v208, v63 offset:16128
	ds_load_u8 v209, v63 offset:15872
	ds_load_u8 v210, v63 offset:16256
	ds_load_u8 v211, v63 offset:16000
	ds_load_u8 v212, v63 offset:15744
	ds_load_u8 v213, v63 offset:15488
	ds_load_u8 v214, v63 offset:14592
	ds_load_u8 v215, v63 offset:14336
	ds_load_u8 v216, v63 offset:15104
	ds_load_u8 v217, v63 offset:14848
	ds_load_u8 v218, v63 offset:15232
	ds_load_u8 v219, v63 offset:14976
	ds_load_u8 v220, v63 offset:14720
	ds_load_u8 v221, v63 offset:14464
	ds_load_u8 v222, v63 offset:13568
	ds_load_u8 v223, v63 offset:13312
	ds_load_u8 v224, v63 offset:14080
	ds_load_u8 v225, v63 offset:13824
	ds_load_u8 v226, v63 offset:14208
	ds_load_u8 v227, v63 offset:13952
	ds_load_u8 v228, v63 offset:13696
	ds_load_u8 v229, v63 offset:13440
	ds_load_u8 v230, v63 offset:12544
	ds_load_u8 v231, v63 offset:12288
	ds_load_u8 v232, v63 offset:13056
	ds_load_u8 v233, v63 offset:12800
	ds_load_u8 v234, v63 offset:13184
	ds_load_u8 v235, v63 offset:12928
	ds_load_u8 v236, v63 offset:12672
	ds_load_u8 v63, v63 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v65, v79, v74, 0xc0c0004
	v_perm_b32 v67, v73, v72, 0xc0c0004
	v_perm_b32 v72, v87, v86, 0xc0c0004
	v_perm_b32 v73, v85, v84, 0xc0c0004
	v_perm_b32 v74, v139, v138, 0xc0c0004
	v_perm_b32 v79, v137, v136, 0xc0c0004
	v_perm_b32 v87, v147, v146, 0xc0c0004
	v_perm_b32 v155, v155, v154, 0xc0c0004
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_perm_b32 v162, v165, v162, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v161, v173, v172, 0xc0c0004
	v_perm_b32 v165, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v173, v187, v186, 0xc0c0004
	v_lshl_or_b32 v147, v79, 16, v74
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v60, v62, v61, 0xc0c0004
	v_perm_b32 v61, v69, v68, 0xc0c0004
	v_perm_b32 v62, v71, v70, 0xc0c0004
	v_perm_b32 v68, v81, v80, 0xc0c0004
	v_perm_b32 v69, v83, v82, 0xc0c0004
	v_perm_b32 v70, v89, v88, 0xc0c0004
	v_perm_b32 v71, v135, v90, 0xc0c0004
	v_perm_b32 v80, v141, v140, 0xc0c0004
	v_perm_b32 v81, v143, v142, 0xc0c0004
	v_perm_b32 v82, v149, v148, 0xc0c0004
	v_perm_b32 v88, v151, v150, 0xc0c0004
	v_perm_b32 v135, v167, v166, 0xc0c0004
	v_perm_b32 v140, v169, v168, 0xc0c0004
	v_perm_b32 v141, v175, v174, 0xc0c0004
	v_perm_b32 v142, v177, v176, 0xc0c0004
	v_perm_b32 v143, v183, v182, 0xc0c0004
	v_perm_b32 v148, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v149, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v150, v193, v192, 0xc0c0004
	v_perm_b32 v89, v157, v156, 0xc0c0004
	v_perm_b32 v90, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v151, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v156, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v159, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v166, v217, v216, 0xc0c0004
	v_perm_b32 v175, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v63, v236, 0xc0c0004
	v_perm_b32 v186, v235, v234, 0xc0c0004
	v_lshl_or_b32 v86, v60, 16, v59
	v_lshl_or_b32 v85, v62, 16, v61
	v_lshl_or_b32 v84, v69, 16, v68
	v_lshl_or_b32 v83, v71, 16, v70
	v_lshl_or_b32 v135, v140, 16, v135
	v_lshl_or_b32 v142, v142, 16, v141
	v_lshl_or_b32 v141, v148, 16, v143
	v_lshl_or_b32 v140, v150, 16, v149
	v_lshl_or_b32 v150, v64, 16, v66
	v_lshl_or_b32 v149, v67, 16, v65
	v_lshl_or_b32 v148, v73, 16, v72
	v_perm_b32 v157, v207, v206, 0xc0c0004
	v_perm_b32 v158, v209, v208, 0xc0c0004
	v_perm_b32 v170, v181, v180, 0xc0c0004
	v_perm_b32 v171, v179, v178, 0xc0c0004
	v_perm_b32 v172, v189, v188, 0xc0c0004
	v_perm_b32 v176, v197, v196, 0xc0c0004
	v_perm_b32 v177, v195, v194, 0xc0c0004
	v_perm_b32 v178, v205, v204, 0xc0c0004
	v_perm_b32 v179, v203, v202, 0xc0c0004
	v_lshl_or_b32 v138, v81, 16, v80
	v_lshl_or_b32 v137, v88, 16, v82
	v_lshl_or_b32 v136, v90, 16, v89
	v_lshl_or_b32 v139, v156, 16, v151
	v_lshl_or_b32 v145, v166, 16, v159
	v_lshl_or_b32 v154, v175, 16, v87
	v_lshl_or_b32 v153, v152, 16, v155
	v_lshl_or_b32 v152, v160, 16, v162
	v_lshl_or_b32 v151, v165, 16, v161
	v_lshl_or_b32 v159, v186, 16, v63
	v_wmma_i32_16x16x16_iu8 v[59:66], v[83:86], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[147:150], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[83:86], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[147:150], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v167, v223, v222, 0xc0c0004
	v_perm_b32 v168, v225, v224, 0xc0c0004
	v_perm_b32 v169, v231, v230, 0xc0c0004
	v_perm_b32 v174, v233, v232, 0xc0c0004
	v_perm_b32 v180, v213, v212, 0xc0c0004
	v_perm_b32 v181, v211, v210, 0xc0c0004
	v_perm_b32 v182, v221, v220, 0xc0c0004
	v_perm_b32 v183, v219, v218, 0xc0c0004
	v_perm_b32 v184, v229, v228, 0xc0c0004
	v_perm_b32 v185, v227, v226, 0xc0c0004
	v_lshl_or_b32 v146, v158, 16, v157
	v_lshl_or_b32 v158, v171, 16, v170
	v_lshl_or_b32 v157, v173, 16, v172
	v_lshl_or_b32 v156, v177, 16, v176
	v_lshl_or_b32 v155, v179, 16, v178
	v_wmma_i32_16x16x16_iu8 v[59:66], v[135:138], v[95:98], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[151:154], v[95:98], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[135:138], v[99:102], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[151:154], v[99:102], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v168, 16, v167
	v_lshl_or_b32 v143, v174, 16, v169
	v_lshl_or_b32 v162, v181, 16, v180
	v_lshl_or_b32 v161, v183, 16, v182
	v_lshl_or_b32 v160, v185, 16, v184
	v_wmma_i32_16x16x16_iu8 v[59:66], v[139:142], v[103:106], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[155:158], v[103:106], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[139:142], v[107:110], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[155:158], v[107:110], v[83:90] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s10, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[143:146], v[111:114], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[159:162], v[111:114], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[143:146], v[115:118], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[159:162], v[115:118], v[83:90] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s4, s10, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s11, s4, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s12, s4, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s3, s11, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s0, s12, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v76 :: v_dual_add_nc_u32 v237, s3, v58
	v_dual_add_f32 v35, v35, v67 :: v_dual_add_nc_u32 v238, s0, v57
	v_add_f32_e32 v37, v37, v59
	v_dual_add_f32 v43, v43, v60 :: v_dual_add_f32 v42, v42, v61
	v_dual_add_f32 v41, v41, v62 :: v_dual_add_f32 v40, v40, v63
	v_dual_add_f32 v39, v39, v64 :: v_dual_add_f32 v38, v38, v65
	v_add_f32_e32 v36, v36, v66
	v_dual_add_f32 v34, v34, v68 :: v_dual_add_f32 v33, v33, v69
	v_dual_add_f32 v32, v32, v70 :: v_dual_add_f32 v31, v31, v71
	v_add_f32_e32 v28, v28, v74
	v_dual_add_f32 v30, v30, v72 :: v_dual_add_f32 v29, v29, v73
	v_dual_add_f32 v24, v24, v78 :: v_dual_add_f32 v27, v27, v75
	v_dual_add_f32 v22, v22, v80 :: v_dual_add_f32 v25, v25, v77
	v_dual_add_f32 v20, v20, v82 :: v_dual_add_f32 v23, v23, v79
	v_dual_add_f32 v18, v18, v84 :: v_dual_add_f32 v21, v21, v81
	v_dual_add_f32 v16, v16, v86 :: v_dual_add_f32 v19, v19, v83
	v_dual_add_f32 v14, v14, v88 :: v_dual_add_f32 v17, v17, v85
	v_add_f32_e32 v15, v15, v87
	v_add_f32_e32 v13, v13, v89
	v_add_f32_e32 v11, v11, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s9, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s3, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s9, s36
	s_mov_b32 s9, s10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v237, v[163:164] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v238, v[119:122]
	s_waitcnt vmcnt(2)
	ds_store_b128 v238, v[123:126] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v238, v[127:130] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v238, v[131:134] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow40
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v2, v56, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s8, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s8, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s5, v47
	ds_load_b128 v[72:75], v3 offset:1024
	ds_load_b128 v[64:67], v3
	v_add_nc_u32_e32 v3, s5, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v56 offset:3328
	ds_load_u8 v5, v56 offset:3072
	ds_load_u8 v6, v56 offset:3840
	ds_load_u8 v7, v56 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[76:79], v3 offset:1024
	ds_load_b128 v[68:71], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v56 offset:2304
	ds_load_u8 v8, v56 offset:2048
	ds_load_u8 v9, v56 offset:2816
	ds_load_u8 v10, v56 offset:2560
	ds_load_u8 v49, v56 offset:1280
	ds_load_u8 v50, v56 offset:1024
	ds_load_u8 v51, v56 offset:1792
	ds_load_u8 v52, v56 offset:1536
	ds_load_u8 v53, v56 offset:256
	ds_load_u8 v54, v56
	ds_load_u8 v55, v56 offset:768
	ds_load_u8 v57, v56 offset:512
	ds_load_u8 v58, v56 offset:3968
	ds_load_u8 v59, v56 offset:3712
	ds_load_u8 v60, v56 offset:3456
	ds_load_u8 v61, v56 offset:3200
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v116, s5, v45
	v_add_nc_u32_e32 v48, s5, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	v_lshl_or_b32 v83, v5, 16, v4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v52, v51, 0xc0c0004
	v_lshl_or_b32 v82, v6, 16, v3
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v57, v55, 0xc0c0004
	v_lshl_or_b32 v81, v8, 16, v7
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_lshl_or_b32 v80, v10, 16, v9
	v_mov_b32_e32 v3, s4
	ds_load_u8 v57, v56 offset:7424
	ds_load_u8 v92, v56 offset:7168
	v_mov_b32_e32 v7, s8
	ds_load_u8 v93, v56 offset:7936
	ds_load_u8 v94, v56 offset:7680
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[84:87], v48 offset:1024
	ds_load_b128 v[88:91], v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v95, v56 offset:6400
	ds_load_u8 v96, v56 offset:6144
	ds_load_u8 v97, v56 offset:6912
	ds_load_u8 v98, v56 offset:6656
	ds_load_u8 v99, v56 offset:5376
	ds_load_u8 v100, v56 offset:5120
	ds_load_u8 v101, v56 offset:5888
	ds_load_u8 v102, v56 offset:5632
	ds_load_u8 v118, v56 offset:8064
	ds_load_u8 v119, v56 offset:7808
	ds_load_u8 v120, v56 offset:7552
	ds_load_u8 v121, v56 offset:7296
	ds_load_u8 v62, v56 offset:2944
	ds_load_u8 v63, v56 offset:2688
	ds_load_u8 v104, v56 offset:2432
	ds_load_u8 v108, v56 offset:2176
	ds_load_u8 v109, v56 offset:1920
	ds_load_u8 v110, v56 offset:1664
	ds_load_u8 v111, v56 offset:1408
	ds_load_u8 v112, v56 offset:1152
	ds_load_u8 v113, v56 offset:896
	ds_load_u8 v114, v56 offset:640
	ds_load_u8 v115, v56 offset:384
	ds_load_u8 v117, v56 offset:128
	v_dual_mov_b32 v4, s5 :: v_dual_mov_b32 v5, s6
	v_mov_b32_e32 v6, s7
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v9, s10
	v_mov_b32_e32 v10, s11
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v96, v96, v95, 0xc0c0004
	ds_load_u8 v126, v56 offset:6016
	ds_load_u8 v127, v56 offset:5760
	ds_load_u8 v128, v56 offset:5504
	ds_load_u8 v129, v56 offset:5248
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v130, v56 offset:4992
	ds_load_u8 v131, v56 offset:4736
	ds_load_u8 v132, v56 offset:4480
	ds_load_u8 v133, v56 offset:4224
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v98, v100, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[80:83], v[68:71], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v57, v92, v57, 0xc0c0004
	ds_load_u8 v92, v56 offset:4352
	ds_load_u8 v103, v56 offset:4096
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v56 offset:4864
	ds_load_u8 v105, v56 offset:4608
	ds_load_u8 v122, v56 offset:7040
	ds_load_u8 v123, v56 offset:6784
	ds_load_u8 v124, v56 offset:6528
	ds_load_u8 v125, v56 offset:6272
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v102, v101, 0xc0c0004
	ds_load_u8 v100, v56 offset:11520
	ds_load_u8 v101, v56 offset:11264
	ds_load_u8 v144, v56 offset:10112
	ds_load_u8 v145, v56 offset:9856
	ds_load_u8 v146, v56 offset:9600
	ds_load_u8 v147, v56 offset:9344
	v_lshl_or_b32 v95, v93, 16, v57
	ds_load_u8 v148, v56 offset:9088
	ds_load_u8 v149, v56 offset:8832
	ds_load_u8 v150, v56 offset:8576
	ds_load_u8 v151, v56 offset:8320
	v_lshl_or_b32 v93, v99, 16, v98
	ds_load_u8 v165, v56 offset:14208
	ds_load_u8 v166, v56 offset:13952
	ds_load_u8 v167, v56 offset:13696
	ds_load_u8 v168, v56 offset:13440
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v59, v108, v104, 0xc0c0004
	v_perm_b32 v61, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v62, v112, v111, 0xc0c0004
	v_perm_b32 v63, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v108, v117, v115, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	v_lshl_or_b32 v111, v58, 16, v60
	v_lshl_or_b32 v110, v61, 16, v59
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v102, v105, v94, 0xc0c0004
	v_lshl_or_b32 v94, v97, 16, v96
	v_perm_b32 v92, v103, v92, 0xc0c0004
	ds_load_u8 v103, v56 offset:12032
	ds_load_u8 v105, v56 offset:11776
	v_lshl_or_b32 v109, v63, 16, v62
	v_lshl_or_b32 v108, v112, 16, v108
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v56 offset:8448
	ds_load_u8 v138, v56 offset:8192
	v_lshl_or_b32 v92, v102, 16, v92
	ds_load_u8 v57, v56 offset:10496
	ds_load_u8 v96, v56 offset:10240
	ds_load_u8 v97, v56 offset:11008
	ds_load_u8 v98, v56 offset:10752
	ds_load_u8 v99, v56 offset:9472
	ds_load_u8 v102, v56 offset:9216
	ds_load_u8 v106, v56 offset:9984
	ds_load_u8 v107, v56 offset:9728
	ds_load_u8 v134, v56 offset:12160
	ds_load_u8 v135, v56 offset:11904
	ds_load_u8 v136, v56 offset:11648
	ds_load_u8 v137, v56 offset:11392
	v_perm_b32 v112, v121, v120, 0xc0c0004
	v_perm_b32 v113, v119, v118, 0xc0c0004
	v_perm_b32 v114, v125, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[92:95], v[88:91], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v117, v123, v122, 0xc0c0004
	v_perm_b32 v118, v129, v128, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	v_perm_b32 v120, v133, v132, 0xc0c0004
	v_perm_b32 v121, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v96, v57, 0xc0c0004
	v_lshl_or_b32 v115, v113, 16, v112
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_lshl_or_b32 v114, v117, 16, v114
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v56 offset:8960
	ds_load_u8 v139, v56 offset:8704
	ds_load_u8 v140, v56 offset:11136
	ds_load_u8 v141, v56 offset:10880
	ds_load_u8 v142, v56 offset:10624
	ds_load_u8 v143, v56 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v97, v102, v99, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v107, v106, 0xc0c0004
	v_perm_b32 v101, v138, v101, 0xc0c0004
	ds_load_u8 v106, v56 offset:15616
	ds_load_u8 v107, v56 offset:15360
	ds_load_u8 v138, v56 offset:16128
	ds_load_u8 v152, v56 offset:15872
	v_lshl_or_b32 v99, v103, 16, v100
	v_lshl_or_b32 v98, v96, 16, v57
	v_lshl_or_b32 v97, v102, 16, v97
	v_lshl_or_b32 v113, v119, 16, v118
	v_lshl_or_b32 v112, v121, 16, v120
	v_perm_b32 v117, v147, v146, 0xc0c0004
	v_perm_b32 v118, v145, v144, 0xc0c0004
	v_perm_b32 v119, v151, v150, 0xc0c0004
	v_perm_b32 v120, v149, v148, 0xc0c0004
	v_perm_b32 v124, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v139, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v105, 16, v101
	ds_load_u8 v57, v56 offset:14592
	ds_load_u8 v100, v56 offset:14336
	ds_load_u8 v101, v56 offset:15104
	ds_load_u8 v102, v56 offset:14848
	ds_load_u8 v103, v56 offset:13568
	ds_load_u8 v105, v56 offset:13312
	ds_load_u8 v139, v56 offset:14080
	ds_load_u8 v153, v56 offset:13824
	ds_load_u8 v154, v56 offset:16256
	ds_load_u8 v155, v56 offset:16000
	ds_load_u8 v156, v56 offset:15744
	ds_load_u8 v157, v56 offset:15488
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v107, v152, v138, 0xc0c0004
	ds_load_u8 v138, v56 offset:12544
	ds_load_u8 v152, v56 offset:12288
	ds_load_u8 v158, v56 offset:13056
	ds_load_u8 v159, v56 offset:12800
	ds_load_u8 v160, v56 offset:15232
	ds_load_u8 v161, v56 offset:14976
	ds_load_u8 v162, v56 offset:14720
	ds_load_u8 v163, v56 offset:14464
	v_wmma_i32_16x16x16_iu8 v[48:55], v[96:99], v[64:67], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v107, 16, v106
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v57, v100, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v164, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v105, v103, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[100:103], v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v139, v153, v139, 0xc0c0004
	v_lshl_or_b32 v106, v164, 16, v57
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v57, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v105, v139, 16, v105
	ds_load_u8 v139, v56 offset:13184
	ds_load_u8 v153, v56 offset:12928
	ds_load_u8 v164, v56 offset:12672
	ds_load_u8 v169, v56 offset:12416
	v_perm_b32 v56, v152, v138, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v121, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v104, v57, 16, v56
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[104:107], v[100:103], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[108:111], v[68:71], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v68, v137, v136, 0xc0c0004
	v_perm_b32 v69, v135, v134, 0xc0c0004
	v_perm_b32 v70, v143, v142, 0xc0c0004
	v_perm_b32 v71, v141, v140, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[112:115], v[88:91], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v118, 16, v117
	v_lshl_or_b32 v91, v69, 16, v68
	v_lshl_or_b32 v88, v120, 16, v119
	v_lshl_or_b32 v90, v71, 16, v70
	v_perm_b32 v68, v157, v156, 0xc0c0004
	v_perm_b32 v69, v155, v154, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[116:119], v116 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v120, v163, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[88:91], v[64:67], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v49, v51
	v_lshl_or_b32 v123, v69, 16, v68
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[76:79], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[108:111], v[76:79], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v76, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v169, v164, 0xc0c0004
	v_perm_b32 v78, v153, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[92:95], v[84:87], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v121, 16, v120
	v_lshl_or_b32 v121, v76, 16, v124
	v_wmma_i32_16x16x16_iu8 v[3:10], v[112:115], v[84:87], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v78, 16, v77
	v_wmma_i32_16x16x16_iu8 v[64:71], v[96:99], v[72:75], v[64:71] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v50 :: v_dual_add_f32 v41, v41, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[120:123], v[100:103], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v52, v54
	v_wmma_i32_16x16x16_iu8 v[3:10], v[88:91], v[72:75], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[104:107], v[116:119], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v51, v53
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v52, v59
	v_wmma_i32_16x16x16_iu8 v[3:10], v[120:123], v[116:119], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v51, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v35, v35, v49 :: v_dual_add_f32 v34, v34, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v61
	v_cvt_f32_i32_e32 v50, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v51
	v_add_f32_e32 v31, v31, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v51, v63
	v_cvt_f32_i32_e32 v53, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v30, v30, v49 :: v_dual_add_f32 v27, v27, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v66
	v_cvt_f32_i32_e32 v52, v69
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v29, v29, v50 :: v_dual_add_f32 v28, v28, v51
	v_add_f32_e32 v25, v25, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v67
	v_cvt_f32_i32_e32 v51, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v22, v22, v52 :: v_dual_add_f32 v19, v19, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v17, v17, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v16, v16, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v10
	v_cvt_f32_i32_e32 v7, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v24, v50 :: v_dual_add_f32 v21, v21, v53
	v_dual_add_f32 v23, v23, v51 :: v_dual_add_f32 v20, v20, v49
	v_dual_add_f32 v15, v15, v3 :: v_dual_add_f32 v14, v14, v4
	v_add_f32_e32 v11, v11, v6
	v_add_f32_e32 v13, v13, v5
	v_add_f32_e32 v37, v37, v7
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v72, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v44, s1, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s0, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, s1, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v10 offset:3328
	ds_load_u8 v48, v10 offset:3072
	ds_load_u8 v49, v10 offset:3840
	ds_load_u8 v50, v10 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v46, s1, v46
	v_add_nc_u32_e32 v52, s1, v45
	ds_load_b128 v[2:5], v6 offset:1024
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[60:63], v46 offset:1024
	ds_load_b128 v[73:76], v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v10 offset:2304
	ds_load_u8 v46, v10 offset:2048
	ds_load_u8 v51, v10 offset:2816
	ds_load_u8 v53, v10 offset:2560
	ds_load_u8 v54, v10 offset:1280
	ds_load_u8 v55, v10 offset:1024
	ds_load_u8 v56, v10 offset:1792
	ds_load_u8 v57, v10 offset:1536
	ds_load_u8 v58, v10 offset:3968
	ds_load_u8 v59, v10 offset:3712
	ds_load_u8 v64, v10 offset:3456
	ds_load_u8 v105, v10 offset:3200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[81:84], v44 offset:1024
	ds_load_b128 v[77:80], v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v53, v51, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v55, v54, 0xc0c0004
	v_perm_b32 v48, v50, v49, 0xc0c0004
	ds_load_u8 v49, v10 offset:256
	ds_load_u8 v50, v10
	ds_load_u8 v65, v10 offset:768
	ds_load_u8 v66, v10 offset:512
	ds_load_u8 v106, v10 offset:2944
	ds_load_u8 v107, v10 offset:2688
	ds_load_u8 v109, v10 offset:2432
	ds_load_u8 v110, v10 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v54, v57, v56, 0xc0c0004
	v_lshl_or_b32 v87, v46, 16, v45
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v88, v48, 16, v47
	v_lshl_or_b32 v86, v54, 16, v51
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v66, v65, 0xc0c0004
	v_dual_mov_b32 v72, s11 :: v_dual_mov_b32 v71, s10
	ds_load_u8 v46, v10 offset:7424
	ds_load_u8 v47, v10 offset:7168
	ds_load_u8 v48, v10 offset:7936
	ds_load_u8 v49, v10 offset:7680
	ds_load_u8 v53, v10 offset:1920
	ds_load_u8 v111, v10 offset:1664
	ds_load_u8 v112, v10 offset:1408
	ds_load_u8 v113, v10 offset:1152
	v_lshl_or_b32 v85, v45, 16, v44
	ds_load_u8 v44, v10 offset:6400
	ds_load_u8 v45, v10 offset:6144
	ds_load_u8 v50, v10 offset:6912
	ds_load_u8 v51, v10 offset:6656
	ds_load_u8 v89, v10 offset:5376
	ds_load_u8 v90, v10 offset:5120
	ds_load_u8 v91, v10 offset:5888
	ds_load_u8 v92, v10 offset:5632
	ds_load_u8 v93, v10 offset:4352
	ds_load_u8 v94, v10 offset:4096
	ds_load_u8 v95, v10 offset:4864
	ds_load_u8 v96, v10 offset:4608
	ds_load_u8 v114, v10 offset:8064
	ds_load_u8 v115, v10 offset:7808
	ds_load_u8 v116, v10 offset:7552
	ds_load_u8 v117, v10 offset:7296
	ds_load_u8 v54, v10 offset:896
	ds_load_u8 v55, v10 offset:640
	ds_load_u8 v56, v10 offset:384
	ds_load_u8 v57, v10 offset:128
	v_mov_b32_e32 v65, s4
	ds_load_u8 v118, v10 offset:7040
	ds_load_u8 v119, v10 offset:6784
	ds_load_u8 v120, v10 offset:6528
	ds_load_u8 v121, v10 offset:6272
	ds_load_u8 v122, v10 offset:6016
	ds_load_u8 v123, v10 offset:5760
	ds_load_u8 v124, v10 offset:5504
	ds_load_u8 v125, v10 offset:5248
	ds_load_u8 v126, v10 offset:4992
	ds_load_u8 v127, v10 offset:4736
	ds_load_u8 v128, v10 offset:4480
	ds_load_u8 v129, v10 offset:4224
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v99, v45, v44, 0xc0c0004
	ds_load_u8 v139, v10 offset:10112
	ds_load_u8 v140, v10 offset:9856
	ds_load_u8 v141, v10 offset:9600
	ds_load_u8 v142, v10 offset:9344
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v100, v51, v50, 0xc0c0004
	v_perm_b32 v59, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_mov_b32_e32 v70, s9
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v90, v92, v91, 0xc0c0004
	v_lshl_or_b32 v91, v100, 16, v99
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v97, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v94, v96, v95, 0xc0c0004
	ds_load_u8 v95, v10 offset:11520
	ds_load_u8 v96, v10 offset:11264
	ds_load_u8 v101, v10 offset:12032
	ds_load_u8 v102, v10 offset:11776
	v_perm_b32 v98, v49, v48, 0xc0c0004
	v_lshl_or_b32 v90, v90, 16, v89
	v_perm_b32 v53, v111, v53, 0xc0c0004
	v_lshl_or_b32 v89, v94, 16, v93
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_lshl_or_b32 v92, v98, 16, v97
	ds_load_u8 v93, v10 offset:10496
	ds_load_u8 v94, v10 offset:10240
	ds_load_u8 v97, v10 offset:11008
	ds_load_u8 v98, v10 offset:10752
	ds_load_u8 v99, v10 offset:9472
	ds_load_u8 v100, v10 offset:9216
	ds_load_u8 v103, v10 offset:9984
	ds_load_u8 v104, v10 offset:9728
	ds_load_u8 v130, v10 offset:12160
	ds_load_u8 v131, v10 offset:11904
	ds_load_u8 v132, v10 offset:11648
	ds_load_u8 v133, v10 offset:11392
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_dual_mov_b32 v69, s8 :: v_dual_mov_b32 v68, s7
	v_dual_mov_b32 v67, s6 :: v_dual_mov_b32 v66, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v109, v54, 16, v56
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v98, v97, 0xc0c0004
	v_perm_b32 v96, v102, v101, 0xc0c0004
	ds_load_u8 v101, v10 offset:8448
	ds_load_u8 v102, v10 offset:8192
	ds_load_u8 v108, v10 offset:8960
	ds_load_u8 v134, v10 offset:8704
	ds_load_u8 v135, v10 offset:11136
	ds_load_u8 v136, v10 offset:10880
	ds_load_u8 v137, v10 offset:10624
	ds_load_u8 v138, v10 offset:10368
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v97, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v104, v103, 0xc0c0004
	ds_load_u8 v99, v10 offset:15616
	ds_load_u8 v100, v10 offset:15360
	ds_load_u8 v103, v10 offset:16128
	ds_load_u8 v104, v10 offset:15872
	ds_load_u8 v143, v10 offset:9088
	ds_load_u8 v144, v10 offset:8832
	ds_load_u8 v145, v10 offset:8576
	ds_load_u8 v146, v10 offset:8320
	v_lshl_or_b32 v96, v96, 16, v95
	v_lshl_or_b32 v95, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[44:51], v[85:88], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v98, 16, v97
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[89:92], v[73:76], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v102, v134, v108, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v108, v100, v99, 0xc0c0004
	ds_load_u8 v134, v10 offset:14592
	ds_load_u8 v147, v10 offset:14336
	ds_load_u8 v148, v10 offset:15104
	ds_load_u8 v149, v10 offset:14848
	ds_load_u8 v150, v10 offset:16256
	ds_load_u8 v151, v10 offset:16000
	ds_load_u8 v152, v10 offset:15744
	ds_load_u8 v153, v10 offset:15488
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v154, v104, v103, 0xc0c0004
	v_lshl_or_b32 v93, v102, 16, v101
	ds_load_u8 v155, v10 offset:13568
	ds_load_u8 v156, v10 offset:13312
	ds_load_u8 v157, v10 offset:14080
	ds_load_u8 v158, v10 offset:13824
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[97:100], v52 offset:1024
	ds_load_b128 v[101:104], v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v10 offset:12544
	ds_load_u8 v159, v10 offset:12288
	v_lshl_or_b32 v108, v154, 16, v108
	ds_load_u8 v154, v10 offset:15232
	ds_load_u8 v160, v10 offset:14976
	ds_load_u8 v161, v10 offset:14720
	ds_load_u8 v162, v10 offset:14464
	v_wmma_i32_16x16x16_iu8 v[44:51], v[93:96], v[6:9], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v134, v147, v134, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v147, v149, v148, 0xc0c0004
	ds_load_u8 v148, v10 offset:13056
	ds_load_u8 v149, v10 offset:12800
	ds_load_u8 v163, v10 offset:14208
	ds_load_u8 v164, v10 offset:13952
	ds_load_u8 v165, v10 offset:13696
	ds_load_u8 v166, v10 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	ds_load_u8 v157, v10 offset:13184
	ds_load_u8 v158, v10 offset:12928
	ds_load_u8 v167, v10 offset:12672
	ds_load_u8 v10, v10 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v159, v159, v52, 0xc0c0004
	v_perm_b32 v52, v105, v64, 0xc0c0004
	v_perm_b32 v64, v107, v106, 0xc0c0004
	v_perm_b32 v105, v113, v112, 0xc0c0004
	v_perm_b32 v106, v121, v120, 0xc0c0004
	v_perm_b32 v107, v119, v118, 0xc0c0004
	v_lshl_or_b32 v112, v58, 16, v52
	v_lshl_or_b32 v111, v64, 16, v59
	v_lshl_or_b32 v110, v53, 16, v105
	v_perm_b32 v64, v117, v116, 0xc0c0004
	v_perm_b32 v105, v115, v114, 0xc0c0004
	v_perm_b32 v113, v125, v124, 0xc0c0004
	v_perm_b32 v114, v123, v122, 0xc0c0004
	v_perm_b32 v117, v129, v128, 0xc0c0004
	v_perm_b32 v118, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[52:59], v[109:112], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v105, 16, v64
	v_lshl_or_b32 v115, v107, 16, v106
	v_lshl_or_b32 v114, v114, 16, v113
	v_lshl_or_b32 v113, v118, 16, v117
	v_perm_b32 v64, v133, v132, 0xc0c0004
	v_perm_b32 v77, v131, v130, 0xc0c0004
	v_perm_b32 v78, v138, v137, 0xc0c0004
	v_perm_b32 v79, v136, v135, 0xc0c0004
	v_perm_b32 v80, v142, v141, 0xc0c0004
	v_perm_b32 v105, v140, v139, 0xc0c0004
	v_perm_b32 v106, v146, v145, 0xc0c0004
	v_perm_b32 v107, v144, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[52:59], v[113:116], v[73:76], v[52:59] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v77, 16, v64
	v_lshl_or_b32 v119, v79, 16, v78
	v_lshl_or_b32 v118, v105, 16, v80
	v_lshl_or_b32 v117, v107, 16, v106
	v_perm_b32 v64, v153, v152, 0xc0c0004
	v_perm_b32 v73, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[52:59], v[117:120], v[6:9], v[52:59] neg_lo:[1,1,0]
	v_perm_b32 v6, v162, v161, 0xc0c0004
	v_lshl_or_b32 v9, v73, 16, v64
	v_wmma_i32_16x16x16_iu8 v[73:80], v[85:88], v[81:84], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[109:112], v[81:84], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v7, v160, v154, 0xc0c0004
	v_perm_b32 v64, v166, v165, 0xc0c0004
	v_perm_b32 v81, v164, v163, 0xc0c0004
	v_perm_b32 v82, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[89:92], v[60:63], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[113:116], v[60:63], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v147, 16, v134
	v_lshl_or_b32 v106, v156, 16, v155
	v_lshl_or_b32 v105, v148, 16, v159
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v81, 16, v64
	v_lshl_or_b32 v6, v82, 16, v10
	v_wmma_i32_16x16x16_iu8 v[73:80], v[93:96], v[2:5], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[117:120], v[2:5], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[105:108], v[101:104], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[6:9], v[101:104], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[105:108], v[97:100], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[6:9], v[97:100], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v44
	v_cvt_f32_i32_e32 v5, v45
	v_cvt_f32_i32_e32 v6, v46
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v8, v48
	v_cvt_f32_i32_e32 v9, v49
	v_cvt_f32_i32_e32 v10, v50
	v_cvt_f32_i32_e32 v48, v51
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v50, v53
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v52, v55
	v_cvt_f32_i32_e32 v53, v56
	v_cvt_f32_i32_e32 v54, v57
	v_cvt_f32_i32_e32 v55, v58
	v_cvt_f32_i32_e32 v56, v59
	v_cvt_f32_i32_e32 v57, v73
	v_cvt_f32_i32_e32 v58, v74
	v_cvt_f32_i32_e32 v59, v75
	v_cvt_f32_i32_e32 v60, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
.LBB0_10:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s18, v12
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s34, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v43, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v37, v4 :: v_dual_lshlrev_b32 v45, 1, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v44, 32, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v38, v10 :: v_dual_add_f32 v47, v35, v49
	v_dual_add_f32 v46, v36, v48 :: v_dual_add_f32 v49, v33, v51
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v3, v2, s[4:7], 0 offen
	buffer_load_u16 v2, v44, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v48, v34, v50 :: v_dual_add_f32 v51, v31, v53
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v44, v45, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v50, v32, v52 :: v_dual_add_f32 v53, v29, v55
	v_dual_add_f32 v52, v30, v54 :: v_dual_add_f32 v55, v27, v57
	v_dual_add_f32 v54, v28, v56 :: v_dual_add_f32 v57, v25, v59
	v_dual_add_f32 v56, v26, v58 :: v_dual_add_f32 v59, v23, v61
	v_dual_add_f32 v58, v24, v60 :: v_dual_add_f32 v61, v21, v63
	v_dual_add_f32 v60, v22, v62 :: v_dual_add_f32 v63, v19, v65
	v_dual_add_f32 v62, v20, v64 :: v_dual_add_f32 v65, v17, v67
	v_dual_add_f32 v64, v18, v66 :: v_dual_add_f32 v67, v15, v69
	v_dual_add_f32 v66, v16, v68 :: v_dual_add_f32 v69, v13, v71
	v_dual_add_f32 v68, v14, v70 :: v_dual_lshlrev_b32 v71, 1, v0
	v_dual_add_f32 v70, v11, v72 :: v_dual_mov_b32 v77, 0x7632
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v73, v1, 2, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v4, s2
	v_cndmask_b32_e64 v43, v43, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v42, v6 :: v_dual_add_f32 v7, v41, v7
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v74, v1, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v6, s2
	v_cndmask_b32_e64 v41, v41, v7, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v40, v8 :: v_dual_add_f32 v9, v39, v9
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v75, s19, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v10, s2
	v_cndmask_b32_e64 v36, v36, v46, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v40, v40, v8, s2
	v_cndmask_b32_e64 v39, v39, v9, s2
	v_cndmask_b32_e64 v35, v35, v47, s2
	v_cndmask_b32_e64 v34, v34, v48, s2
	v_cndmask_b32_e64 v33, v33, v49, s2
	v_cndmask_b32_e64 v32, v32, v50, s2
	v_cndmask_b32_e64 v31, v31, v51, s2
	v_cndmask_b32_e64 v30, v30, v52, s2
	v_cndmask_b32_e64 v29, v29, v53, s2
	v_cndmask_b32_e64 v46, v19, v63, s2
	v_cndmask_b32_e64 v47, v18, v64, s2
	v_cndmask_b32_e64 v48, v17, v65, s2
	v_cndmask_b32_e64 v49, v16, v66, s2
	v_cndmask_b32_e64 v50, v15, v67, s2
	v_cndmask_b32_e64 v51, v14, v68, s2
	v_cndmask_b32_e64 v52, v13, v69, s2
	v_cndmask_b32_e64 v53, v11, v70, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v45, 1, v1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s18, s19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v62, s2
	v_cndmask_b32_e64 v24, v24, v58, s2
	v_cndmask_b32_e64 v23, v23, v59, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v45, s1, s34, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v60, s2
	v_cndmask_b32_e64 v21, v21, v61, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v54, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v70, v45, v75, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v56, s2
	v_cndmask_b32_e64 v25, v25, v57, s2
	v_cndmask_b32_e64 v27, v27, v55, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v55.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	s_mov_b32 s0, 0x76543210
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v72, 5, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v76, 0x5410
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v4, 28, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v5, 32, v72
	v_add3_u32 v4, v73, v5, v4
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v1.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v4, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v74
	ds_load_b128 v[8:11], v74 offset:16
	ds_load_b128 v[12:15], v74 offset:512
	ds_load_b128 v[16:19], v74 offset:528
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v72, v6, v3
	v_dual_mul_f32 v6, v6, v2 :: v_dual_mul_f32 v73, v7, v3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v67, s33, v75
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v71, v5, v3 :: v_dual_and_b32 v0, 16, v0
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v74, v8, v3 :: v_dual_mul_f32 v7, v7, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v45, v45, v67, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v67, v4, v3
	v_dual_mul_f32 v75, v9, v3 :: v_dual_mul_f32 v8, v8, v2
	v_dual_mul_f32 v78, v10, v3 :: v_dual_mul_f32 v9, v9, v2
	v_dual_mul_f32 v79, v11, v3 :: v_dual_mul_f32 v10, v10, v2
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v80, v12, v3 :: v_dual_mul_f32 v11, v11, v2
	v_dual_mul_f32 v81, v13, v3 :: v_dual_mul_f32 v12, v12, v2
	v_dual_mul_f32 v82, v14, v3 :: v_dual_mul_f32 v13, v13, v2
	v_dual_mul_f32 v83, v15, v3 :: v_dual_mul_f32 v14, v14, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v84, v16, v3 :: v_dual_mul_f32 v15, v15, v2
	v_dual_mul_f32 v85, v17, v3 :: v_dual_mul_f32 v16, v16, v2
	v_dual_mul_f32 v86, v18, v3 :: v_dual_mul_f32 v17, v17, v2
	v_dual_mul_f32 v3, v19, v3 :: v_dual_mul_f32 v18, v18, v2
	v_mul_f32_e32 v4, v4, v2
	v_mul_f32_e32 v5, v5, v2
	v_dual_mul_f32 v2, v19, v2 :: v_dual_mul_f32 v19, v37, v67
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v37, v43, v71 :: v_dual_mul_f32 v42, v42, v72
	v_dual_mul_f32 v41, v41, v73 :: v_dual_mul_f32 v40, v40, v74
	v_dual_mul_f32 v11, v20, v11 :: v_dual_mul_f32 v12, v46, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v20, 0, v37 :: v_dual_mul_f32 v39, v39, v75
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v38, v38, v78 :: v_dual_mul_f32 v7, v24, v7
	v_dual_mul_f32 v8, v23, v8 :: v_dual_mul_f32 v9, v22, v9
	v_mul_f32_e32 v10, v21, v10
	v_dual_mul_f32 v2, v53, v2 :: v_dual_max_f32 v19, 0, v19
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v21, 0, v42 :: v_dual_max_f32 v22, 0, v41
	v_max_f32_e32 v23, 0, v40
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v20, v20, v20
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v36, v36, v79 :: v_dual_mul_f32 v35, v35, v80
	v_dual_mul_f32 v34, v34, v81 :: v_dual_mul_f32 v33, v33, v82
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v24, 0, v39
	v_dual_max_f32 v2, 0, v2 :: v_dual_mul_f32 v19, v19, v19
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v21, v21, v21 :: v_dual_mul_f32 v22, v22, v22
	v_mul_f32_e32 v23, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v20.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v3, v28, v3 :: v_dual_mul_f32 v4, v27, v4
	v_dual_mul_f32 v5, v26, v5 :: v_dual_mul_f32 v6, v25, v6
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, 0, v38 :: v_dual_max_f32 v26, 0, v36
	v_dual_max_f32 v27, 0, v35 :: v_dual_max_f32 v28, 0, v34
	v_dual_max_f32 v33, 0, v33 :: v_dual_mul_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v25, v25, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.l, v19.h
	v_mov_b16_e32 v56.l, v23.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v2, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v2, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v26, v26, v26 :: v_dual_mul_f32 v27, v27, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v55.l, v21.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v20, v2, 0x7fff
	v_and_b32_e32 v35, 1, v54
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v32, v32, v83 :: v_dual_mul_f32 v31, v31, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v55
	v_add3_u32 v19, v19, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v30, v30, v85 :: v_dual_mul_f32 v29, v29, v86
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v31, 0, v31
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v33, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v25.h
	v_and_b32_e32 v37, 1, v56
	v_add3_u32 v21, v21, v36, 0x7fff
	v_mov_b16_e32 v2.l, v19.h
	v_add3_u32 v19, v22, v20, 0x7fff
	v_and_b32_e32 v20, 1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v29, 0, v29
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v32, v32, v32 :: v_dual_mul_f32 v31, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v23, v37, 0x7fff
	v_mov_b16_e32 v19.l, v21.h
	v_mov_b16_e32 v1.l, v28.h
	v_add3_u32 v0, v26, v20, 0x7fff
	v_and_b32_e32 v38, 1, v44
	v_add3_u32 v21, v24, v35, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v29, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v25, v38, 0x7fff
	v_mov_b16_e32 v21.l, v23.h
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	v_mov_b16_e32 v59.l, v31.h
	v_dual_cndmask_b32 v22, v21, v2 :: v_dual_and_b32 v39, 1, v57
	v_mov_b16_e32 v0.l, v25.h
	v_dual_cndmask_b32 v2, v2, v21 :: v_dual_cndmask_b32 v21, 0x1054, v76
	v_cndmask_b32_e32 v23, 0x3276, v77, vcc_lo
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v59
	v_dual_cndmask_b32 v25, v0, v19 :: v_dual_cndmask_b32 v0, v19, v0
	v_permlanex16_b32 v19, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v21, 8, v21
	v_lshl_or_b32 v21, v23, 8, v23
	v_add3_u32 v23, v32, v24, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v3, v3, v3 :: v_dual_and_b32 v24, 1, v1
	v_mul_f32_e32 v4, v4, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v33.h
	v_add3_u32 v27, v27, v39, 0x7fff
	v_add3_u32 v31, v31, v41, 0x7fff
	v_add3_u32 v20, v28, v20, 0x7fff
	v_add3_u32 v24, v30, v24, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v27.h
	v_mov_b16_e32 v1.l, v3.h
	v_mov_b16_e32 v24.l, v31.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_and_b32 v40, 1, v58
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v29.h
	v_dual_cndmask_b32 v27, v24, v20 :: v_dual_and_b32 v26, 1, v1
	v_add3_u32 v33, v33, v40, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v33.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v3, v3, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v9, v9, v9 :: v_dual_and_b32 v42, 1, v60
	v_mul_f32_e32 v10, v10, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v4.h
	v_and_b32_e32 v2, 0x540054, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v29, v29, v42, 0x7fff
	v_and_b32_e32 v21, 0x760076, v21
	v_and_b32_e32 v26, 1, v1
	v_mov_b16_e32 v1.l, v7.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v13, v47, v13 :: v_dual_mul_f32 v14, v48, v14
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v6.h
	v_dual_cndmask_b32 v20, v20, v24 :: v_dual_and_b32 v43, 1, v61
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v21, v21, 4, v21
	v_mov_b16_e32 v3.l, v29.h
	v_and_b32_e32 v28, 1, v1
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v15, v49, v15 :: v_dual_mul_f32 v16, v50, v16
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v11, v11, v11 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v8.h
	v_and_b32_e32 v44, 1, v62
	v_add3_u32 v4, v4, v43, 0x7fff
	v_and_b32_e32 v24, 0x5040504, v2
	v_and_b32_e32 v21, 0x7060706, v21
	v_cndmask_b32_e32 v29, v3, v23, vcc_lo
	v_dual_cndmask_b32 v23, v23, v3 :: v_dual_and_b32 v30, 1, v1
	v_add3_u32 v26, v5, v26, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v17, v51, v17 :: v_dual_mul_f32 v18, v52, v18
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v13, v13, v13 :: v_dual_mul_f32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.l, v4.h
	v_perm_b32 v2, v19, v22, v24
	v_mov_b16_e32 v1.l, v11.h
	v_perm_b32 v3, v19, v22, v21
	v_permlanex16_b32 v22, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v23, v9, v30, 0x7fff
	v_and_b32_e32 v46, 1, v63
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v18, 0, v18
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v15, v15, v15 :: v_dual_mul_f32 v16, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v10.h
	v_add3_u32 v6, v6, v44, 0x7fff
	v_add3_u32 v8, v8, v46, 0x7fff
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	v_perm_b32 v4, v0, v25, v24
	v_perm_b32 v5, v0, v25, v21
	v_add3_u32 v0, v7, v28, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v17, v17, v17 :: v_dual_mul_f32 v18, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v0.l, v6.h
	v_perm_b32 v6, v20, v27, v24
	v_perm_b32 v7, v20, v27, v21
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	v_mov_b16_e32 v23.l, v8.h
	v_and_b32_e32 v47, 1, v64
	v_perm_b32 v8, v22, v29, v24
	v_perm_b32 v9, v22, v29, v21
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v17.h
	v_add3_u32 v10, v10, v47, 0x7fff
	v_mov_b16_e32 v66.l, v14.h
	v_mov_b16_e32 v69.l, v18.h
	v_add3_u32 v11, v11, v19, 0x7fff
	v_cndmask_b32_e32 v19, v23, v26, vcc_lo
	v_mov_b16_e32 v11.l, v10.h
	v_dual_cndmask_b32 v10, v26, v23 :: v_dual_and_b32 v23, 1, v1
	v_mov_b16_e32 v1.l, v34.h
	v_and_b32_e32 v49, 1, v66
	v_and_b32_e32 v51, 1, v69
	v_mov_b16_e32 v65.l, v12.h
	v_mov_b16_e32 v68.l, v16.h
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v14, v14, v49, 0x7fff
	v_add3_u32 v18, v18, v51, 0x7fff
	v_add3_u32 v15, v15, v22, 0x7fff
	v_add3_u32 v13, v13, v20, 0x7fff
	v_add3_u32 v1, v34, v1, 0x7fff
	v_mov_b16_e32 v15.l, v14.h
	v_mov_b16_e32 v1.l, v18.h
	v_and_b32_e32 v48, 1, v65
	v_and_b32_e32 v50, 1, v68
	v_add3_u32 v14, v17, v23, 0x7fff
	v_permlanex16_b32 v20, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v17, v15, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v15, vcc_lo
	v_add3_u32 v12, v12, v48, 0x7fff
	v_add3_u32 v16, v16, v50, 0x7fff
	v_perm_b32 v10, v20, v19, v24
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v12.h
	v_cndmask_b32_e32 v12, v0, v11, vcc_lo
	v_mov_b16_e32 v14.l, v16.h
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	v_perm_b32 v11, v20, v19, v21
	v_permlanex16_b32 v16, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v12, v13, v14, vcc_lo
	v_cndmask_b32_e32 v18, v14, v13, vcc_lo
	v_perm_b32 v13, v16, v0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v19, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v16, v0, v24
	v_perm_b32 v16, v17, v1, v24
	v_perm_b32 v17, v17, v1, v21
	v_perm_b32 v14, v19, v18, v24
	v_perm_b32 v15, v19, v18, v21
	s_clause 0x3
	buffer_store_b128 v[2:5], v70, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v70, s[16:19], 0 offen offset:256
	buffer_store_b128 v[10:13], v45, s[16:19], 0 offen
	buffer_store_b128 v[14:17], v45, s[16:19], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 239
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12448
; TotalNumSgprs: 39
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 39
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
