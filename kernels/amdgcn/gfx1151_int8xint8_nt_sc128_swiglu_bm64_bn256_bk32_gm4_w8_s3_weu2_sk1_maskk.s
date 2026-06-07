	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s30, s[0:1], 0x38
	v_mov_b32_e32 v148, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v5, 1, v148
	v_lshlrev_b32_e32 v1, 4, v5
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v148
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v148
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v127, 15, v148
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 63
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
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[6:7], null, s30, v4, v[1:2]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v8, s30, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s30, 7, v6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v0, s6
	v_readfirstlane_b32 s6, v0
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
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s18, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_readfirstlane_b32 s6, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s39, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s38, s10
	s_mov_b64 s[28:29], s[14:15]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s4, s6, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s17
	s_mul_i32 s18, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s18, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s30, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s7, s4, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s31, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s7, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v10, s31, v1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 8
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s30, 31
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s18, s3
.Ltmp20:
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	s_add_i32 s45, s26, s27
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s26, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s30, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, s31
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s16, s45, s30
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, s4, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s16, s16, s31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s17, s33, s30
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, s16, v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v16, 0x80000000, v10, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, 32, v10
	.loc	1 301 14 is_stmt 1              ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 3, v148
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v24, 0x80000000, v7, s3
	.loc	1 356 39 is_stmt 0              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, 32, v7
	.loc	1 301 14 is_stmt 1              ; generate_amdgcn.py:301:14
	v_and_b32_e32 v0, 24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s31, v0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v8, v8, v0, s17
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v9, s4, v6
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, s16, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v11, s31, v8
	s_mov_b32 s16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s5, 63
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v12, 0x80000000, v9, s3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v20, 0x80000000, v6, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s31, 32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v21, s17, v0
	v_or_b32_e32 v22, s17, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s17, v8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v16, s[36:39], 0 offen
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v21
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s30, v22
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_clause 0x1
	buffer_load_b128 v[20:23], v20, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v24, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[44:45], v11, s[8:11], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v11, 48, v127
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v9, 32, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v6, 32, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 0x778, v3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[46:47], v8, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[28:31], v9, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v10, s[36:39], 0 offen
	buffer_load_b128 v[36:39], v6, s[36:39], 0 offen
	buffer_load_b128 v[40:43], v7, s[36:39], 0 offen
	v_lshlrev_b32_e32 v6, 4, v148
	v_bfe_i32 v7, v148, 3, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v8, v148, 4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v9, 0xf70, v6
	v_and_b32_e32 v7, 0x90, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v10, 0x90, v8
	v_and_b32_e32 v8, 16, v148
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v193, v7, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v194, v10, v3
	v_lshlrev_b32_e32 v7, 5, v148
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v9, 16, v127
	v_or_b32_e32 v10, 32, v127
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v3, 0, v193
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v48, 0, v194
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v3, v[16:19] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(7)
	ds_store_b128 v3, v[20:23] offset:16384
	s_waitcnt vmcnt(6)
	ds_store_b128 v3, v[24:27] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v48, v[44:45] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v3, v[12:15]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v48, v[46:47] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v3, v[28:31] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v3, v[32:35] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v3, v[36:39] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[40:43] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v36, 0x160, v7
	v_and_b32_e32 v3, 4, v148
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v35, 0xe00, v6, v36
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow1207
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v8
	v_or_b32_e32 v8, s33, v127
	v_or_b32_e32 v9, s33, v9
	v_or_b32_e32 v10, s33, v10
	v_or_b32_e32 v11, s33, v11
	v_and_b32_e32 v12, 0xf0, v148
	s_ashr_i32 s34, s18, 7
	v_or_b32_e32 v251, s26, v148
	v_mul_lo_u32 v253, v8, s34
	v_mul_lo_u32 v239, v9, s34
	v_mul_lo_u32 v241, v10, s34
	v_mul_lo_u32 v242, v11, s34
	v_lshlrev_b32_e32 v150, 2, v12
	v_lshlrev_b32_e32 v151, 1, v148
	v_lshlrev_b32_e32 v152, 5, v5
	v_lshlrev_b32_e32 v149, 1, v12
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s35, s27, 1
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v241, off offset:532
	scratch_store_b32 off, v242, off offset:536
	scratch_store_b32 off, v251, off offset:540
	scratch_store_b32 off, v253, off offset:544
	scratch_store_b32 off, v12, off offset:868
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v148, 2, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v7, 0x160, v7
	v_and_b32_e32 v3, 0x90, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v2, s33, v2
	s_lshl_b32 s14, s7, 8
	s_lshl_b32 s15, s6, 8
	v_and_or_b32 v6, 0xe00, v6, v7
	v_add3_u32 v5, s27, s14, v4
	v_mul_lo_u32 v2, s30, v2
	v_or_b32_e32 v4, s14, v4
	v_and_b32_e32 v9, 28, v151
	scratch_store_b32 off, v6, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v6, v6, v3
	v_or_b32_e32 v3, v3, v7
	v_subrev_nc_u32_e32 v5, s15, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:556
	scratch_store_b32 off, v6, off offset:552
	v_xor_b32_e32 v3, 16, v6
	v_add3_u32 v2, v2, v0, 64
	v_mov_b32_e32 v95, 0
	v_or_b32_e32 v0, 64, v0
	v_add3_u32 v10, 0, v150, v152
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:560
	scratch_store_b32 off, v2, off offset:580
	v_subrev_nc_u32_e32 v3, s15, v4
	v_add_nc_u32_e32 v4, 0x80, v5
	v_mul_lo_u32 v5, s30, v5
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v245, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v4, s30, v4
	v_or_b32_e32 v6, 0x80, v3
	v_mul_lo_u32 v3, s30, v3
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v215, 0
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_mul_lo_u32 v6, s30, v6
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v185, 0
	v_add3_u32 v4, v4, v1, 64
	v_add3_u32 v3, v3, v1, 64
	v_mov_b32_e32 v82, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v171, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:564
	scratch_store_b32 off, v7, off offset:656
	scratch_store_b32 off, v3, off offset:576
	v_add3_u32 v4, v5, v1, 64
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v249, 0
	scratch_store_b32 off, v4, off offset:568 ; 4-byte Folded Spill
	v_add3_u32 v4, v6, v1, 64
	v_or_b32_e32 v1, 64, v1
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v167, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:572
	scratch_store_b32 off, v1, off offset:584
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v2, s18 :: v_dual_mov_b32 v3, s19
	v_mov_b32_e32 v6, s22
	v_dual_mov_b32 v4, s20 :: v_dual_mov_b32 v5, s21
	v_mov_b32_e32 v7, s23
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:592
	scratch_store_b128 off, v[4:7], off offset:608
	v_add_nc_u32_e32 v0, v10, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:624
	scratch_store_b32 off, v149, off offset:636
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v0, 0, v149
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v207, 0
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v247, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v198, 0
	v_mov_b32_e32 v197, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v123, 0
	v_mov_b32_e32 v255, 0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v151, off offset:644 ; 4-byte Folded Spill
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v121, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v63, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v143, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v61, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v239, off offset:548
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v148, off offset:632 ; 4-byte Folded Spill
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v39, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v211, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v190, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v168, 0
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v140, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s5, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s14, 1
.Ltmp22:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s1, -2
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v150, off offset:640
	scratch_store_b32 off, v152, off offset:648
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v104, off offset:88
	scratch_store_b32 off, v103, off offset:72
	scratch_store_b32 off, v100, off offset:64
	scratch_store_b32 off, v136, off offset:240
	scratch_store_b32 off, v125, off offset:236
	scratch_store_b32 off, v99, off offset:352
	scratch_store_b32 off, v98, off offset:348
	scratch_store_b32 off, v95, off offset:344
	scratch_store_b32 off, v91, off offset:340
	scratch_store_b32 off, v90, off offset:336
	scratch_store_b32 off, v89, off offset:332
	scratch_store_b32 off, v206, off offset:328
	scratch_store_b32 off, v205, off offset:324
	scratch_store_b32 off, v33, off offset:268
	scratch_store_b32 off, v30, off offset:264
	scratch_store_b32 off, v62, off offset:260
	scratch_store_b32 off, v61, off offset:256
	scratch_store_b32 off, v59, off offset:252
	scratch_store_b32 off, v29, off offset:244
	scratch_store_b32 off, v158, off offset:320
	scratch_store_b32 off, v185, off offset:232
	scratch_store_b32 off, v180, off offset:228
	scratch_store_b32 off, v179, off offset:224
	scratch_store_b32 off, v172, off offset:220
	scratch_store_b32 off, v171, off offset:216
	scratch_store_b32 off, v167, off offset:316
	scratch_store_b32 off, v162, off offset:212
	scratch_store_b32 off, v124, off offset:208
	scratch_store_b32 off, v123, off offset:204
	scratch_store_b32 off, v122, off offset:200
	scratch_store_b32 off, v121, off offset:196
	scratch_store_b32 off, v60, off offset:192
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v102, off offset:188
	scratch_store_b32 off, v101, off offset:184
	scratch_store_b32 off, v97, off offset:180
	scratch_store_b32 off, v96, off offset:176
	scratch_store_b32 off, v58, off offset:172
	scratch_store_b32 off, v41, off offset:168
	scratch_store_b32 off, v57, off offset:164
	scratch_store_b32 off, v54, off offset:160
	scratch_store_b32 off, v39, off offset:156
	scratch_store_b32 off, v53, off offset:152
	scratch_store_b32 off, v52, off offset:148
	scratch_store_b32 off, v51, off offset:144
	scratch_store_b32 off, v50, off offset:140
	scratch_store_b32 off, v26, off offset:136
	scratch_store_b32 off, v46, off offset:132
	scratch_store_b32 off, v38, off offset:128
	scratch_store_b32 off, v42, off offset:124
	scratch_store_b32 off, v40, off offset:120
	scratch_store_b32 off, v37, off offset:116
	scratch_store_b32 off, v34, off offset:112
	scratch_store_b32 off, v25, off offset:108
	scratch_store_b32 off, v24, off offset:104
	scratch_store_b32 off, v49, off offset:100
	scratch_store_b32 off, v28, off offset:96
	scratch_store_b32 off, v20, off offset:92
	scratch_store_b32 off, v19, off offset:84
	scratch_store_b32 off, v45, off offset:80
	scratch_store_b32 off, v27, off offset:76
	scratch_store_b32 off, v16, off offset:68
	scratch_store_b32 off, v15, off offset:60
	scratch_store_b32 off, v23, off offset:56
	scratch_store_b32 off, v14, off offset:52
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v12, off offset:48
	scratch_store_b32 off, v22, off offset:44
	scratch_store_b32 off, v21, off offset:40
	scratch_store_b32 off, v11, off offset:36
	scratch_store_b32 off, v10, off offset:32
	scratch_store_b32 off, v18, off offset:28
	scratch_store_b32 off, v17, off offset:24
	scratch_store_b32 off, v9, off offset:20
	scratch_store_b32 off, v0, off offset:16
	scratch_store_b32 off, v13, off offset:12
	scratch_store_b32 off, v210, off offset:312
	scratch_store_b32 off, v168, off offset:308
	scratch_store_b32 off, v187, off offset:304
	scratch_store_b32 off, v156, off offset:300
	scratch_store_b32 off, v211, off offset:296
	.loc	1 342 17 is_stmt 1              ; generate_amdgcn.py:342:17
	scratch_load_b32 v0, off, off offset:588 ; 4-byte Folded Reload
	s_mov_b32 s17, s31
	s_mov_b32 s1, s16
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s17, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s17, v0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_b64 v[25:26], v0, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 44-byte Folded Reload
	scratch_load_b32 v9, off, off offset:556
	scratch_load_b32 v45, off, off offset:560
	scratch_load_b32 v1, off, off offset:552
	scratch_load_b128 v[222:225], off, off offset:592
	scratch_load_b128 v[226:229], off, off offset:608
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s49, v9
	v_xor_b32_e32 v9, 16, v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v55, s1, v1
	v_add_nc_u32_e32 v57, s1, v45
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s31, 31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v56, s49, v9
	ds_load_b128 v[88:91], v0 offset:512
	ds_load_b128 v[95:98], v56 offset:512
	ds_load_b128 v[118:121], v0 offset:1024
	ds_load_b128 v[122:125], v56 offset:1024
	ds_load_b128 v[218:221], v0 offset:1536
	ds_load_b128 v[106:109], v56 offset:1536
	ds_load_b128 v[27:30], v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[41:44], v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[47:50], v56
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[51:54], v57
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v0, s48, v1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	scratch_load_b32 v1, off, off offset:624 ; 4-byte Folded Reload
	s_add_i32 s1, s31, s1
	s_mov_b32 s49, s47
	s_ashr_i32 s16, s1, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s16, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s16, s34
	s_cselect_b32 s1, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(1) lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[27:30], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[88:91], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[118:121], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[41:44], v[218:221], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[51:54], v[47:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[51:54], v[95:98], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[51:54], v[122:125], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[51:54], v[106:109], v[68:75] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[41:44], v55 offset:4096
	ds_load_b128 v[51:54], v57 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[41:44], v[27:30], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[41:44], v[88:91], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[41:44], v[118:121], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[41:44], v[218:221], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[51:54], v[47:50], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[51:54], v[95:98], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[51:54], v[122:125], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[51:54], v[106:109], v[145:152] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v51, s48, v45
	ds_load_b128 v[41:44], v0
	ds_load_b128 v[203:206], v51
	ds_load_b128 v[231:234], v0 offset:4096
	ds_load_b128 v[236:239], v51 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v10
	s_mov_b32 s48, s44
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[41:44], v[27:30], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[231:234], v[27:30], v[222:229] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[179:186], v[203:206], v[47:50], v[179:186] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[236:239], v[47:50], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[41:44], v[88:91], v[222:229] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[161:168], v[231:234], v[88:91], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[203:206], v[95:98], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[231:234], v[118:121], v[222:229] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[161:168], v[236:239], v[95:98], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[41:44], v[118:121], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[236:239], v[122:125], v[47:54] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[98:105], v[203:206], v[122:125], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[41:44], v[218:221], v[222:229] neg_lo:[1,1,0]
	v_mov_b32_e32 v27, v207
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v180
	v_wmma_i32_16x16x16_iu8 v[118:125], v[203:206], v[106:109], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[205:212], v[231:234], v[218:221], v[222:229] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v219, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v179
	v_add_nc_u32_e32 v17, s27, v251
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v13, v253, s16, 1
	v_add_lshl_u32 v15, v241, s16, 1
	v_add_lshl_u32 v16, v242, s16, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v182
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v17, v17, s18, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v181
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[205:212], v[236:239], v[106:109], v[205:212] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v180, v58
	v_cvt_f32_i32_e32 v179, v57
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v184
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v97, v60
	v_cvt_f32_i32_e32 v58, v132
	v_cvt_f32_i32_e32 v57, v131
	v_cvt_f32_i32_e32 v203, v134
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v183
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v60, v133
	v_cvt_f32_i32_e32 v184, v135
	v_cvt_f32_i32_e32 v182, v137
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v204, v99
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v186
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v186, v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v233, v98
	v_cvt_f32_i32_e32 v218, v101
	v_cvt_f32_i32_e32 v234, v100
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v185
	v_cvt_f32_i32_e32 v231, v103
	v_cvt_f32_i32_e32 v236, v102
	v_cvt_f32_i32_e32 v131, v47
	v_cvt_f32_i32_e32 v181, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v56
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v133, v49
	v_cvt_f32_i32_e32 v135, v52
	v_cvt_f32_i32_e32 v134, v51
	v_cvt_f32_i32_e32 v132, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v62
	v_cvt_f32_i32_e32 v91, v71
	v_cvt_f32_i32_e32 v29, v70
	v_cvt_f32_i32_e32 v95, v73
	v_cvt_f32_i32_e32 v98, v72
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v61
	v_cvt_f32_i32_e32 v99, v75
	v_cvt_f32_i32_e32 v100, v74
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v88, v119
	v_cvt_f32_i32_e32 v72, v118
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v111
	v_cvt_f32_i32_e32 v111, v121
	v_cvt_f32_i32_e32 v73, v120
	v_cvt_f32_i32_e32 v70, v123
	v_cvt_f32_i32_e32 v74, v122
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v110
	v_cvt_f32_i32_e32 v71, v125
	v_cvt_f32_i32_e32 v75, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v220, v20
	v_cvt_f32_i32_e32 v221, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v113
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v223, v22
	v_cvt_f32_i32_e32 v224, v21
	v_cvt_f32_i32_e32 v225, v24
	v_cvt_f32_i32_e32 v226, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v232, v105
	v_cvt_f32_i32_e32 v237, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v104, v146
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v145
	v_cvt_f32_i32_e32 v33, v148
	v_cvt_f32_i32_e32 v30, v147
	v_cvt_f32_i32_e32 v110, v150
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v112, v149
	v_cvt_f32_i32_e32 v113, v152
	v_cvt_f32_i32_e32 v114, v151
	v_cvt_f32_i32_e32 v183, v138
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v185, v55
	v_cvt_f32_i32_e32 v96, v59
	v_cvt_f32_i32_e32 v117, v34
	v_cvt_f32_i32_e32 v115, v35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v116, v36
	v_cvt_f32_i32_e32 v238, v38
	v_cvt_f32_i32_e32 v239, v37
	v_cvt_f32_i32_e32 v62, v40
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v18
	v_cvt_f32_i32_e32 v61, v39
	v_cvt_f32_i32_e32 v59, v172
	v_cvt_f32_i32_e32 v34, v171
	v_cvt_f32_i32_e32 v37, v174
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v154
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v38, v173
	v_cvt_f32_i32_e32 v39, v176
	v_cvt_f32_i32_e32 v40, v175
	v_cvt_f32_i32_e32 v41, v178
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v153
	v_cvt_f32_i32_e32 v153, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v42, v177
	v_cvt_f32_i32_e32 v89, v69
	v_cvt_f32_i32_e32 v90, v68
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v156
	v_cvt_f32_i32_e32 v68, v206
	v_cvt_f32_i32_e32 v35, v205
	v_cvt_f32_i32_e32 v69, v208
	v_cvt_f32_i32_e32 v36, v207
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v155
	v_cvt_f32_i32_e32 v56, v210
	v_cvt_f32_i32_e32 v43, v209
	v_cvt_f32_i32_e32 v55, v212
	v_cvt_f32_i32_e32 v44, v211
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v158
	v_dual_mov_b32 v241, v130 :: v_dual_mov_b32 v106, v143
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v157
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v160
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v159
	v_cvt_f32_i32_e32 v159, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v162
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v161
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v164
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v163
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v166
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v165
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v168
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	scratch_load_b32 v0, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s17, v0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	scratch_load_b32 v0, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v9
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v9, v251, s18, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v1, v9 offset:36864
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v9, s17, v0
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	scratch_load_b32 v0, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s17, v0
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	scratch_load_b32 v0, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s17, v0
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	scratch_load_b32 v0, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s17, v0
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, v0, s16, 1
	s_mov_b32 s16, s46
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	s_clause 0x3
	buffer_load_u16 v101, v13, s[4:7], 0 offen
	buffer_load_u16 v102, v14, s[4:7], 0 offen
	buffer_load_u16 v103, v15, s[4:7], 0 offen
	buffer_load_u16 v136, v16, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[47:50], v9, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v10, s[36:39], 0 offen
	buffer_load_b128 v[118:121], v11, s[36:39], 0 offen
	buffer_load_b128 v[122:125], v12, s[36:39], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v137, v17, s[40:43], 0 offen
	scratch_load_b32 v0, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s14, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[21:24], v0 offset:36864
	ds_load_b128 v[17:20], v0 offset:36880
	ds_load_b128 v[13:16], v0 offset:37376
	ds_load_b128 v[9:12], v0 offset:37392
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s14, s1, 0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_barrier
	ds_store_b32 v1, v137 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[145:148], v0 offset:36864
	ds_load_b128 v[149:152], v0 offset:36880
	ds_load_b128 v[154:157], v0 offset:37376
	ds_load_b128 v[160:163], v0 offset:37392
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s14, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s18, s14, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s46, s18, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v137, s1, v194
	v_mov_b32_e32 v1, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s15, -1
	s_add_i32 s31, s31, 32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s47, s1, 0x8000
	ds_store_b64 v137, v[25:26] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v26, 16, v102
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v25, s46, v193
	ds_store_b128 v25, v[47:50]
	ds_store_b128 v25, v[51:54] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v25, v[118:121] offset:16384
	ds_store_b128 v25, v[122:125] offset:20480
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v138, v19, v26 :: v_dual_lshlrev_b32 v25, 16, v101
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v47, 16, v103
	v_lshlrev_b32_e32 v48, 16, v136
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v54, v21, v26 :: v_dual_mul_f32 v49, v22, v25
	v_mul_f32_e32 v50, v21, v25
	v_mul_f32_e32 v51, v24, v25
	v_mul_f32_e32 v52, v23, v25
	v_mul_f32_e32 v121, v18, v25
	v_mul_f32_e32 v122, v17, v25
	v_dual_mul_f32 v124, v19, v25 :: v_dual_mul_f32 v103, v22, v47
	v_mul_f32_e32 v118, v21, v47
	v_mul_f32_e32 v119, v24, v47
	v_dual_mul_f32 v120, v23, v47 :: v_dual_mul_f32 v21, v21, v48
	v_mul_f32_e32 v53, v22, v26
	v_mul_f32_e32 v101, v24, v26
	v_mul_f32_e32 v102, v23, v26
	v_mul_f32_e32 v22, v22, v48
	v_mul_f32_e32 v24, v24, v48
	v_dual_mul_f32 v23, v23, v48 :: v_dual_mul_f32 v158, v18, v47
	v_dual_mul_f32 v123, v20, v25 :: v_dual_mul_f32 v164, v17, v47
	v_dual_mul_f32 v125, v18, v26 :: v_dual_mul_f32 v166, v19, v47
	v_mul_f32_e32 v136, v17, v26
	v_dual_mul_f32 v137, v20, v26 :: v_dual_mul_f32 v18, v18, v48
	v_dual_mul_f32 v165, v20, v47 :: v_dual_mul_f32 v168, v13, v25
	v_dual_mul_f32 v17, v17, v48 :: v_dual_mul_f32 v172, v15, v25
	v_dual_mul_f32 v20, v20, v48 :: v_dual_mul_f32 v167, v14, v25
	v_dual_mul_f32 v19, v19, v48 :: v_dual_mul_f32 v174, v13, v26
	v_dual_mul_f32 v171, v16, v25 :: v_dual_mul_f32 v176, v15, v26
	v_dual_mul_f32 v173, v14, v26 :: v_dual_mul_f32 v178, v13, v47
	v_dual_mul_f32 v175, v16, v26 :: v_dual_mul_f32 v206, v15, v47
	v_mul_f32_e32 v177, v14, v47
	v_dual_mul_f32 v205, v16, v47 :: v_dual_mul_f32 v14, v14, v48
	v_dual_mul_f32 v13, v13, v48 :: v_dual_mul_f32 v210, v11, v25
	v_mul_f32_e32 v16, v16, v48
	v_dual_mul_f32 v15, v15, v48 :: v_dual_mul_f32 v208, v9, v25
	v_dual_mul_f32 v207, v10, v25 :: v_dual_mul_f32 v212, v9, v26
	v_mul_f32_e32 v209, v12, v25
	v_dual_mul_f32 v251, v10, v26 :: v_dual_mul_f32 v94, v9, v47
	v_dual_mul_f32 v45, v12, v26 :: v_dual_mul_f32 v242, v11, v47
	v_dual_mul_f32 v243, v11, v26 :: v_dual_mul_f32 v128, v12, v47
	v_mov_b32_e32 v67, v83
	v_dual_mov_b32 v83, v82 :: v_dual_mul_f32 v12, v12, v48
	v_dual_mov_b32 v82, v85 :: v_dual_mul_f32 v85, v10, v47
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(8)
	v_mul_f32_e32 v188, v145, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v10, v48
	v_dual_mul_f32 v9, v9, v48 :: v_dual_mul_f32 v126, v146, v25
	v_dual_mul_f32 v11, v11, v48 :: v_dual_mul_f32 v130, v148, v25
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v143, v147, v25 :: v_dual_mul_f32 v144, v148, v26
	v_dual_mul_f32 v127, v146, v26 :: v_dual_mul_f32 v192, v145, v47
	v_dual_mul_f32 v129, v145, v26 :: v_dual_mul_f32 v196, v147, v47
	v_dual_mul_f32 v92, v147, v26 :: v_dual_mul_f32 v189, v146, v47
	v_dual_mul_f32 v195, v148, v47 :: v_dual_mul_f32 v146, v146, v48
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v145, v145, v48 :: v_dual_mul_f32 v76, v150, v25
	v_mul_f32_e32 v148, v148, v48
	v_mul_f32_e32 v147, v147, v48
	v_dual_mul_f32 v77, v149, v25 :: v_dual_mul_f32 v228, v152, v26
	v_dual_mov_b32 v253, v84 :: v_dual_mul_f32 v254, v151, v25
	v_dual_mul_f32 v84, v152, v25 :: v_dual_mul_f32 v191, v150, v26
	v_mul_f32_e32 v222, v149, v47
	v_dual_mul_f32 v229, v149, v26 :: v_dual_mul_f32 v230, v151, v47
	v_dual_mul_f32 v214, v151, v26 :: v_dual_mul_f32 v217, v150, v47
	v_dual_mul_f32 v227, v152, v47 :: v_dual_mul_f32 v150, v150, v48
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v149, v149, v48 :: v_dual_mul_f32 v240, v154, v25
	v_dual_mul_f32 v152, v152, v48 :: v_dual_mul_f32 v235, v155, v25
	v_dual_mul_f32 v151, v151, v48 :: v_dual_mul_f32 v248, v157, v25
	v_dual_mul_f32 v250, v156, v25 :: v_dual_mul_f32 v65, v154, v26
	v_dual_mul_f32 v78, v155, v26 :: v_dual_mul_f32 v109, v154, v47
	v_dual_mul_f32 v87, v157, v26 :: v_dual_mul_f32 v0, v156, v47
	v_dual_mul_f32 v66, v156, v26 :: v_dual_mul_f32 v141, v155, v47
	v_dual_mul_f32 v200, v157, v47 :: v_dual_mul_f32 v155, v155, v48
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v154, v154, v48 :: v_dual_mul_f32 v199, v160, v25
	v_dual_mul_f32 v157, v157, v48 :: v_dual_mul_f32 v142, v163, v25
	v_mul_f32_e32 v156, v156, v48
	v_dual_mul_f32 v46, v161, v25 :: v_dual_mul_f32 v79, v160, v26
	v_mul_f32_e32 v25, v162, v25
	v_dual_mul_f32 v107, v161, v26 :: v_dual_mul_f32 v108, v163, v47
	v_dual_mul_f32 v80, v163, v26 :: v_dual_mul_f32 v93, v160, v47
	v_mul_f32_e32 v26, v162, v26
	v_dual_mul_f32 v86, v161, v47 :: v_dual_mul_f32 v163, v163, v48
	v_dual_mul_f32 v47, v162, v47 :: v_dual_mul_f32 v160, v160, v48
	v_mul_f32_e32 v161, v161, v48
	v_mul_f32_e32 v48, v162, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v162, off, off offset:212
	scratch_load_b32 v187, off, off offset:272
	scratch_load_b32 v211, off, off offset:424
	v_fmac_f32_e32 v27, v207, v97
	v_dual_fmac_f32 v81, v120, v115 :: v_dual_fmac_f32 v64, v13, v105
	v_fmac_f32_e32 v213, v23, v29
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v31, v109, v131
	v_fmac_f32_e32 v169, v160, v43
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s44, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v6, v171, v180
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:228
	scratch_load_b32 v171, off, off offset:216
	v_fmac_f32_e32 v140, v11, v114
	v_fmac_f32_e32 v244, v176, v60
	scratch_load_b32 v60, off, off offset:192 ; 4-byte Folded Reload
	v_fmac_f32_e32 v216, v206, v38
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v206, off, off offset:328
	scratch_load_b32 v38, off, off offset:128
	scratch_load_b32 v13, off, off offset:12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v32, v141, v159
	v_fmac_f32_e32 v190, v161, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v162, v102, v221
	scratch_load_b32 v102, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v187, v50, v211
	scratch_store_b32 off, v187, off offset:272 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v50, off, off offset:140
	scratch_load_b32 v187, off, off offset:276
	scratch_load_b32 v211, off, off offset:420
	v_fmac_f32_e32 v249, v125, v223
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v171, v54, v219 :: v_dual_fmac_f32 v38, v205, v37
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v50, v178, v34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v205, off, off offset:324
	scratch_load_b32 v37, off, off offset:116
	scratch_load_b32 v34, off, off offset:112
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v187, v49, v211
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v139, v48, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_store_b32 off, v187, off offset:276 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:280
	scratch_load_b32 v187, off, off offset:432
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v37, v85, v39
	v_dual_mov_b32 v85, v82 :: v_dual_mov_b32 v82, v83
	scratch_load_b32 v39, off, off offset:156 ; 4-byte Folded Reload
	v_fmac_f32_e32 v60, v175, v203
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v34, v94, v40 :: v_dual_fmac_f32 v49, v52, v187
	scratch_store_b32 off, v49, off offset:280 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v52, off, off offset:148
	scratch_load_b32 v49, off, off offset:284
	scratch_load_b32 v187, off, off offset:428
	v_fmac_f32_e32 v247, v136, v224
	scratch_load_b32 v136, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v52, v166, v61
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:256
	scratch_load_b32 v11, off, off offset:36
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v49, v51, v187
	v_fmac_f32_e32 v102, v45, v183
	scratch_load_b32 v45, off, off offset:80 ; 4-byte Folded Reload
	scratch_store_b32 off, v49, off offset:284 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v51, off, off offset:144
	scratch_load_b32 v49, off, off offset:248
	scratch_load_b32 v187, off, off offset:440
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v61, v195, v218
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v11, v152, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v51, v177, v59
	scratch_load_b32 v59, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v49, v122, v187
	scratch_store_b32 off, v49, off offset:248 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v122, off, off offset:200
	scratch_load_b32 v49, off, off offset:8
	scratch_load_b32 v187, off, off offset:436
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v122, v173, v58
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v49, v121, v187
	scratch_store_b32 off, v49, off offset:8 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v121, off, off offset:196
	scratch_load_b32 v49, off, off offset:288
	scratch_load_b32 v187, off, off offset:448
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v121, v174, v57
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:172
	scratch_load_b32 v57, off, off offset:164
	v_fmac_f32_e32 v5, v172, v179
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:224
	scratch_load_b32 v172, off, off offset:220
	v_mov_b32_e32 v207, v27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v97, off, off offset:180
	scratch_load_b32 v27, off, off offset:492
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v49, v124, v187
	scratch_store_b32 off, v49, off offset:288 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:292
	scratch_load_b32 v124, off, off offset:444
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v58, v119, v116
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v97, v103, v117
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v179, v210, v27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v210, off, off offset:312
	scratch_load_b32 v27, off, off offset:488
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v49, v123, v124 :: v_dual_fmac_f32 v210, v157, v69
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v180, v209, v27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:160
	scratch_load_b32 v27, off, off offset:528
	scratch_store_b32 off, v49, off offset:292 ; 4-byte Folded Spill
	scratch_load_b32 v49, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v54, v164, v239
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v172, v53, v27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:76
	scratch_load_b32 v53, off, off offset:152
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v27, v21, v90
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:336
	scratch_load_b32 v21, off, off offset:40
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v53, v165, v62
	scratch_load_b32 v62, off, off offset:260 ; 4-byte Folded Reload
	v_fmac_f32_e32 v136, v251, v186
	scratch_load_b32 v251, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v21, v17, v98
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v98, off, off offset:348
	scratch_load_b32 v17, off, off offset:24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v62, v192, v233 :: v_dual_fmac_f32 v17, v19, v100
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v100, off, off offset:64
	scratch_load_b32 v19, off, off offset:84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v100, v9, v112
	scratch_load_b32 v9, off, off offset:20 ; 4-byte Folded Reload
	v_fmac_f32_e32 v49, v168, v185
	scratch_load_b32 v168, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v39, v230, v237
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v13, v14, v104
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:88
	scratch_load_b32 v14, off, off offset:52
	scratch_store_b32 off, v49, off         ; 4-byte Folded Spill
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v187, off, off offset:304
	scratch_load_b32 v211, off, off offset:296
	scratch_load_b32 v49, off, off offset:4
	scratch_load_b32 v123, off, off offset:484
	v_fmac_f32_e32 v57, v158, v238
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v29, off, off offset:244
	scratch_load_b32 v158, off, off offset:320
	scratch_load_b32 v23, off, off offset:56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v19, v145, v72
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v9, v155, v68
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v168, v156, v36
	scratch_load_b32 v156, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v104, v16, v33
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v211, v12, v113
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:48
	scratch_load_b32 v40, off, off offset:372
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v49, v167, v123
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v185, off, off offset:232
	scratch_load_b32 v167, off, off offset:316
	scratch_load_b32 v125, off, off offset:236
	scratch_load_b32 v124, off, off offset:208
	scratch_load_b32 v123, off, off offset:204
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v23, v24, v91
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v91, off, off offset:340
	scratch_load_b32 v24, off, off offset:104
	scratch_load_b32 v33, off, off offset:268
	scratch_load_b32 v16, off, off offset:68
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v59, v196, v234 :: v_dual_fmac_f32 v158, v222, v236
	v_fmac_f32_e32 v14, v150, v70
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v156, v163, v55
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v12, v149, v74 :: v_dual_fmac_f32 v185, v208, v96
	scratch_load_b32 v96, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v124, v137, v225
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v24, v47, v132
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v16, v148, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v96, v118, v28
	scratch_store_b32 off, v49, off offset:4 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v103, off, off offset:72
	scratch_load_b32 v49, off, off offset:100
	scratch_load_b32 v28, off, off offset:96
	v_fmac_f32_e32 v167, v101, v220
	scratch_load_b32 v101, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v103, v10, v110
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v49, v128, v41 :: v_dual_fmac_f32 v28, v242, v42
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v242, off, off offset:536
	scratch_load_b32 v41, off, off offset:168
	scratch_load_b32 v10, off, off offset:32
	v_fmac_f32_e32 v45, v22, v89
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:332
	scratch_load_b32 v22, off, off offset:44
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v101, v243, v182
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v125, v212, v184 :: v_dual_fmac_f32 v22, v18, v95
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v95, off, off offset:344
	scratch_load_b32 v18, off, off offset:28
	v_fmac_f32_e32 v123, v138, v226
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v95, v188, v40
	scratch_load_b32 v40, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v18, v20, v99
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:352
	scratch_load_b32 v20, off, off offset:92
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v99, v126, v40
	scratch_load_b32 v40, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v20, v146, v88
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v246, v143, v40
	scratch_load_b32 v40, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v98, v130, v40
	v_mov_b32_e32 v130, v241
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v241, off, off offset:532
	scratch_load_b32 v40, off, off offset:380
	v_dual_mov_b32 v83, v67 :: v_dual_fmac_f32 v130, v189, v204
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v90, v77, v40
	v_mov_b32_e32 v77, v1
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v91, v76, v1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v245, v254, v1
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v89, v84, v1 :: v_dual_mov_b32 v84, v253
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v253, off, off offset:544
	scratch_load_b32 v1, off, off offset:404
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v82, v240, v1
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v235, v1
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v84, v250, v1
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v85, v248, v1
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v215, v199, v1
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v252, v46, v1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v77, v25, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:108
	scratch_load_b32 v1, off, off offset:400
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v25, v108, v153
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v7, v142, v1
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v206, v129, v1
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v255, v127, v1
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v202, v92, v1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v205, v144, v1
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v187, v15, v30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:264
	scratch_load_b32 v15, off, off offset:60
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v143, v106 :: v_dual_fmac_f32 v198, v229, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v15, v147, v73
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v201, v191, v1
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v8, v214, v1
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v197, v228, v1
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v2, v65, v1
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v3, v78, v1
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v170, v66, v1
	scratch_load_b32 v1, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v4, v87, v1
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v33, v79, v1
	scratch_load_b32 v1, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v63, v107, v1
	scratch_load_b32 v1, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v143, v26, v1
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v26, off, off offset:136
	scratch_load_b32 v46, off, off offset:132
	scratch_load_b32 v42, off, off offset:124
	scratch_load_b32 v40, off, off offset:120
	scratch_load_b32 v1, off, off offset:496
	v_fmac_f32_e32 v29, v217, v231
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v41, v227, v232 :: v_dual_fmac_f32 v26, v200, v181
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v46, v0, v133
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v40, v93, v134
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v30, v80, v1
	v_fmac_f32_e32 v42, v86, v135
	v_fmac_f32_e32 v10, v151, v75
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v154, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v189, v4 :: v_dual_mov_b32 v222, v215
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v4, off, off offset:4
	scratch_load_b32 v186, off, off offset:288
	scratch_load_b32 v203, off, off offset:292
	scratch_load_b32 v129, off, off offset:8
	scratch_load_b32 v191, off, off offset:280
	scratch_load_b32 v126, off, off offset:284
	scratch_load_b32 v155, off, off offset:272
	scratch_load_b32 v157, off, off offset:276
	scratch_load_b32 v239, off, off offset:548
	scratch_load_b32 v149, off, off offset:636
	scratch_load_b32 v150, off, off offset:640
	scratch_load_b32 v151, off, off offset:644
	scratch_load_b32 v152, off, off offset:648
	scratch_load_b32 v35, off, off offset:652
	scratch_load_b32 v36, off, off offset:656
	scratch_load_b32 v148, off, off offset:632
	v_dual_mov_b32 v195, v3 :: v_dual_mov_b32 v192, v2
	scratch_load_b32 v2, off, off           ; 4-byte Folded Reload
	s_add_i32 s17, s17, 64
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v100, off offset:64
	scratch_store_b32 off, v103, off offset:72
	scratch_store_b32 off, v104, off offset:88
	scratch_store_b32 off, v125, off offset:236
	scratch_store_b32 off, v136, off offset:240
	v_dual_mov_b32 v217, v7 :: v_dual_mov_b32 v196, v8
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v214, v77 :: v_dual_and_b32 v127, 15, v148
	v_and_b32_e32 v3, 4, v148
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v130, 0
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v140, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:240
	scratch_store_b32 off, v0, off offset:72
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_mov_b32_e32 v13, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:64
	scratch_store_b32 off, v1, off offset:236
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v155, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v95, 0
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow1208
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v85, off offset:900
	scratch_store_b32 off, v84, off offset:896
	scratch_store_b32 off, v252, off offset:892
	scratch_store_b32 off, v255, off offset:880
	scratch_store_b32 off, v63, off offset:864
	scratch_store_b32 off, v33, off offset:268
	scratch_store_b32 off, v30, off offset:264
	scratch_store_b32 off, v62, off offset:260
	scratch_store_b32 off, v61, off offset:256
	scratch_store_b32 off, v59, off offset:252
	scratch_store_b32 off, v29, off offset:244
	scratch_store_b32 off, v207, off offset:388
	scratch_store_b32 off, v249, off offset:380
	scratch_store_b32 off, v247, off offset:376
	scratch_store_b32 off, v124, off offset:208
	scratch_store_b32 off, v123, off offset:204
	scratch_store_b32 off, v60, off offset:192
	scratch_store_b32 off, v244, off offset:368
	scratch_store_b32 off, v46, off offset:132
	scratch_store_b32 off, v42, off offset:124
	scratch_store_b32 off, v97, off offset:180
	scratch_store_b32 off, v58, off offset:172
	scratch_store_b32 off, v41, off offset:168
	scratch_store_b32 off, v57, off offset:164
	scratch_store_b32 off, v40, off offset:120
	scratch_store_b32 off, v39, off offset:156
	scratch_store_b32 off, v53, off offset:152
	scratch_store_b32 off, v52, off offset:148
	scratch_store_b32 off, v32, off offset:344
	scratch_store_b32 off, v31, off offset:340
	scratch_store_b32 off, v51, off offset:144
	scratch_store_b32 off, v50, off offset:140
	s_clause 0x1d                           ; 120-byte Folded Spill
	scratch_store_b32 off, v26, off offset:136
	scratch_store_b32 off, v38, off offset:128
	scratch_store_b32 off, v216, off offset:336
	scratch_store_b32 off, v37, off offset:116
	scratch_store_b32 off, v34, off offset:112
	scratch_store_b32 off, v25, off offset:108
	scratch_store_b32 off, v24, off offset:104
	scratch_store_b32 off, v49, off offset:100
	scratch_store_b32 off, v28, off offset:96
	scratch_store_b32 off, v20, off offset:92
	scratch_store_b32 off, v19, off offset:84
	scratch_store_b32 off, v45, off offset:80
	scratch_store_b32 off, v27, off offset:76
	scratch_store_b32 off, v16, off offset:68
	scratch_store_b32 off, v15, off offset:60
	scratch_store_b32 off, v23, off offset:56
	scratch_store_b32 off, v213, off offset:324
	scratch_store_b32 off, v14, off offset:52
	scratch_store_b32 off, v12, off offset:48
	scratch_store_b32 off, v22, off offset:44
	scratch_store_b32 off, v21, off offset:40
	scratch_store_b32 off, v11, off offset:36
	scratch_store_b32 off, v10, off offset:32
	scratch_store_b32 off, v18, off offset:28
	scratch_store_b32 off, v17, off offset:24
	scratch_store_b32 off, v9, off offset:20
	scratch_store_b32 off, v0, off offset:16
	scratch_store_b32 off, v13, off offset:12
	scratch_store_b32 off, v64, off offset:292
	scratch_store_b32 off, v4, off offset:4
	s_waitcnt vmcnt(0)
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v6, off offset:396
	scratch_store_b32 off, v5, off offset:392
	scratch_store_b32 off, v122, off offset:200
	scratch_store_b32 off, v121, off offset:196
	scratch_store_b32 off, v102, off offset:188
	scratch_store_b32 off, v101, off offset:184
	scratch_store_b32 off, v96, off offset:176
	scratch_store_b32 off, v54, off offset:160
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	s_barrier
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v31, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s1, 1, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v0, v1, v36
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v244, v35, v1
	v_mov_b32_e32 v40, 0
	scratch_store_b32 off, v31, off offset:280 ; 4-byte Folded Spill
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v33, 16, v0
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v1, s49, v0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v248, v99
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v109, v98 :: v_dual_add_nc_u32 v2, s49, v33
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[17:20], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[34:37], v2
	ds_load_b128 v[21:24], v2 offset:512
	ds_load_b128 v[13:16], v2 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v2 offset:1536
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v188, v246
	v_dual_mov_b32 v230, v91 :: v_dual_mov_b32 v141, v90
	v_dual_mov_b32 v227, v89 :: v_dual_mov_b32 v240, v83
	v_dual_mov_b32 v235, v245 :: v_dual_mov_b32 v250, v82
	v_xor_b32_e32 v245, 16, v244
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v39, 0
	scratch_store_b32 off, v40, off offset:272 ; 4-byte Folded Spill
	v_mov_b32_e32 v40, 0
	scratch_store_b32 off, v31, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v31, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	scratch_store_b32 off, v40, off offset:276 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v29, s16, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v45, s11 :: v_dual_mov_b32 v40, s6
	v_mov_b32_e32 v44, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[88:91], v29
	ds_load_b128 v[103:106], v29 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v42, s8 :: v_dual_add_nc_u32 v29, s16, v245
	v_dual_mov_b32 v43, s9 :: v_dual_mov_b32 v38, s4
	v_mov_b32_e32 v41, s7
	v_mov_b32_e32 v39, s5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[144:147], v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[88:91], v[25:28], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[88:91], v[17:20], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[88:91], v[9:12], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[88:91], v[5:8], v[38:45] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[88:91], v29 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[103:106], v[25:28], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[103:106], v[17:20], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[103:106], v[9:12], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[103:106], v[5:8], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[144:147], v[34:37], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[144:147], v[21:24], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[144:147], v[13:16], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[144:147], v[1:4], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v128, v48
	v_cvt_f32_i32_e32 v29, v49
	v_cvt_f32_i32_e32 v107, v50
	v_cvt_f32_i32_e32 v108, v51
	v_cvt_f32_i32_e32 v87, v69
	v_cvt_f32_i32_e32 v85, v71
	v_cvt_f32_i32_e32 v86, v72
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[88:91], v[1:4], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[88:91], v[34:37], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[88:91], v[21:24], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[88:91], v[13:16], v[118:125] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v67
	v_cvt_f32_i32_e32 v30, v42
	v_cvt_f32_i32_e32 v105, v54
	v_cvt_f32_i32_e32 v106, v55
	v_cvt_f32_i32_e32 v103, v56
	v_cvt_f32_i32_e32 v104, v57
	scratch_store_b32 off, v30, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v30, v43
	v_cvt_f32_i32_e32 v93, v58
	v_cvt_f32_i32_e32 v94, v59
	v_cvt_f32_i32_e32 v91, v60
	v_cvt_f32_i32_e32 v92, v61
	scratch_store_b32 off, v30, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v30, v44
	v_cvt_f32_i32_e32 v90, v68
	v_cvt_f32_i32_e32 v88, v70
	v_cvt_f32_i32_e32 v83, v73
	v_cvt_f32_i32_e32 v84, v74
	scratch_store_b32 off, v30, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v30, v45
	v_cvt_f32_i32_e32 v80, v95
	v_cvt_f32_i32_e32 v82, v96
	v_cvt_f32_i32_e32 v78, v97
	v_cvt_f32_i32_e32 v79, v98
	v_cvt_f32_i32_e32 v76, v99
	v_cvt_f32_i32_e32 v77, v100
	v_cvt_f32_i32_e32 v74, v101
	v_cvt_f32_i32_e32 v75, v102
	v_cvt_f32_i32_e32 v72, v110
	v_cvt_f32_i32_e32 v73, v111
	v_cvt_f32_i32_e32 v70, v112
	v_cvt_f32_i32_e32 v71, v113
	v_cvt_f32_i32_e32 v68, v114
	v_cvt_f32_i32_e32 v69, v115
	v_cvt_f32_i32_e32 v66, v116
	v_cvt_f32_i32_e32 v67, v117
	v_cvt_f32_i32_e32 v64, v118
	v_cvt_f32_i32_e32 v65, v119
	v_cvt_f32_i32_e32 v62, v120
	v_cvt_f32_i32_e32 v63, v121
	v_cvt_f32_i32_e32 v60, v122
	v_cvt_f32_i32_e32 v61, v123
	v_cvt_f32_i32_e32 v58, v124
	v_cvt_f32_i32_e32 v59, v125
	v_cvt_f32_i32_e32 v56, v131
	v_cvt_f32_i32_e32 v57, v132
	v_cvt_f32_i32_e32 v54, v133
	v_cvt_f32_i32_e32 v55, v134
	v_cvt_f32_i32_e32 v50, v135
	v_cvt_f32_i32_e32 v51, v136
	v_cvt_f32_i32_e32 v48, v137
	v_cvt_f32_i32_e32 v49, v138
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v32, v41
	scratch_store_b32 off, v30, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v52
	v_cvt_f32_i32_e32 v42, v53
	v_cvt_f32_i32_e32 v30, v46
	v_cvt_f32_i32_e32 v193, v47
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v128, off offset:904
	scratch_store_b32 off, v42, off offset:736
	scratch_store_b32 off, v41, off offset:732
	scratch_store_b32 off, v108, off offset:728
	scratch_store_b32 off, v106, off offset:716
	scratch_store_b32 off, v105, off offset:712
	scratch_store_b32 off, v104, off offset:708
	scratch_store_b32 off, v103, off offset:704
	scratch_store_b32 off, v93, off offset:688
	scratch_store_b32 off, v92, off offset:684
	scratch_store_b32 off, v91, off offset:680
	scratch_store_b32 off, v90, off offset:676
	scratch_store_b32 off, v89, off offset:672
	scratch_store_b32 off, v88, off offset:668
	scratch_store_b32 off, v84, off offset:644
	scratch_store_b32 off, v83, off offset:640
	scratch_store_b32 off, v82, off offset:636
	scratch_store_b32 off, v76, off offset:580
	scratch_store_b32 off, v75, off offset:576
	scratch_store_b32 off, v74, off offset:572
	scratch_store_b32 off, v73, off offset:568
	scratch_store_b32 off, v72, off offset:564
	scratch_store_b32 off, v71, off offset:552
	scratch_store_b32 off, v70, off offset:548
	scratch_store_b32 off, v69, off offset:528
	scratch_store_b32 off, v68, off offset:524
	scratch_store_b32 off, v67, off offset:520
	scratch_store_b32 off, v64, off offset:508
	scratch_store_b32 off, v63, off offset:504
	scratch_store_b32 off, v62, off offset:500
	scratch_store_b32 off, v61, off offset:496
	scratch_store_b32 off, v60, off offset:492
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v59, off offset:488
	scratch_store_b32 off, v58, off offset:484
	scratch_store_b32 off, v57, off offset:436
	scratch_store_b32 off, v56, off offset:432
	scratch_store_b32 off, v129, off offset:8
	scratch_store_b32 off, v55, off offset:404
	scratch_store_b32 off, v54, off offset:400
	scratch_store_b32 off, v172, off offset:220
	scratch_store_b32 off, v171, off offset:216
	scratch_store_b32 off, v162, off offset:212
	scratch_store_b32 off, v51, off offset:364
	scratch_store_b32 off, v50, off offset:360
	scratch_store_b32 off, v49, off offset:352
	scratch_store_b32 off, v48, off offset:348
	scratch_store_b32 off, v39, off offset:332
	scratch_store_b32 off, v38, off offset:328
	scratch_store_b32 off, v31, off offset:296
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v38, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v31, s48, v245
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v45, s11 :: v_dual_mov_b32 v40, s6
	v_mov_b32_e32 v44, s10
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[88:91], v31 offset:4096
	ds_load_b128 v[103:106], v31
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v42, s8 :: v_dual_add_nc_u32 v31, s48, v244
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[110:113], v31 offset:4096
	ds_load_b128 v[114:117], v31
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v43, s9 :: v_dual_mov_b32 v38, s4
	v_mov_b32_e32 v41, s7
	v_mov_b32_e32 v39, s5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[110:113], v[17:20], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[114:117], v[17:20], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[110:113], v[9:12], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[88:91], v[21:24], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[103:106], v[21:24], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[114:117], v[9:12], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[114:117], v[25:28], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[110:113], v[25:28], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[103:106], v[13:16], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[88:91], v[13:16], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[114:117], v[5:8], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[110:113], v[5:8], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[103:106], v[34:37], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[88:91], v[34:37], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v224, v67
	v_wmma_i32_16x16x16_iu8 v[38:45], v[88:91], v[1:4], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v252, v48
	v_cvt_f32_i32_e32 v254, v49
	v_cvt_f32_i32_e32 v247, v50
	v_cvt_f32_i32_e32 v249, v51
	v_cvt_f32_i32_e32 v243, v52
	v_cvt_f32_i32_e32 v246, v53
	v_cvt_f32_i32_e32 v236, v54
	v_cvt_f32_i32_e32 v237, v55
	v_cvt_f32_i32_e32 v233, v56
	v_cvt_f32_i32_e32 v234, v57
	v_cvt_f32_i32_e32 v229, v58
	v_cvt_f32_i32_e32 v232, v59
	v_cvt_f32_i32_e32 v226, v60
	v_cvt_f32_i32_e32 v228, v61
	v_cvt_f32_i32_e32 v225, v68
	v_cvt_f32_i32_e32 v221, v69
	v_cvt_f32_i32_e32 v223, v70
	v_cvt_f32_i32_e32 v215, v71
	v_cvt_f32_i32_e32 v220, v72
	v_cvt_f32_i32_e32 v212, v73
	v_cvt_f32_i32_e32 v213, v74
	v_cvt_f32_i32_e32 v108, v95
	v_cvt_f32_i32_e32 v116, v96
	v_cvt_f32_i32_e32 v142, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v154, v99
	v_cvt_f32_i32_e32 v64, v100
	v_cvt_f32_i32_e32 v125, v101
	v_cvt_f32_i32_e32 v153, v102
	v_cvt_f32_i32_e32 v199, v17
	v_cvt_f32_i32_e32 v200, v18
	v_cvt_f32_i32_e32 v128, v19
	v_cvt_f32_i32_e32 v144, v20
	v_cvt_f32_i32_e32 v194, v21
	v_cvt_f32_i32_e32 v115, v22
	v_cvt_f32_i32_e32 v70, v23
	v_cvt_f32_i32_e32 v71, v24
	v_cvt_f32_i32_e32 v68, v131
	v_cvt_f32_i32_e32 v69, v132
	v_cvt_f32_i32_e32 v63, v133
	v_cvt_f32_i32_e32 v67, v134
	v_cvt_f32_i32_e32 v61, v135
	v_cvt_f32_i32_e32 v62, v136
	v_cvt_f32_i32_e32 v59, v137
	v_cvt_f32_i32_e32 v60, v138
	v_cvt_f32_i32_e32 v57, v9
	v_cvt_f32_i32_e32 v58, v10
	v_cvt_f32_i32_e32 v55, v11
	v_cvt_f32_i32_e32 v56, v12
	v_cvt_f32_i32_e32 v53, v13
	v_cvt_f32_i32_e32 v54, v14
	v_cvt_f32_i32_e32 v51, v15
	v_cvt_f32_i32_e32 v52, v16
	v_cvt_f32_i32_e32 v49, v38
	v_cvt_f32_i32_e32 v50, v39
	v_cvt_f32_i32_e32 v48, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v39, v42
	v_cvt_f32_i32_e32 v40, v43
	v_cvt_f32_i32_e32 v31, v44
	v_cvt_f32_i32_e32 v38, v45
	v_cvt_f32_i32_e32 v231, v46
	v_cvt_f32_i32_e32 v93, v47
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s31, 31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v4, 0, v150, v152
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v83, s45, v148
	s_add_i32 s1, s31, s1
	s_mov_b32 s15, 0x31027000
	s_ashr_i32 s1, s1, 7
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s34
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v253, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v251, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v3, 28, v151
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v242, s1, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v82, v4, v3
	v_add_lshl_u32 v3, v239, s1, 1
	v_add_lshl_u32 v4, v241, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	s_and_b32 s29, s29, 0xffff
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v107, off offset:884
	scratch_store_b32 off, v71, off offset:724
	scratch_store_b32 off, v70, off offset:720
	scratch_store_b32 off, v69, off offset:700
	scratch_store_b32 off, v68, off offset:696
	scratch_store_b32 off, v87, off offset:664
	scratch_store_b32 off, v67, off offset:660
	scratch_store_b32 off, v63, off offset:656
	scratch_store_b32 off, v86, off offset:652
	scratch_store_b32 off, v85, off offset:648
	scratch_store_b32 off, v80, off offset:632
	scratch_store_b32 off, v62, off offset:628
	scratch_store_b32 off, v79, off offset:624
	scratch_store_b32 off, v78, off offset:592
	scratch_store_b32 off, v61, off offset:588
	scratch_store_b32 off, v77, off offset:584
	scratch_store_b32 off, v60, off offset:560
	scratch_store_b32 off, v59, off offset:556
	scratch_store_b32 off, v66, off offset:516
	scratch_store_b32 off, v65, off offset:512
	scratch_store_b32 off, v58, off offset:464
	scratch_store_b32 off, v57, off offset:460
	scratch_store_b32 off, v56, off offset:452
	scratch_store_b32 off, v55, off offset:448
	scratch_store_b32 off, v54, off offset:428
	scratch_store_b32 off, v53, off offset:416
	scratch_store_b32 off, v52, off offset:412
	scratch_store_b32 off, v51, off offset:408
	scratch_store_b32 off, v185, off offset:232
	scratch_store_b32 off, v180, off offset:228
	scratch_store_b32 off, v179, off offset:224
	scratch_store_b32 off, v50, off offset:384
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v49, off offset:372
	scratch_store_b32 off, v41, off offset:356
	scratch_store_b32 off, v48, off offset:320
	scratch_store_b32 off, v40, off offset:316
	scratch_store_b32 off, v39, off offset:312
	scratch_store_b32 off, v38, off offset:308
	scratch_store_b32 off, v31, off offset:304
	scratch_store_b32 off, v32, off offset:300
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v6, v83, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v68, 0, v149
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x3
	buffer_load_u16 v84, v1, s[12:15], 0 offen
	buffer_load_u16 v251, v3, s[12:15], 0 offen
	buffer_load_u16 v219, v4, s[12:15], 0 offen
	buffer_load_u16 v1, v5, s[12:15], 0 offen
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v3, 0, 1, s3
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v150, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v28, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v34, 0
	v_cmp_ne_u32_e64 s1, 1, v3
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v122, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v161, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v82, v2 offset:36864
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s47, v33
	v_mov_b32_e32 v33, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:852 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v6, s[28:31], 0 offen
	v_mov_b32_e32 v148, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[36:39], v68 offset:36864
	ds_load_b128 v[175:178], v68 offset:36880
	ds_load_b128 v[4:7], v68 offset:37376
	ds_load_b128 v[171:174], v68 offset:37392
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v82, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[56:59], v0
	ds_load_b128 v[44:47], v0 offset:512
	ds_load_b128 v[20:23], v0 offset:1024
	ds_load_b128 v[16:19], v0 offset:1536
	ds_load_b128 v[60:63], v2
	ds_load_b128 v[48:51], v2 offset:512
	ds_load_b128 v[24:27], v2 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[12:15], v2 offset:1536
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v8, s46, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v76, s11 :: v_dual_mov_b32 v71, s6
	v_mov_b32_e32 v75, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[0:3], v8
	ds_load_b128 v[8:11], v8 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v73, s8 :: v_dual_add_nc_u32 v28, s46, v245
	v_dual_mov_b32 v74, s9 :: v_dual_mov_b32 v69, s4
	v_dual_mov_b32 v72, s7 :: v_dual_mov_b32 v33, v167
	v_dual_mov_b32 v70, s5 :: v_dual_mov_b32 v53, v210
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[40:43], v28
	v_dual_mov_b32 v54, v186 :: v_dual_mov_b32 v55, v203
	v_dual_mov_b32 v52, v205 :: v_dual_mov_b32 v65, v206
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[0:3], v[56:59], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[0:3], v[44:47], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[0:3], v[20:23], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[0:3], v[16:19], v[69:76] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[0:3], v28 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[8:11], v[56:59], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[8:11], v[44:47], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[8:11], v[20:23], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[8:11], v[16:19], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[40:43], v[60:63], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[40:43], v[48:51], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[40:43], v[24:27], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[40:43], v[12:15], v[203:210] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v100
	v_cvt_f32_i32_e32 v91, v101
	v_cvt_f32_i32_e32 v35, v102
	v_cvt_f32_i32_e32 v111, v103
	v_cvt_f32_i32_e32 v102, v145
	v_cvt_f32_i32_e32 v101, v146
	v_cvt_f32_i32_e32 v100, v147
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[0:3], v[60:63], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[0:3], v[48:51], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[0:3], v[24:27], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[0:3], v[12:15], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v96, v148
	v_cvt_f32_i32_e32 v0, v133
	v_cvt_f32_i32_e32 v1, v134
	v_cvt_f32_i32_e32 v40, v131
	v_cvt_f32_i32_e32 v112, v132
	v_cvt_f32_i32_e32 v110, v135
	v_cvt_f32_i32_e32 v107, v136
	v_cvt_f32_i32_e32 v106, v137
	v_cvt_f32_i32_e32 v103, v138
	v_cvt_f32_i32_e32 v95, v149
	v_cvt_f32_i32_e32 v79, v150
	v_cvt_f32_i32_e32 v90, v151
	v_cvt_f32_i32_e32 v89, v152
	v_cvt_f32_i32_e32 v88, v160
	v_cvt_f32_i32_e32 v87, v161
	v_cvt_f32_i32_e32 v86, v162
	v_cvt_f32_i32_e32 v85, v163
	v_cvt_f32_i32_e32 v80, v164
	v_cvt_f32_i32_e32 v66, v165
	v_cvt_f32_i32_e32 v78, v166
	v_cvt_f32_i32_e32 v77, v167
	v_mov_b32_e32 v167, v33
	v_cvt_f32_i32_e32 v151, v179
	v_mov_b32_e32 v179, v0
	v_cvt_f32_i32_e32 v67, v180
	v_mov_b32_e32 v180, v1
	v_cvt_f32_i32_e32 v147, v181
	v_cvt_f32_i32_e32 v150, v182
	v_cvt_f32_i32_e32 v146, v183
	v_cvt_f32_i32_e32 v149, v184
	v_cvt_f32_i32_e32 v145, v185
	v_cvt_f32_i32_e32 v148, v186
	v_mov_b32_e32 v186, v54
	v_cvt_f32_i32_e32 v54, v117
	v_cvt_f32_i32_e32 v43, v118
	v_cvt_f32_i32_e32 v42, v119
	v_cvt_f32_i32_e32 v41, v120
	v_cvt_f32_i32_e32 v10, v121
	v_cvt_f32_i32_e32 v28, v122
	v_cvt_f32_i32_e32 v34, v123
	v_cvt_f32_i32_e32 v33, v124
	v_cvt_f32_i32_e32 v11, v203
	v_mov_b32_e32 v203, v55
	v_cvt_f32_i32_e32 v31, v204
	v_cvt_f32_i32_e32 v9, v205
	v_mov_b32_e32 v205, v52
	v_cvt_f32_i32_e32 v8, v206
	v_mov_b32_e32 v206, v65
	v_cvt_f32_i32_e32 v3, v207
	v_cvt_f32_i32_e32 v2, v208
	v_cvt_f32_i32_e32 v0, v209
	v_cvt_f32_i32_e32 v1, v210
	v_mov_b32_e32 v210, v53
	v_cvt_f32_i32_e32 v162, v69
	v_cvt_f32_i32_e32 v161, v70
	v_cvt_f32_i32_e32 v134, v71
	v_cvt_f32_i32_e32 v135, v72
	v_cvt_f32_i32_e32 v132, v73
	v_cvt_f32_i32_e32 v131, v74
	v_cvt_f32_i32_e32 v121, v75
	v_cvt_f32_i32_e32 v122, v76
	v_cvt_f32_i32_e32 v163, v104
	v_cvt_f32_i32_e32 v166, v105
	v_cvt_f32_i32_e32 v216, v98
	v_cvt_f32_i32_e32 v218, v99
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v204, v91 :: v_dual_mov_b32 v207, v40
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v103, off offset:848
	scratch_store_b32 off, v102, off offset:844
	scratch_store_b32 off, v101, off offset:836
	scratch_store_b32 off, v100, off offset:832
	scratch_store_b32 off, v96, off offset:828
	scratch_store_b32 off, v95, off offset:824
	scratch_store_b32 off, v79, off offset:820
	scratch_store_b32 off, v90, off offset:816
	scratch_store_b32 off, v89, off offset:812
	scratch_store_b32 off, v88, off offset:808
	scratch_store_b32 off, v87, off offset:804
	scratch_store_b32 off, v86, off offset:800
	scratch_store_b32 off, v85, off offset:796
	scratch_store_b32 off, v80, off offset:792
	scratch_store_b32 off, v66, off offset:788
	scratch_store_b32 off, v78, off offset:784
	scratch_store_b32 off, v77, off offset:780
	scratch_store_b32 off, v67, off offset:776
	scratch_store_b32 off, v54, off offset:768
	scratch_store_b32 off, v43, off offset:764
	scratch_store_b32 off, v42, off offset:760
	scratch_store_b32 off, v41, off offset:756
	scratch_store_b32 off, v10, off offset:752
	scratch_store_b32 off, v28, off offset:748
	scratch_store_b32 off, v34, off offset:744
	scratch_store_b32 off, v33, off offset:740
	scratch_store_b32 off, v11, off offset:692
	scratch_store_b32 off, v94, off offset:876
	scratch_store_b32 off, v31, off offset:480
	scratch_store_b32 off, v9, off offset:468
	scratch_store_b32 off, v8, off offset:456
	scratch_store_b32 off, v3, off offset:444
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v2, off offset:440
	scratch_store_b32 off, v1, off offset:424
	scratch_store_b32 off, v0, off offset:420
	scratch_store_b32 off, v81, off offset:772
	ds_load_b128 v[52:55], v68 offset:36864
	ds_load_b128 v[40:43], v68 offset:36880
	ds_load_b128 v[181:184], v68 offset:37376
	ds_load_b128 v[8:11], v68 offset:37392
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v3, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v112, off offset:888
	scratch_store_b32 off, v110, off offset:872
	v_dual_mov_b32 v208, v111 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v209, v35 :: v_dual_mov_b32 v2, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v107, off offset:860
	scratch_store_b32 off, v106, off offset:856
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b32 off, v3, off offset:288 ; 4-byte Folded Spill
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v31, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v31, v122 :: v_dual_add_nc_u32 v28, s44, v245
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	ds_load_b128 v[0:3], v28 offset:4096
	ds_load_b128 v[88:91], v28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v28, s44, v244
	ds_load_b128 v[98:101], v28 offset:4096
	ds_load_b128 v[102:105], v28
	v_mov_b32_e32 v28, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v124, s11 :: v_dual_mov_b32 v119, s6
	v_dual_mov_b32 v123, s10 :: v_dual_mov_b32 v122, s9
	v_mov_b32_e32 v117, s4
	v_dual_mov_b32 v121, s8 :: v_dual_mov_b32 v120, s7
	v_dual_mov_b32 v33, v132 :: v_dual_mov_b32 v118, s5
	v_mov_b32_e32 v35, v135
	v_dual_mov_b32 v32, v131 :: v_dual_mov_b32 v67, v145
	v_dual_mov_b32 v34, v134 :: v_dual_mov_b32 v79, v148
	v_dual_mov_b32 v80, v146 :: v_dual_mov_b32 v81, v149
	v_dual_mov_b32 v85, v147 :: v_dual_mov_b32 v86, v150
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[102:105], v[56:59], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[98:101], v[56:59], v[117:124] neg_lo:[1,1,0]
	v_dual_mov_b32 v87, v151 :: v_dual_mov_b32 v66, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[88:91], v[60:63], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[0:3], v[60:63], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[102:105], v[44:47], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[98:101], v[44:47], v[117:124] neg_lo:[1,1,0]
	v_dual_mov_b32 v65, v161 :: v_dual_mov_b32 v78, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[88:91], v[48:51], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[0:3], v[48:51], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[102:105], v[20:23], v[117:124] neg_lo:[1,1,0]
	v_dual_mov_b32 v94, v163 :: v_dual_mov_b32 v185, v166
	v_wmma_i32_16x16x16_iu8 v[160:167], v[98:101], v[20:23], v[117:124] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[88:91], v[24:27], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v69
	v_cvt_f32_i32_e32 v238, v71
	v_wmma_i32_16x16x16_iu8 v[160:167], v[0:3], v[24:27], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[102:105], v[16:19], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[98:101], v[16:19], v[117:124] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v241, v73
	v_cvt_f32_i32_e32 v242, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[88:91], v[12:15], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v113, v75
	v_wmma_i32_16x16x16_iu8 v[117:124], v[0:3], v[12:15], v[117:124] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v50
	v_cvt_f32_i32_e32 v2, v70
	v_cvt_f32_i32_e32 v1, v72
	v_cvt_f32_i32_e32 v114, v76
	v_cvt_f32_i32_e32 v110, v131
	v_mov_b32_e32 v131, v32
	v_cvt_f32_i32_e32 v112, v132
	v_mov_b32_e32 v132, v33
	v_cvt_f32_i32_e32 v106, v133
	v_cvt_f32_i32_e32 v107, v134
	v_mov_b32_e32 v134, v34
	v_cvt_f32_i32_e32 v104, v135
	v_mov_b32_e32 v135, v35
	v_cvt_f32_i32_e32 v105, v136
	v_cvt_f32_i32_e32 v99, v137
	v_cvt_f32_i32_e32 v100, v138
	v_cvt_f32_i32_e32 v95, v56
	v_cvt_f32_i32_e32 v98, v57
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v77, v60
	v_cvt_f32_i32_e32 v89, v61
	v_cvt_f32_i32_e32 v75, v62
	v_cvt_f32_i32_e32 v76, v63
	v_cvt_f32_i32_e32 v73, v145
	v_mov_b32_e32 v145, v67
	v_cvt_f32_i32_e32 v74, v146
	v_mov_b32_e32 v146, v80
	v_cvt_f32_i32_e32 v70, v147
	v_mov_b32_e32 v147, v85
	v_cvt_f32_i32_e32 v71, v148
	v_mov_b32_e32 v148, v79
	v_cvt_f32_i32_e32 v67, v149
	v_mov_b32_e32 v149, v81
	v_cvt_f32_i32_e32 v69, v150
	v_mov_b32_e32 v150, v86
	v_cvt_f32_i32_e32 v96, v151
	v_mov_b32_e32 v151, v87
	v_cvt_f32_i32_e32 v0, v152
	v_cvt_f32_i32_e32 v86, v44
	v_cvt_f32_i32_e32 v88, v45
	v_cvt_f32_i32_e32 v79, v46
	v_cvt_f32_i32_e32 v80, v47
	v_cvt_f32_i32_e32 v253, v48
	v_cvt_f32_i32_e32 v255, v49
	scratch_store_b32 off, v3, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v3, v51
	v_cvt_f32_i32_e32 v137, v160
	v_cvt_f32_i32_e32 v152, v161
	v_mov_b32_e32 v161, v65
	v_cvt_f32_i32_e32 v111, v162
	v_mov_b32_e32 v162, v66
	v_cvt_f32_i32_e32 v133, v163
	v_mov_b32_e32 v163, v94
	v_cvt_f32_i32_e32 v102, v164
	v_cvt_f32_i32_e32 v103, v165
	v_cvt_f32_i32_e32 v94, v166
	v_mov_b32_e32 v166, v185
	v_cvt_f32_i32_e32 v101, v167
	v_mov_b32_e32 v167, v78
	v_cvt_f32_i32_e32 v85, v20
	v_cvt_f32_i32_e32 v87, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v81, v23
	v_cvt_f32_i32_e32 v136, v24
	v_cvt_f32_i32_e32 v138, v25
	v_cvt_f32_i32_e32 v65, v26
	v_cvt_f32_i32_e32 v66, v27
	v_cvt_f32_i32_e32 v34, v117
	v_cvt_f32_i32_e32 v35, v118
	v_cvt_f32_i32_e32 v32, v119
	v_cvt_f32_i32_e32 v33, v120
	v_cvt_f32_i32_e32 v164, v121
	v_mov_b32_e32 v121, v28
	v_cvt_f32_i32_e32 v28, v122
	v_mov_b32_e32 v122, v31
	v_cvt_f32_i32_e32 v31, v123
	v_cvt_f32_i32_e32 v72, v124
.LBB0_16:
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(4)
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v12, off, off offset:544
	scratch_load_b32 v13, off, off offset:540
	scratch_load_b32 v15, off, off offset:532
	scratch_load_b32 v16, off, off offset:536
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s17, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s17, s1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v28, off offset:840
	scratch_store_b32 off, v72, off offset:476
	scratch_store_b32 off, v31, off offset:472
	s_ashr_i32 s1, s1, 7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v14, v239, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v239.h, v84.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	v_mov_b32_e32 v84, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v111.l, 0
	s_and_b32 s25, s25, 0xffff
	v_mov_b32_e32 v245, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v239.l, v111.l
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v12, v12, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v13, v13, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, v15, s1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, v16, s1, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v13, 16, v13
	s_clause 0x3
	buffer_load_u16 v17, v12, s[12:15], 0 offen
	buffer_load_u16 v28, v14, s[12:15], 0 offen
	buffer_load_u16 v72, v15, s[12:15], 0 offen
	buffer_load_u16 v244, v16, s[12:15], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v12, v83, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v82, v13 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v118, 16, v17
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[56:59], v68 offset:36864
	ds_load_b128 v[44:47], v68 offset:36880
	ds_load_b128 v[20:23], v68 offset:37376
	ds_load_b128 v[12:15], v68 offset:37392
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v82, v16 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v68 offset:36864
	ds_load_b128 v[48:51], v68 offset:36880
	v_mul_f32_e32 v16, v53, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v93, v248
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v248, v16, s2
	scratch_load_b32 v248, off, off offset:900 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v17, v61, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v17, v2, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v16, v2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v2
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v16, v16, v2
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v2, v16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v19, v18
	v_fma_f32 v25, -v17, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v18
	v_fma_f32 v17, -v17, v24, v19
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v19, v60, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v17, v18, v24
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v52, v239
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v231, v159
	v_mov_b32_e32 v231, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v159, v18, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v92, v18
	v_mov_b32_e32 v92, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v24, v27, v26
	v_fmac_f32_e32 v27, v31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v63, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v55, v239
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v254, v109
	v_mov_b32_e32 v254, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v102, v17, v16, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v54, v239
	v_mul_f32_e32 v16, v62, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v109, v25, s2
	scratch_load_b32 v109, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v252, v188
	v_mov_b32_e32 v252, v101
	v_fma_f32 v1, v26, v1, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v101, v24, v19, v18
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v41, v239
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v188, v2, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v19, v49, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v25, v1, s3
	scratch_load_b32 v188, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v249, v230
	v_fma_f32 v16, v16, v238, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v230, v18, s2
	v_cndmask_b32_e64 v2, v2, v16, s3
	scratch_load_b32 v230, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v242, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v25, v25, v1
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, vcc_lo, v1, v25, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v27
	v_fma_f32 v33, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v27
	v_fma_f32 v26, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v93, v26, v25, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v40, v239
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v48, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v247, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v141, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v241, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v16, v16, v2
	v_rcp_f32_e32 v27, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v17, v27, 1.0
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, vcc_lo, v2, v16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v27
	v_fma_f32 v33, -v17, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v27
	v_fma_f32 v17, -v17, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v17, v27, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v242, v17, v16, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v43, v239
	v_mul_f32_e32 v16, v51, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v246, v227
	v_mov_b32_e32 v246, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v227, v2, s2
	scratch_load_b32 v227, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v114, v2
	v_mov_b32_e32 v114, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v19, v19, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v16, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v19, v19, v18
	v_rcp_f32_e32 v27, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v24, v27, 1.0
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v27
	v_fma_f32 v33, -v24, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v27
	v_fma_f32 v24, -v24, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v27, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v241, v24, v19, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v1
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v25, v25, v1
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, vcc_lo, v1, v25, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v27
	v_fma_f32 v33, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v27
	v_fma_f32 v26, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v137, v26, v25, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v182, v239
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v237, v240
	v_mov_b32_e32 v237, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v240, v1, s2
	scratch_load_b32 v240, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v31, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v27, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v27, v17
	v_div_scale_f32 v27, vcc_lo, v2, v31, v2
	v_mul_f32_e32 v32, v27, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v16, v32, v27
	v_fmac_f32_e32 v32, v33, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v32, v27
	v_div_fmas_f32 v32, v16, v17, v32
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v42, v239
	v_mul_f32_e32 v17, v50, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v243, v235
	v_mov_b32_e32 v243, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v32, v31, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v181, v239
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v235, v16, s2
	scratch_load_b32 v235, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v236, v250
	v_fma_f32 v17, v17, v113, v16
	v_mov_b32_e32 v113, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v250, v2, s2
	scratch_load_b32 v250, off, off offset:260 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v33, v16, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v33, v34, v33
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v16, v19, v18
	v_fmac_f32_e32 v19, v24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v19, v18
	v_div_fmas_f32 v35, v16, v17, v19
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	ds_load_b128 v[24:27], v68 offset:37376
	ds_load_b128 v[16:19], v68 offset:37392
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v65, v25, v118
	v_mul_f32_e32 v31, v24, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v112, v1
	v_mov_b32_e32 v112, v66
	v_fma_f32 v31, v31, v110, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v65, s3
	v_cndmask_b32_e64 v2, v2, v31, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v238, v81 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v110, v35, v34, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v184, v239
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v27, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(7)
	v_fma_f32 v33, v33, v234, v248
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v248, v33, s2
	scratch_load_b32 v248, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v107, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v1
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v1, v65, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v78, v68
	v_fma_f32 v82, -v66, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v68
	v_fma_f32 v66, -v66, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v107, v66, v65, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v26, v118
	v_mul_f32_e32 v1, v183, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(7)
	v_fma_f32 v1, v1, v233, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v109, v1, s2
	scratch_load_b32 v109, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v106, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v65, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v32
	v_fma_f32 v78, -v32, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v2, v31, v2
	v_mul_f32_e32 v81, v78, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v32, v81, v78
	v_fmac_f32_e32 v81, v82, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v81, v78
	v_div_fmas_f32 v32, v32, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v32, v31, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v9, v239
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v31, v17, v118 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v2, v2, v232, v188
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v188, v2, s2
	scratch_load_b32 v188, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v105, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v31, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v68, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v35, v68, 1.0
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v78, v68
	v_fma_f32 v82, -v35, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v68
	v_fma_f32 v35, -v35, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v105, v35, v34, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v8, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v34, v16, v118 :: v_dual_fmac_f32 v65, 0xbfb8aa3b, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v229, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v222, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v104, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v78, -v66, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v1, v65, v1
	v_mul_f32_e32 v81, v78, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v66, v81, v78
	v_fmac_f32_e32 v81, v82, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v81, v78
	v_div_fmas_f32 v66, v66, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v222, v66, v65, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v11, v239
	v_mul_f32_e32 v65, v19, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v228, v217
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v217, v1, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v32
	v_fma_f32 v78, -v32, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v2, v31, v2
	v_mul_f32_e32 v81, v78, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v32, v81, v78
	v_fmac_f32_e32 v81, v82, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v81, v78
	v_div_fmas_f32 v32, v32, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v217, v32, v31, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v10, v239
	v_mul_f32_e32 v31, v18, v118
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v100, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v226, v214
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v65, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v214, v2, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v99, v2
	v_mov_b32_e32 v99, v87
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v87.h, v251.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v87.l, v111.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v31, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v68, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v35, v68, 1.0
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v78, v68
	v_fma_f32 v82, -v35, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v68
	v_fma_f32 v35, -v35, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v214, v35, v34, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v53, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(7)
	v_fma_f32 v33, v33, v225, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v230, v33, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v66, v66, v1
	v_rcp_f32_e32 v68, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v65, v68, 1.0
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v1, v66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v78, v68
	v_fma_f32 v82, -v65, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v68
	v_fma_f32 v65, -v65, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v65, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v83, v68, v66, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v52, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v224, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v206, v1, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v32
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v2
	v_rcp_f32_e32 v65, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v32, v65, 1.0
	v_fmac_f32_e32 v65, v78, v65
	v_div_scale_f32 v78, vcc_lo, v2, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v78, v65
	v_fma_f32 v82, -v32, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v65
	v_fma_f32 v32, -v32, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v65, v81
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v65, 16, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v206, v32, v31, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v61, v65
	v_mul_f32_e32 v2, v55, v87
	v_mul_f32_e32 v31, v63, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v98, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v2, v2, v223, v205
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v33, v28, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, v205, v2, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v91, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v31, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v28
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v34, v35, 1.0
	v_fmac_f32_e32 v35, v78, v35
	v_div_scale_f32 v78, vcc_lo, v28, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v78, v35
	v_fma_f32 v82, -v34, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v35
	v_fma_f32 v34, -v34, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v35, v81
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v60, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v205, v34, v33, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v95, v1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v54, v87
	v_mul_f32_e32 v33, v62, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v35, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v221, v202
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v202, v28, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v90, v28
	v_mov_b32_e32 v90, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v33, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v1
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v35, v35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v78, -v66, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v1, v35, v1
	v_mul_f32_e32 v81, v78, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v66, v81, v78
	v_fmac_f32_e32 v81, v82, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v81, v78
	v_div_fmas_f32 v66, v66, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v202, v66, v35, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v41, v87
	v_mul_f32_e32 v35, v49, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v220, v201
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v201, v1, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v89, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v35, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v2
	v_rcp_f32_e32 v68, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v32, v68, 1.0
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v2, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v78, v68
	v_fma_f32 v82, -v32, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v68
	v_fma_f32 v32, -v32, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v201, v32, v31, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v40, v87
	v_mul_f32_e32 v31, v48, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v215, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v198, v2, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v77, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v31, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v34
	v_fma_f32 v78, -v34, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v28, v33, v28
	v_mul_f32_e32 v81, v78, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v34, v81, v78
	v_fmac_f32_e32 v81, v82, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v81, v78
	v_div_fmas_f32 v34, v34, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v198, v34, v33, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v28, v43, v87 :: v_dual_fmac_f32 v35, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v213, v197
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v197, v28, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v35, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v35, v35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v78, -v66, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, vcc_lo, v1, v35, v1
	v_mul_f32_e32 v81, v78, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v66, v81, v78
	v_dual_fmac_f32 v81, v82, v68 :: v_dual_mov_b32 v82, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v81, v78
	v_div_fmas_f32 v66, v66, v68, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v197, v66, v35, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v212, v196
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v196, v1, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v32
	v_fma_f32 v77, -v32, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v77, v68
	v_div_scale_f32 v77, vcc_lo, v2, v31, v2
	v_mul_f32_e32 v78, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v32, v78, v77
	v_fmac_f32_e32 v78, v81, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v78, v77
	v_div_fmas_f32 v32, v32, v68, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v196, v32, v31, v2
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v2, v182, v87 :: v_dual_mul_f32 v33, v51, v65
	v_mul_f32_e32 v35, v50, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v116, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, v33, v76, v28
	v_fma_f32 v35, v35, v75, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v195, v2, s2
	v_cndmask_b32_e64 v28, v28, v33, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v1, v1, v35, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v35, 0xbfb8aa3b, v1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v28
	v_rcp_f32_e32 v68, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v34, v68, 1.0
	v_fmac_f32_e32 v68, v76, v68
	v_div_scale_f32 v76, vcc_lo, v28, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v68
	v_fma_f32 v78, -v34, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v78, v68
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v78.h, v219.l
	v_mov_b16_e32 v78.l, v111.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v25, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v77, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v74, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v68, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v31, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v195, v34, v33, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v31, 0xbfb8aa3b, v2 :: v_dual_mul_f32 v28, v181, v87
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v24, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v108, v192
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v192, v28, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v73, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v35, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v33, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v35, v35, v1
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v75, v68
	v_div_scale_f32 v75, vcc_lo, v1, v35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v68
	v_fma_f32 v77, -v66, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v77, v68
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v77, v181, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v66, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v68, v76
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v192, v66, v35, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v184, v87
	v_mul_f32_e32 v35, v27, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v97, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v189, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v71, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v35, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v32
	v_fma_f32 v74, -v32, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v74, v68
	v_div_scale_f32 v74, vcc_lo, v2, v31, v2
	v_mul_f32_e32 v75, v74, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v32, v75, v74
	v_fmac_f32_e32 v75, v76, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v75, v74
	v_div_fmas_f32 v32, v32, v68, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v189, v32, v31, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v2, v183, v87 :: v_dual_mul_f32 v31, v26, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v142, v170
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v170, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v70, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v31, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v28
	v_rcp_f32_e32 v68, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v34, v68, 1.0
	v_fmac_f32_e32 v68, v73, v68
	v_div_scale_f32 v73, vcc_lo, v28, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v68
	v_fma_f32 v75, -v34, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v68
	v_fma_f32 v34, -v34, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v68, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v119, v34, v33, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v17, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v1
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v35, v35, v1
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v71, v68
	v_div_scale_f32 v71, vcc_lo, v1, v35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v71, v68
	v_fma_f32 v74, -v66, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v68
	v_fma_f32 v66, -v66, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v68, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v170, v66, v35, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v9, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(6)
	v_fma_f32 v1, v1, v64, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v227, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v69, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v28, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v2
	v_rcp_f32_e32 v68, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v32, v68, 1.0
	v_fmac_f32_e32 v68, v70, v68
	v_div_scale_f32 v70, vcc_lo, v2, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v68
	v_fma_f32 v73, -v32, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v68
	v_fma_f32 v32, -v32, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v68, v71
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v120, v32, v31, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v1
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v28, v28, v1
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v1, v28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v35, v34
	v_fma_f32 v66, -v33, v64, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v66, v34
	v_fma_f32 v33, -v33, v64, v35
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v16, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v33, v34, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v8, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v160, v33, v28, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, v34, v154, v235
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v235, v34, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v67, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v35, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v64
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v35, v35, v34
	v_rcp_f32_e32 v66, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v64, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v64, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v64, -v64, v68, v67
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v19, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v64, v64, v66, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v11, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v165, v64, v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v153, v240
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v240, v66, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v67, v0, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v66, v0, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v0, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v18, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v10, v87
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v125, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v143, v68, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v143, v67, v66, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v53, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v96, v68
	v_fma_f32 v0, v0, v200, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	v_cndmask_b32_e64 v0, v130, v0, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v130, 16, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v61, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v88, v0
	v_mov_b32_e32 v88, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, vcc_lo, v68, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v71
	v_fma_f32 v75, -v70, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v71
	v_fma_f32 v70, -v70, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v71, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v152, v70, v69, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v28, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v2, v28, 1.0
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v28
	v_fma_f32 v33, -v2, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v28
	v_fma_f32 v2, -v2, v32, v31
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v60, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v2, v2, v28, v32
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v52, v78
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v28, v28, v199, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v250, v28, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v86, v28
	v_mov_b32_e32 v86, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v31, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v28, v31, v28
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v32, v35, v34
	v_fmac_f32_e32 v35, v64, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v63, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v55, v78
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, v33, v144, v248
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v144, v32, v31, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v248, v33, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v80, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v35
	v_fma_f32 v66, -v35, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v66, v64
	v_div_scale_f32 v66, vcc_lo, v33, v34, v33
	v_mul_f32_e32 v67, v66, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v35, v67, v66
	v_fmac_f32_e32 v67, v68, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v35, v67, v66
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v62, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v35, v35, v64, v67
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v54, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v124, v35, v34, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v64, v64, v128, v109
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v128, v2, v1, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v40, v78
	v_mul_f32_e32 v1, v48, v130
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v109, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v35, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v194, v158
	v_fma_f32 v66, v66, v79, v64
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:344
	scratch_load_b32 v80, off, off offset:700
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v158, v0, s2
	v_cndmask_b32_e64 v64, v64, v66, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v253, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v0, v1, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v64, v66, v64
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v67, v70, v69
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v49, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v41, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v67, v66, v64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v68, v68, v115, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v188, v68, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v255, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v72, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v73, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v70, v73, v72
	v_fmac_f32_e32 v73, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v73, v72
	v_div_fmas_f32 v70, v70, v71, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v103, v70, v69, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, null, v115, v115, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v2, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v2, v1
	v_div_scale_f32 v2, vcc_lo, v94, v115, v94
	v_mul_f32_e32 v28, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v0, v28, v2
	v_fmac_f32_e32 v28, v31, v1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v111.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v0, v28, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v57, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v117, v0, v1, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v36, v239
	v_mul_f32_e32 v28, v56, v118
	v_mul_f32_e32 v0, v37, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v1, v30, v155
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v59, v118
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v0, v0, v193, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v155, v1, s2
	v_cndmask_b32_e64 v0, v157, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v216, v1
	v_fma_f32 v2, v2, v218, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v1, v28, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v1, off, off offset:904 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v0, v2, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v39, v239
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v185, v0, v29, v126
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v38, v239
	v_mul_f32_e32 v29, v58, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v126, v185, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v30, v204, v2
	s_waitcnt vmcnt(0)
	v_fma_f32 v159, v0, v1, v191
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v0, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v81, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v191, v159, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v129, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v1, v31, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v2, v30, s3
	v_cndmask_b32_e64 v2, v28, v29, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v32, off, off offset:248
	scratch_load_b32 v29, off, off offset:884
	scratch_load_b32 v129, off, off offset:8
	scratch_load_b32 v30, off, off offset:728
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, v111.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v93
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v89.h, 0x7fff, v31.h, vcc_lo
	v_mov_b16_e32 v31.h, v111.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v111.h, v0.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v85, v101 :: v_dual_mul_f32 v55, v55, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v41, v111
	v_mul_f32_e32 v54, v54, v111
	v_mul_f32_e32 v40, v40, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v2, v242
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v175, v239
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v89.l, 0x7fff, v28.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v33.l, v0.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v29, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v176, v239
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v28, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v0, v0
	v_and_b32_e32 v33, 1, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v32, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v29, v29, v30, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v1.h
	v_mov_b16_e32 v30.h, v111.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v45, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v0, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v30, 1, v30
	v_cndmask_b16 v188.l, 0x7fff, v33.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v1, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v129, v29, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v44, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v188.h, 0x7fff, v30.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v208, v1
	v_fma_f32 v29, v29, v209, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v47, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v1, v32, s3
	v_cndmask_b32_e64 v1, v2, v29, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v29, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v177, v239
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v241
	v_mul_f32_e32 v1, v1, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v31.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v1, v1
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v1, v31, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v28, v186
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v178, v239
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v186, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v28, v28, v29, v203
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e32 v29.h, v111.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v203, v28, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v46, v118
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v30, v166, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, v28, v163, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v0, v30, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, v2, v28, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off
	scratch_load_b32 v28, off, off offset:712
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v4, v239
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:4
	scratch_load_b32 v30, off, off offset:716
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v133 :: v_dual_mul_f32 v2, v2, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v28, v0, v28, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v5, v239
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v32, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v32, off, off offset:888 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v0, v30, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v21, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v33, v30, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v20, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v30, v207, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v30, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:392
	scratch_load_b32 v30, off, off offset:704
	s_waitcnt vmcnt(2)
	v_fma_f32 v31, v31, v32, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v1.h
	v_mov_b16_e32 v32.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v1, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v29, v31, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:396
	scratch_load_b32 v31, off, off offset:708
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v2.h
	v_mov_b16_e32 v29.h, v111.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v2, v29, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v28, v106
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v6, v239
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v28, v28, v30, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v7, v239
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v33, v28, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v23, v118
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v30, v30, v31, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v1.h
	v_mov_b16_e32 v31.h, v111.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v1, v31, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v34, v30, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v22, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v2.h
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v180, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, v30, v179, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v179.l, 0x7fff, v29.h, s1
	v_and_b32_e32 v34, 1, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:232
	scratch_load_b32 v29, off, off offset:688
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v180.h, 0x7fff, v31.h, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v33, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v179.h, 0x7fff, v32.h, vcc_lo
	v_add3_u32 v34, v2, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v28, v30, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v31, off, off offset:388
	scratch_load_b32 v30, off, off offset:876
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v28, v171, v239 :: v_dual_mul_f32 v1, v1, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v32, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v222
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v33, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v180.l, 0x7fff, v34.h, s5
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v28, v28, v29, v155
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v172, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v155, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v29, v29, v30, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v1.h
	v_mov_b16_e32 v30.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v1, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v31, v29, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v31, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v12, v118
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, v29, v31, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v13, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v29, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v32, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v2.h
	v_mov_b16_e32 v32.h, v111.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:224
	scratch_load_b32 v29, off, off offset:680
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v214
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v32, v2, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v1, v31, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:228
	scratch_load_b32 v31, off, off offset:684
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v1, v173, v239 :: v_dual_mul_f32 v2, v2, v217
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, v1, v29, v126
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v174, v239
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v126, v29, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v31, v1, v31, v191
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.l, 0x7fff, v32.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v32, off, off offset:856 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v191, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v14, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v28, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v31, v31, v32, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v15, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v31, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v33, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v2.h
	v_mov_b16_e32 v33.h, v111.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:216
	scratch_load_b32 v31, off, off offset:672
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v2, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v30, v32, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:220
	scratch_load_b32 v32, off, off offset:676
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v28.h
	v_mov_b16_e32 v30.h, v111.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	v_cmp_o_f32_e64 s4, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v28, v30, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v28, v29, v206 :: v_dual_mul_f32 v29, v36, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v28, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, v29, v31, v129
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v37, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v129, v29, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v31, v31, v32, v155
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v2.h
	v_mov_b16_e32 v32.h, v111.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v32, v2, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v155, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v56, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.h, 0x7fff, v32.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v32, off, off offset:668 ; 4-byte Folded Reload
	v_fma_f32 v31, v31, v34, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v57, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v31, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:212
	scratch_load_b32 v31, off, off offset:664
	v_fma_f32 v34, v34, v35, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v28.h
	v_mov_b16_e32 v35.h, v111.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v28, v35, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v2, v34, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.h, 0x7fff, v33.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:832
	scratch_load_b32 v34, off, off offset:828
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.l, 0x7fff, v30.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v38, v87
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v205
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	v_cndmask_b16 v67.l, 0x7fff, v35.h, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:380
	scratch_load_b32 v64, off, off offset:652
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v30, v30, v31, v191
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v39, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v191, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v32, v167
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v28.h
	v_mov_b16_e32 v32.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v28, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v167, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v58, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.h, 0x7fff, v32.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v44, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v31, v31, v33, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v59, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, v33, v34, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v29.h
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v33, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v201
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v29, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v31, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:376
	scratch_load_b32 v31, off, off offset:648
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v175, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v68.l, 0x7fff, v34.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:820 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v30, v31, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v176, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v33, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v33, off, off offset:824 ; 4-byte Folded Reload
	v_fma_f32 v31, v31, v64, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v35, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v33, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v45, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v32, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v34, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:204
	scratch_load_b32 v32, off, off offset:640
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v34, v28, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v31, v33, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:208
	scratch_load_b32 v33, off, off offset:644
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v29.h
	v_mov_b16_e32 v31.h, v111.l
	v_cndmask_b16 v166.h, 0x7fff, v34.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v197
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s4, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v29, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v30, v196 :: v_dual_mul_f32 v30, v177, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v166.l, 0x7fff, v31.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:196
	scratch_load_b32 v31, off, off offset:632
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v30, v30, v32, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v178, v87
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v35, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v35, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fma_f32 v32, v32, v33, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v28, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v64, v32, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v46, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v167.h, 0x7fff, v33.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v33, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v32, v32, v35, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v47, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v35, v35, v64, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v29.h
	v_mov_b16_e32 v64.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v35, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v195
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v64, v29, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v32, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:200
	scratch_load_b32 v32, off, off offset:636
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v4, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v167.l, 0x7fff, v64.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v192
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:192
	scratch_load_b32 v64, off, off offset:624
	v_fma_f32 v30, v30, v31, v126
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v5, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v126, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v31, v31, v32, v155
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v28.h
	v_mov_b16_e32 v32.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v28, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v155, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v20, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v163.h, 0x7fff, v32.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v22, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v33, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v21, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v34, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v29.h
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v33, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v189
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v29, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v31, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:368
	scratch_load_b32 v31, off, off offset:592
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v6, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v163.l, 0x7fff, v34.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v30, v31, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v7, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v33, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v33, off, off offset:800 ; 4-byte Folded Reload
	v_fma_f32 v31, v31, v64, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v35, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v33, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v23, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v32, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v34, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:580
	scratch_load_b32 v35, off, off offset:236
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v34, v28, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v31, v33, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:584
	scratch_load_b32 v64, off, off offset:240
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v29.h
	v_mov_b16_e32 v31.h, v111.l
	v_cndmask_b16 v157.h, 0x7fff, v34.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v170
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s4, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v29, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v30, v120 :: v_dual_mul_f32 v30, v171, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v157.l, 0x7fff, v31.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:184
	scratch_load_b32 v31, off, off offset:572
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v30, v30, v32, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v172, v87
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v35, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v35, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fma_f32 v32, v32, v33, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v28, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v64, v32, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v12, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v158.h, 0x7fff, v33.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v33, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v32, v32, v35, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v13, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v35, v35, v64, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v29.h
	v_mov_b16_e32 v64.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v35, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v160
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v64, v29, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v32, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:188
	scratch_load_b32 v32, off, off offset:576
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v173, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v158.l, 0x7fff, v64.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v165
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:180
	scratch_load_b32 v64, off, off offset:568
	v_fma_f32 v30, v30, v31, v129
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v174, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v129, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v31, v31, v32, v191
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v28.h
	v_mov_b16_e32 v32.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v28, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v191, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v14, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v155.h, 0x7fff, v32.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v56, v130
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v33, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v15, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v34, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v29.h
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v33, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v143
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v29, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v31, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:176
	scratch_load_b32 v31, off, off offset:564
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v36, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v155.l, 0x7fff, v34.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v30, v31, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v37, v78
	v_mul_f32_e32 v37, v37, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v33, v30, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v64, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v57, v130
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v151, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v35, v31, s2
	v_cndmask_b32_e64 v30, v30, v32, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v33, v33, v34, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v204, off, off offset:772
	scratch_load_b32 v32, off, off offset:548
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v34, v28, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v31, v33, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:172
	scratch_load_b32 v33, off, off offset:552
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v29.h
	v_mov_b16_e32 v31.h, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v28, v28, v128 :: v_dual_and_b32 v31, 1, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v29, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v30, v144
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v38, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v30, v30, v32, v204
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v39, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v204, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v32, v32, v33, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v111.l
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v33, v28, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v35, v32, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v59, v130
	v_mul_f32_e32 v35, v58, v130
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v151.h, 0x7fff, v33.h, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v150, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v150.l, 0x7fff, v31.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:160
	scratch_load_b32 v31, off, off offset:524
	v_fma_f32 v35, v35, v147, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v150.h, 0x7fff, v34.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v32, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v111.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:168
	scratch_load_b32 v33, off, off offset:724
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v32, v29, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v35, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:156
	scratch_load_b32 v65, off, off offset:720
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v28.h
	v_mov_b16_e32 v30.h, v111.l
	v_cndmask_b16 v151.l, 0x7fff, v32.h, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:164
	scratch_load_b32 v32, off, off offset:528
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v29, v123 :: v_dual_and_b32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v28, v30, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v175, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(6)
	v_fma_f32 v28, v28, v31, v129
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v176, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v129, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v32, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v43, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v64, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v33, v34
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v42, v78
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v64, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v42, v42, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v34, v32, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v65, v35
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v51, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v35, v33, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v35, off, off offset:868 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v34, v3, v32
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v50, v130
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v32, v3, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v32, v45, v130 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v149, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v32, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, s1
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v65, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v34, v34, v64, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v29.h
	v_mov_b16_e32 v64.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v44, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v64
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v64, s27, v127
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v34, v146, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v146.h, 0x7fff, v30.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v31, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v29, v66, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v29.h, v111.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v30.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v146.l, 0x7fff, v66.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v65, v31
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v177, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v30, v29, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:152
	scratch_load_b32 v30, off, off offset:520
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v34, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v117, v115, v94
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b32_e32 v35, 1, v35
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v141, s27, 5, v64
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v111.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v31, v31, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v28.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v65
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v178, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v70, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v28, v28
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v28, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v32, v32, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v30, v65, v30, v72
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:148
	scratch_load_b32 v65, off, off offset:516
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v72, v30, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v69, v70, 1.0
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v30, v70
	v_div_scale_f32 v30, s4, v3, v31, v3
	v_mul_f32_e32 v76, v30, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v66, v65, v73
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v47, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v46, v130
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v66, v148, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v71, v72, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v148.h, 0x7fff, v29.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v65, v145, v73
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v182, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v66, v72
	v_fma_f32 v66, -v69, v76, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v75, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v148.l, 0x7fff, v34.h, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v80, v79
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:340
	scratch_load_b32 v80, off, off offset:696
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v66, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v5, v78
	v_mul_f32_e32 v5, v5, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v79, v65, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v79, v25, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v69, v76, v30
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v145, s27, 4, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v79, v79, v82, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v30, v70, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v65, v79, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[65:66], null, s27, 48, v[64:65]
	v_add3_u32 v66, s33, s26, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v30, v31, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v73, v74, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v75, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v74, v183, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v28, v3 :: v_dual_add_nc_u32 v142, 0x80, v66
	s_mov_b32 s27, 0x31027000
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v75
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v77, v77, v80, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, s5, v33, v32, v33
	s_mov_b32 vcc_lo, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v81, v77, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v81, v24, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v82, v80, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v81, v81, v246, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v71, v82, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v77, v81, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v82, v35, v72
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v77, off, off offset:136
	scratch_load_b32 v75, off, off offset:660
	scratch_load_b32 v81, off, off offset:768
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v69
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v71, v82, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v80, v26, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v70, v70, v72, v82
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	v_cndmask_b32_e64 v29, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v70, v32, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v111.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v28, v29
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v30, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v3.h
	v_mov_b16_e32 v31.h, v111.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v35, v32
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v4, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v29.h
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_and_b32 v33, 1, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v3, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v30, v30, v79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v149.h, 0x7fff, v31.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:144
	scratch_load_b32 v31, off, off offset:512
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v3, v3, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v29, v33, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v149.l, 0x7fff, v33.h, s1
	v_mov_b16_e32 v33.h, v111.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v32, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v28, v71, v28 :: v_dual_mul_f32 v71, v184, v78
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v71, v71, v75, v77
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v20, v130
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v77, v71, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, s4, v69, v3, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v34, v31, v73
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:140
	scratch_load_b32 v34, off, off offset:508
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v73, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v35, v34, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v35, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v72, v34, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, vcc_lo, v79, v30, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v21, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v70, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v76, v72, v28 :: v_dual_fmac_f32 v35, v73, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:132
	scratch_load_b32 v73, off, off offset:656
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v82, v77, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v74, v73, v126
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v27, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v126, v73, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v243, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, v80, v84, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v74, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v74, off, off offset:764 ; 4-byte Folded Reload
	v_fma_f32 v75, v75, v81, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v81, -v32, v76, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v80, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v81, v28
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v81, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v80
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v80, v16, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v76, v72
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v32, v28, v76
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v71
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:124
	scratch_load_b32 v76, off, off offset:628
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v28, v30, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v75, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s5
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v75, v8, v78
	v_mul_f32_e32 v8, v8, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v34, v34, v74, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v70, v82, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v34, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v82, v74, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v29, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v70, v82, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v35, v82
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v147, 16, v244
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v32, v3, v69
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v56, v147
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v30, v3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v35, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v28.h
	v_mov_b16_e32 v31.h, v111.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v7, v78
	v_mul_f32_e32 v35, v6, v78
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_and_b32 v31, 1, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v3.h
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v62, v62, v147 :: v_dual_mul_f32 v97, v15, v130
	v_mul_f32_e32 v48, v48, v147
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v28, v31, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v30, v30, v71
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	v_cndmask_b16 v137.h, 0x7fff, v31.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:128
	scratch_load_b32 v31, off, off offset:504
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v29, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v3, v33, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v63, v63, v147
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v44, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v28, v28, v73
	v_div_scale_f32 v79, s4, v73, v28, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v137.l, 0x7fff, v33.h, s1
	v_mov_b16_e32 v33.h, v111.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v32, v29, 1.0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v57, v147
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v24, v147
	v_mul_f32_e32 v49, v49, v147
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v46, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v29, v70, v29 :: v_dual_mul_f32 v70, v9, v78
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v20, v147
	v_mul_f32_e32 v45, v45, v147
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v26, v147
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v70, v70, v76, v191
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v22, v130
	v_mul_f32_e32 v22, v22, v147
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v25, v147
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v47, v147
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v191, v70, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v27, v27, v147
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v111
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v9, v111
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v15, v147
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v34, v31, v72
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:336
	scratch_load_b32 v34, off, off offset:500
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v72, v31, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, vcc_lo, v71, v30, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v72, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v35, v34, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v35, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v126, v34, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v23, v130
	v_mul_f32_e32 v23, v23, v147
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v69, v35, 1.0
	v_fmac_f32_e32 v35, v74, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:120
	scratch_load_b32 v74, off, off offset:588
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v82, v79, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v74, v75, v74, v129
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v75, v17, v130
	v_mul_f32_e32 v17, v17, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v129, v74, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v88, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, v80, v254, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v75, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v75, off, off offset:756 ; 4-byte Folded Reload
	v_fma_f32 v76, v76, v81, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v81, -v32, v77, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v80, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v80, 0xbfb8aa3b, v70 :: v_dual_fmac_f32 v77, v81, v29
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v77, v72
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v32, v29, v77
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v29, v30, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v76, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:108
	scratch_load_b32 v76, off, off offset:560
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v34, v34, v75, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v69, v82, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v34, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v82, v75, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v74
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v75, v10, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v69, v82, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v34
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v79, v18, v130
	v_mul_f32_e32 v18, v18, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v35, v82
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v32, v28, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v30, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v35, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v3.h
	v_mov_b16_e32 v31.h, v111.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v172, v78
	v_mul_f32_e32 v35, v171, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v28.h
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s1, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_and_b32 v33, 1, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v3, v31, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v30, v30, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v28, v33, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v31.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:116
	scratch_load_b32 v31, off, off offset:496
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v29, v32
	v_div_scale_f32 v72, vcc_lo, v70, v30, v70
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v133.l, 0x7fff, v33.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v3, v3, v74
	v_div_scale_f32 v81, s4, v74, v3, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v111.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v32, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v71, v29
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v11, v78
	v_mul_f32_e32 v11, v11, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v77, v72, v29
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v71, v71, v76, v129
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v12, v130
	v_mul_f32_e32 v12, v12, v147
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v129, v71, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v34, v31, v126
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:112
	scratch_load_b32 v34, off, off offset:492
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v126, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v35, v34, v191
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v35, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v191, v34, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v13, v130
	v_mul_f32_e32 v13, v13, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v69, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v35, v73, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:104
	scratch_load_b32 v73, off, off offset:556
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v82, v81, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v75, v73, v126
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v75, v19, v130
	v_mul_f32_e32 v19, v19, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v126, v73, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v252, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, v79, v86, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v71, v75, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v71, off, off offset:748 ; 4-byte Folded Reload
	v_fma_f32 v76, v76, v80, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v80, -v32, v77, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v80, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v73, v83, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v79
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v77, v72
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v72, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v73
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v32, v29, v77
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v29, v29, v30, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v76, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v34, v34, v71, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v69, v82, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v34, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v82, v71, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, s5
	v_mul_f32_e32 v34, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v69, v82, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v79
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v35, v82
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v71
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v32, v3, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v3, v30, v3
	v_ldexp_f32 v30, v35, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v28.h
	v_mov_b16_e32 v31.h, v111.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v3.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v3, v3
	v_and_b32_e32 v30, 1, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v35, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v87, null, v81, v81, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v28, v30, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v174, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v86, v87
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v60, v147
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v127.h, 0x7fff, v30.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:100
	scratch_load_b32 v30, off, off offset:488
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v85, 1.0, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v173, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v78, v3, v31, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:92
	scratch_load_b32 v31, off, off offset:464
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v53, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v85, v85, v80
	v_div_scale_f32 v33, s4, v80, v85, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v127.l, 0x7fff, v78.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v93, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v28, v28, v30, v191
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:96
	scratch_load_b32 v30, off, off offset:484
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v31, v126
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v191, v28, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, vcc_lo, v79, v81, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v14, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v126, v3, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v14, v147
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v29, v30, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v87, v86, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v129, v29, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v88, v93, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v30, v86
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v30, v52, v111 :: v_dual_fmac_f32 v93, v29, v93
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:84
	scratch_load_b32 v29, off, off offset:460
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v32, v28, v86
	v_mul_f32_e32 v52, v33, v93
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v30, v29, v191
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v61, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v191, v29, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v30, v99, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, v34, v90, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v30, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v30, off, off offset:740 ; 4-byte Folded Reload
	v_fma_f32 v31, v31, v35, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v87, v32, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v94, v31, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v35, v86
	v_fma_f32 v35, -v88, v52, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v87, v32, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v35, v93
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v34, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v86, v32
	v_fma_f32 v32, -v88, v52, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v28, v81, v79
	v_div_fmas_f32 v32, v32, v93, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s6
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v36, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v85, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v34, v35
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v35.h, v111.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_and_b32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v31, v35, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v30, v97, v30, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v96, v30, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v30, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v111.l
	v_mov_b16_e32 v33.l, v28.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v34
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v32, v32, v3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v28, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.h, 0x7fff, v33.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:80
	scratch_load_b32 v33, off, off offset:436
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, null, v28, v28, v29
	v_fma_f32 v60, -v34, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v30, v60, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v37, v33, v129
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:76
	scratch_load_b32 v37, off, off offset:432
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v129, v33, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:68
	scratch_load_b32 v60, off, off offset:452
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v72, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v57, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v37, v52, v37, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v53
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v55, v60, v129
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v126, v37, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:60
	scratch_load_b32 v70, off, off offset:448
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, vcc_lo, v3, v32, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v129, v55, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v53, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v69, v60, v30 :: v_dual_fmac_f32 v52, v61, v52
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v63, v238, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, s1, v29, v28, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v61, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v61, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v55
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v71
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v54, v54, v70, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v70, v63, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v126, v54, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v62, v62, v237, v54
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v54, v62, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v56, v56, v61, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v34, v69, v60
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s4
	v_mul_f32_e32 v57, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v69, v61, v30
	v_fma_f32 v61, -v53, v70, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v69, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v70, v61, v52
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:48
	scratch_load_b32 v61, off, off offset:416
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v34, v30, v69
	v_fma_f32 v34, -v53, v70, v63
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v53, v62
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v30, v32, v3
	v_div_fmas_f32 v34, v34, v52, v70
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v37, v56, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v33, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v34, v28, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v35.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v39, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:56
	scratch_load_b32 v39, off, off offset:404
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v53, v32
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v30, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v3.h
	v_mov_b16_e32 v30.h, v111.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v38, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s5
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v111.l
	v_add3_u32 v30, v3, v30, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v31, v31, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v28, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v29, v29, v54
	v_fma_f32 v52, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v34, v52, v34
	v_div_scale_f32 v52, vcc_lo, v55, v31, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v40, v40, v61, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v61, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v60, v40, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v136, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v48, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v35, v35, v39, v56
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:324
	scratch_load_b32 v39, off, off offset:400
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v56, v35, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v59, v147
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, v56, v61, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v56, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v37, v39, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v53, v37, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v58, v147
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:52
	scratch_load_b32 v59, off, off offset:428
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v38, v39, 1.0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v57, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v57, v52, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v53, s4, v54, v29, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v37, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v37.h, 0x7fff, v30.h, s1
	v_cmp_o_f32_e64 s1, v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v33.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v175, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, v41, v59, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v59, v53, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v58, v41, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v32, v57, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v49, v49, v138, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v58, v34
	v_fma_f32 v58, -v38, v59, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v49, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v57, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v58, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v34, v57
	v_fma_f32 v34, -v38, v59, v53
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v32, v31, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v39, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v43, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:44
	scratch_load_b32 v43, off, off offset:364
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v3.h
	v_mov_b16_e32 v31.h, v111.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v34, v29, v54
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v32, v38
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:36
	scratch_load_b32 v54, off, off offset:412
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v35, v29 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v111.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v3, v31, 0x7fff
	v_mov_b16_e32 v35.l, v29.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v32, v30
	v_exp_f32_e32 v32, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v29, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v28, v28, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.h, 0x7fff, v31.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v176, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v32, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v30, v30, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v48, v34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v31, v31, v43, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:40
	scratch_load_b32 v43, off, off offset:360
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v53, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v39, v39, v54, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v49, v39, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, vcc_lo, v41, v28, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v43, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v35, v32, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v52, v33, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:32
	scratch_load_b32 v52, off, off offset:408
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v43, v32
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v51, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v34, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v112, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v43, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v50, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, s1, v40, v30, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v51, 0xbfb8aa3b, v39 :: v_dual_mul_f32 v54, v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v39
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v52, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v49, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v53, v42, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v53, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v231, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v43, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v43, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v44, v44, v53, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v35, v52, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v44, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v52, v53, v32 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v45, v43, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v34, v54, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v35, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v43, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v45, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v35, v32, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v54, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v32, v28, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s5
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:20
	scratch_load_b32 v52, off, off offset:384
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v48, v54
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v31, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v111.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v34, v30, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.l, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v31.l, v28.h
	v_cmp_o_f32_e64 s1, v28, v28
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v45, v32
	v_ldexp_f32 v35, v43, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 1, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v177, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v43, v178, v111 :: v_dual_add_f32 v32, 1.0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v33.h
	v_mov_b16_e32 v29.h, v111.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v28, v3, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v32, v32, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v34, v34, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v33, v29, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:24
	scratch_load_b32 v29, off, off offset:348
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v35, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v30, v35, 1.0
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v44, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, s4, v42, v32, v42
	v_mul_f32_e32 v50, v44, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v31, v29, v48
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:28
	scratch_load_b32 v31, off, off offset:352
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v43, v31, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v39, v34, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v49, v31, s2
	v_cndmask_b32_e64 v31, v48, v29, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v182, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v43, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v52, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v30, v29, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v51, v48, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v49, v35
	v_fma_f32 v49, -v40, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v114, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v30, v29, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v49, v41
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v181, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v30, v35, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v40, v50, v44
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:16
	scratch_load_b32 v29, off, off offset:372
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v30, v30, v34, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v46, v46, v52, v31
	scratch_load_b32 v52, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v40, v43, v29, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v48, v25, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v35, v41, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v31, v46, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v35, v44, v40, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v25, v32, v42
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v42, v183, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v24, v113, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:12
	scratch_load_b32 v40, off, off offset:332
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v3.h, s1
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v35, v31, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v111.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v24.l, 0x7fff, v45.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v32, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v47, v47, v52, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v47, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v28, v30 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v31
	v_mul_f32_e32 v30, v41, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v111.l
	v_mov_b16_e32 v25.l, v3.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v3, v3
	v_mov_b16_e32 v33.l, v30.h
	v_and_b32_e32 v35, 1, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s4
	v_ldexp_f32 v32, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v28, v3, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v31
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v35, v184, v111 :: v_dual_add_f32 v32, 1.0, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v5, v40, v39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:292
	scratch_load_b32 v40, off, off offset:328
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v3, v34
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v30, v33, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v4, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v5, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v4, null, v32, v32, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v3, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v34, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v40, v33, v40, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v35, v34, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v41, v40, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v21, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v5, v5, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v210, v34, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v4, v33, 1.0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v161, v39
	v_fma_f32 v20, v20, v162, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v27, v92, v41
	scratch_load_b32 v27, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v32, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v40, s3
	v_cndmask_b32_e64 v20, v35, v20, s3
	v_cndmask_b32_e64 v3, v41, v3, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v44, v34, v33 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v3
	v_fma_f32 v45, -v4, v44, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v45, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v4, -v4, v44, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v4, v4, v33, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v4, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v39, v4
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v41, v45
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v33, v33, v3
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v27, v42, v27, v168
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v168, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v245, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v21, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v27, v26, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v27, s5, v31, v5, v31
	s_mov_b32 vcc_lo, s5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v27, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v21, v46, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v40, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v21, v46, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s6
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v39, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v42, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v4.h
	v_mov_b16_e32 v30.h, v111.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v187, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v21, v5, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v111.l
	v_cndmask_b16 v28.l, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v35, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:300
	scratch_load_b32 v40, off, off offset:88
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v20, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v134, v6
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v5.h
	v_add3_u32 v25, v4, v25, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v22, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v21, v21, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, vcc_lo, v3, v33, v3
	v_rcp_f32_e32 v32, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v29, v27, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v5, v30, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v22, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v34, v27
	v_fma_f32 v34, -v20, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v34, v32
	v_div_scale_f32 v34, s1, v26, v21, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v7, v7, v35, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v31, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v40, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v29, v35, v31
	v_mul_f32_e32 v40, v34, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v135, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v39, v27
	v_fma_f32 v39, -v20, v40, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v23, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v29, v35, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v39, v32
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v29, v27, v35
	v_fma_f32 v20, -v20, v40, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v5, v5
	v_mov_b32_e32 v34, 0x7632
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v27, v33, v3
	v_div_fmas_f32 v20, v20, v32, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v7, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v20, v21, v26
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v21, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v3, v3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.h, v111.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v20.l, v6.h
	v_and_b32_e32 v5, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v6, v5, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v9, v31, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v190, v9, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v22, v9
	scratch_load_b32 v22, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v8, v21, v169
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v9, v17, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v3.h
	v_mov_b16_e32 v17.h, v111.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v21, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v169, v8, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v8, v16, v147 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v30.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v8, v8, v164, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v8, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v3, v8, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v10, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v10, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_exp_f32_e32 v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v9, v9, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v20, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v11, v10, v156
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v172, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v156, v10, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v21, v10
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v171, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v3, v20, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v9, v9, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v19, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:72
	scratch_load_b32 v19, off, off offset:284
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v139, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v22, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v18, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:64
	scratch_load_b32 v18, off, off offset:280
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v20, v23, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v23, v22, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v22, null, v17, v17, v7
	v_rcp_f32_e32 v26, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v22, v26, 1.0
	v_fmac_f32_e32 v26, v32, v26
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v11, v11, v19, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v25, v11, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s5, v4, v9, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v131, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v21, v18, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v10
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v27, v18, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v27, v25, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v13, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v132, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v20, v27, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v174, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v18, v12, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v31, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v19, v19, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s1, v7, v17, v7
	v_fma_f32 v20, -v20, v27, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v25, v29, v26
	v_div_fmas_f32 v20, v20, v23, v27
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v22, v25, v29
	v_div_fixup_f32 v4, v20, v9, v4
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v173, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v23, v26
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v23, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v19, v19, v10
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v22, v25, v29
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v11, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.h, v111.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v21, v21, v3
	v_div_fmas_f32 v22, v22, v26, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v29, v133, v36, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v22, v17, v7
	v_fma_f32 v9, -v30, v32, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b32_e64 v22, v149, v146, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v7, v12, v7 :: v_dual_fmac_f32 v32, v9, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v9, s4, v10, v19, v10
	v_fma_f32 v18, -v31, v33, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v4, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v18, v33
	v_div_scale_f32 v18, s5, v3, v21, v3
	v_mul_f32_e32 v27, v18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v31, v27, v18
	v_fmac_f32_e32 v27, v26, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v26, v137, v127, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v31, v27, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v31, v28, v38, s0
	v_cndmask_b32_e64 v28, v38, v28, s0
	v_cndmask_b32_e64 v18, v150, v158, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v23, v140
	scratch_load_b32 v23, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v140, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v121, v20
	s_waitcnt vmcnt(0)
	v_fma_f32 v13, v13, v23, v211
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v23, v9, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v211, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v30, v23, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v122, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v23, v25, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v25, v127, v137, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v13, v15, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v30, v23, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v20, v14, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v14, v166, v163, s0
	v_cndmask_b32_e64 v30, v24, v37, s0
	v_cndmask_b32_e64 v24, v37, v24, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v9, v9, v32, v23
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v23, v146, v149, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v17, v33, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v19, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e32 v10.h, v111.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v17, v21, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v5.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v12, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v111.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v13, v3 :: v_dual_and_b32 v10, 1, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v111.l
	v_mov_b16_e32 v12.l, v9.h
	v_cmp_o_f32_e64 s3, v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v6, v7, v10, 0x7fff
	v_mov_b16_e32 v13.l, v3.h
	v_cmp_o_f32_e64 s4, v3, v3
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b32_e64 v17, v157, v155, s0
	v_cndmask_b32_e64 v19, v158, v150, s0
	v_and_b32_e32 v10, 1, v13
	v_cndmask_b32_e64 v21, v151, v148, s0
	v_add3_u32 v7, v9, v12, 0x7fff
	v_cndmask_b32_e64 v9, v2, v180, s0
	v_cndmask_b32_e64 v2, v180, v2, s0
	v_add3_u32 v4, v3, v10, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v11.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s3
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s4
	v_cndmask_b32_e64 v4, v0, v89, s0
	v_cndmask_b32_e64 v0, v89, v0, s0
	v_cndmask_b32_e64 v32, v3, v16, s0
	v_cndmask_b32_e64 v3, v16, v3, s0
	v_mov_b32_e32 v16, 0x5410
	v_cndmask_b32_e64 v10, v67, v1, s0
	v_cndmask_b32_e64 v1, v1, v67, s0
	v_cndmask_b32_e64 v33, v5, v8, s0
	v_cndmask_b32_e64 v5, v8, v5, s0
	v_permlanex16_b32 v8, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v16, s0
	v_cndmask_b32_e64 v16, 0x3276, v34, s0
	v_permlanex16_b32 v35, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, v188, v179, s0
	v_cndmask_b32_e64 v12, v68, v167, s0
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v1, v16, 8, v16
	v_cndmask_b32_e64 v6, v179, v188, s0
	v_cndmask_b32_e64 v11, v167, v68, s0
	v_cndmask_b32_e64 v13, v163, v166, s0
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v1, 0x760076, v1
	v_cndmask_b32_e64 v15, v155, v157, s0
	v_cndmask_b32_e64 v20, v148, v151, s0
	v_cndmask_b32_e64 v27, v36, v133, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v1, 4, v1
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v0
	v_and_b32_e32 v37, 0x7060706, v1
	v_permlanex16_b32 v28, v28, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v8, v4, v36
	v_perm_b32 v1, v8, v4, v37
	v_perm_b32 v2, v7, v6, v36
	v_perm_b32 v3, v7, v6, v37
	v_perm_b32 v4, v34, v9, v36
	v_perm_b32 v5, v34, v9, v37
	v_perm_b32 v6, v35, v10, v36
	v_perm_b32 v7, v35, v10, v37
	v_perm_b32 v8, v12, v11, v36
	v_perm_b32 v9, v12, v11, v37
	v_perm_b32 v10, v14, v13, v36
	v_perm_b32 v11, v14, v13, v37
	v_perm_b32 v12, v16, v15, v36
	v_perm_b32 v13, v16, v15, v37
	v_perm_b32 v14, v17, v18, v36
	v_perm_b32 v15, v17, v18, v37
	v_perm_b32 v16, v19, v20, v36
	v_perm_b32 v17, v19, v20, v37
	v_perm_b32 v18, v21, v22, v36
	v_perm_b32 v19, v21, v22, v37
	v_perm_b32 v20, v23, v25, v36
	v_perm_b32 v21, v23, v25, v37
	v_perm_b32 v22, v26, v27, v36
	v_perm_b32 v23, v26, v27, v37
	v_perm_b32 v24, v29, v30, v36
	v_perm_b32 v25, v29, v30, v37
	v_perm_b32 v26, v28, v31, v36
	v_perm_b32 v27, v28, v31, v37
	v_perm_b32 v28, v38, v32, v36
	v_perm_b32 v29, v38, v32, v37
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v66, v64, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v34, v66, v145, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v32, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v142, v145, 1
	v_add_lshl_u32 v1, v66, v141, 1
	v_add_lshl_u32 v2, v142, v141, 1
	v_add_lshl_u32 v3, v66, v65, 1
	v_perm_b32 v30, v39, v33, v36
	v_perm_b32 v31, v39, v33, v37
	v_add_lshl_u32 v4, v142, v65, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 912
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 912
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 38108
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 912
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 912
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 401
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
