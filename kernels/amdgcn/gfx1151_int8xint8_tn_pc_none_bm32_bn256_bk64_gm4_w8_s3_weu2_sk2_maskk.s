	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	s_load_b32 s35, s[0:1], 0x38
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v72, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v38, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v73, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v71, 3, v0
	v_or_b32_e32 v80, 0x3f0, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v75, 32, v72
	v_or_b32_e32 v76, 48, v72
	v_or_b32_e32 v74, 16, v72
	v_or_b32_e32 v81, 0x7f0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 31
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
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s25, v72
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v33, v38, 4, v3
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[34:35], null, s25, 48, v[33:34]
	v_lshl_add_u32 v77, s25, 5, v33
	.loc	1 293 16 is_stmt 1              ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s24, v73
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
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
	s_lshl_b32 s36, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s36, v73
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s35, 0x7f
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s8
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s2, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s5, s4, s5
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s35, v3
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s5, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s36, v72
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s6, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s36, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s34, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s9, s25, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s34
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 24, v71
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v7, s36, v76
	v_or_b32_e32 v5, s36, v74
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s35, v4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s30, s9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s35, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v35, v1, v2, s29
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s6, v33
	s_lshl_b32 s28, s25, 4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s35, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s6, v77
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s35, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v79, s28, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s6, v34
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s2, s4, s34
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s10, s24, s36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s5, s34
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v4, s10, v35
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s6, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s7, 0xff
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v11, 0x80000000, v4, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s36, 0x80
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v15, 0x80000000, v5, s3
	s_clause 0x1
	buffer_load_b128 v[3:6], v2, s[20:23], 0 offen
	buffer_load_b128 v[7:10], v7, s[20:23], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s36, v73
	v_or_b32_e32 v19, s36, v72
	v_or_b32_e32 v20, s36, v74
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s4, s24, 7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s5, s25, 7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s35, v2
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v21, s36, v75
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v23, s10, s4, v35
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s5
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s35, v19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v22, s36, v76
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v24, s6, v33
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s35, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v25, s6, v79
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s35, v21
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[31:32], v11, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[11:14], v1, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v15, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v23, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v26, s6, v77
	v_add_nc_u32_e32 v27, s6, v34
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s35, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v24, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v23, 0x80000000, v25, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v28, 0x80000000, v26, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_cmpk_gt_i32 s7, 0x17f
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v39, 0x80000000, v27, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[36:37], v1, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v23, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v28, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v39, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, 0, v71
	v_lshrrev_b32_e32 v2, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, v1, v71
	s_waitcnt vmcnt(8)
	ds_store_b128 v43, v[7:10] offset:12288
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(7)
	ds_store_b64 v1, v[31:32] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v43, v[11:14]
	s_waitcnt vmcnt(5)
	ds_store_b128 v43, v[15:18] offset:4096
	ds_store_b128 v43, v[3:6] offset:8192
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v1, v[36:37] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[19:22] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v43, v[23:26] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v43, v[27:30] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[39:42] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v3, 0x7f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v78, 0x70, v2
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[26:27], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
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
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s33, 0, 0x8800
	s_add_i32 s31, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr78
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[26:27], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s38, s7, 7
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
.Ltmp15:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v82, 4, v0
	v_and_b32_e32 v78, 0x70, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v2, s5
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v40, 0
	s_addk_i32 s36, 0x80
	s_mov_b32 s37, 1
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s33, 0, 0x8800
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s38, s38, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s5, 7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v83, s1, v38
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s36, s0
	s_mov_b32 s3, s4
	v_or_b32_e32 v11, s0, v73
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s0, s24, v[35:36]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v84, s3, v78, v38
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v85, s1, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s35, v11
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[36:37], v9, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v83 offset:416
	ds_load_u8 v10, v83 offset:384
	ds_load_u8 v11, v83 offset:480
	ds_load_u8 v12, v83 offset:448
	ds_load_u8 v13, v83 offset:288
	ds_load_u8 v14, v83 offset:256
	ds_load_u8 v15, v83 offset:352
	ds_load_u8 v16, v83 offset:320
	ds_load_u8 v17, v83 offset:160
	ds_load_u8 v18, v83 offset:128
	ds_load_u8 v19, v83 offset:224
	ds_load_u8 v20, v83 offset:192
	ds_load_u8 v23, v83 offset:96
	ds_load_u8 v24, v83 offset:64
	ds_load_u8 v25, v83
	ds_load_u8 v21, v83 offset:16
	ds_load_u8 v26, v83 offset:32
	ds_load_u8 v22, v83 offset:48
	ds_load_u8 v27, v84 offset:3328
	ds_load_u8 v28, v84 offset:3072
	ds_load_u8 v29, v84 offset:3840
	ds_load_u8 v30, v84 offset:3584
	ds_load_u8 v31, v84 offset:2304
	ds_load_u8 v32, v84 offset:2048
	ds_load_u8 v86, v84 offset:2816
	ds_load_u8 v87, v84 offset:2560
	ds_load_u8 v88, v84 offset:1280
	ds_load_u8 v89, v84 offset:1024
	ds_load_u8 v90, v84 offset:1792
	ds_load_u8 v91, v84 offset:1536
	ds_load_u8 v92, v84 offset:256
	ds_load_u8 v93, v84
	ds_load_u8 v94, v84 offset:768
	ds_load_u8 v95, v84 offset:512
	ds_load_u8 v96, v83 offset:928
	ds_load_u8 v97, v83 offset:896
	ds_load_u8 v98, v83 offset:992
	ds_load_u8 v99, v83 offset:960
	ds_load_u8 v100, v83 offset:800
	ds_load_u8 v101, v83 offset:768
	ds_load_u8 v102, v83 offset:864
	ds_load_u8 v103, v83 offset:832
	ds_load_u8 v104, v83 offset:672
	ds_load_u8 v105, v83 offset:640
	ds_load_u8 v106, v83 offset:736
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v14, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v15, v30, v29, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v18, v17, 0xc0c0004
	v_perm_b32 v10, v20, v19, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	ds_load_u8 v18, v84 offset:7424
	ds_load_u8 v30, v84 offset:6656
	ds_load_u8 v19, v84 offset:7168
	ds_load_u8 v20, v84 offset:7936
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v24, v23, 0xc0c0004
	ds_load_u8 v23, v84 offset:7680
	ds_load_u8 v29, v84 offset:6912
	v_perm_b32 v13, v25, v26, 0xc0c0004
	ds_load_u8 v25, v84 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v26, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v27, v87, v86, 0xc0c0004
	ds_load_u8 v86, v84 offset:5376
	v_lshl_or_b32 v9, v9, 16, v13
	v_lshl_or_b32 v16, v15, 16, v14
	ds_load_u8 v87, v84 offset:5120
	ds_load_u8 v111, v84 offset:5888
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v13, v89, v88, 0xc0c0004
	ds_load_u8 v88, v84 offset:5632
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v91, v90, 0xc0c0004
	v_lshl_or_b32 v15, v27, 16, v26
	ds_load_u8 v90, v84 offset:4096
	ds_load_u8 v91, v84 offset:4864
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v27, v97, v96, 0xc0c0004
	ds_load_u8 v97, v84 offset:2432
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v93, v92, 0xc0c0004
	ds_load_u8 v92, v84 offset:4608
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v28, v99, v98, 0xc0c0004
	ds_load_u8 v98, v84 offset:2176
	ds_load_u8 v99, v84 offset:2944
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v31, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v32, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v23, v20, 0xc0c0004
	ds_load_u8 v107, v83 offset:704
	ds_load_u8 v108, v83 offset:544
	ds_load_u8 v118, v83 offset:1408
	ds_load_u8 v17, v83 offset:576
	v_perm_b32 v26, v95, v94, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	v_lshl_or_b32 v27, v32, 16, v31
	v_lshl_or_b32 v32, v19, 16, v18
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v88, v111, 0xc0c0004
	ds_load_u8 v109, v83 offset:512
	ds_load_u8 v110, v83 offset:608
	ds_load_u8 v24, v84 offset:6400
	ds_load_u8 v86, v84 offset:7808
	ds_load_u8 v87, v84 offset:6528
	ds_load_u8 v89, v84 offset:4352
	ds_load_u8 v93, v84 offset:3456
	ds_load_u8 v96, v84 offset:3712
	ds_load_u8 v111, v84 offset:5248
	ds_load_u8 v94, v84 offset:3200
	v_lshl_or_b32 v13, v26, 16, v13
	v_perm_b32 v26, v105, v104, 0xc0c0004
	ds_load_u8 v100, v84 offset:2688
	ds_load_u8 v101, v84 offset:1408
	ds_load_u8 v104, v84 offset:1664
	ds_load_u8 v105, v84 offset:384
	ds_load_u8 v23, v84 offset:896
	v_perm_b32 v29, v30, v29, 0xc0c0004
	v_lshl_or_b32 v30, v19, 16, v18
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v19, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v91, v98, v97, 0xc0c0004
	ds_load_u8 v97, v84 offset:5760
	ds_load_u8 v98, v84 offset:4480
	ds_load_u8 v95, v84 offset:3968
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v31, v107, v106, 0xc0c0004
	ds_load_u8 v102, v84 offset:1152
	ds_load_u8 v103, v84 offset:1920
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v17, v110, 0xc0c0004
	ds_load_u8 v107, v84 offset:7552
	ds_load_u8 v110, v84 offset:5504
	v_lshl_or_b32 v26, v31, 16, v26
	v_perm_b32 v31, v109, v108, 0xc0c0004
	ds_load_u8 v88, v84 offset:6272
	ds_load_u8 v109, v84 offset:7040
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v18, v90, v89, 0xc0c0004
	ds_load_u8 v90, v84 offset:6784
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v100, v99, 0xc0c0004
	ds_load_u8 v99, v84 offset:4224
	ds_load_u8 v100, v84 offset:4992
	ds_load_u8 v117, v83 offset:1440
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v96, v95, 0xc0c0004
	ds_load_u8 v96, v84 offset:6016
	v_perm_b32 v20, v25, v24, 0xc0c0004
	ds_load_u8 v24, v84 offset:640
	ds_load_u8 v106, v84 offset:128
	v_lshl_or_b32 v25, v17, 16, v31
	ds_load_u8 v17, v84 offset:7296
	ds_load_u8 v108, v84 offset:8064
	v_lshl_or_b32 v31, v29, 16, v20
	v_perm_b32 v20, v94, v93, 0xc0c0004
	v_lshl_or_b32 v29, v19, 16, v18
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v90, v109, 0xc0c0004
	v_lshl_or_b32 v20, v89, 16, v20
	v_perm_b32 v89, v104, v103, 0xc0c0004
	v_lshl_or_b32 v19, v92, 16, v91
	ds_load_u8 v91, v83 offset:368
	ds_load_u8 v93, v83 offset:336
	ds_load_u8 v92, v83 offset:272
	ds_load_u8 v94, v83 offset:176
	ds_load_u8 v90, v83 offset:208
	v_lshl_or_b32 v18, v89, 16, v18
	ds_load_u8 v89, v83 offset:304
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v95, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v24, v17, v107, 0xc0c0004
	ds_load_u8 v101, v84 offset:4736
	ds_load_u8 v102, v83 offset:432
	ds_load_u8 v105, v83 offset:464
	v_lshl_or_b32 v17, v23, 16, v95
	v_lshl_or_b32 v23, v88, 16, v87
	ds_load_u8 v95, v83 offset:144
	ds_load_u8 v88, v83 offset:240
	v_perm_b32 v87, v97, v96, 0xc0c0004
	ds_load_u8 v96, v83 offset:112
	v_perm_b32 v97, v99, v98, 0xc0c0004
	ds_load_u8 v98, v83 offset:80
	ds_load_u8 v103, v83 offset:400
	ds_load_u8 v104, v83 offset:496
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	v_perm_b32 v86, v86, v108, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v89, v92, v89, 0xc0c0004
	ds_load_u8 v92, v83 offset:816
	v_lshl_or_b32 v24, v86, 16, v24
	v_perm_b32 v86, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	ds_load_u8 v100, v83 offset:944
	v_lshl_or_b32 v111, v91, 16, v89
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v83 offset:880
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	ds_load_u8 v90, v83 offset:848
	ds_load_u8 v93, v83 offset:784
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v96, v98, v96, 0xc0c0004
	ds_load_u8 v98, v83 offset:688
	v_lshl_or_b32 v110, v88, 16, v94
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v90, v95, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v83 offset:560
	ds_load_u8 v95, v83 offset:528
	v_perm_b32 v101, v103, v102, 0xc0c0004
	ds_load_u8 v102, v83 offset:912
	ds_load_u8 v85, v85
	v_perm_b32 v103, v105, v104, 0xc0c0004
	ds_load_u8 v104, v83 offset:976
	v_perm_b32 v105, v21, v22, 0xc0c0004
	ds_load_u8 v21, v83 offset:656
	ds_load_u8 v22, v83 offset:752
	v_lshl_or_b32 v112, v103, 16, v101
	v_lshl_or_b32 v115, v90, 16, v92
	v_lshl_or_b32 v109, v96, 16, v105
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v93, v95, v93, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v102, v100, 0xc0c0004
	ds_load_u8 v102, v83 offset:720
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v85, v104, v85, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v21, v98, 0xc0c0004
	ds_load_u8 v21, v83 offset:624
	v_lshl_or_b32 v116, v85, 16, v100
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v102, v102, v22, 0xc0c0004
	ds_load_u8 v22, v83 offset:592
	v_lshl_or_b32 v114, v102, 16, v98
	v_wmma_i32_16x16x16_iu8 v[101:108], v[13:16], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v22, v21, 0xc0c0004
	v_lshl_or_b32 v22, v87, 16, v86
	v_lshl_or_b32 v21, v99, 16, v97
	v_wmma_i32_16x16x16_iu8 v[85:92], v[13:16], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v113, v95, 16, v93
	v_wmma_i32_16x16x16_iu8 v[93:100], v[17:20], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[29:32], v[25:28], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[21:24], v[25:28], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[29:32], v[113:116], v[101:108] neg_lo:[1,1,0]
	ds_load_u8 v25, v83 offset:1504
	ds_load_u8 v26, v83 offset:1472
	ds_load_u8 v27, v83 offset:1312
	ds_load_u8 v28, v83 offset:1280
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[113:116], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:1376
	ds_load_u8 v18, v83 offset:1344
	ds_load_u8 v21, v83 offset:1184
	ds_load_u8 v22, v83 offset:1152
	ds_load_u8 v23, v83 offset:1248
	ds_load_u8 v24, v83 offset:1216
	ds_load_u8 v29, v83 offset:1056
	ds_load_u8 v30, v83 offset:1024
	v_perm_b32 v19, v118, v117, 0xc0c0004
	ds_load_u8 v31, v83 offset:1120
	ds_load_u8 v32, v84 offset:9984
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v20, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	v_perm_b32 v26, v28, v27, 0xc0c0004
	ds_load_u8 v21, v84 offset:12032
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	ds_load_u8 v23, v84 offset:11776
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v30, v29, 0xc0c0004
	ds_load_u8 v28, v84 offset:11008
	ds_load_u8 v29, v84 offset:10752
	ds_load_u8 v30, v84 offset:9472
	ds_load_u8 v25, v83 offset:1088
	v_lshl_or_b32 v20, v20, 16, v19
	v_lshl_or_b32 v19, v17, 16, v26
	ds_load_u8 v17, v84 offset:11520
	ds_load_u8 v26, v84 offset:11264
	v_lshl_or_b32 v18, v22, 16, v18
	ds_load_u8 v22, v84 offset:10496
	ds_load_u8 v24, v84 offset:10240
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v29, v28, 0xc0c0004
	ds_load_u8 v28, v84 offset:9728
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v25, v25, v31, 0xc0c0004
	ds_load_u8 v31, v84 offset:9216
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v26, v17, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v24, v22, 0xc0c0004
	v_lshl_or_b32 v17, v25, 16, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v24, v21, 16, v26
	ds_load_u8 v21, v84 offset:8448
	ds_load_u8 v25, v84 offset:8192
	ds_load_u8 v26, v84 offset:8960
	v_lshl_or_b32 v23, v23, 16, v22
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v28, v32, 0xc0c0004
	ds_load_u8 v28, v84 offset:8704
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v27, 16, v22
	ds_load_u8 v27, v84 offset:11648
	ds_load_u8 v29, v84 offset:11392
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	ds_load_u8 v25, v84 offset:12160
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v84 offset:11904
	v_lshl_or_b32 v21, v26, 16, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	ds_load_u8 v29, v84 offset:10624
	v_wmma_i32_16x16x16_iu8 v[85:92], v[21:24], v[17:20], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v84 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v28, v29, 0xc0c0004
	ds_load_u8 v28, v84 offset:11136
	ds_load_u8 v30, v84 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v28, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v27
	ds_load_u8 v25, v84 offset:9600
	ds_load_u8 v26, v84 offset:9344
	v_lshl_or_b32 v27, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v84 offset:10112
	ds_load_u8 v29, v84 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v29, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v84 offset:8576
	ds_load_u8 v29, v84 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	ds_load_u8 v29, v84 offset:9088
	ds_load_u8 v30, v84 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v29, 16, v25
	ds_load_u8 v29, v83 offset:1456
	ds_load_u8 v30, v83 offset:1424
	v_wmma_i32_16x16x16_iu8 v[93:100], v[25:28], v[17:20], v[93:100] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:1520
	ds_load_u8 v18, v83 offset:1488
	ds_load_u8 v19, v83 offset:1328
	ds_load_u8 v20, v83 offset:1296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v83 offset:1392
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v18, 16, v19
	ds_load_u8 v17, v83 offset:1200
	ds_load_u8 v18, v83 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:1264
	ds_load_u8 v29, v83 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v29, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v83 offset:1072
	ds_load_u8 v29, v83 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	ds_load_u8 v29, v83 offset:1136
	ds_load_u8 v30, v83 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v29, 16, v17
	ds_load_u8 v29, v83 offset:1952
	ds_load_u8 v30, v83 offset:1920
	v_wmma_i32_16x16x16_iu8 v[101:108], v[21:24], v[17:20], v[101:108] neg_lo:[1,1,0]
	ds_load_u8 v21, v83 offset:2016
	ds_load_u8 v22, v83 offset:1984
	ds_load_u8 v23, v83 offset:1824
	ds_load_u8 v24, v83 offset:1792
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:1888
	ds_load_u8 v18, v83 offset:1856
	ds_load_u8 v25, v83 offset:1696
	ds_load_u8 v26, v83 offset:1664
	ds_load_u8 v27, v83 offset:1760
	ds_load_u8 v28, v83 offset:1728
	ds_load_u8 v31, v83 offset:1568
	ds_load_u8 v32, v83 offset:1536
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v30, v29, 0xc0c0004
	ds_load_u8 v29, v83 offset:1632
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v20, v22, v21, 0xc0c0004
	ds_load_u8 v21, v83 offset:1600
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	ds_load_u8 v23, v84 offset:16128
	ds_load_u8 v30, v84 offset:13568
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	ds_load_u8 v25, v84 offset:15872
	ds_load_u8 v28, v84 offset:15104
	v_lshl_or_b32 v20, v20, 16, v19
	v_lshl_or_b32 v19, v17, 16, v22
	ds_load_u8 v17, v84 offset:15616
	ds_load_u8 v22, v84 offset:15360
	v_lshl_or_b32 v18, v24, 16, v18
	ds_load_u8 v24, v84 offset:14592
	ds_load_u8 v26, v84 offset:14336
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v27, v32, v31, 0xc0c0004
	ds_load_u8 v31, v84 offset:14080
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v32, s0, v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v21, v21, v29, 0xc0c0004
	ds_load_u8 v29, v84 offset:14848
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s35, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v22, v17, 0xc0c0004
	v_lshl_or_b32 v17, v21, 16, v27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v84 offset:13824
	v_perm_b32 v23, v25, v23, 0xc0c0004
	ds_load_u8 v25, v84 offset:13312
	v_lshl_or_b32 v24, v23, 16, v22
	v_lshl_or_b32 v23, v28, 16, v26
	ds_load_u8 v21, v84 offset:12544
	ds_load_u8 v26, v84 offset:12288
	ds_load_u8 v28, v84 offset:12800
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v22, v25, v30, 0xc0c0004
	ds_load_u8 v25, v84 offset:13056
	v_perm_b32 v27, v29, v31, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v26, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v22, v27, 16, v22
	ds_load_u8 v27, v84 offset:15744
	ds_load_u8 v29, v84 offset:15488
	ds_load_u8 v26, v84 offset:16256
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v84 offset:16000
	v_lshl_or_b32 v21, v25, 16, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	ds_load_u8 v29, v84 offset:14720
	v_wmma_i32_16x16x16_iu8 v[85:92], v[21:24], v[17:20], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v84 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v28, v29, 0xc0c0004
	ds_load_u8 v28, v84 offset:15232
	ds_load_u8 v30, v84 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v28, 0xc0c0004
	v_lshl_or_b32 v28, v26, 16, v27
	ds_load_u8 v25, v84 offset:13696
	ds_load_u8 v26, v84 offset:13440
	v_lshl_or_b32 v27, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v84 offset:14208
	ds_load_u8 v29, v84 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v29, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v84 offset:12672
	ds_load_u8 v29, v84 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	ds_load_u8 v29, v84 offset:13184
	ds_load_u8 v30, v84 offset:12928
	v_cvt_f32_i32_e32 v84, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v65, v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v30, s1, v81
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s1, s0, s25
	s_add_i32 s4, s1, s30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v25, v29, 16, v25
	ds_load_u8 v29, v83 offset:1968
	ds_load_u8 v31, v83 offset:1936
	ds_load_u8 v30, v30
	v_wmma_i32_16x16x16_iu8 v[93:100], v[25:28], v[17:20], v[93:100] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:2000
	ds_load_u8 v18, v83 offset:1840
	ds_load_u8 v19, v83 offset:1808
	ds_load_u8 v20, v83 offset:1904
	v_cvt_f32_i32_e32 v91, v98
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v29, v31, v29, 0xc0c0004
	ds_load_u8 v31, v83 offset:1872
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v17, v30, 0xc0c0004
	ds_load_u8 v30, v83 offset:1712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v31, v20, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v29
	ds_load_u8 v29, v83 offset:1744
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v17, v83 offset:1680
	ds_load_u8 v18, v83 offset:1776
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v17, v30, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v29, v18, 0xc0c0004
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v29, s0, v72
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v83 offset:1584
	ds_load_u8 v30, v83 offset:1552
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s35, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v30, v17, 0xc0c0004
	ds_load_u8 v30, v83 offset:1648
	ds_load_u8 v31, v83 offset:1616
	v_cvt_f32_i32_e32 v83, v90
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v29, s4, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v90, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v66, v66, v83
	v_add_f32_e32 v58, v58, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v31, s0, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v17, v30, 16, v17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v30, s0, v75
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s35, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v28, v88
	v_cvt_f32_i32_e32 v88, v95
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v86
	v_cvt_f32_i32_e32 v86, v93
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v31, s4, v79
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s35, v30
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v30, s4, v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[101:108], v[21:24], v[17:20], v[101:108] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v60, v60, v88
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[21:24], v29, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v29, v89
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v32, s4, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v62, v62, v86
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v67, v67, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v85
	v_cvt_f32_i32_e32 v27, v87
	v_cvt_f32_i32_e32 v85, v92
	v_cvt_f32_i32_e32 v87, v94
	v_cvt_f32_i32_e32 v89, v96
	v_cvt_f32_i32_e32 v92, v99
	v_cvt_f32_i32_e32 v93, v100
	v_cvt_f32_i32_e32 v94, v101
	v_cvt_f32_i32_e32 v95, v102
	v_cvt_f32_i32_e32 v96, v103
	v_cvt_f32_i32_e32 v97, v104
	v_cvt_f32_i32_e32 v98, v105
	v_cvt_f32_i32_e32 v99, v106
	v_cvt_f32_i32_e32 v100, v107
	v_cvt_f32_i32_e32 v101, v108
	v_cvt_f32_i32_e32 v102, v9
	v_cvt_f32_i32_e32 v103, v10
	v_cvt_f32_i32_e32 v104, v11
	v_cvt_f32_i32_e32 v105, v12
	v_cvt_f32_i32_e32 v106, v13
	v_cvt_f32_i32_e32 v107, v14
	v_cvt_f32_i32_e32 v108, v15
	v_cvt_f32_i32_e32 v109, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2
	buffer_load_b128 v[9:12], v31, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v30, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v32, s[20:23], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s37, 1
	s_mov_b32 s4, s31
	s_cmp_lt_i32 s0, 2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v64, v64, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s37, s0, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v70, v70, v26
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s3, s37, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s6, s37, 14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s3, s3, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s31, s6, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v25, s3, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v63, v63, v85 :: v_dual_add_nc_u32 v26, s31, v82
	v_dual_add_f32 v69, v69, v27 :: v_dual_add_f32 v68, v68, v28
	v_dual_add_f32 v61, v61, v87 :: v_dual_add_f32 v56, v56, v92
	v_dual_add_f32 v59, v59, v89 :: v_dual_add_f32 v54, v54, v94
	v_dual_add_f32 v57, v57, v91 :: v_dual_add_f32 v52, v52, v96
	v_dual_add_f32 v55, v55, v93 :: v_dual_add_f32 v50, v50, v98
	v_dual_add_f32 v53, v53, v95 :: v_dual_add_f32 v48, v48, v100
	v_dual_add_f32 v51, v51, v97 :: v_dual_add_f32 v46, v46, v102
	v_dual_add_f32 v49, v49, v99 :: v_dual_add_f32 v44, v44, v104
	v_dual_add_f32 v47, v47, v101 :: v_dual_add_f32 v42, v42, v106
	v_dual_add_f32 v45, v45, v103 :: v_dual_add_f32 v40, v40, v108
	v_add_f32_e32 v43, v43, v105
	v_add_f32_e32 v41, v41, v107
	v_add_f32_e32 v39, v39, v109
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s5, 1
	s_mov_b32 s1, s33
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s33, s3, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s38
	s_mov_b32 s5, s0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v25, v[36:37] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v26, v[21:24]
	s_waitcnt vmcnt(2)
	ds_store_b128 v26, v[9:12] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v26, v[13:16] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[17:20] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v80
	v_mov_b32_e32 v3, v81
.LBB0_7:                                ; %Flow224
	v_and_b32_e32 v2, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v4, v78, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s34
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s4, v4
	s_mov_b32 s4, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v87, s1, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v5, s1, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v5 offset:416
	ds_load_u8 v7, v5 offset:384
	ds_load_u8 v8, v5 offset:480
	ds_load_u8 v9, v5 offset:448
	ds_load_u8 v10, v5 offset:288
	ds_load_u8 v11, v5 offset:256
	ds_load_u8 v12, v5 offset:352
	ds_load_u8 v13, v5 offset:320
	ds_load_u8 v14, v5 offset:160
	ds_load_u8 v15, v5 offset:128
	ds_load_u8 v16, v5 offset:224
	ds_load_u8 v17, v5 offset:192
	ds_load_u8 v18, v5 offset:32
	ds_load_u8 v19, v5
	ds_load_u8 v20, v5 offset:96
	ds_load_u8 v21, v5 offset:64
	ds_load_u8 v107, v5 offset:464
	ds_load_u8 v108, v5 offset:432
	ds_load_u8 v109, v5 offset:400
	ds_load_u8 v110, v5 offset:368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v11, v10, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v10, s1, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v13, v12, 0xc0c0004
	v_lshl_or_b32 v33, v7, 16, v6
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v15, v14, 0xc0c0004
	ds_load_u8 v119, v5 offset:80
	ds_load_u8 v120, v5 offset:48
	ds_load_u8 v121, v5 offset:16
	ds_load_u8 v122, v10
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v17, v16, 0xc0c0004
	v_lshl_or_b32 v32, v9, 16, v8
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v19, v18, 0xc0c0004
	ds_load_u8 v10, v22 offset:3328
	ds_load_u8 v11, v22 offset:3072
	ds_load_u8 v12, v22 offset:3840
	ds_load_u8 v13, v22 offset:3584
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v21, v20, 0xc0c0004
	v_lshl_or_b32 v31, v7, 16, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v30, v9, 16, v8
	ds_load_u8 v6, v22 offset:2304
	ds_load_u8 v7, v22 offset:2048
	ds_load_u8 v8, v22 offset:2816
	ds_load_u8 v9, v22 offset:2560
	ds_load_u8 v14, v22 offset:1280
	ds_load_u8 v15, v22 offset:1024
	ds_load_u8 v16, v22 offset:1792
	ds_load_u8 v17, v22 offset:1536
	ds_load_u8 v18, v22 offset:256
	ds_load_u8 v19, v22
	ds_load_u8 v20, v22 offset:768
	ds_load_u8 v21, v22 offset:512
	ds_load_u8 v23, v22 offset:3968
	ds_load_u8 v24, v22 offset:3712
	ds_load_u8 v25, v22 offset:3456
	ds_load_u8 v26, v22 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v15, v14, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v17, v16, 0xc0c0004
	v_perm_b32 v11, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v19, v18, 0xc0c0004
	v_lshl_or_b32 v73, v7, 16, v6
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v21, v20, 0xc0c0004
	v_lshl_or_b32 v72, v9, 16, v8
	v_lshl_or_b32 v74, v11, 16, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_lshl_or_b32 v71, v13, 16, v12
	v_dual_mov_b32 v13, s11 :: v_dual_mov_b32 v12, s10
	ds_load_u8 v34, v5 offset:928
	ds_load_u8 v35, v5 offset:896
	ds_load_u8 v36, v5 offset:992
	ds_load_u8 v37, v5 offset:960
	ds_load_u8 v75, v5 offset:800
	ds_load_u8 v76, v5 offset:768
	ds_load_u8 v77, v5 offset:864
	ds_load_u8 v78, v5 offset:832
	ds_load_u8 v79, v5 offset:672
	ds_load_u8 v80, v5 offset:640
	ds_load_u8 v81, v5 offset:736
	ds_load_u8 v82, v5 offset:704
	ds_load_u8 v123, v5 offset:976
	ds_load_u8 v124, v5 offset:944
	ds_load_u8 v125, v5 offset:912
	ds_load_u8 v126, v5 offset:880
	v_mov_b32_e32 v6, s4
	ds_load_u8 v111, v5 offset:336
	ds_load_u8 v112, v5 offset:304
	ds_load_u8 v113, v5 offset:272
	ds_load_u8 v114, v5 offset:240
	ds_load_u8 v115, v5 offset:208
	ds_load_u8 v116, v5 offset:176
	ds_load_u8 v117, v5 offset:144
	ds_load_u8 v118, v5 offset:112
	ds_load_u8 v131, v5 offset:720
	ds_load_u8 v132, v5 offset:688
	ds_load_u8 v133, v5 offset:656
	ds_load_u8 v134, v5 offset:624
	ds_load_u8 v135, v5 offset:592
	ds_load_u8 v136, v5 offset:560
	ds_load_u8 v137, v5 offset:528
	ds_load_u8 v138, v5 offset:496
	ds_load_u8 v159, v5 offset:1264
	ds_load_u8 v160, v5 offset:1232
	ds_load_u8 v161, v5 offset:1200
	ds_load_u8 v162, v5 offset:1168
	ds_load_u8 v163, v5 offset:1136
	ds_load_u8 v164, v5 offset:1104
	ds_load_u8 v165, v5 offset:1072
	ds_load_u8 v166, v5 offset:1040
	ds_load_u8 v27, v22 offset:2944
	ds_load_u8 v28, v22 offset:2688
	ds_load_u8 v29, v22 offset:2432
	ds_load_u8 v91, v22 offset:2176
	ds_load_u8 v95, v22 offset:1920
	ds_load_u8 v96, v22 offset:1664
	ds_load_u8 v97, v22 offset:1408
	ds_load_u8 v98, v22 offset:1152
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v99, v22 offset:896
	ds_load_u8 v100, v22 offset:640
	ds_load_u8 v101, v22 offset:384
	ds_load_u8 v102, v22 offset:128
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	ds_load_u8 v143, v22 offset:6016
	ds_load_u8 v144, v22 offset:5760
	ds_load_u8 v145, v22 offset:5504
	ds_load_u8 v146, v22 offset:5248
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v77, v80, v79, 0xc0c0004
	ds_load_u8 v147, v22 offset:4992
	ds_load_u8 v148, v22 offset:4736
	ds_load_u8 v149, v22 offset:4480
	ds_load_u8 v150, v22 offset:4224
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v78, v82, v81, 0xc0c0004
	ds_load_u8 v80, v22 offset:7424
	ds_load_u8 v81, v22 offset:7168
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v5 offset:544
	ds_load_u8 v83, v5 offset:512
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v5 offset:608
	ds_load_u8 v84, v5 offset:576
	ds_load_u8 v127, v5 offset:848
	ds_load_u8 v128, v5 offset:816
	ds_load_u8 v129, v5 offset:784
	ds_load_u8 v130, v5 offset:752
	ds_load_u8 v179, v22 offset:10112
	ds_load_u8 v180, v22 offset:9856
	ds_load_u8 v181, v22 offset:9600
	ds_load_u8 v182, v22 offset:9344
	v_dual_mov_b32 v11, s9 :: v_dual_mov_b32 v10, s8
	v_mov_b32_e32 v9, s7
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v28, v96, v95, 0xc0c0004
	v_perm_b32 v24, v91, v29, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v27, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v95, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v29, v102, v101, 0xc0c0004
	v_dual_mov_b32 v8, s6 :: v_dual_mov_b32 v7, s5
	v_lshl_or_b32 v98, v23, 16, v25
	v_lshl_or_b32 v97, v26, 16, v24
	v_lshl_or_b32 v96, v28, 16, v27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v84, v37, 0xc0c0004
	v_lshl_or_b32 v37, v36, 16, v34
	v_perm_b32 v79, v83, v35, 0xc0c0004
	ds_load_u8 v83, v22 offset:7936
	ds_load_u8 v84, v22 offset:7680
	v_lshl_or_b32 v36, v76, 16, v75
	v_lshl_or_b32 v35, v78, 16, v77
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_lshl_or_b32 v34, v82, 16, v79
	ds_load_u8 v75, v22 offset:6400
	ds_load_u8 v76, v22 offset:6144
	ds_load_u8 v77, v22 offset:6912
	ds_load_u8 v78, v22 offset:6656
	ds_load_u8 v79, v22 offset:5376
	ds_load_u8 v82, v22 offset:5120
	ds_load_u8 v85, v22 offset:5888
	ds_load_u8 v86, v22 offset:5632
	ds_load_u8 v103, v22 offset:8064
	ds_load_u8 v104, v22 offset:7808
	ds_load_u8 v105, v22 offset:7552
	ds_load_u8 v106, v22 offset:7296
	ds_load_u8 v81, v22 offset:4352
	ds_load_u8 v88, v22 offset:4096
	v_lshl_or_b32 v95, v95, 16, v29
	v_wmma_i32_16x16x16_iu8 v[14:21], v[71:74], v[30:33], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v79, v82, v79, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v22 offset:4864
	ds_load_u8 v89, v22 offset:4608
	ds_load_u8 v139, v22 offset:7040
	ds_load_u8 v140, v22 offset:6784
	ds_load_u8 v141, v22 offset:6528
	ds_load_u8 v142, v22 offset:6272
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v82, v86, v85, 0xc0c0004
	ds_load_u8 v85, v5 offset:1440
	ds_load_u8 v86, v5 offset:1408
	v_lshl_or_b32 v77, v76, 16, v75
	v_lshl_or_b32 v78, v83, 16, v80
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v88, v81, 0xc0c0004
	v_lshl_or_b32 v76, v82, 16, v79
	v_perm_b32 v99, v106, v105, 0xc0c0004
	v_perm_b32 v100, v104, v103, 0xc0c0004
	v_perm_b32 v104, v146, v145, 0xc0c0004
	v_perm_b32 v105, v144, v143, 0xc0c0004
	v_perm_b32 v106, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v102, v100, 16, v99
	v_lshl_or_b32 v100, v105, 16, v104
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v84, v89, v84, 0xc0c0004
	ds_load_u8 v88, v5 offset:1504
	ds_load_u8 v89, v5 offset:1472
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v140, v139, 0xc0c0004
	v_perm_b32 v139, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v142, v141, 0xc0c0004
	v_lshl_or_b32 v75, v84, 16, v81
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v5 offset:1056
	ds_load_u8 v93, v5 offset:1024
	ds_load_u8 v79, v5 offset:1312
	ds_load_u8 v80, v5 offset:1280
	ds_load_u8 v81, v5 offset:1376
	ds_load_u8 v82, v5 offset:1344
	ds_load_u8 v83, v5 offset:1184
	ds_load_u8 v84, v5 offset:1152
	ds_load_u8 v90, v5 offset:1248
	ds_load_u8 v92, v5 offset:1216
	ds_load_u8 v151, v5 offset:1520
	ds_load_u8 v152, v5 offset:1488
	ds_load_u8 v153, v5 offset:1456
	ds_load_u8 v154, v5 offset:1424
	v_lshl_or_b32 v101, v103, 16, v101
	v_lshl_or_b32 v99, v139, 16, v106
	v_perm_b32 v103, v182, v181, 0xc0c0004
	v_perm_b32 v104, v180, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[14:21], v[75:78], v[34:37], v[14:21] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v104, v104, 16, v103
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v80, v82, v81, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v5 offset:1120
	ds_load_u8 v94, v5 offset:1088
	ds_load_u8 v155, v5 offset:1392
	ds_load_u8 v156, v5 offset:1360
	ds_load_u8 v157, v5 offset:1328
	ds_load_u8 v158, v5 offset:1296
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v84, v92, v90, 0xc0c0004
	v_lshl_or_b32 v81, v80, 16, v79
	v_lshl_or_b32 v82, v88, 16, v85
	v_perm_b32 v86, v93, v86, 0xc0c0004
	ds_load_u8 v90, v22 offset:11520
	ds_load_u8 v92, v22 offset:11264
	ds_load_u8 v93, v22 offset:12032
	ds_load_u8 v167, v22 offset:11776
	v_lshl_or_b32 v80, v84, 16, v83
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v94, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v89, 16, v86
	ds_load_u8 v83, v22 offset:10496
	ds_load_u8 v84, v22 offset:10240
	ds_load_u8 v85, v22 offset:11008
	ds_load_u8 v86, v22 offset:10752
	ds_load_u8 v88, v22 offset:9472
	ds_load_u8 v89, v22 offset:9216
	ds_load_u8 v94, v22 offset:9984
	ds_load_u8 v168, v22 offset:9728
	ds_load_u8 v169, v22 offset:12160
	ds_load_u8 v170, v22 offset:11904
	ds_load_u8 v171, v22 offset:11648
	ds_load_u8 v172, v22 offset:11392
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v167, v93, 0xc0c0004
	ds_load_u8 v93, v22 offset:8448
	ds_load_u8 v167, v22 offset:8192
	ds_load_u8 v173, v22 offset:8960
	ds_load_u8 v174, v22 offset:8704
	ds_load_u8 v175, v22 offset:11136
	ds_load_u8 v176, v22 offset:10880
	ds_load_u8 v177, v22 offset:10624
	ds_load_u8 v178, v22 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v84, v86, v85, 0xc0c0004
	v_lshl_or_b32 v86, v92, 16, v90
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v89, v168, v94, 0xc0c0004
	ds_load_u8 v94, v5 offset:1952
	ds_load_u8 v168, v5 offset:1920
	ds_load_u8 v183, v5 offset:2016
	ds_load_u8 v184, v5 offset:1984
	ds_load_u8 v185, v22 offset:9088
	ds_load_u8 v186, v22 offset:8832
	ds_load_u8 v187, v22 offset:8576
	ds_load_u8 v188, v22 offset:8320
	v_lshl_or_b32 v85, v84, 16, v83
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v167, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v174, v173, 0xc0c0004
	ds_load_u8 v173, v5 offset:1824
	ds_load_u8 v174, v5 offset:1792
	ds_load_u8 v189, v5 offset:1888
	ds_load_u8 v190, v5 offset:1856
	v_lshl_or_b32 v84, v89, 16, v88
	v_lshl_or_b32 v83, v167, 16, v93
	ds_load_u8 v167, v87
	ds_load_u8 v191, v5 offset:2000
	ds_load_u8 v192, v5 offset:1968
	ds_load_u8 v193, v5 offset:1936
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v168, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[14:21], v[83:86], v[79:82], v[14:21] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v184, v183, 0xc0c0004
	ds_load_u8 v92, v5 offset:1696
	ds_load_u8 v93, v5 offset:1664
	ds_load_u8 v94, v5 offset:1760
	ds_load_u8 v168, v5 offset:1728
	ds_load_u8 v183, v5 offset:1904
	ds_load_u8 v184, v5 offset:1872
	ds_load_u8 v194, v5 offset:1840
	ds_load_u8 v195, v5 offset:1808
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v140, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v139, v188, v187, 0xc0c0004
	v_lshl_or_b32 v90, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v89, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v173, v190, v189, 0xc0c0004
	ds_load_u8 v174, v5 offset:1568
	ds_load_u8 v189, v5 offset:1536
	ds_load_u8 v190, v5 offset:1632
	ds_load_u8 v196, v5 offset:1600
	v_lshl_or_b32 v103, v140, 16, v139
	v_lshl_or_b32 v89, v173, 16, v89
	ds_load_u8 v173, v5 offset:1776
	ds_load_u8 v197, v5 offset:1744
	ds_load_u8 v198, v5 offset:1712
	ds_load_u8 v199, v5 offset:1680
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v168, v94, 0xc0c0004
	ds_load_u8 v92, v22 offset:15616
	ds_load_u8 v93, v22 offset:15360
	ds_load_u8 v94, v22 offset:16128
	ds_load_u8 v168, v22 offset:15872
	ds_load_u8 v200, v5 offset:1648
	ds_load_u8 v201, v5 offset:1616
	ds_load_u8 v202, v5 offset:1584
	ds_load_u8 v5, v5 offset:1552
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v174, v189, v174, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v189, v196, v190, 0xc0c0004
	ds_load_u8 v190, v22 offset:14592
	ds_load_u8 v196, v22 offset:14336
	ds_load_u8 v203, v22 offset:15104
	ds_load_u8 v204, v22 offset:14848
	ds_load_u8 v205, v22 offset:13568
	ds_load_u8 v206, v22 offset:13312
	ds_load_u8 v207, v22 offset:14080
	ds_load_u8 v208, v22 offset:13824
	ds_load_u8 v209, v22 offset:16256
	ds_load_u8 v210, v22 offset:16000
	ds_load_u8 v211, v22 offset:15744
	ds_load_u8 v212, v22 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v93, v168, v94, 0xc0c0004
	ds_load_u8 v168, v22 offset:12544
	ds_load_u8 v213, v22 offset:12288
	ds_load_u8 v214, v22 offset:13056
	ds_load_u8 v215, v22 offset:12800
	ds_load_u8 v216, v22 offset:15232
	ds_load_u8 v217, v22 offset:14976
	ds_load_u8 v218, v22 offset:14720
	ds_load_u8 v219, v22 offset:14464
	v_lshl_or_b32 v87, v189, 16, v174
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v5, v5, v202, 0xc0c0004
	v_lshl_or_b32 v94, v93, 16, v92
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v190, v196, v190, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v196, v204, v203, 0xc0c0004
	ds_load_u8 v203, v22 offset:14208
	ds_load_u8 v204, v22 offset:13952
	ds_load_u8 v220, v22 offset:13696
	ds_load_u8 v221, v22 offset:13440
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v206, v208, v207, 0xc0c0004
	v_lshl_or_b32 v93, v196, 16, v190
	ds_load_u8 v174, v22 offset:13184
	ds_load_u8 v189, v22 offset:12928
	ds_load_u8 v190, v22 offset:12672
	ds_load_u8 v196, v22 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v213, v168, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v168, v215, v214, 0xc0c0004
	v_lshl_or_b32 v92, v206, 16, v205
	v_perm_b32 v139, v212, v211, 0xc0c0004
	v_perm_b32 v140, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v219, v218, 0xc0c0004
	v_lshl_or_b32 v91, v168, 16, v22
	v_wmma_i32_16x16x16_iu8 v[22:29], v[95:98], v[30:33], v[6:13] neg_lo:[1,1,0]
	v_perm_b32 v30, v172, v171, 0xc0c0004
	v_perm_b32 v31, v170, v169, 0xc0c0004
	v_perm_b32 v32, v178, v177, 0xc0c0004
	v_perm_b32 v33, v176, v175, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[22:29], v[99:102], v[34:37], v[22:29] neg_lo:[1,1,0]
	v_perm_b32 v34, v117, v116, 0xc0c0004
	v_lshl_or_b32 v106, v31, 16, v30
	v_perm_b32 v30, v109, v108, 0xc0c0004
	v_lshl_or_b32 v105, v33, 16, v32
	v_perm_b32 v31, v107, v138, 0xc0c0004
	v_perm_b32 v32, v113, v112, 0xc0c0004
	v_perm_b32 v33, v111, v110, 0xc0c0004
	v_perm_b32 v35, v115, v114, 0xc0c0004
	v_perm_b32 v36, v121, v120, 0xc0c0004
	v_perm_b32 v37, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[22:29], v[103:106], v[79:82], v[22:29] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v31, 16, v30
	v_lshl_or_b32 v81, v33, 16, v32
	v_lshl_or_b32 v80, v35, 16, v34
	v_lshl_or_b32 v79, v37, 16, v36
	v_perm_b32 v108, v125, v124, 0xc0c0004
	v_perm_b32 v109, v123, v167, 0xc0c0004
	v_perm_b32 v110, v129, v128, 0xc0c0004
	v_perm_b32 v111, v127, v126, 0xc0c0004
	v_perm_b32 v112, v133, v132, 0xc0c0004
	v_perm_b32 v113, v131, v130, 0xc0c0004
	v_perm_b32 v114, v137, v136, 0xc0c0004
	v_perm_b32 v115, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[14:21], v[91:94], v[87:90], v[14:21] neg_lo:[1,1,0]
	v_perm_b32 v142, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v221, v220, 0xc0c0004
	v_perm_b32 v144, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v196, v190, 0xc0c0004
	v_perm_b32 v107, v189, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[30:37], v[71:74], v[79:82], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v109, 16, v108
	v_lshl_or_b32 v73, v111, 16, v110
	v_lshl_or_b32 v72, v113, 16, v112
	v_lshl_or_b32 v71, v115, 16, v114
	v_perm_b32 v108, v154, v153, 0xc0c0004
	v_perm_b32 v109, v152, v151, 0xc0c0004
	v_perm_b32 v110, v158, v157, 0xc0c0004
	v_perm_b32 v111, v156, v155, 0xc0c0004
	v_perm_b32 v112, v162, v161, 0xc0c0004
	v_perm_b32 v113, v160, v159, 0xc0c0004
	v_perm_b32 v114, v166, v165, 0xc0c0004
	v_perm_b32 v115, v164, v163, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[95:98], v[79:82], v[6:13] neg_lo:[1,1,0]
	v_perm_b32 v81, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[30:37], v[75:78], v[71:74], v[30:37] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v109, 16, v108
	v_lshl_or_b32 v77, v111, 16, v110
	v_lshl_or_b32 v76, v113, 16, v112
	v_lshl_or_b32 v75, v115, 16, v114
	v_lshl_or_b32 v110, v140, 16, v139
	v_lshl_or_b32 v109, v142, 16, v141
	v_lshl_or_b32 v108, v144, 16, v143
	v_lshl_or_b32 v107, v107, 16, v145
	v_wmma_i32_16x16x16_iu8 v[6:13], v[99:102], v[71:74], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v81, 16, v5
	v_cvt_f32_i32_e32 v5, v15
	v_wmma_i32_16x16x16_iu8 v[30:37], v[83:86], v[75:78], v[30:37] neg_lo:[1,1,0]
	v_perm_b32 v83, v193, v192, 0xc0c0004
	v_perm_b32 v84, v191, v122, 0xc0c0004
	v_perm_b32 v85, v195, v194, 0xc0c0004
	v_perm_b32 v86, v184, v183, 0xc0c0004
	v_perm_b32 v79, v199, v198, 0xc0c0004
	v_perm_b32 v80, v197, v173, 0xc0c0004
	v_cvt_f32_i32_e32 v15, v16
	v_wmma_i32_16x16x16_iu8 v[22:29], v[107:110], v[87:90], v[22:29] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v70, v70, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v17
	v_lshl_or_b32 v74, v84, 16, v83
	v_lshl_or_b32 v73, v86, 16, v85
	v_lshl_or_b32 v72, v80, 16, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v16, v19
	v_cvt_f32_i32_e32 v17, v20
	v_cvt_f32_i32_e32 v18, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v68, v68, v5 :: v_dual_add_f32 v67, v67, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v22
	v_wmma_i32_16x16x16_iu8 v[6:13], v[103:106], v[75:78], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[91:94], v[71:74], v[30:37] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v66, v66, v16 :: v_dual_add_f32 v65, v65, v17
	v_dual_add_f32 v63, v63, v18 :: v_dual_add_f32 v62, v62, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v23
	v_cvt_f32_i32_e32 v17, v25
	v_cvt_f32_i32_e32 v18, v26
	v_cvt_f32_i32_e32 v5, v27
	v_wmma_i32_16x16x16_iu8 v[6:13], v[107:110], v[71:74], v[6:13] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v61, v61, v15
	v_dual_add_f32 v59, v59, v17 :: v_dual_add_f32 v58, v58, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v18, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v57, v57, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v60, v60, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v16, v29
	v_cvt_f32_i32_e32 v17, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v53, v53, v18 :: v_dual_add_f32 v52, v52, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v37
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v56, v56, v15 :: v_dual_add_f32 v55, v55, v16
	v_add_f32_e32 v54, v54, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v33
	v_cvt_f32_i32_e32 v16, v34
	v_cvt_f32_i32_e32 v17, v35
	v_cvt_f32_i32_e32 v18, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v47, v47, v5 :: v_dual_add_f32 v46, v46, v6
	v_dual_add_f32 v45, v45, v7 :: v_dual_add_f32 v44, v44, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v10
	v_cvt_f32_i32_e32 v6, v11
	v_cvt_f32_i32_e32 v7, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v8, v13
	v_cvt_f32_i32_e32 v9, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v51, v51, v15 :: v_dual_add_f32 v50, v50, v16
	v_dual_add_f32 v49, v49, v17 :: v_dual_add_f32 v48, v48, v18
	v_dual_add_f32 v42, v42, v5 :: v_dual_add_f32 v41, v41, v6
	v_dual_add_f32 v40, v40, v7 :: v_dual_add_f32 v39, v39, v8
	v_add_f32_e32 v64, v64, v9
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
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
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s33, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v36, s11 :: v_dual_add_nc_u32 v5, s33, v38
	ds_load_u8 v6, v5 offset:416
	ds_load_u8 v7, v5 offset:384
	ds_load_u8 v8, v5 offset:480
	ds_load_u8 v9, v5 offset:448
	ds_load_u8 v10, v5 offset:288
	ds_load_u8 v11, v5 offset:256
	ds_load_u8 v12, v5 offset:352
	ds_load_u8 v13, v5 offset:320
	ds_load_u8 v14, v5 offset:160
	ds_load_u8 v15, v5 offset:128
	ds_load_u8 v16, v5 offset:224
	ds_load_u8 v17, v5 offset:192
	ds_load_u8 v18, v5 offset:32
	ds_load_u8 v19, v5
	ds_load_u8 v20, v5 offset:96
	ds_load_u8 v21, v5 offset:64
	ds_load_u8 v26, v5 offset:464
	ds_load_u8 v27, v5 offset:432
	ds_load_u8 v28, v5 offset:400
	ds_load_u8 v37, v5 offset:368
	v_dual_mov_b32 v35, s10 :: v_dual_add_nc_u32 v4, s31, v4
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	ds_load_u8 v71, v5 offset:800
	ds_load_u8 v72, v5 offset:768
	ds_load_u8 v73, v5 offset:864
	ds_load_u8 v74, v5 offset:832
	ds_load_u8 v75, v5 offset:672
	ds_load_u8 v76, v5 offset:640
	ds_load_u8 v77, v5 offset:736
	ds_load_u8 v78, v5 offset:704
	ds_load_u8 v118, v5 offset:976
	ds_load_u8 v119, v5 offset:944
	ds_load_u8 v120, v5 offset:912
	ds_load_u8 v121, v5 offset:880
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v8, v11, v10, 0xc0c0004
	ds_load_u8 v90, v5 offset:1504
	ds_load_u8 v91, v5 offset:1472
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v9, v13, v12, 0xc0c0004
	ds_load_u8 v10, v4 offset:3328
	ds_load_u8 v11, v4 offset:3072
	ds_load_u8 v12, v4 offset:3840
	ds_load_u8 v13, v4 offset:3584
	v_lshl_or_b32 v25, v7, 16, v6
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v6, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v7, v17, v16, 0xc0c0004
	v_lshl_or_b32 v24, v9, 16, v8
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v8, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v9, v21, v20, 0xc0c0004
	v_lshl_or_b32 v23, v7, 16, v6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v72, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v99, v4 offset:2944
	ds_load_u8 v100, v4 offset:2688
	ds_load_u8 v101, v4 offset:2432
	ds_load_u8 v102, v4 offset:2176
	v_lshl_or_b32 v22, v9, 16, v8
	ds_load_u8 v6, v4 offset:2304
	ds_load_u8 v7, v4 offset:2048
	ds_load_u8 v8, v4 offset:2816
	ds_load_u8 v9, v4 offset:2560
	ds_load_u8 v14, v4 offset:1280
	ds_load_u8 v15, v4 offset:1024
	ds_load_u8 v16, v4 offset:1792
	ds_load_u8 v17, v4 offset:1536
	ds_load_u8 v18, v4 offset:256
	ds_load_u8 v19, v4
	ds_load_u8 v20, v4 offset:768
	ds_load_u8 v21, v4 offset:512
	ds_load_u8 v95, v4 offset:3968
	ds_load_u8 v96, v4 offset:3712
	ds_load_u8 v97, v4 offset:3456
	ds_load_u8 v98, v4 offset:3200
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	ds_load_u8 v77, v4 offset:7424
	ds_load_u8 v78, v4 offset:7168
	v_lshl_or_b32 v73, v72, 16, v71
	ds_load_u8 v103, v4 offset:1920
	ds_load_u8 v104, v4 offset:1664
	ds_load_u8 v105, v4 offset:1408
	ds_load_u8 v106, v4 offset:1152
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v72, v76, 16, v75
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v11, v13, v12, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v5 offset:1120
	ds_load_u8 v94, v5 offset:1088
	ds_load_u8 v152, v5 offset:1392
	ds_load_u8 v153, v5 offset:1360
	ds_load_u8 v154, v5 offset:1328
	ds_load_u8 v155, v5 offset:1296
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v8, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v9, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v12, v19, v18, 0xc0c0004
	ds_load_u8 v18, v5 offset:928
	ds_load_u8 v19, v5 offset:896
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v13, v21, v20, 0xc0c0004
	ds_load_u8 v20, v5 offset:992
	ds_load_u8 v21, v5 offset:960
	ds_load_u8 v14, v4 offset:896
	ds_load_u8 v15, v4 offset:640
	ds_load_u8 v16, v4 offset:384
	ds_load_u8 v17, v4 offset:128
	ds_load_u8 v144, v4 offset:4992
	ds_load_u8 v145, v4 offset:4736
	ds_load_u8 v146, v4 offset:4480
	ds_load_u8 v147, v4 offset:4224
	v_dual_mov_b32 v34, s9 :: v_dual_add_nc_u32 v3, s33, v3
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v4 offset:4352
	ds_load_u8 v87, v4 offset:4096
	ds_load_u8 v107, v5 offset:336
	ds_load_u8 v108, v5 offset:304
	ds_load_u8 v109, v5 offset:272
	ds_load_u8 v110, v5 offset:240
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v91, v94, v91, 0xc0c0004
	ds_load_u8 v111, v5 offset:208
	ds_load_u8 v112, v5 offset:176
	ds_load_u8 v113, v5 offset:144
	ds_load_u8 v114, v5 offset:112
	ds_load_u8 v115, v5 offset:80
	ds_load_u8 v116, v5 offset:48
	ds_load_u8 v117, v5 offset:16
	ds_load_u8 v3, v3
	ds_load_u8 v126, v5 offset:720
	ds_load_u8 v127, v5 offset:688
	ds_load_u8 v128, v5 offset:656
	ds_load_u8 v129, v5 offset:624
	ds_load_u8 v130, v5 offset:592
	ds_load_u8 v131, v5 offset:560
	ds_load_u8 v132, v5 offset:528
	ds_load_u8 v133, v5 offset:496
	ds_load_u8 v156, v5 offset:1264
	ds_load_u8 v157, v5 offset:1232
	ds_load_u8 v158, v5 offset:1200
	ds_load_u8 v159, v5 offset:1168
	ds_load_u8 v160, v5 offset:1136
	ds_load_u8 v161, v5 offset:1104
	ds_load_u8 v162, v5 offset:1072
	ds_load_u8 v163, v5 offset:1040
	ds_load_u8 v176, v4 offset:10112
	ds_load_u8 v177, v4 offset:9856
	ds_load_u8 v178, v4 offset:9600
	ds_load_u8 v179, v4 offset:9344
	v_lshl_or_b32 v82, v11, 16, v10
	v_lshl_or_b32 v81, v7, 16, v6
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v5 offset:544
	ds_load_u8 v83, v5 offset:512
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v5 offset:608
	ds_load_u8 v84, v5 offset:576
	ds_load_u8 v122, v5 offset:848
	ds_load_u8 v123, v5 offset:816
	ds_load_u8 v124, v5 offset:784
	ds_load_u8 v125, v5 offset:752
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_lshl_or_b32 v80, v9, 16, v8
	v_lshl_or_b32 v74, v20, 16, v18
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v78, v87, v78, 0xc0c0004
	ds_load_u8 v87, v5 offset:1440
	ds_load_u8 v89, v5 offset:1408
	v_lshl_or_b32 v79, v13, 16, v12
	v_dual_mov_b32 v33, s8 :: v_dual_mov_b32 v32, s7
	v_dual_mov_b32 v31, s6 :: v_dual_mov_b32 v30, s5
	v_mov_b32_e32 v29, s4
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v26, v26, v133, 0xc0c0004
	v_perm_b32 v28, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v84, v21, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[79:82], v[22:25], v[29:36] neg_lo:[1,1,0]
	v_perm_b32 v19, v83, v19, 0xc0c0004
	ds_load_u8 v83, v4 offset:7936
	ds_load_u8 v84, v4 offset:7680
	v_perm_b32 v37, v107, v37, 0xc0c0004
	v_lshl_or_b32 v71, v21, 16, v19
	ds_load_u8 v18, v4 offset:6400
	ds_load_u8 v19, v4 offset:6144
	ds_load_u8 v20, v4 offset:6912
	ds_load_u8 v21, v4 offset:6656
	ds_load_u8 v75, v4 offset:5376
	ds_load_u8 v76, v4 offset:5120
	ds_load_u8 v85, v4 offset:5888
	ds_load_u8 v86, v4 offset:5632
	ds_load_u8 v134, v4 offset:8064
	ds_load_u8 v135, v4 offset:7808
	ds_load_u8 v136, v4 offset:7552
	ds_load_u8 v137, v4 offset:7296
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v89, v87, 0xc0c0004
	ds_load_u8 v89, v5 offset:1056
	ds_load_u8 v93, v5 offset:1024
	v_lshl_or_b32 v109, v37, 16, v28
	v_perm_b32 v28, v122, v121, 0xc0c0004
	v_perm_b32 v37, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v21, v20, 0xc0c0004
	ds_load_u8 v20, v4 offset:6016
	ds_load_u8 v21, v4 offset:5760
	ds_load_u8 v142, v4 offset:5504
	ds_load_u8 v143, v4 offset:5248
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v4 offset:4864
	ds_load_u8 v88, v4 offset:4608
	ds_load_u8 v138, v4 offset:7040
	ds_load_u8 v139, v4 offset:6784
	ds_load_u8 v140, v4 offset:6528
	ds_load_u8 v141, v4 offset:6272
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v76, v86, v85, 0xc0c0004
	v_lshl_or_b32 v85, v19, 16, v18
	v_lshl_or_b32 v86, v83, 16, v77
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v88, v84, 0xc0c0004
	v_lshl_or_b32 v84, v76, 16, v75
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v83, v88, 16, v78
	ds_load_u8 v18, v5 offset:1312
	ds_load_u8 v19, v5 offset:1280
	ds_load_u8 v75, v5 offset:1376
	ds_load_u8 v76, v5 offset:1344
	ds_load_u8 v77, v5 offset:1184
	ds_load_u8 v78, v5 offset:1152
	ds_load_u8 v88, v5 offset:1248
	ds_load_u8 v92, v5 offset:1216
	ds_load_u8 v148, v5 offset:1520
	ds_load_u8 v149, v5 offset:1488
	ds_load_u8 v150, v5 offset:1456
	ds_load_u8 v151, v5 offset:1424
	v_wmma_i32_16x16x16_iu8 v[6:13], v[83:86], v[71:74], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v78, v90, 16, v87
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v92, v88, 0xc0c0004
	v_perm_b32 v88, v93, v89, 0xc0c0004
	ds_load_u8 v89, v4 offset:11520
	ds_load_u8 v92, v4 offset:11264
	ds_load_u8 v93, v4 offset:12032
	ds_load_u8 v164, v4 offset:11776
	v_lshl_or_b32 v77, v19, 16, v18
	v_lshl_or_b32 v76, v76, 16, v75
	v_lshl_or_b32 v75, v91, 16, v88
	ds_load_u8 v18, v4 offset:10496
	ds_load_u8 v19, v4 offset:10240
	ds_load_u8 v87, v4 offset:11008
	ds_load_u8 v88, v4 offset:10752
	ds_load_u8 v90, v4 offset:9472
	ds_load_u8 v91, v4 offset:9216
	ds_load_u8 v94, v4 offset:9984
	ds_load_u8 v165, v4 offset:9728
	ds_load_u8 v166, v4 offset:12160
	ds_load_u8 v167, v4 offset:11904
	ds_load_u8 v168, v4 offset:11648
	ds_load_u8 v169, v4 offset:11392
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v88, v87, 0xc0c0004
	v_perm_b32 v89, v92, v89, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v91, v90, 0xc0c0004
	v_perm_b32 v92, v164, v93, 0xc0c0004
	ds_load_u8 v93, v4 offset:8448
	ds_load_u8 v164, v4 offset:8192
	ds_load_u8 v170, v4 offset:8960
	ds_load_u8 v171, v4 offset:8704
	ds_load_u8 v172, v4 offset:11136
	ds_load_u8 v173, v4 offset:10880
	ds_load_u8 v174, v4 offset:10624
	ds_load_u8 v175, v4 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v165, v94, 0xc0c0004
	ds_load_u8 v91, v5 offset:1952
	ds_load_u8 v94, v5 offset:1920
	ds_load_u8 v165, v5 offset:2016
	ds_load_u8 v180, v5 offset:1984
	ds_load_u8 v181, v4 offset:9088
	ds_load_u8 v182, v4 offset:8832
	ds_load_u8 v183, v4 offset:8576
	ds_load_u8 v184, v4 offset:8320
	v_lshl_or_b32 v90, v92, 16, v89
	v_lshl_or_b32 v89, v19, 16, v18
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v164, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v164, v171, v170, 0xc0c0004
	ds_load_u8 v170, v5 offset:1824
	ds_load_u8 v171, v5 offset:1792
	ds_load_u8 v185, v5 offset:1888
	ds_load_u8 v186, v5 offset:1856
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v18, v94, v91, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v180, v165, 0xc0c0004
	ds_load_u8 v91, v5 offset:1696
	ds_load_u8 v92, v5 offset:1664
	ds_load_u8 v165, v5 offset:1760
	ds_load_u8 v180, v5 offset:1728
	ds_load_u8 v189, v5 offset:1904
	ds_load_u8 v190, v5 offset:1872
	ds_load_u8 v191, v5 offset:1840
	ds_load_u8 v192, v5 offset:1808
	v_lshl_or_b32 v87, v164, 16, v93
	ds_load_u8 v1, v1
	ds_load_u8 v164, v5 offset:2000
	ds_load_u8 v187, v5 offset:1968
	ds_load_u8 v188, v5 offset:1936
	v_lshl_or_b32 v94, v19, 16, v18
	v_wmma_i32_16x16x16_iu8 v[6:13], v[87:90], v[75:78], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v18, v92, v91, 0xc0c0004
	v_perm_b32 v93, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v180, v165, 0xc0c0004
	v_perm_b32 v170, v186, v185, 0xc0c0004
	ds_load_u8 v171, v5 offset:1568
	ds_load_u8 v185, v5 offset:1536
	ds_load_u8 v186, v5 offset:1632
	ds_load_u8 v193, v5 offset:1600
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v118, v1, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v164, v3, 0xc0c0004
	v_lshl_or_b32 v92, v19, 16, v18
	v_lshl_or_b32 v93, v170, 16, v93
	ds_load_u8 v170, v5 offset:1776
	ds_load_u8 v194, v5 offset:1744
	ds_load_u8 v195, v5 offset:1712
	ds_load_u8 v196, v5 offset:1680
	ds_load_u8 v165, v4 offset:15616
	ds_load_u8 v180, v4 offset:15360
	ds_load_u8 v197, v4 offset:16128
	ds_load_u8 v198, v4 offset:15872
	ds_load_u8 v199, v5 offset:1648
	ds_load_u8 v200, v5 offset:1616
	ds_load_u8 v201, v5 offset:1584
	ds_load_u8 v5, v5 offset:1552
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v185, v171, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v171, v193, v186, 0xc0c0004
	ds_load_u8 v185, v4 offset:14592
	ds_load_u8 v186, v4 offset:14336
	ds_load_u8 v193, v4 offset:15104
	ds_load_u8 v202, v4 offset:14848
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v165, v180, v165, 0xc0c0004
	ds_load_u8 v180, v4 offset:12544
	ds_load_u8 v208, v4 offset:12288
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	v_lshl_or_b32 v91, v171, 16, v91
	ds_load_u8 v18, v4 offset:13568
	ds_load_u8 v19, v4 offset:13312
	ds_load_u8 v171, v4 offset:14080
	ds_load_u8 v203, v4 offset:13824
	ds_load_u8 v204, v4 offset:16256
	ds_load_u8 v205, v4 offset:16000
	ds_load_u8 v206, v4 offset:15744
	ds_load_u8 v207, v4 offset:15488
	ds_load_u8 v198, v4 offset:15232
	ds_load_u8 v209, v4 offset:14976
	ds_load_u8 v210, v4 offset:14720
	ds_load_u8 v211, v4 offset:14464
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v5, v201, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v216, v19, v18, 0xc0c0004
	v_perm_b32 v18, v98, v97, 0xc0c0004
	v_perm_b32 v19, v96, v95, 0xc0c0004
	v_perm_b32 v95, v102, v101, 0xc0c0004
	v_perm_b32 v96, v100, v99, 0xc0c0004
	v_perm_b32 v99, v106, v105, 0xc0c0004
	v_perm_b32 v100, v104, v103, 0xc0c0004
	v_perm_b32 v186, v202, v193, 0xc0c0004
	ds_load_u8 v193, v4 offset:13056
	ds_load_u8 v202, v4 offset:12800
	ds_load_u8 v212, v4 offset:14208
	ds_load_u8 v213, v4 offset:13952
	ds_load_u8 v214, v4 offset:13696
	ds_load_u8 v215, v4 offset:13440
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v171, v203, v171, 0xc0c0004
	ds_load_u8 v203, v4 offset:13184
	ds_load_u8 v217, v4 offset:12928
	ds_load_u8 v218, v4 offset:12672
	ds_load_u8 v4, v4 offset:12416
	v_lshl_or_b32 v98, v19, 16, v18
	v_lshl_or_b32 v97, v96, 16, v95
	v_lshl_or_b32 v96, v100, 16, v99
	v_lshl_or_b32 v95, v14, 16, v16
	v_perm_b32 v99, v137, v136, 0xc0c0004
	v_perm_b32 v100, v135, v134, 0xc0c0004
	v_perm_b32 v101, v141, v140, 0xc0c0004
	v_perm_b32 v102, v139, v138, 0xc0c0004
	v_perm_b32 v104, v143, v142, 0xc0c0004
	v_perm_b32 v105, v21, v20, 0xc0c0004
	v_perm_b32 v106, v147, v146, 0xc0c0004
	v_perm_b32 v134, v145, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[14:21], v[95:98], v[22:25], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v25, v100, 16, v99
	v_lshl_or_b32 v24, v102, 16, v101
	v_lshl_or_b32 v23, v105, 16, v104
	v_lshl_or_b32 v22, v134, 16, v106
	v_perm_b32 v99, v169, v168, 0xc0c0004
	v_perm_b32 v100, v167, v166, 0xc0c0004
	v_perm_b32 v101, v175, v174, 0xc0c0004
	v_perm_b32 v104, v173, v172, 0xc0c0004
	v_perm_b32 v105, v179, v178, 0xc0c0004
	v_perm_b32 v106, v177, v176, 0xc0c0004
	v_perm_b32 v134, v184, v183, 0xc0c0004
	v_perm_b32 v135, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[14:21], v[22:25], v[71:74], v[14:21] neg_lo:[1,1,0]
	v_perm_b32 v71, v113, v112, 0xc0c0004
	v_perm_b32 v72, v111, v110, 0xc0c0004
	v_perm_b32 v73, v117, v116, 0xc0c0004
	v_perm_b32 v74, v115, v114, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	v_lshl_or_b32 v101, v104, 16, v101
	v_lshl_or_b32 v100, v106, 16, v105
	v_lshl_or_b32 v99, v135, 16, v134
	v_lshl_or_b32 v110, v26, 16, v27
	v_lshl_or_b32 v108, v72, 16, v71
	v_lshl_or_b32 v107, v74, 16, v73
	v_perm_b32 v26, v120, v119, 0xc0c0004
	v_perm_b32 v27, v124, v123, 0xc0c0004
	v_perm_b32 v112, v126, v125, 0xc0c0004
	v_perm_b32 v113, v132, v131, 0xc0c0004
	v_perm_b32 v114, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[14:21], v[99:102], v[75:78], v[14:21] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v4, v218, 0xc0c0004
	v_perm_b32 v111, v217, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[107:110], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v1, 16, v26
	v_lshl_or_b32 v81, v28, 16, v27
	v_lshl_or_b32 v80, v112, 16, v37
	v_lshl_or_b32 v79, v114, 16, v113
	v_perm_b32 v1, v151, v150, 0xc0c0004
	v_perm_b32 v26, v149, v148, 0xc0c0004
	v_perm_b32 v27, v155, v154, 0xc0c0004
	v_perm_b32 v28, v153, v152, 0xc0c0004
	v_perm_b32 v37, v159, v158, 0xc0c0004
	v_perm_b32 v112, v157, v156, 0xc0c0004
	v_perm_b32 v113, v163, v162, 0xc0c0004
	v_perm_b32 v114, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[95:98], v[107:110], v[29:36] neg_lo:[1,1,0]
	v_perm_b32 v180, v208, v180, 0xc0c0004
	v_perm_b32 v103, v202, v193, 0xc0c0004
	v_perm_b32 v134, v207, v206, 0xc0c0004
	v_perm_b32 v135, v205, v204, 0xc0c0004
	v_perm_b32 v136, v211, v210, 0xc0c0004
	v_perm_b32 v137, v209, v198, 0xc0c0004
	v_perm_b32 v138, v215, v214, 0xc0c0004
	v_perm_b32 v139, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[83:86], v[79:82], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v26, 16, v1
	v_lshl_or_b32 v85, v28, 16, v27
	v_lshl_or_b32 v84, v112, 16, v37
	v_lshl_or_b32 v83, v114, 16, v113
	v_lshl_or_b32 v111, v111, 16, v4
	v_perm_b32 v1, v188, v187, 0xc0c0004
	v_perm_b32 v4, v192, v191, 0xc0c0004
	v_perm_b32 v26, v190, v189, 0xc0c0004
	v_perm_b32 v27, v196, v195, 0xc0c0004
	v_perm_b32 v28, v194, v170, 0xc0c0004
	v_perm_b32 v37, v200, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[22:25], v[79:82], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v197, 16, v165
	v_lshl_or_b32 v105, v186, 16, v185
	v_lshl_or_b32 v104, v171, 16, v216
	v_lshl_or_b32 v103, v103, 16, v180
	v_lshl_or_b32 v114, v135, 16, v134
	v_lshl_or_b32 v113, v137, 16, v136
	v_lshl_or_b32 v112, v139, 16, v138
	v_wmma_i32_16x16x16_iu8 v[71:78], v[87:90], v[83:86], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v25, v3, 16, v1
	v_lshl_or_b32 v24, v26, 16, v4
	v_lshl_or_b32 v23, v28, 16, v27
	v_lshl_or_b32 v22, v37, 16, v5
	v_wmma_i32_16x16x16_iu8 v[29:36], v[99:102], v[83:86], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[6:13], v[103:106], v[91:94], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[14:21], v[111:114], v[91:94], v[14:21] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[103:106], v[22:25], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[111:114], v[22:25], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	v_cvt_f32_i32_e32 v20, v21
	v_cvt_f32_i32_e32 v21, v71
	v_cvt_f32_i32_e32 v22, v72
	v_cvt_f32_i32_e32 v23, v73
	v_cvt_f32_i32_e32 v24, v74
	v_cvt_f32_i32_e32 v25, v75
	v_cvt_f32_i32_e32 v26, v76
	v_cvt_f32_i32_e32 v27, v77
	v_cvt_f32_i32_e32 v28, v78
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s29, v38
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v3, 1, v1
	.loc	1 300 14 is_stmt 1              ; generate_amdgcn.py:300:14
	v_or_b32_e32 v1, s30, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_bfe_i32 v73, v0, 0, 1
	v_lshl_add_u32 v74, v2, 1, 0
	s_mov_b32 s0, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v4, 32, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v37, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v38, v3, s[4:7], 0 offen
	buffer_load_u16 v71, v4, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v64, v5 :: v_dual_add_f32 v5, v70, v6
	v_dual_add_f32 v6, v69, v7 :: v_dual_add_f32 v7, v68, v8
	v_dual_add_f32 v8, v67, v9 :: v_dual_add_f32 v9, v66, v10
	v_add_f32_e32 v10, v65, v11
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v3, v37, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v11, v63, v12 :: v_dual_add_f32 v12, v62, v13
	v_dual_add_f32 v13, v61, v14 :: v_dual_add_f32 v14, v60, v15
	v_dual_add_f32 v15, v59, v16 :: v_dual_add_f32 v16, v58, v17
	v_dual_add_f32 v17, v57, v18 :: v_dual_add_f32 v18, v56, v19
	v_dual_add_f32 v19, v55, v20 :: v_dual_add_f32 v20, v54, v21
	v_dual_add_f32 v21, v53, v22 :: v_dual_add_f32 v22, v52, v23
	v_dual_add_f32 v23, v51, v24 :: v_dual_add_f32 v24, v50, v25
	v_dual_add_f32 v25, v49, v26 :: v_dual_add_f32 v26, v48, v27
	v_dual_add_f32 v27, v47, v28 :: v_dual_add_f32 v28, v46, v29
	v_dual_add_f32 v29, v45, v30 :: v_dual_add_f32 v30, v44, v31
	v_dual_add_f32 v31, v43, v32 :: v_dual_add_f32 v32, v42, v33
	v_dual_add_f32 v33, v41, v34 :: v_dual_and_b32 v72, 1, v0
	v_dual_add_f32 v34, v40, v35 :: v_dual_add_f32 v35, v39, v36
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v36, 2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v4, s2
	v_cndmask_b32_e64 v53, v53, v21, s2
	v_cndmask_b32_e64 v70, v70, v5, s2
	v_cndmask_b32_e64 v63, v63, v11, s2
	v_cndmask_b32_e64 v62, v62, v12, s2
	v_cndmask_b32_e64 v61, v61, v13, s2
	v_cndmask_b32_e64 v60, v60, v14, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v5, 0x840, v73
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v6, s2
	v_cndmask_b32_e64 v59, v59, v15, s2
	v_cndmask_b32_e64 v55, v55, v19, s2
	v_cndmask_b32_e64 v54, v54, v20, s2
	v_cndmask_b32_e64 v68, v68, v7, s2
	v_cndmask_b32_e64 v67, v67, v8, s2
	v_cndmask_b32_e64 v66, v66, v9, s2
	v_cndmask_b32_e64 v65, v65, v10, s2
	v_cndmask_b32_e64 v41, v41, v33, s2
	v_cndmask_b32_e64 v58, v58, v16, s2
	v_cndmask_b32_e64 v57, v57, v17, s2
	v_cndmask_b32_e64 v56, v56, v18, s2
	v_cndmask_b32_e64 v22, v52, v22, s2
	v_cndmask_b32_e64 v24, v50, v24, s2
	v_cndmask_b32_e64 v26, v48, v26, s2
	v_cndmask_b32_e64 v28, v46, v28, s2
	v_cndmask_b32_e64 v30, v44, v30, s2
	v_cndmask_b32_e64 v32, v42, v32, s2
	v_cndmask_b32_e64 v51, v51, v23, s2
	v_cndmask_b32_e64 v49, v49, v25, s2
	v_cndmask_b32_e64 v45, v45, v29, s2
	v_cndmask_b32_e64 v43, v43, v31, s2
	v_cndmask_b32_e64 v39, v39, v35, s2
	v_cndmask_b32_e64 v47, v47, v27, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v38
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v4, 5, v72
	v_and_b32_e32 v37, 14, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v75, 2, v0
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, s25, v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_add3_u32 v4, 0, v36, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v40, v34, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v37, 1, v4
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v74 offset:512
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v1, 0x3f8, v75
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[7:10], v74 offset:16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v5, v5, v1
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v15, v37, 11, v5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[3:6], v74
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[19:20], 2, v[0:1]
	v_xad_u32 v40, v15, 8, 0
	v_xad_u32 v42, v15, 16, 0
	v_xad_u32 v44, v15, 24, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_co_u32 v33, vcc_lo, s26, v19
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v19, 16, v71
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v46, v15, 32, 0
	v_xad_u32 v48, v15, 40, 0
	v_xad_u32 v50, v15, 48, 0
	v_xad_u32 v52, v15, 56, 0
	v_add_co_ci_u32_e64 v34, null, s27, v20, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v82, v5, v19
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v1, 0, v15
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[15:18], v74 offset:528
	v_dual_mul_f32 v80, v3, v19 :: v_dual_mul_f32 v23, v4, v21
	v_dual_mul_f32 v81, v4, v19 :: v_dual_mul_f32 v20, v3, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v73, v12, v21 :: v_dual_mul_f32 v4, v54, v80
	v_dual_mul_f32 v29, v7, v21 :: v_dual_mul_f32 v90, v13, v19
	v_dual_mul_f32 v84, v7, v19 :: v_dual_mul_f32 v31, v8, v21
	v_mul_f32_e32 v88, v11, v19
	v_mul_f32_e32 v71, v11, v21
	v_mul_f32_e32 v89, v12, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v12, v24, v84
	v_dual_mul_f32 v24, v30, v90 :: v_dual_mul_f32 v85, v8, v19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v25, v5, v21
	v_mul_f32_e32 v35, v9, v21
	v_mul_f32_e32 v74, v13, v21
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v79, v18, v21
	v_mul_f32_e32 v93, v16, v19
	v_dual_mul_f32 v92, v15, v19 :: v_dual_mul_f32 v27, v6, v21
	v_mul_f32_e32 v86, v9, v19
	v_mul_f32_e32 v83, v6, v19
	v_mul_f32_e32 v75, v14, v21
	v_dual_mul_f32 v91, v14, v19 :: v_dual_mul_f32 v76, v15, v21
	v_mul_f32_e32 v94, v17, v19
	v_dual_mul_f32 v95, v18, v19 :: v_dual_mul_f32 v30, v41, v93
	v_mul_f32_e32 v38, v10, v21
	v_dual_mul_f32 v77, v16, v21 :: v_dual_mul_f32 v16, v26, v86
	v_dual_mul_f32 v78, v17, v21 :: v_dual_mul_f32 v87, v10, v19
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v64, v20
	v_dual_mul_f32 v19, v62, v71 :: v_dual_mul_f32 v20, v28, v88
	v_mul_f32_e32 v5, v70, v23
	v_dual_mul_f32 v8, v22, v82 :: v_dual_mul_f32 v21, v61, v73
	v_mul_f32_e32 v22, v45, v89
	v_mul_f32_e32 v14, v49, v85
	v_dual_mul_f32 v6, v53, v81 :: v_dual_mul_f32 v23, v60, v74
	v_dual_mul_f32 v28, v32, v92 :: v_dual_mul_f32 v7, v69, v25
	v_mul_f32_e32 v26, v43, v91
	v_mul_f32_e32 v9, v68, v27
	v_mul_f32_e32 v10, v51, v83
	v_mul_f32_e32 v25, v59, v75
	v_mul_f32_e32 v11, v67, v29
	v_dual_mul_f32 v27, v58, v76 :: v_dual_mul_f32 v32, v36, v94
	v_mul_f32_e32 v36, v39, v95
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v13, v66, v31
	v_mul_f32_e32 v15, v65, v35
	v_mul_f32_e32 v17, v63, v38
	v_mul_f32_e32 v29, v57, v77
	v_mul_f32_e32 v31, v56, v78
	v_mul_f32_e32 v35, v55, v79
	v_mul_f32_e32 v18, v47, v87
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v1, v[3:4], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v40, v[5:6], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v42, v[7:8], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v44, v[9:10], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v46, v[11:12], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v48, v[13:14], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v50, v[15:16], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v52, v[17:18], v[35:36] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_lshlrev_b32_e32 v1, 3, v2
	v_lshlrev_b32_e32 v2, 2, v37
	v_lshlrev_b32_e32 v3, 6, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v1, v1, v3, v2
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, 0x840, v1, 0
	v_xad_u32 v4, 0x1008, v1, 0
	v_xad_u32 v5, 0x1848, v1, 0
	v_xad_u32 v6, 0x2010, v1, 0
	v_xad_u32 v7, 0x2850, v1, 0
	v_xad_u32 v8, 0x3018, v1, 0
	v_xad_u32 v9, 0x3858, v1, 0
	ds_load_b64 v[31:32], v2
	ds_load_b64 v[29:30], v3
	ds_load_b64 v[27:28], v4
	ds_load_b64 v[25:26], v5
	ds_load_b64 v[23:24], v6
	ds_load_b64 v[21:22], v7
	ds_load_b64 v[19:20], v8
	ds_load_b64 v[17:18], v9
	v_xad_u32 v2, 0x4020, v1, 0
	v_xad_u32 v3, 0x4860, v1, 0
	v_xad_u32 v4, 0x5028, v1, 0
	v_xad_u32 v5, 0x5868, v1, 0
	v_xad_u32 v6, 0x6030, v1, 0
	v_xad_u32 v35, 0x6870, v1, 0
	v_xad_u32 v37, 0x7038, v1, 0
	v_xad_u32 v1, 0x7878, v1, 0
	ds_load_b64 v[15:16], v2
	ds_load_b64 v[13:14], v3
	ds_load_b64 v[11:12], v4
	ds_load_b64 v[9:10], v5
	ds_load_b64 v[7:8], v6
	ds_load_b64 v[5:6], v35
	ds_load_b64 v[3:4], v37
	ds_load_b64 v[1:2], v1
.LBB0_12:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v35, v36, v31
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s25, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s26, v33
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_14:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v31, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v31, v36
	v_mov_b32_e32 v36, v31
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 1, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s26, v33
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_16:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v35, v36, v27
	global_atomic_cmpswap_b32 v29, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v29, v36
	v_mov_b32_e32 v36, v29
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, s25, 3, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_18:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v25
	global_atomic_cmpswap_b32 v27, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v27, v36
	v_mov_b32_e32 v36, v27
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 2, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s26, v33
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_20:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v23
	global_atomic_cmpswap_b32 v25, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v25, v36
	v_mov_b32_e32 v36, v25
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 5, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_22:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v21
	global_atomic_cmpswap_b32 v23, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v23, v36
	v_mov_b32_e32 v36, v23
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 6, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_24:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v19
	global_atomic_cmpswap_b32 v21, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v21, v36
	v_mov_b32_e32 v36, v21
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 7, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_26:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v17
	global_atomic_cmpswap_b32 v19, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v19, v36
	v_mov_b32_e32 v36, v19
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 3, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s26, v33
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_28:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v15
	global_atomic_cmpswap_b32 v17, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v17, v36
	v_mov_b32_e32 v36, v17
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 9, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_30:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v13
	global_atomic_cmpswap_b32 v15, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v15, v36
	v_mov_b32_e32 v36, v15
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 10, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_32:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v11
	global_atomic_cmpswap_b32 v13, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v13, v36
	v_mov_b32_e32 v36, v13
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 11, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_34:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v9
	global_atomic_cmpswap_b32 v11, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v11, v36
	v_mov_b32_e32 v36, v11
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 12, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_36:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v7
	global_atomic_cmpswap_b32 v9, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v9, v36
	v_mov_b32_e32 v36, v9
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 13, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_38:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v5
	global_atomic_cmpswap_b32 v7, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v7, v36
	v_mov_b32_e32 v36, v7
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 14, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_40:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v3
	global_atomic_cmpswap_b32 v5, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v36
	v_mov_b32_e32 v36, v5
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 15, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s26, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_42:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v1
	global_atomic_cmpswap_b32 v3, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v36
	v_mov_b32_e32 v36, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s28, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s26, v33
	v_add_co_ci_u32_e64 v34, null, s27, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_44:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v32
	global_atomic_cmpswap_b32 v1, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v36
	v_mov_b32_e32 v36, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[31:32], null, s25, 17, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v32, 31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[31:32], 2, v[31:32]
	v_add_co_u32 v31, vcc_lo, s26, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v32, null, s27, v32, vcc_lo
	global_load_b32 v34, v[31:32], off
.LBB0_46:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v30
	global_atomic_cmpswap_b32 v1, v[31:32], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v34
	v_mov_b32_e32 v34, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[29:30], null, s25, 18, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v30, 31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[29:30], 2, v[29:30]
	v_add_co_u32 v29, vcc_lo, s26, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v30, null, s27, v30, vcc_lo
	global_load_b32 v32, v[29:30], off
.LBB0_48:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v31, v32, v28
	global_atomic_cmpswap_b32 v1, v[29:30], v[31:32], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v32
	v_mov_b32_e32 v32, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[27:28], null, s25, 19, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v28, 31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[27:28], 2, v[27:28]
	v_add_co_u32 v27, vcc_lo, s26, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v28, null, s27, v28, vcc_lo
	global_load_b32 v30, v[27:28], off
.LBB0_50:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v29, v30, v26
	global_atomic_cmpswap_b32 v1, v[27:28], v[29:30], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v30
	v_mov_b32_e32 v30, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[25:26], null, s25, 20, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v26, 31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[25:26], 2, v[25:26]
	v_add_co_u32 v25, vcc_lo, s26, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v26, null, s27, v26, vcc_lo
	global_load_b32 v28, v[25:26], off
.LBB0_52:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v28, v24
	global_atomic_cmpswap_b32 v1, v[25:26], v[27:28], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v28
	v_mov_b32_e32 v28, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[23:24], null, s25, 21, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v24, 31, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[23:24], 2, v[23:24]
	v_add_co_u32 v23, vcc_lo, s26, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v24, null, s27, v24, vcc_lo
	global_load_b32 v26, v[23:24], off
.LBB0_54:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v25, v26, v22
	global_atomic_cmpswap_b32 v1, v[23:24], v[25:26], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v26
	v_mov_b32_e32 v26, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[21:22], null, s25, 22, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v22, 31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[21:22], 2, v[21:22]
	v_add_co_u32 v21, vcc_lo, s26, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v22, null, s27, v22, vcc_lo
	global_load_b32 v24, v[21:22], off
.LBB0_56:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v23, v24, v20
	global_atomic_cmpswap_b32 v1, v[21:22], v[23:24], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v24
	v_mov_b32_e32 v24, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[19:20], null, s25, 23, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v20, 31, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[19:20], 2, v[19:20]
	v_add_co_u32 v19, vcc_lo, s26, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, s27, v20, vcc_lo
	global_load_b32 v22, v[19:20], off
.LBB0_58:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v21, v22, v18
	global_atomic_cmpswap_b32 v1, v[19:20], v[21:22], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v22
	v_mov_b32_e32 v22, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[17:18], null, s25, 24, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s26, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s27, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_60:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v16
	global_atomic_cmpswap_b32 v1, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v20
	v_mov_b32_e32 v20, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[15:16], null, s25, 25, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v16, 31, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[15:16], 2, v[15:16]
	v_add_co_u32 v15, vcc_lo, s26, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, s27, v16, vcc_lo
	global_load_b32 v18, v[15:16], off
.LBB0_62:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v17, v18, v14
	global_atomic_cmpswap_b32 v1, v[15:16], v[17:18], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v18
	v_mov_b32_e32 v18, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[13:14], null, s25, 26, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v13, vcc_lo, s26, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s27, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_64:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v15, v16, v12
	global_atomic_cmpswap_b32 v1, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v16
	v_mov_b32_e32 v16, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[11:12], null, s25, 27, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v12, 31, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	v_add_co_u32 v11, vcc_lo, s26, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, s27, v12, vcc_lo
	global_load_b32 v14, v[11:12], off
.LBB0_66:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v10
	global_atomic_cmpswap_b32 v1, v[11:12], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v14
	v_mov_b32_e32 v14, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[9:10], null, s25, 28, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, vcc_lo, s26, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s27, v10, vcc_lo
	global_load_b32 v12, v[9:10], off
.LBB0_68:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v11, v12, v8
	global_atomic_cmpswap_b32 v1, v[9:10], v[11:12], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v12
	v_mov_b32_e32 v12, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[7:8], null, s25, 29, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v8, 31, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_add_co_u32 v7, vcc_lo, s26, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s27, v8, vcc_lo
	global_load_b32 v10, v[7:8], off
.LBB0_70:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v9, v10, v6
	global_atomic_cmpswap_b32 v1, v[7:8], v[9:10], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v10
	v_mov_b32_e32 v10, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[5:6], null, s25, 30, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v6, 31, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_add_co_u32 v5, vcc_lo, s26, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s27, v6, vcc_lo
	global_load_b32 v8, v[5:6], off
.LBB0_72:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v7, v8, v4
	global_atomic_cmpswap_b32 v1, v[5:6], v[7:8], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v8
	v_mov_b32_e32 v8, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 31, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v4, v[0:1], off
.LBB0_74:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v3, v4, v2
	global_atomic_cmpswap_b32 v3, v[0:1], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_74
; %bb.75:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 222
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21324
; TotalNumSgprs: 41
; NumVgprs: 222
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     222
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
