	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v91, 4, v0
	v_lshrrev_b32_e32 v92, 2, v0
	v_and_b32_e32 v240, 15, v0
	v_or_b32_e32 v101, 0x3f0, v0
	v_or_b32_e32 v102, 0x7f0, v0
	v_or_b32_e32 v93, 16, v91
	v_or_b32_e32 v94, 32, v91
	v_or_b32_e32 v95, 48, v91
	v_or_b32_e32 v107, 0xbf0, v0
	v_or_b32_e32 v108, 0xff0, v0
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
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s27, v91
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s33, s27, 48
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v97, v240, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_nc_u32_e32 v98, s33, v97
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_sub_i32 s5, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s4, s5
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s26, v92
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	s_mov_b64 s[28:29], s[14:15]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s2, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s2
	s_mul_hi_u32 s2, s4, s17
	s_xor_b32 s17, s5, s7
	s_mul_i32 s18, s2, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s4, s4, s18
	s_add_i32 s18, s2, 1
	s_sub_i32 s19, s4, s16
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s18, s2
	s_cselect_b32 s4, s19, s4
	s_add_i32 s18, s2, 1
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s18, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s31, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s17
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s30, v92
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s18, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s5, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s34, s2, 8
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s6
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s49, s3, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s18, 63
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s30, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s30, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v90, 4, v0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s30, v94
	v_or_b32_e32 v7, s30, v95
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s19, s27, s30
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 48, v90
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s34, s19
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v5
	v_cmp_gt_i32_e64 s5, s31, v6
	v_cmp_gt_i32_e64 s6, s31, v7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v89, v1, v2, s49
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s7, v97
	v_add_nc_u32_e32 v2, s7, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s35, s27, 4
	s_lshl_b32 s48, s27, 5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s6, s3
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s16, s26, s30
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v99, s35, v97
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s50, s30, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v100, s48, v97
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s16, v89
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v25, s50, v92
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s7, v99
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v26, s50, v91
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s7, v100
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v27, s50, v93
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s6, s26, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s19, s27, 6
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v25
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v28, s50, v94
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v30, s16, s6, v89
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s7, s19
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v29, s50, v95
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v17, 0x80000000, v5, s5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[5:8], v3, s[8:11], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s7, v97
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s31, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v31, s7, v99
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s31, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[9:12], v1, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v4, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v2, s[36:39], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v30, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v32, s7, v100
	v_add_nc_u32_e32 v33, s7, v98
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s7, s31, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v45, 0, v90
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v3, 0x80000000, v31, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_mov_b32 s16, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v4, 0x80000000, v32, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s7, s2
	s_cmpk_gt_i32 s18, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v41, 0x80000000, v33, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[25:28], v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[29:32], v2, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v3, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v4, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v41, s[36:39], 0 offen
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v2, 16, v240
	v_or_b32_e32 v3, 32, v240
	v_or_b32_e32 v4, 48, v240
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v45, v[5:8] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v45, v[9:12]
	s_waitcnt vmcnt(7)
	ds_store_b128 v45, v[13:16] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v45, v[17:20] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v45, v[21:24] offset:12288
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v45, v[25:28] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v45, v[29:32] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[33:36] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[37:40] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[41:44] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v109, 0x3f0, v0
	v_or_b32_e32 v110, 0x7f0, v0
	v_or_b32_e32 v111, 0xbf0, v0
	v_or_b32_e32 v112, 0xff0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v96, 0x70, v1
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr96
.LBB0_3:                                ; %Flow94
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s49, v240
	v_or_b32_e32 v2, s49, v2
	v_or_b32_e32 v3, s49, v3
	v_or_b32_e32 v4, s49, v4
	v_and_b32_e32 v255, 0xf0, v0
	s_ashr_i32 s51, s17, 6
	v_or_b32_e32 v154, s34, v0
	v_mul_lo_u32 v155, v5, s51
	v_mul_lo_u32 v151, v2, s51
	v_mul_lo_u32 v152, v3, s51
	v_mul_lo_u32 v153, v4, s51
	v_lshlrev_b32_e32 v103, 2, v255
	v_lshlrev_b32_e32 v105, 1, v0
	v_lshlrev_b32_e32 v106, 5, v0
	v_lshlrev_b32_e32 v104, 1, v255
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v96, 0x70, v1
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v1, 32, v106
	v_and_b32_e32 v9, 28, v105
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v110, 0, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v10, 0, v103, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v109, v10, v9
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_mov_b32_e32 v180, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s52, s51, 3
	s_add_i32 s14, s50, 64
	s_mov_b32 s15, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s7, 0, 0x9000
	s_add_i32 s6, 0, 0x4000
	s_add_i32 s52, s52, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s4, s17, 6
	s_mov_b32 s5, s30
	s_mov_b32 s30, s50
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s50, s14, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v111, s0, v240
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s50, v92
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s50, s26, v[89:90]
	s_mov_b32 s1, s16
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s16, s5, 31
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v112, s1, v96, v240
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s16, s16, 26
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s50, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s5, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s16, s5, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s18, s18, s34
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s19, s16, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s16, s51
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[65:68], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v111 offset:832
	ds_load_u8 v10, v111 offset:768
	ds_load_u8 v11, v111 offset:960
	ds_load_u8 v12, v111 offset:896
	ds_load_u8 v13, v111 offset:576
	ds_load_u8 v14, v111 offset:512
	ds_load_u8 v15, v111 offset:704
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s15, 2
	s_cselect_b32 s15, s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:640
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:320
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v11, v111 offset:384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v13
	ds_load_u8 v9, v111 offset:256
	ds_load_u8 v10, v111 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:64
	v_perm_b32 v9, v9, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v111
	ds_load_u8 v10, v111 offset:192
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0xc0c0004
	ds_load_u8 v11, v111 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v112 offset:3328
	ds_load_u8 v10, v112 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:3840
	ds_load_u8 v11, v112 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v112 offset:2304
	ds_load_u8 v12, v112 offset:2048
	v_lshl_or_b32 v80, v10, 16, v9
	ds_load_u8 v9, v112 offset:1280
	ds_load_u8 v10, v112 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v112 offset:2816
	ds_load_u8 v13, v112 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v12, 16, v11
	ds_load_u8 v10, v112 offset:1792
	ds_load_u8 v11, v112 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v78, v10, 16, v9
	ds_load_u8 v9, v112 offset:256
	ds_load_u8 v10, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:768
	ds_load_u8 v11, v112 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v111 offset:1856
	ds_load_u8 v10, v111 offset:1792
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:1984
	ds_load_u8 v11, v111 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:1600
	ds_load_u8 v12, v111 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v111 offset:1344
	ds_load_u8 v10, v111 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:1728
	ds_load_u8 v13, v111 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v111 offset:1472
	ds_load_u8 v11, v111 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v111 offset:1088
	ds_load_u8 v10, v111 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:1216
	ds_load_u8 v11, v111 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v112 offset:7424
	ds_load_u8 v10, v112 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:7936
	ds_load_u8 v11, v112 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v112 offset:6400
	ds_load_u8 v12, v112 offset:6144
	v_lshl_or_b32 v84, v10, 16, v9
	ds_load_u8 v9, v112 offset:5376
	ds_load_u8 v10, v112 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v112 offset:6912
	ds_load_u8 v13, v112 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v12, 16, v11
	ds_load_u8 v10, v112 offset:5888
	ds_load_u8 v11, v112 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v82, v10, 16, v9
	ds_load_u8 v9, v112 offset:4352
	ds_load_u8 v10, v112 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:4864
	ds_load_u8 v11, v112 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v112 offset:3456
	ds_load_u8 v10, v112 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:3968
	ds_load_u8 v11, v112 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v112 offset:2432
	ds_load_u8 v12, v112 offset:2176
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v112 offset:1408
	ds_load_u8 v10, v112 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v112 offset:2944
	ds_load_u8 v13, v112 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v12, 16, v11
	ds_load_u8 v10, v112 offset:1920
	ds_load_u8 v11, v112 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v112 offset:384
	ds_load_u8 v10, v112 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:896
	ds_load_u8 v11, v112 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v112 offset:7552
	ds_load_u8 v10, v112 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:8064
	ds_load_u8 v11, v112 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v112 offset:6528
	ds_load_u8 v12, v112 offset:6272
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v112 offset:5504
	ds_load_u8 v10, v112 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v112 offset:7040
	ds_load_u8 v13, v112 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v11
	ds_load_u8 v10, v112 offset:6016
	ds_load_u8 v11, v112 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v112 offset:4480
	ds_load_u8 v10, v112 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:4992
	ds_load_u8 v11, v112 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v111 offset:848
	ds_load_u8 v26, v111 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111 offset:976
	ds_load_u8 v27, v111 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v111 offset:592
	ds_load_u8 v28, v111 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v111 offset:336
	ds_load_u8 v26, v111 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v111 offset:720
	ds_load_u8 v29, v111 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v111 offset:464
	ds_load_u8 v27, v111 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v111 offset:16
	ds_load_u8 v26, v111 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v111 offset:208
	ds_load_u8 v27, v111 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v111 offset:1872
	ds_load_u8 v26, v111 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111 offset:2000
	ds_load_u8 v27, v111 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v111 offset:1616
	ds_load_u8 v28, v111 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v111 offset:1360
	ds_load_u8 v26, v111 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v111 offset:1744
	ds_load_u8 v29, v111 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v111 offset:1488
	ds_load_u8 v27, v111 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v111 offset:1104
	ds_load_u8 v26, v111 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111 offset:1232
	ds_load_u8 v27, v111 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v111 offset:864
	ds_load_u8 v42, v111 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v111 offset:992
	ds_load_u8 v43, v111 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v111 offset:608
	ds_load_u8 v44, v111 offset:544
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v111 offset:352
	ds_load_u8 v42, v111 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v111 offset:736
	ds_load_u8 v45, v111 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v111 offset:480
	ds_load_u8 v43, v111 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v111 offset:32
	ds_load_u8 v42, v111 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v111 offset:224
	ds_load_u8 v43, v111 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v111 offset:1888
	ds_load_u8 v42, v111 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v111 offset:2016
	ds_load_u8 v43, v111 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v111 offset:1632
	ds_load_u8 v44, v111 offset:1568
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v111 offset:1376
	ds_load_u8 v42, v111 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v111 offset:1760
	ds_load_u8 v45, v111 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v111 offset:1504
	ds_load_u8 v43, v111 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v111 offset:1120
	ds_load_u8 v42, v111 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v111 offset:1248
	ds_load_u8 v43, v111 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v111 offset:880
	ds_load_u8 v58, v111 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v58, s0, v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v111 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v111 offset:624
	ds_load_u8 v60, v111 offset:560
	v_lshl_or_b32 v88, v58, 16, v57
	ds_load_u8 v57, v111 offset:368
	ds_load_u8 v58, v111 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v111 offset:752
	ds_load_u8 v61, v111 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v60, 16, v59
	ds_load_u8 v58, v111 offset:496
	ds_load_u8 v59, v111 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v86, v58, 16, v57
	ds_load_u8 v57, v111 offset:48
	ds_load_u8 v58, v111 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v111 offset:240
	ds_load_u8 v59, v111 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v58, 16, v57
	ds_load_u8 v57, v111 offset:1904
	ds_load_u8 v58, v111 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v58, s0, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v111 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v111 offset:1648
	ds_load_u8 v60, v111 offset:1584
	v_lshl_or_b32 v116, v58, 16, v57
	ds_load_u8 v57, v111 offset:1392
	ds_load_u8 v58, v111 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v111 offset:1776
	ds_load_u8 v61, v111 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v60, 16, v59
	ds_load_u8 v58, v111 offset:1520
	ds_load_u8 v59, v111 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v114, v58, 16, v57
	ds_load_u8 v57, v111 offset:1136
	ds_load_u8 v58, v111 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v111 offset:1264
	ds_load_u8 v59, v111 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[113:116], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[69:72], v[85:88], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:2880
	ds_load_u8 v70, v111 offset:2816
	v_wmma_i32_16x16x16_iu8 v[77:84], v[73:76], v[113:116], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:3008
	ds_load_u8 v71, v111 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:2624
	ds_load_u8 v72, v111 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:2752
	ds_load_u8 v73, v111 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:2368
	ds_load_u8 v70, v111 offset:2304
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:2496
	ds_load_u8 v73, v111 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:2112
	ds_load_u8 v73, v111 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v111 offset:2240
	ds_load_u8 v74, v111 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v112 offset:11520
	ds_load_u8 v74, v112 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v112 offset:12032
	ds_load_u8 v75, v112 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v112 offset:10496
	ds_load_u8 v76, v112 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v112 offset:11008
	ds_load_u8 v85, v112 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v112 offset:9472
	ds_load_u8 v74, v112 offset:9216
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v112 offset:9984
	ds_load_u8 v85, v112 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v112 offset:8448
	ds_load_u8 v85, v112 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v112 offset:8960
	ds_load_u8 v86, v112 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v112 offset:11648
	ds_load_u8 v86, v112 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v112 offset:12160
	ds_load_u8 v87, v112 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v112 offset:10624
	ds_load_u8 v88, v112 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v112 offset:11136
	ds_load_u8 v113, v112 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v112 offset:9600
	ds_load_u8 v86, v112 offset:9344
	v_lshl_or_b32 v87, v113, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v112 offset:10112
	ds_load_u8 v113, v112 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v113, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v112 offset:8576
	ds_load_u8 v113, v112 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v113, v85, 0xc0c0004
	ds_load_u8 v113, v112 offset:9088
	ds_load_u8 v114, v112 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v113, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:2896
	ds_load_u8 v70, v111 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:3024
	ds_load_u8 v71, v111 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:2640
	ds_load_u8 v72, v111 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:2768
	ds_load_u8 v113, v111 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:2384
	ds_load_u8 v70, v111 offset:2320
	v_lshl_or_b32 v71, v113, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:2512
	ds_load_u8 v113, v111 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v113, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:2128
	ds_load_u8 v113, v111 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v113, v69, 0xc0c0004
	ds_load_u8 v113, v111 offset:2256
	ds_load_u8 v114, v111 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v113, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:2912
	ds_load_u8 v70, v111 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:3040
	ds_load_u8 v71, v111 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:2656
	ds_load_u8 v72, v111 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:2784
	ds_load_u8 v113, v111 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:2400
	ds_load_u8 v70, v111 offset:2336
	v_lshl_or_b32 v71, v113, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:2528
	ds_load_u8 v113, v111 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v113, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:2144
	ds_load_u8 v113, v111 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v113, v69, 0xc0c0004
	ds_load_u8 v113, v111 offset:2272
	ds_load_u8 v114, v111 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v113, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:2928
	ds_load_u8 v70, v111 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v70, s0, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v111 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:2672
	ds_load_u8 v72, v111 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:2800
	ds_load_u8 v113, v111 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:2416
	ds_load_u8 v70, v111 offset:2352
	v_lshl_or_b32 v71, v113, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:2544
	ds_load_u8 v113, v111 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v113, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:2160
	ds_load_u8 v113, v111 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v113, v69, 0xc0c0004
	ds_load_u8 v113, v111 offset:2288
	ds_load_u8 v114, v111 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v113, 16, v69
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:3904
	ds_load_u8 v70, v111 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:4032
	ds_load_u8 v71, v111 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:3648
	ds_load_u8 v72, v111 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:3776
	ds_load_u8 v73, v111 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:3392
	ds_load_u8 v70, v111 offset:3328
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:3520
	ds_load_u8 v73, v111 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:3136
	ds_load_u8 v73, v111 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v111 offset:3264
	ds_load_u8 v74, v111 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v112 offset:15616
	ds_load_u8 v74, v112 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v112 offset:16128
	ds_load_u8 v75, v112 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v112 offset:14592
	ds_load_u8 v76, v112 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v112 offset:15104
	ds_load_u8 v85, v112 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v112 offset:13568
	ds_load_u8 v74, v112 offset:13312
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v112 offset:14080
	ds_load_u8 v85, v112 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v112 offset:12544
	ds_load_u8 v85, v112 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v112 offset:13056
	ds_load_u8 v86, v112 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v112 offset:15744
	ds_load_u8 v86, v112 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v112 offset:16256
	ds_load_u8 v87, v112 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v112 offset:14720
	ds_load_u8 v88, v112 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v112 offset:15232
	ds_load_u8 v113, v112 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v112 offset:13696
	ds_load_u8 v86, v112 offset:13440
	v_lshl_or_b32 v87, v113, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v112 offset:14208
	ds_load_u8 v113, v112 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v113, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v112 offset:12672
	ds_load_u8 v113, v112 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v113, v85, 0xc0c0004
	ds_load_u8 v113, v112 offset:13184
	ds_load_u8 v112, v112 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v112, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:3920
	ds_load_u8 v70, v111 offset:3856
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:4048
	ds_load_u8 v71, v111 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:3664
	ds_load_u8 v72, v111 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:3792
	ds_load_u8 v112, v111 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:3408
	ds_load_u8 v70, v111 offset:3344
	v_lshl_or_b32 v71, v112, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:3536
	ds_load_u8 v112, v111 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v112, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:3152
	ds_load_u8 v112, v111 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v112, v69, 0xc0c0004
	ds_load_u8 v112, v111 offset:3280
	ds_load_u8 v113, v111 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v112, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:3936
	ds_load_u8 v70, v111 offset:3872
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:4064
	ds_load_u8 v71, v111 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:3680
	ds_load_u8 v72, v111 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:3808
	ds_load_u8 v112, v111 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:3424
	ds_load_u8 v70, v111 offset:3360
	v_lshl_or_b32 v71, v112, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:3552
	ds_load_u8 v112, v111 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v112, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:3168
	ds_load_u8 v112, v111 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v112, v69, 0xc0c0004
	ds_load_u8 v112, v111 offset:3296
	ds_load_u8 v113, v111 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v112, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v111 offset:3952
	ds_load_u8 v70, v111 offset:3888
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v70, s0, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v111 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v111 offset:3696
	ds_load_u8 v72, v111 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v111 offset:3824
	ds_load_u8 v112, v111 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v111 offset:3440
	ds_load_u8 v70, v111 offset:3376
	v_lshl_or_b32 v71, v112, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v111 offset:3568
	ds_load_u8 v112, v111 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v112, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v111 offset:3184
	ds_load_u8 v112, v111 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v112, v69, 0xc0c0004
	ds_load_u8 v112, v111 offset:3312
	ds_load_u8 v111, v111 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v111, 16, v69
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v77
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v77, s50, v91
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v71, v78
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v78, s18, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v74, v81
	v_cvt_f32_i32_e32 v72, v79
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v77
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v77, s50, v93
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v79, v151, s16, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v73, v80
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v80, v152, s16, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v75, v82
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v77
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v77, s50, v94
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v82, v153, s16, 1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s5
	v_cndmask_b32_e64 v80, 0x80000000, v80, s5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v81, 0x80000000, v78, s0
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s31, v77
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v77, s50, v95
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v78, s18, v100
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v82, 0x80000000, v82, s5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v76, v83
	v_cvt_f32_i32_e32 v9, v84
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v77
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v77, v154, s19, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v85, 0x80000000, v78, s1
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v78, s18, v98
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s15, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v77, 0x80000000, v77, s5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s0, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v111, 0x80000000, v78, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v78, v155, s16, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s0, s15, 14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v77, v77, s[44:47], 0 offen
	s_mov_b32 s16, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s6, s0, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v78, 0x80000000, v78, s5
	s_clause 0x3
	buffer_load_u16 v115, v78, s[40:43], 0 offen
	buffer_load_u16 v116, v79, s[40:43], 0 offen
	buffer_load_u16 v141, v80, s[40:43], 0 offen
	buffer_load_u16 v204, v82, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s17, 1
	s_mov_b32 s0, s7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s7, s1, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s52
	s_mov_b32 s17, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v109, v77 offset:40960
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v77, s18, v97
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[77:80], v77, s[36:39], 0 offen
	buffer_load_b128 v[81:84], v81, s[36:39], 0 offen
	buffer_load_b128 v[85:88], v85, s[36:39], 0 offen
	buffer_load_b128 v[111:114], v111, s[36:39], 0 offen
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[188:191], v110 offset:40960
	ds_load_b128 v[192:195], v110 offset:40976
	ds_load_b128 v[196:199], v110 offset:41472
	ds_load_b128 v[200:203], v110 offset:41488
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v205, s1, v90
	ds_store_b128 v205, v[65:68] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v66, 16, v115
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(5) lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v207, v193, v66 :: v_dual_lshlrev_b32 v68, 16, v141
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s6, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v189, v68
	v_mul_f32_e32 v205, v191, v68
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[77:80]
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[81:84] offset:4096
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v206, v192, v66 :: v_dual_lshlrev_b32 v77, 16, v204
	v_dual_mul_f32 v78, v188, v66 :: v_dual_lshlrev_b32 v67, 16, v116
	v_mul_f32_e32 v79, v189, v66
	v_mul_f32_e32 v80, v190, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v81, v191, v66 :: v_dual_mul_f32 v82, v188, v67
	v_mul_f32_e32 v116, v188, v68
	v_mul_f32_e32 v204, v190, v68
	v_dual_mul_f32 v188, v188, v77 :: v_dual_mul_f32 v83, v189, v67
	v_mul_f32_e32 v84, v190, v67
	v_mul_f32_e32 v115, v191, v67
	v_mul_f32_e32 v189, v189, v77
	v_dual_mul_f32 v190, v190, v77 :: v_dual_mul_f32 v209, v195, v66
	v_dual_mul_f32 v191, v191, v77 :: v_dual_mul_f32 v208, v194, v66
	v_dual_mul_f32 v210, v192, v67 :: v_dual_mul_f32 v215, v193, v68
	v_dual_mul_f32 v211, v193, v67 :: v_dual_mul_f32 v214, v192, v68
	v_dual_mul_f32 v212, v194, v67 :: v_dual_mul_f32 v217, v195, v68
	v_dual_mul_f32 v213, v195, v67 :: v_dual_mul_f32 v216, v194, v68
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v192, v192, v77 :: v_dual_mul_f32 v219, v197, v66
	v_dual_mul_f32 v193, v193, v77 :: v_dual_mul_f32 v218, v196, v66
	v_dual_mul_f32 v194, v194, v77 :: v_dual_mul_f32 v221, v199, v66
	v_dual_mul_f32 v195, v195, v77 :: v_dual_mul_f32 v220, v198, v66
	v_dual_mul_f32 v222, v196, v67 :: v_dual_mul_f32 v227, v197, v68
	v_dual_mul_f32 v223, v197, v67 :: v_dual_mul_f32 v226, v196, v68
	v_dual_mul_f32 v224, v198, v67 :: v_dual_mul_f32 v229, v199, v68
	v_dual_mul_f32 v225, v199, v67 :: v_dual_mul_f32 v228, v198, v68
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v196, v196, v77 :: v_dual_mul_f32 v231, v201, v66
	v_dual_mul_f32 v197, v197, v77 :: v_dual_mul_f32 v230, v200, v66
	v_dual_mul_f32 v198, v198, v77 :: v_dual_mul_f32 v233, v200, v67
	v_dual_mul_f32 v199, v199, v77 :: v_dual_mul_f32 v232, v202, v66
	v_dual_mul_f32 v66, v203, v66 :: v_dual_mul_f32 v235, v202, v67
	v_mul_f32_e32 v234, v201, v67
	v_dual_mul_f32 v67, v203, v67 :: v_dual_mul_f32 v236, v200, v68
	v_dual_mul_f32 v237, v201, v68 :: v_dual_mul_f32 v200, v200, v77
	v_dual_mul_f32 v238, v202, v68 :: v_dual_mul_f32 v201, v201, v77
	v_dual_mul_f32 v68, v203, v68 :: v_dual_fmac_f32 v143, v222, v33
	v_dual_mul_f32 v202, v202, v77 :: v_dual_fmac_f32 v119, v79, v18
	v_mul_f32_e32 v77, v203, v77
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v118, v78, v17 :: v_dual_fmac_f32 v121, v81, v20
	v_dual_fmac_f32 v120, v80, v19 :: v_dual_fmac_f32 v123, v207, v22
	v_dual_fmac_f32 v122, v206, v21 :: v_dual_fmac_f32 v125, v209, v24
	v_dual_fmac_f32 v124, v208, v23 :: v_dual_fmac_f32 v127, v219, v10
	v_dual_fmac_f32 v126, v218, v69 :: v_dual_fmac_f32 v129, v221, v12
	v_dual_fmac_f32 v128, v220, v11 :: v_dual_fmac_f32 v131, v231, v14
	v_dual_fmac_f32 v130, v230, v13 :: v_dual_fmac_f32 v135, v83, v26
	v_dual_fmac_f32 v132, v232, v15 :: v_dual_fmac_f32 v133, v66, v16
	v_dual_fmac_f32 v134, v82, v25 :: v_dual_fmac_f32 v137, v115, v28
	v_dual_fmac_f32 v136, v84, v27 :: v_dual_fmac_f32 v139, v211, v30
	v_dual_fmac_f32 v138, v210, v29 :: v_dual_fmac_f32 v145, v224, v35
	v_dual_fmac_f32 v140, v212, v31 :: v_dual_fmac_f32 v147, v233, v37
	v_dual_fmac_f32 v142, v213, v32 :: v_dual_fmac_f32 v149, v235, v39
	v_dual_fmac_f32 v144, v223, v34 :: v_dual_fmac_f32 v159, v205, v44
	v_dual_fmac_f32 v146, v225, v36 :: v_dual_fmac_f32 v161, v215, v46
	v_dual_fmac_f32 v148, v234, v38 :: v_dual_fmac_f32 v163, v217, v48
	v_dual_fmac_f32 v150, v67, v40 :: v_dual_fmac_f32 v157, v141, v42
	v_dual_fmac_f32 v156, v116, v41 :: v_dual_fmac_f32 v165, v227, v50
	v_dual_fmac_f32 v158, v204, v43 :: v_dual_fmac_f32 v167, v229, v52
	v_dual_fmac_f32 v160, v214, v45 :: v_dual_fmac_f32 v169, v237, v54
	v_dual_fmac_f32 v162, v216, v47 :: v_dual_fmac_f32 v173, v189, v58
	v_dual_fmac_f32 v164, v226, v49 :: v_dual_fmac_f32 v171, v68, v56
	v_dual_fmac_f32 v166, v228, v51 :: v_dual_fmac_f32 v175, v191, v60
	v_dual_fmac_f32 v168, v236, v53 :: v_dual_fmac_f32 v177, v193, v62
	v_dual_fmac_f32 v170, v238, v55 :: v_dual_fmac_f32 v179, v195, v64
	v_dual_fmac_f32 v172, v188, v57 :: v_dual_fmac_f32 v183, v198, v72
	v_dual_fmac_f32 v174, v190, v59 :: v_dual_fmac_f32 v181, v196, v70
	v_dual_fmac_f32 v176, v192, v61 :: v_dual_fmac_f32 v187, v202, v76
	v_dual_fmac_f32 v178, v194, v63 :: v_dual_fmac_f32 v185, v200, v74
	v_fmac_f32_e32 v182, v197, v71
	v_fmac_f32_e32 v184, v199, v73
	v_fmac_f32_e32 v186, v201, v75
	v_fmac_f32_e32 v180, v77, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[85:88] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[111:114] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v109, v101 :: v_dual_mov_b32 v110, v102
	v_dual_mov_b32 v111, v107 :: v_dual_mov_b32 v112, v108
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v119, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v118, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s7, 0, 0x9000
	s_add_i32 s6, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v108, v96, v240
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v246, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v253, 0
	v_mov_b32_e32 v245, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v41, s16, v108
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v113, s0, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v113 offset:832
	ds_load_u8 v2, v113 offset:768
	ds_load_u8 v3, v113 offset:960
	ds_load_u8 v4, v113 offset:896
	ds_load_u8 v5, v113 offset:576
	ds_load_u8 v6, v113 offset:512
	ds_load_u8 v7, v113 offset:704
	ds_load_u8 v8, v113 offset:640
	ds_load_u8 v9, v113 offset:320
	ds_load_u8 v10, v113 offset:256
	ds_load_u8 v11, v113 offset:448
	ds_load_u8 v12, v113 offset:384
	ds_load_u8 v13, v113 offset:64
	ds_load_u8 v14, v113
	ds_load_u8 v15, v113 offset:192
	ds_load_u8 v16, v113 offset:128
	ds_load_u8 v17, v41 offset:3328
	ds_load_u8 v18, v41 offset:3072
	ds_load_u8 v19, v41 offset:3840
	ds_load_u8 v20, v41 offset:3584
	ds_load_u8 v21, v41 offset:2304
	ds_load_u8 v22, v41 offset:2048
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	ds_load_u8 v4, v41 offset:2816
	ds_load_u8 v5, v41 offset:2560
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_lshl_or_b32 v32, v2, 16, v1
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v14, v13, 0xc0c0004
	v_perm_b32 v8, v12, v11, 0xc0c0004
	ds_load_u8 v9, v41 offset:1280
	ds_load_u8 v10, v41 offset:1024
	ds_load_u8 v11, v41 offset:1792
	ds_load_u8 v12, v41 offset:1536
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v16, v15, 0xc0c0004
	v_lshl_or_b32 v31, v6, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v18, v17, 0xc0c0004
	v_lshl_or_b32 v30, v8, 16, v7
	ds_load_u8 v8, v41 offset:256
	ds_load_u8 v13, v41
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v41 offset:768
	ds_load_u8 v2, v41 offset:512
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v96, v6, 16, v3
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	v_lshl_or_b32 v95, v4, 16, v7
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v13, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_lshl_or_b32 v93, v1, 16, v3
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v2, s17
	ds_load_u8 v9, v113 offset:1856
	ds_load_u8 v10, v113 offset:1792
	ds_load_u8 v11, v113 offset:1984
	ds_load_u8 v12, v113 offset:1920
	ds_load_u8 v14, v113 offset:1600
	ds_load_u8 v15, v113 offset:1536
	ds_load_u8 v16, v113 offset:1728
	ds_load_u8 v17, v113 offset:1664
	ds_load_u8 v18, v113 offset:1344
	ds_load_u8 v19, v113 offset:1280
	ds_load_u8 v13, v113 offset:1472
	ds_load_u8 v20, v113 offset:1408
	v_mov_b32_e32 v4, s19
	ds_load_u8 v27, v41 offset:7424
	ds_load_u8 v28, v41 offset:7168
	ds_load_u8 v33, v41 offset:7936
	ds_load_u8 v37, v41 offset:7680
	ds_load_u8 v38, v41 offset:6400
	ds_load_u8 v39, v41 offset:6144
	ds_load_u8 v40, v41 offset:6912
	ds_load_u8 v42, v41 offset:6656
	ds_load_u8 v43, v41 offset:5376
	ds_load_u8 v44, v41 offset:5120
	ds_load_u8 v45, v41 offset:5888
	ds_load_u8 v46, v41 offset:5632
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v5, s20
	v_mov_b32_e32 v7, s22
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v21, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v22, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v23, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v36, v22, 16, v21
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v113 offset:1088
	ds_load_u8 v24, v113 offset:1024
	ds_load_u8 v25, v113 offset:1216
	ds_load_u8 v26, v113 offset:1152
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v20, v13, 0xc0c0004
	v_lshl_or_b32 v35, v17, 16, v23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v23, v28, v27, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v20, 16, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v24, v19, 0xc0c0004
	ds_load_u8 v19, v41 offset:4352
	ds_load_u8 v20, v41 offset:4096
	ds_load_u8 v21, v41 offset:4864
	ds_load_u8 v22, v41 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	v_perm_b32 v24, v37, v33, 0xc0c0004
	ds_load_u8 v26, v113 offset:2880
	ds_load_u8 v27, v113 offset:2816
	ds_load_u8 v28, v113 offset:3008
	ds_load_u8 v37, v113 offset:2944
	v_perm_b32 v25, v39, v38, 0xc0c0004
	v_perm_b32 v38, v42, v40, 0xc0c0004
	v_perm_b32 v39, v44, v43, 0xc0c0004
	v_perm_b32 v40, v46, v45, 0xc0c0004
	ds_load_u8 v42, v113 offset:2624
	ds_load_u8 v43, v113 offset:2560
	ds_load_u8 v44, v113 offset:2752
	ds_load_u8 v45, v113 offset:2688
	v_lshl_or_b32 v33, v18, 16, v17
	v_lshl_or_b32 v68, v24, 16, v23
	v_lshl_or_b32 v67, v38, 16, v25
	v_lshl_or_b32 v66, v40, 16, v39
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	ds_load_u8 v19, v113 offset:2368
	ds_load_u8 v20, v113 offset:2304
	ds_load_u8 v21, v113 offset:2496
	ds_load_u8 v22, v113 offset:2432
	v_lshl_or_b32 v65, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v37, v28, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v18, 16, v17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v43, v42, 0xc0c0004
	ds_load_u8 v23, v113 offset:2112
	ds_load_u8 v24, v113 offset:2048
	ds_load_u8 v25, v113 offset:2240
	ds_load_u8 v26, v113 offset:2176
	ds_load_u8 v27, v41 offset:11520
	ds_load_u8 v28, v41 offset:11264
	ds_load_u8 v37, v41 offset:12032
	ds_load_u8 v42, v41 offset:11776
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v39, v18, 16, v17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v22, v21, 0xc0c0004
	ds_load_u8 v21, v41 offset:10496
	ds_load_u8 v22, v41 offset:10240
	ds_load_u8 v43, v41 offset:11008
	ds_load_u8 v44, v41 offset:10752
	ds_load_u8 v45, v41 offset:9472
	ds_load_u8 v46, v41 offset:9216
	ds_load_u8 v47, v41 offset:9984
	ds_load_u8 v48, v41 offset:9728
	ds_load_u8 v49, v41 offset:8448
	ds_load_u8 v50, v41 offset:8192
	ds_load_u8 v51, v41 offset:8960
	ds_load_u8 v52, v41 offset:8704
	v_lshl_or_b32 v38, v20, 16, v19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v20, v42, v37, 0xc0c0004
	ds_load_u8 v23, v113 offset:3904
	ds_load_u8 v24, v113 offset:3840
	ds_load_u8 v25, v113 offset:4032
	ds_load_u8 v26, v113 offset:3968
	ds_load_u8 v27, v113 offset:3648
	ds_load_u8 v28, v113 offset:3584
	ds_load_u8 v42, v113 offset:3776
	ds_load_u8 v53, v113 offset:3712
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v22, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v48, v47, 0xc0c0004
	v_lshl_or_b32 v37, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v50, v49, 0xc0c0004
	v_lshl_or_b32 v72, v20, 16, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v52, v51, 0xc0c0004
	v_lshl_or_b32 v71, v22, 16, v21
	v_lshl_or_b32 v70, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v69, v46, 16, v45
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v53, v42, 0xc0c0004
	ds_load_u8 v21, v113 offset:3392
	ds_load_u8 v22, v113 offset:3328
	ds_load_u8 v23, v113 offset:3520
	ds_load_u8 v24, v113 offset:3456
	ds_load_u8 v25, v113 offset:3136
	ds_load_u8 v26, v113 offset:3072
	ds_load_u8 v27, v113 offset:3264
	ds_load_u8 v28, v113 offset:3200
	ds_load_u8 v42, v41 offset:15616
	ds_load_u8 v43, v41 offset:15360
	ds_load_u8 v44, v41 offset:16128
	ds_load_u8 v45, v41 offset:15872
	ds_load_u8 v46, v41 offset:14592
	ds_load_u8 v47, v41 offset:14336
	ds_load_u8 v48, v41 offset:15104
	ds_load_u8 v49, v41 offset:14848
	ds_load_u8 v50, v41 offset:13568
	ds_load_u8 v51, v41 offset:13312
	ds_load_u8 v52, v41 offset:14080
	ds_load_u8 v53, v41 offset:13824
	ds_load_u8 v54, v41 offset:12544
	ds_load_u8 v55, v41 offset:12288
	ds_load_u8 v56, v41 offset:3456
	ds_load_u8 v57, v41 offset:3200
	ds_load_u8 v58, v41 offset:3968
	ds_load_u8 v59, v41 offset:3712
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v23, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v45, v44, 0xc0c0004
	v_lshl_or_b32 v27, v20, 16, v19
	v_lshl_or_b32 v26, v22, 16, v21
	v_lshl_or_b32 v25, v24, 16, v23
	v_lshl_or_b32 v28, v18, 16, v17
	v_lshl_or_b32 v76, v43, 16, v42
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v43, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v44, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v55, v54, 0xc0c0004
	ds_load_u8 v17, v41 offset:13056
	ds_load_u8 v18, v41 offset:12800
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v59, v58, 0xc0c0004
	ds_load_u8 v21, v41 offset:2432
	ds_load_u8 v22, v41 offset:2176
	ds_load_u8 v23, v41 offset:2944
	ds_load_u8 v24, v41 offset:2688
	ds_load_u8 v47, v41 offset:1408
	ds_load_u8 v48, v41 offset:1152
	ds_load_u8 v49, v41 offset:1920
	ds_load_u8 v50, v41 offset:1664
	ds_load_u8 v51, v41 offset:384
	ds_load_u8 v52, v41 offset:128
	ds_load_u8 v53, v41 offset:896
	ds_load_u8 v54, v41 offset:640
	ds_load_u8 v55, v41 offset:7552
	ds_load_u8 v56, v41 offset:7296
	ds_load_u8 v57, v41 offset:8064
	ds_load_u8 v58, v41 offset:7808
	ds_load_u8 v59, v41 offset:6528
	ds_load_u8 v60, v41 offset:6272
	ds_load_u8 v61, v41 offset:7040
	ds_load_u8 v62, v41 offset:6784
	ds_load_u8 v63, v41 offset:5504
	ds_load_u8 v64, v41 offset:5248
	ds_load_u8 v73, v41 offset:6016
	ds_load_u8 v74, v41 offset:5760
	ds_load_u8 v75, v41 offset:4480
	ds_load_u8 v77, v41 offset:4224
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v23, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v24, v50, v49, 0xc0c0004
	ds_load_u8 v48, v41 offset:4992
	ds_load_u8 v49, v41 offset:4736
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_lshl_or_b32 v92, v20, 16, v19
	v_lshl_or_b32 v91, v22, 16, v21
	v_lshl_or_b32 v90, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v89, v50, 16, v47
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v52, v60, v59, 0xc0c0004
	v_perm_b32 v51, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v77, v75, 0xc0c0004
	ds_load_u8 v57, v41 offset:11648
	ds_load_u8 v58, v41 offset:11392
	ds_load_u8 v59, v41 offset:12160
	ds_load_u8 v60, v41 offset:11904
	ds_load_u8 v61, v41 offset:10624
	ds_load_u8 v62, v41 offset:10368
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[29:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v41 offset:8576
	ds_load_u8 v30, v41 offset:8320
	ds_load_u8 v31, v41 offset:9088
	ds_load_u8 v32, v41 offset:8832
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v41 offset:11136
	ds_load_u8 v63, v41 offset:10880
	ds_load_u8 v64, v41 offset:9600
	ds_load_u8 v73, v41 offset:9344
	ds_load_u8 v74, v41 offset:10112
	ds_load_u8 v75, v41 offset:9856
	v_lshl_or_b32 v84, v50, 16, v47
	v_lshl_or_b32 v83, v53, 16, v52
	v_lshl_or_b32 v82, v55, 16, v54
	v_lshl_or_b32 v81, v48, 16, v56
	ds_load_u8 v52, v41 offset:15744
	ds_load_u8 v53, v41 offset:15488
	ds_load_u8 v54, v41 offset:16256
	ds_load_u8 v55, v41 offset:16000
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v48, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v50, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v63, v49, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v73, v64, 0xc0c0004
	v_perm_b32 v30, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v75, v74, 0xc0c0004
	ds_load_u8 v58, v41 offset:14720
	ds_load_u8 v59, v41 offset:14464
	ds_load_u8 v60, v41 offset:15232
	ds_load_u8 v61, v41 offset:14976
	ds_load_u8 v31, v41 offset:13696
	ds_load_u8 v32, v41 offset:13440
	ds_load_u8 v33, v41 offset:14208
	ds_load_u8 v34, v41 offset:13952
	v_lshl_or_b32 v80, v48, 16, v47
	v_lshl_or_b32 v79, v49, 16, v50
	v_lshl_or_b32 v78, v57, 16, v56
	v_lshl_or_b32 v77, v30, 16, v29
	v_lshl_or_b32 v75, v43, 16, v42
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v29, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v55, v54, 0xc0c0004
	v_lshl_or_b32 v74, v45, 16, v44
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[37:40], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v41 offset:12672
	ds_load_u8 v36, v41 offset:12416
	ds_load_u8 v37, v41 offset:13184
	ds_load_u8 v38, v41 offset:12928
	ds_load_u8 v39, v113 offset:848
	ds_load_u8 v40, v113 offset:784
	ds_load_u8 v41, v113 offset:976
	ds_load_u8 v42, v113 offset:912
	v_lshl_or_b32 v73, v51, 16, v46
	v_lshl_or_b32 v88, v30, 16, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[25:28], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_perm_b32 v30, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v34, v33, 0xc0c0004
	ds_load_u8 v33, v113 offset:592
	ds_load_u8 v34, v113 offset:528
	ds_load_u8 v43, v113 offset:720
	ds_load_u8 v44, v113 offset:656
	ds_load_u8 v45, v113 offset:336
	ds_load_u8 v46, v113 offset:272
	ds_load_u8 v47, v113 offset:464
	ds_load_u8 v48, v113 offset:400
	ds_load_u8 v49, v113 offset:80
	ds_load_u8 v50, v113 offset:16
	ds_load_u8 v51, v113 offset:208
	ds_load_u8 v52, v113 offset:144
	v_cvt_f32_i32_e32 v188, v10
	v_cvt_f32_i32_e32 v254, v11
	v_lshl_or_b32 v87, v30, 16, v29
	v_lshl_or_b32 v86, v32, 16, v31
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v30, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v31, v40, v39, 0xc0c0004
	ds_load_u8 v35, v113 offset:1872
	ds_load_u8 v36, v113 offset:1808
	ds_load_u8 v37, v113 offset:2000
	ds_load_u8 v38, v113 offset:1936
	ds_load_u8 v39, v113 offset:1616
	ds_load_u8 v40, v113 offset:1552
	ds_load_u8 v53, v113 offset:1744
	ds_load_u8 v54, v113 offset:1680
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v32, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v85, v30, 16, v29
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v34, v44, v43, 0xc0c0004
	v_cvt_f32_i32_e32 v190, v12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	v_lshl_or_b32 v44, v32, 16, v31
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v48, v47, 0xc0c0004
	v_lshl_or_b32 v43, v34, 16, v33
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[25:28], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v52, v51, 0xc0c0004
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v36, v35, 0xc0c0004
	v_cvt_f32_i32_e32 v191, v13
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v38, v37, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v45
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v40, v39, 0xc0c0004
	v_cvt_f32_i32_e32 v141, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v54, v53, 0xc0c0004
	ds_load_u8 v37, v113 offset:1360
	ds_load_u8 v38, v113 offset:1296
	ds_load_u8 v39, v113 offset:1488
	ds_load_u8 v40, v113 offset:1424
	ds_load_u8 v45, v113 offset:1104
	ds_load_u8 v46, v113 offset:1040
	ds_load_u8 v47, v113 offset:1232
	ds_load_u8 v49, v113 offset:1168
	ds_load_u8 v50, v113 offset:2896
	ds_load_u8 v51, v113 offset:2832
	ds_load_u8 v52, v113 offset:3024
	ds_load_u8 v53, v113 offset:2960
	ds_load_u8 v54, v113 offset:2640
	ds_load_u8 v55, v113 offset:2576
	ds_load_u8 v56, v113 offset:2768
	ds_load_u8 v57, v113 offset:2704
	ds_load_u8 v58, v113 offset:2384
	ds_load_u8 v59, v113 offset:2320
	ds_load_u8 v60, v113 offset:2512
	ds_load_u8 v61, v113 offset:2448
	ds_load_u8 v62, v113 offset:2128
	ds_load_u8 v63, v113 offset:2064
	ds_load_u8 v64, v113 offset:2256
	ds_load_u8 v97, v113 offset:2192
	ds_load_u8 v98, v113 offset:3920
	ds_load_u8 v99, v113 offset:3856
	ds_load_u8 v100, v113 offset:4048
	ds_load_u8 v101, v113 offset:3984
	v_lshl_or_b32 v48, v34, 16, v33
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v33, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v37, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v39, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v40, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v49, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v57, v56, 0xc0c0004
	v_lshl_or_b32 v47, v36, 16, v35
	v_lshl_or_b32 v46, v34, 16, v33
	v_lshl_or_b32 v45, v38, 16, v37
	v_lshl_or_b32 v52, v40, 16, v39
	v_lshl_or_b32 v51, v50, 16, v49
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v97, v64, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v101, v100, 0xc0c0004
	ds_load_u8 v39, v113 offset:3664
	ds_load_u8 v40, v113 offset:3600
	ds_load_u8 v49, v113 offset:3792
	ds_load_u8 v53, v113 offset:3728
	ds_load_u8 v54, v113 offset:3408
	ds_load_u8 v55, v113 offset:3344
	ds_load_u8 v56, v113 offset:3536
	ds_load_u8 v57, v113 offset:864
	ds_load_u8 v58, v113 offset:800
	ds_load_u8 v59, v113 offset:992
	ds_load_u8 v60, v113 offset:928
	ds_load_u8 v61, v113 offset:608
	ds_load_u8 v62, v113 offset:544
	ds_load_u8 v63, v113 offset:736
	ds_load_u8 v64, v113 offset:672
	ds_load_u8 v99, v113 offset:352
	ds_load_u8 v100, v113 offset:288
	ds_load_u8 v101, v113 offset:480
	ds_load_u8 v102, v113 offset:416
	ds_load_u8 v115, v113 offset:3472
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v34, 16, v33
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v97, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v53, v53, v49, 0xc0c0004
	v_lshl_or_b32 v49, v36, 16, v35
	v_lshl_or_b32 v98, v38, 16, v37
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v45, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v46, v64, v63, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v41, s0, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v100, v99, 0xc0c0004
	v_lshl_or_b32 v97, v53, 16, v97
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v48, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[49:52], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v114, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v43, v46, 16, v45
	v_lshl_or_b32 v42, v48, 16, v47
	ds_load_u8 v45, v113 offset:96
	ds_load_u8 v46, v113 offset:32
	ds_load_u8 v47, v113 offset:224
	ds_load_u8 v48, v113 offset:160
	ds_load_u8 v49, v113 offset:880
	ds_load_u8 v50, v113 offset:816
	ds_load_u8 v41, v41
	ds_load_u8 v51, v113 offset:944
	ds_load_u8 v52, v113 offset:624
	ds_load_u8 v53, v113 offset:560
	ds_load_u8 v54, v113 offset:752
	ds_load_u8 v55, v113 offset:688
	ds_load_u8 v56, v113 offset:368
	ds_load_u8 v57, v113 offset:304
	ds_load_u8 v58, v113 offset:496
	ds_load_u8 v59, v113 offset:432
	ds_load_u8 v60, v113 offset:112
	ds_load_u8 v61, v113 offset:48
	ds_load_u8 v62, v113 offset:240
	ds_load_u8 v63, v113 offset:176
	v_cvt_f32_i32_e32 v192, v15
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_cvt_f32_i32_e32 v193, v16
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_cvt_f32_i32_e32 v194, v17
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v50, v49, 0xc0c0004
	v_cvt_f32_i32_e32 v195, v18
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v48, v51, v41, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v45
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v53, v52, 0xc0c0004
	v_cvt_f32_i32_e32 v196, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v55, v54, 0xc0c0004
	v_lshl_or_b32 v102, v48, 16, v47
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v57, v56, 0xc0c0004
	v_cvt_f32_i32_e32 v197, v20
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v59, v58, 0xc0c0004
	v_lshl_or_b32 v101, v50, 16, v49
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v61, v60, 0xc0c0004
	v_cvt_f32_i32_e32 v198, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v63, v62, 0xc0c0004
	v_lshl_or_b32 v100, v52, 16, v51
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v199, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v99, v54, 16, v53
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v200, v23
	v_cvt_f32_i32_e32 v201, v24
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[99:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[99:102], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v113 offset:1888
	ds_load_u8 v90, v113 offset:1824
	ds_load_u8 v91, v113 offset:2016
	ds_load_u8 v92, v113 offset:1952
	ds_load_u8 v93, v113 offset:1632
	ds_load_u8 v94, v113 offset:1568
	ds_load_u8 v95, v113 offset:1760
	ds_load_u8 v96, v113 offset:1696
	v_cvt_f32_i32_e32 v202, v9
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v90, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v96, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:1376
	ds_load_u8 v95, v113 offset:1312
	ds_load_u8 v99, v113 offset:1504
	ds_load_u8 v100, v113 offset:1440
	v_lshl_or_b32 v92, v90, 16, v89
	v_lshl_or_b32 v96, v115, 16, v114
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v100, v99, 0xc0c0004
	ds_load_u8 v93, v113 offset:1120
	ds_load_u8 v94, v113 offset:1056
	ds_load_u8 v95, v113 offset:1248
	ds_load_u8 v99, v113 offset:1184
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v99, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:2912
	ds_load_u8 v95, v113 offset:2848
	ds_load_u8 v99, v113 offset:3040
	ds_load_u8 v100, v113 offset:2976
	v_lshl_or_b32 v89, v93, 16, v89
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[89:92], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v89, v113 offset:3936
	ds_load_u8 v90, v113 offset:3872
	ds_load_u8 v91, v113 offset:4064
	ds_load_u8 v92, v113 offset:4000
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v100, v99, 0xc0c0004
	ds_load_u8 v99, v113 offset:2656
	ds_load_u8 v100, v113 offset:2592
	v_lshl_or_b32 v102, v95, 16, v94
	ds_load_u8 v93, v113 offset:2400
	ds_load_u8 v94, v113 offset:2336
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v90, s0, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v113 offset:2784
	ds_load_u8 v101, v113 offset:2720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:2528
	ds_load_u8 v95, v113 offset:2464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v100, 16, v99
	v_lshl_or_b32 v100, v94, 16, v93
	ds_load_u8 v93, v113 offset:2144
	ds_load_u8 v94, v113 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:2272
	ds_load_u8 v95, v113 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v94, 16, v93
	ds_load_u8 v93, v113 offset:3152
	ds_load_u8 v94, v113 offset:3088
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[99:102], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[99:102], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:3280
	ds_load_u8 v95, v113 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v113 offset:3680
	ds_load_u8 v99, v113 offset:3616
	ds_load_u8 v100, v113 offset:3808
	ds_load_u8 v101, v113 offset:3744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v99, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v92, v113 offset:1904
	ds_load_u8 v95, v113 offset:1840
	ds_load_u8 v90, v90
	ds_load_u8 v101, v113 offset:1968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v95, v92, 0xc0c0004
	ds_load_u8 v92, v113 offset:1648
	ds_load_u8 v95, v113 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v101, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v90, 16, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v95, v92, 0xc0c0004
	ds_load_u8 v92, v113 offset:1776
	ds_load_u8 v95, v113 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v95, v92, 0xc0c0004
	v_lshl_or_b32 v92, v91, 16, v89
	ds_load_u8 v89, v113 offset:1392
	ds_load_u8 v90, v113 offset:1328
	v_lshl_or_b32 v95, v94, 16, v93
	v_lshl_or_b32 v91, v100, 16, v99
	v_lshl_or_b32 v101, v114, 16, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[95:98], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[95:98], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v203, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v204, v26
	v_cvt_f32_i32_e32 v205, v27
	v_cvt_f32_i32_e32 v206, v28
	v_cvt_f32_i32_e32 v207, v29
	v_cvt_f32_i32_e32 v208, v30
	v_cvt_f32_i32_e32 v209, v31
	v_cvt_f32_i32_e32 v210, v32
	v_cvt_f32_i32_e32 v211, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:1520
	ds_load_u8 v93, v113 offset:1456
	v_cvt_f32_i32_e32 v212, v34
	v_cvt_f32_i32_e32 v213, v35
	v_cvt_f32_i32_e32 v214, v36
	v_cvt_f32_i32_e32 v215, v37
	v_cvt_f32_i32_e32 v216, v38
	v_cvt_f32_i32_e32 v217, v39
	v_cvt_f32_i32_e32 v218, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v90, 16, v89
	ds_load_u8 v89, v113 offset:1136
	ds_load_u8 v90, v113 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:1264
	ds_load_u8 v93, v113 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v90, 16, v89
	ds_load_u8 v89, v113 offset:3424
	ds_load_u8 v90, v113 offset:3360
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[99:102], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v113 offset:3168
	ds_load_u8 v66, v113 offset:3104
	ds_load_u8 v67, v113 offset:3296
	ds_load_u8 v68, v113 offset:3232
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[99:102], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:3552
	ds_load_u8 v93, v113 offset:3488
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v89, s0, v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v67, v113 offset:2928
	ds_load_u8 v68, v113 offset:2864
	ds_load_u8 v89, v89
	ds_load_u8 v93, v113 offset:2992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v93, v89, 0xc0c0004
	ds_load_u8 v89, v113 offset:2672
	ds_load_u8 v93, v113 offset:2608
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v89, 0xc0c0004
	ds_load_u8 v89, v113 offset:2800
	ds_load_u8 v94, v113 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v89, 0xc0c0004
	v_lshl_or_b32 v89, v66, 16, v65
	ds_load_u8 v65, v113 offset:2416
	ds_load_u8 v66, v113 offset:2352
	v_lshl_or_b32 v67, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[89:92], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v219, v57
	v_cvt_f32_i32_e32 v220, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v221, v59
	v_cvt_f32_i32_e32 v222, v60
	v_cvt_f32_i32_e32 v223, v61
	v_cvt_f32_i32_e32 v224, v62
	v_cvt_f32_i32_e32 v225, v63
	v_cvt_f32_i32_e32 v226, v64
	v_cvt_f32_i32_e32 v251, v49
	v_cvt_f32_i32_e32 v228, v50
	v_cvt_f32_i32_e32 v229, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v113 offset:2544
	ds_load_u8 v93, v113 offset:2480
	v_cvt_f32_i32_e32 v230, v52
	v_cvt_f32_i32_e32 v231, v53
	v_cvt_f32_i32_e32 v232, v54
	v_cvt_f32_i32_e32 v233, v55
	v_cvt_f32_i32_e32 v234, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v93, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v113 offset:2160
	ds_load_u8 v93, v113 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v93, v65, 0xc0c0004
	ds_load_u8 v93, v113 offset:2288
	ds_load_u8 v94, v113 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:3952
	v_lshl_or_b32 v65, v93, 16, v65
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v93, s0, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v81, v113 offset:3888
	ds_load_u8 v82, v93
	ds_load_u8 v83, v113 offset:4016
	ds_load_u8 v84, v113 offset:3696
	ds_load_u8 v93, v113 offset:3632
	ds_load_u8 v99, v113 offset:3824
	ds_load_u8 v100, v113 offset:3760
	ds_load_u8 v101, v113 offset:3440
	ds_load_u8 v102, v113 offset:3376
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[65:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v81, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v93, v84, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v100, v99, 0xc0c0004
	v_lshl_or_b32 v72, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v102, v101, 0xc0c0004
	ds_load_u8 v94, v113 offset:3568
	ds_load_u8 v99, v113 offset:3504
	ds_load_u8 v100, v113 offset:3184
	ds_load_u8 v101, v113 offset:3120
	ds_load_u8 v102, v113 offset:3312
	ds_load_u8 v113, v113 offset:3248
	v_lshl_or_b32 v71, v84, 16, v83
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v94, v99, v94, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v113, v102, 0xc0c0004
	v_lshl_or_b32 v70, v94, 16, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v113, v41
	v_cvt_f32_i32_e32 v114, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v115, v43
	v_cvt_f32_i32_e32 v116, v44
	v_cvt_f32_i32_e32 v235, v45
	v_cvt_f32_i32_e32 v236, v46
	v_cvt_f32_i32_e32 v237, v47
	v_cvt_f32_i32_e32 v238, v48
	v_cvt_f32_i32_e32 v117, v1
	v_cvt_f32_i32_e32 v239, v2
	v_cvt_f32_i32_e32 v241, v3
	v_cvt_f32_i32_e32 v242, v4
	v_cvt_f32_i32_e32 v243, v5
	v_cvt_f32_i32_e32 v253, v6
	v_cvt_f32_i32_e32 v245, v7
	v_cvt_f32_i32_e32 v246, v8
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s27
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s51
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v155, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v154, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v151, s0, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v152, s0, 1
	v_add_lshl_u32 v5, v153, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add_nc_u32_e32 v252, 0, v104
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x3
	buffer_load_u16 v247, v1, s[12:15], 0 offen
	buffer_load_u16 v249, v3, s[12:15], 0 offen
	buffer_load_u16 v250, v4, s[12:15], 0 offen
	buffer_load_u16 v87, v5, s[12:15], 0 offen
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v3, 32, v106
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 28, v105
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v3, 0, v103, v3
	v_mov_b32_e32 v49, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v248, v3, v1
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v7, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	v_mov_b32_e32 v2, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v248, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v252 offset:40960
	ds_load_b128 v[69:72], v252 offset:40976
	ds_load_b128 v[73:76], v252 offset:41472
	ds_load_b128 v[77:80], v252 offset:41488
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s7, v112
	scratch_store_b32 off, v242, off        ; 4-byte Folded Spill
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v87, off offset:24
	scratch_store_b32 off, v241, off offset:4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v255, s7, v240
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v242, v116 :: v_dual_add_nc_u32 v1, s7, v111
	v_dual_mov_b32 v62, v190 :: v_dual_add_nc_u32 v57, s7, v109
	v_mov_b32_e32 v241, v115
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s7, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s7, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v25, s6, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v239, off offset:8
	scratch_store_b32 off, v114, off offset:20
	scratch_store_b32 off, v1, off offset:36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v255 offset:832
	ds_load_u8 v2, v255 offset:768
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v247, off offset:12
	scratch_store_b32 off, v117, off offset:16
	v_mov_b32_e32 v247, v113
	v_mov_b32_e32 v63, v191
	v_dual_mov_b32 v117, v226 :: v_dual_mov_b32 v64, v192
	v_mov_b32_e32 v244, v236
	v_mov_b32_e32 v236, v232
	v_mov_b32_e32 v232, v228
	v_mov_b32_e32 v228, v224
	v_mov_b32_e32 v224, v220
	v_mov_b32_e32 v220, v216
	v_mov_b32_e32 v216, v212
	v_dual_mov_b32 v212, v208 :: v_dual_mov_b32 v227, v223
	v_dual_mov_b32 v208, v204 :: v_dual_mov_b32 v223, v219
	v_dual_mov_b32 v204, v200 :: v_dual_mov_b32 v219, v215
	v_dual_mov_b32 v200, v196 :: v_dual_mov_b32 v215, v211
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v255 offset:960
	ds_load_u8 v3, v255 offset:896
	v_dual_mov_b32 v196, v141 :: v_dual_mov_b32 v141, v188
	v_dual_mov_b32 v211, v207 :: v_dual_mov_b32 v226, v222
	v_dual_mov_b32 v207, v203 :: v_dual_mov_b32 v222, v218
	v_dual_mov_b32 v203, v199 :: v_dual_mov_b32 v218, v214
	v_dual_mov_b32 v199, v195 :: v_dual_mov_b32 v214, v210
	v_dual_mov_b32 v210, v206 :: v_dual_mov_b32 v239, v225
	v_dual_mov_b32 v206, v202 :: v_dual_mov_b32 v225, v221
	v_dual_mov_b32 v202, v198 :: v_dual_mov_b32 v221, v217
	v_dual_mov_b32 v198, v194 :: v_dual_mov_b32 v217, v213
	v_mov_b32_e32 v213, v209
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_mov_b32_e32 v209, v205
	v_mov_b32_e32 v205, v201
	v_mov_b32_e32 v201, v197
	v_mov_b32_e32 v197, v193
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v255 offset:576
	ds_load_u8 v2, v255 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v255 offset:704
	ds_load_u8 v3, v255 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v255 offset:320
	ds_load_u8 v2, v255 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v255 offset:448
	ds_load_u8 v3, v255 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v255 offset:64
	ds_load_u8 v2, v255
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v255 offset:192
	ds_load_u8 v3, v255 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v25 offset:3328
	ds_load_u8 v2, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:3840
	ds_load_u8 v3, v25 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v2, 16, v1
	ds_load_u8 v1, v25 offset:2304
	ds_load_u8 v2, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:2816
	ds_load_u8 v3, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v2, 16, v1
	ds_load_u8 v1, v25 offset:1280
	ds_load_u8 v2, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:1792
	ds_load_u8 v3, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v2, 16, v1
	ds_load_u8 v1, v25 offset:256
	ds_load_u8 v2, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:768
	ds_load_u8 v3, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	ds_load_u8 v17, v255 offset:1856
	ds_load_u8 v18, v255 offset:1792
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:1984
	ds_load_u8 v19, v255 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v255 offset:1600
	ds_load_u8 v18, v255 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:1728
	ds_load_u8 v19, v255 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v255 offset:1344
	ds_load_u8 v18, v255 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:1472
	ds_load_u8 v19, v255 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v255 offset:1088
	ds_load_u8 v18, v255 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:1216
	ds_load_u8 v19, v255 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v25 offset:7424
	ds_load_u8 v18, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:7936
	ds_load_u8 v19, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v18, 16, v17
	ds_load_u8 v17, v25 offset:6400
	ds_load_u8 v18, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:6912
	ds_load_u8 v19, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v18, 16, v17
	ds_load_u8 v17, v25 offset:5376
	ds_load_u8 v18, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:5888
	ds_load_u8 v19, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v18, 16, v17
	ds_load_u8 v17, v25 offset:4352
	ds_load_u8 v18, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:4864
	ds_load_u8 v19, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v18, 16, v17
	ds_load_u8 v17, v255 offset:2880
	ds_load_u8 v18, v255 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[30:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:3008
	ds_load_u8 v19, v255 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	ds_load_u8 v17, v255 offset:2624
	ds_load_u8 v18, v255 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:2752
	ds_load_u8 v19, v255 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v255 offset:2368
	ds_load_u8 v18, v255 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:2496
	ds_load_u8 v19, v255 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v255 offset:2112
	ds_load_u8 v18, v255 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:2240
	ds_load_u8 v19, v255 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v25 offset:11520
	ds_load_u8 v18, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:12032
	ds_load_u8 v19, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v18, 16, v17
	ds_load_u8 v17, v25 offset:10496
	ds_load_u8 v18, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:11008
	ds_load_u8 v19, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v18, 16, v17
	ds_load_u8 v17, v25 offset:9472
	ds_load_u8 v18, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:9984
	ds_load_u8 v19, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v18, 16, v17
	ds_load_u8 v17, v25 offset:8448
	ds_load_u8 v18, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:8960
	ds_load_u8 v19, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v18, 16, v17
	ds_load_u8 v17, v255 offset:3904
	ds_load_u8 v18, v255 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[105:108], v[34:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:4032
	ds_load_u8 v19, v255 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v18, 16, v17
	ds_load_u8 v17, v255 offset:3648
	ds_load_u8 v18, v255 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:3776
	ds_load_u8 v19, v255 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v255 offset:3392
	ds_load_u8 v18, v255 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:3520
	ds_load_u8 v19, v255 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v255 offset:3136
	ds_load_u8 v18, v255 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v255 offset:3264
	ds_load_u8 v19, v255 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v25 offset:15616
	ds_load_u8 v18, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:16128
	ds_load_u8 v19, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v18, 16, v17
	ds_load_u8 v17, v25 offset:14592
	ds_load_u8 v18, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:15104
	ds_load_u8 v19, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v18, 16, v17
	ds_load_u8 v17, v25 offset:13568
	ds_load_u8 v18, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:14080
	ds_load_u8 v19, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v18, 16, v17
	ds_load_u8 v17, v25 offset:12544
	ds_load_u8 v18, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:13056
	ds_load_u8 v19, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v18, 16, v17
	ds_load_u8 v17, v25 offset:3456
	ds_load_u8 v18, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[109:112], v[38:41], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:3968
	ds_load_u8 v19, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v18, 16, v17
	ds_load_u8 v17, v25 offset:2432
	ds_load_u8 v18, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:2944
	ds_load_u8 v19, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v18, 16, v17
	ds_load_u8 v17, v25 offset:1408
	ds_load_u8 v18, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:1920
	ds_load_u8 v19, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v18, 16, v17
	ds_load_u8 v17, v25 offset:384
	ds_load_u8 v18, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:896
	ds_load_u8 v19, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[93:96], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v25 offset:7552
	ds_load_u8 v27, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:8064
	ds_load_u8 v28, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v27, 16, v26
	ds_load_u8 v26, v25 offset:6528
	ds_load_u8 v27, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:7040
	ds_load_u8 v28, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v27, 16, v26
	ds_load_u8 v26, v25 offset:5504
	ds_load_u8 v27, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:6016
	ds_load_u8 v28, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v27, 16, v26
	ds_load_u8 v26, v25 offset:4480
	ds_load_u8 v27, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:4992
	ds_load_u8 v28, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v27, 16, v26
	ds_load_u8 v26, v25 offset:11648
	ds_load_u8 v27, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[30:33], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:12160
	ds_load_u8 v28, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v27, 16, v26
	ds_load_u8 v26, v25 offset:10624
	ds_load_u8 v27, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:11136
	ds_load_u8 v28, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v27, 16, v26
	ds_load_u8 v26, v25 offset:9600
	ds_load_u8 v27, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:10112
	ds_load_u8 v28, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v27, 16, v26
	ds_load_u8 v26, v25 offset:8576
	ds_load_u8 v27, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:9088
	ds_load_u8 v28, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v27, 16, v26
	ds_load_u8 v26, v25 offset:15744
	ds_load_u8 v27, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[34:37], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v255 offset:1872
	ds_load_u8 v34, v255 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:16256
	ds_load_u8 v28, v25 offset:16000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:2000
	ds_load_u8 v35, v255 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v92, v27, 16, v26
	ds_load_u8 v26, v25 offset:14720
	ds_load_u8 v27, v25 offset:14464
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v255 offset:1616
	ds_load_u8 v34, v255 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:15232
	ds_load_u8 v28, v25 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:1744
	ds_load_u8 v35, v255 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v91, v27, 16, v26
	ds_load_u8 v26, v25 offset:13696
	ds_load_u8 v27, v25 offset:13440
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v255 offset:1360
	ds_load_u8 v34, v255 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:14208
	ds_load_u8 v28, v25 offset:13952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:1488
	ds_load_u8 v35, v255 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v90, v27, 16, v26
	ds_load_u8 v26, v25 offset:12672
	ds_load_u8 v27, v25 offset:12416
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v255 offset:1104
	ds_load_u8 v34, v255 offset:1040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:1232
	ds_load_u8 v35, v255 offset:1168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v89, v25, 16, v26
	ds_load_u8 v25, v255 offset:848
	ds_load_u8 v26, v255 offset:784
	v_lshl_or_b32 v45, v34, 16, v33
	ds_load_u8 v33, v255 offset:2896
	ds_load_u8 v34, v255 offset:2832
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[38:41], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v255 offset:976
	ds_load_u8 v27, v255 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:3024
	ds_load_u8 v35, v255 offset:2960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v255 offset:592
	ds_load_u8 v26, v255 offset:528
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v255 offset:2640
	ds_load_u8 v34, v255 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v255 offset:720
	ds_load_u8 v27, v255 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:2768
	ds_load_u8 v35, v255 offset:2704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v255 offset:336
	ds_load_u8 v26, v255 offset:272
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v255 offset:2384
	ds_load_u8 v34, v255 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v255 offset:464
	ds_load_u8 v27, v255 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:2512
	ds_load_u8 v35, v255 offset:2448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v255 offset:80
	ds_load_u8 v26, v255 offset:16
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v255 offset:2128
	ds_load_u8 v34, v255 offset:2064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v255 offset:208
	ds_load_u8 v27, v255 offset:144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:2256
	ds_load_u8 v35, v255 offset:2192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v26, 16, v25
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v255 offset:3920
	ds_load_u8 v34, v255 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[101:104], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[49:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:4048
	ds_load_u8 v35, v255 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v34, 16, v33
	ds_load_u8 v33, v255 offset:3664
	ds_load_u8 v34, v255 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:3792
	ds_load_u8 v35, v255 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v34, 16, v33
	ds_load_u8 v33, v255 offset:3408
	ds_load_u8 v34, v255 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:3536
	ds_load_u8 v35, v255 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v255 offset:3152
	ds_load_u8 v34, v255 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v255 offset:3280
	ds_load_u8 v35, v255 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v255 offset:864
	ds_load_u8 v42, v255 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[109:112], v[53:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[49:52], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v255 offset:1888
	ds_load_u8 v50, v255 offset:1824
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[53:56], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v255 offset:992
	ds_load_u8 v43, v255 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:2016
	ds_load_u8 v51, v255 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	ds_load_u8 v41, v255 offset:608
	ds_load_u8 v42, v255 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v116, v50, 16, v49
	ds_load_u8 v49, v255 offset:1632
	ds_load_u8 v50, v255 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v255 offset:736
	ds_load_u8 v43, v255 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:1760
	ds_load_u8 v51, v255 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v255 offset:352
	ds_load_u8 v42, v255 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v115, v50, 16, v49
	ds_load_u8 v49, v255 offset:1376
	ds_load_u8 v50, v255 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v255 offset:480
	ds_load_u8 v43, v255 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:1504
	ds_load_u8 v51, v255 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v255 offset:96
	ds_load_u8 v42, v255 offset:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v114, v50, 16, v49
	ds_load_u8 v49, v255 offset:1120
	ds_load_u8 v50, v255 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v255 offset:224
	ds_load_u8 v43, v255 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:1248
	ds_load_u8 v51, v255 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v50, 16, v49
	ds_load_u8 v49, v255 offset:2912
	ds_load_u8 v50, v255 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[113:116], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:3040
	ds_load_u8 v51, v255 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v50, 16, v49
	ds_load_u8 v49, v255 offset:2656
	ds_load_u8 v50, v255 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:2784
	ds_load_u8 v51, v255 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v50, 16, v49
	ds_load_u8 v49, v255 offset:2400
	ds_load_u8 v50, v255 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:2528
	ds_load_u8 v51, v255 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v50, 16, v49
	ds_load_u8 v49, v255 offset:2144
	ds_load_u8 v50, v255 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:2272
	ds_load_u8 v51, v255 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v50, 16, v49
	ds_load_u8 v49, v255 offset:3936
	ds_load_u8 v50, v255 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[105:108], v[188:191], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:4064
	ds_load_u8 v51, v255 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v50, 16, v49
	ds_load_u8 v49, v255 offset:3680
	ds_load_u8 v50, v255 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:3808
	ds_load_u8 v51, v255 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v50, 16, v49
	ds_load_u8 v49, v255 offset:3424
	ds_load_u8 v50, v255 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:3552
	ds_load_u8 v51, v255 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v50, 16, v49
	ds_load_u8 v49, v255 offset:3168
	ds_load_u8 v50, v255 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v255 offset:3296
	ds_load_u8 v51, v255 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[58:61], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v58, v255 offset:880
	ds_load_u8 v59, v255 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[109:112], v[192:195], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[113:116], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[188:191], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v191, v63 :: v_dual_mov_b32 v190, v62
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[192:195], v[49:56] neg_lo:[1,1,0]
	v_mov_b32_e32 v195, v199
	v_mov_b32_e32 v199, v203
	v_mov_b32_e32 v203, v207
	v_mov_b32_e32 v207, v211
	v_dual_mov_b32 v211, v215 :: v_dual_mov_b32 v192, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v57, v57
	ds_load_u8 v59, v255 offset:944
	v_mov_b32_e32 v194, v198
	v_mov_b32_e32 v198, v202
	v_mov_b32_e32 v202, v206
	v_dual_mov_b32 v206, v210 :: v_dual_mov_b32 v193, v197
	v_mov_b32_e32 v197, v201
	v_mov_b32_e32 v201, v205
	v_mov_b32_e32 v205, v209
	v_mov_b32_e32 v209, v213
	v_mov_b32_e32 v213, v217
	v_mov_b32_e32 v217, v221
	v_mov_b32_e32 v221, v225
	v_dual_mov_b32 v225, v239 :: v_dual_mov_b32 v210, v214
	v_mov_b32_e32 v214, v218
	v_mov_b32_e32 v218, v222
	v_mov_b32_e32 v222, v226
	v_dual_mov_b32 v226, v117 :: v_dual_mov_b32 v215, v219
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	v_mov_b32_e32 v219, v223
	v_mov_b32_e32 v223, v227
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v116, v57, 16, v58
	ds_load_u8 v57, v255 offset:624
	ds_load_u8 v58, v255 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v255 offset:752
	ds_load_u8 v59, v255 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v58, 16, v57
	ds_load_u8 v57, v255 offset:368
	ds_load_u8 v58, v255 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v255 offset:496
	ds_load_u8 v59, v255 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v58, 16, v57
	ds_load_u8 v57, v255 offset:112
	ds_load_u8 v58, v255 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v255 offset:240
	ds_load_u8 v59, v255 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v97, v255 offset:1904
	ds_load_u8 v98, v255 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[93:96], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v116, v242 :: v_dual_mov_b32 v115, v241
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v241, off, off offset:4
	scratch_load_b32 v114, off, off offset:20
	scratch_load_b32 v239, off, off offset:8
	scratch_load_b32 v242, off, off
	v_mov_b32_e32 v113, v247
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v117, off, off offset:16
	scratch_load_b32 v247, off, off offset:12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	scratch_load_b32 v98, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v98, v98
	ds_load_u8 v99, v255 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v255 offset:1648
	ds_load_u8 v98, v255 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v255 offset:1776
	ds_load_u8 v99, v255 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v98, 16, v97
	ds_load_u8 v97, v255 offset:1392
	ds_load_u8 v98, v255 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v255 offset:1520
	ds_load_u8 v188, v255 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v188, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v255 offset:1136
	ds_load_u8 v188, v255 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v188, v97, 0xc0c0004
	ds_load_u8 v188, v255 offset:1264
	ds_load_u8 v189, v255 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v188, 16, v97
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[97:100], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v101, v255 offset:2928
	ds_load_u8 v102, v255 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	scratch_load_b32 v102, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v102, v102
	ds_load_u8 v103, v255 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v255 offset:2672
	ds_load_u8 v102, v255 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v255 offset:2800
	ds_load_u8 v103, v255 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v101
	ds_load_u8 v101, v255 offset:2416
	ds_load_u8 v102, v255 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v255 offset:2544
	ds_load_u8 v188, v255 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v188, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v255 offset:2160
	ds_load_u8 v188, v255 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v188, v101, 0xc0c0004
	ds_load_u8 v188, v255 offset:2288
	ds_load_u8 v189, v255 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v101, v188, 16, v101
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[101:104], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v105, v255 offset:3952
	ds_load_u8 v106, v255 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[101:104], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v87, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	scratch_load_b32 v106, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v106, v106
	ds_load_u8 v107, v255 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v255 offset:3696
	ds_load_u8 v106, v255 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v255 offset:3824
	ds_load_u8 v107, v255 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v106, 16, v105
	ds_load_u8 v105, v255 offset:3440
	ds_load_u8 v106, v255 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v255 offset:3568
	ds_load_u8 v188, v255 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v188, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v255 offset:3184
	ds_load_u8 v188, v255 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v188, v105, 0xc0c0004
	ds_load_u8 v188, v255 offset:3312
	ds_load_u8 v189, v255 offset:3248
	v_and_b32_e32 v255, 0xf0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v105, v188, 16, v105
	v_dual_mov_b32 v188, v141 :: v_dual_mov_b32 v141, v196
	v_mov_b32_e32 v196, v200
	v_mov_b32_e32 v200, v204
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[105:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v204, v208
	v_mov_b32_e32 v208, v212
	v_mov_b32_e32 v212, v216
	v_mov_b32_e32 v216, v220
	v_mov_b32_e32 v220, v224
	v_mov_b32_e32 v224, v228
	v_mov_b32_e32 v228, v232
	v_mov_b32_e32 v232, v236
	v_mov_b32_e32 v236, v244
	v_cvt_f32_i32_e32 v107, v9
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
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v23, v24
	v_cvt_f32_i32_e32 v24, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v64, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s50, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s50, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s49, s49, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s26, s14
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s51
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v81, v154, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v155, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v83, v152, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v84, v153, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v82, v81, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v81, v151, s0, 1
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_and_b32 v0, 16, v0
	s_clause 0x3
	buffer_load_u16 v85, v1, s[12:15], 0 offen
	buffer_load_u16 v86, v81, s[12:15], 0 offen
	buffer_load_u16 v83, v83, s[12:15], 0 offen
	buffer_load_u16 v84, v84, s[12:15], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v1.h, v87.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v81, 1, v255
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v88, v79, v1
	v_mul_f32_e32 v90, v77, v1
	v_mul_f32_e32 v92, v75, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v88, v88, v245, v187
	v_fma_f32 v90, v90, v243, v185
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v187, v88, s3
	v_cndmask_b32_e64 v90, v185, v90, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v87, v80, v1 :: v_dual_lshlrev_b32 v86, 16, v86
	v_mul_f32_e32 v89, v78, v1
	v_mul_f32_e32 v91, v76, v1
	v_mul_f32_e32 v93, v74, v1
	v_mul_f32_e32 v94, v73, v1
	v_mul_f32_e32 v95, v72, v1
	v_mul_f32_e32 v96, v71, v1
	v_mul_f32_e32 v97, v70, v1
	v_mul_f32_e32 v98, v69, v1
	v_mul_f32_e32 v99, v68, v1
	v_mul_f32_e32 v100, v67, v1
	v_mul_f32_e32 v101, v66, v1
	v_mul_f32_e32 v102, v65, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v250.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v87, v246, v180
	v_fma_f32 v91, v91, v242, v184
	v_fma_f32 v93, v93, v239, v182
	v_fma_f32 v94, v94, v117, v181
	v_fma_f32 v95, v95, v238, v179
	v_fma_f32 v96, v96, v237, v178
	v_fma_f32 v97, v97, v236, v177
	v_fma_f32 v98, v98, v235, v176
	v_fma_f32 v99, v99, v116, v175
	v_fma_f32 v100, v100, v115, v174
	v_fma_f32 v101, v101, v114, v173
	v_fma_f32 v102, v102, v113, v172
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v104, v79, v1
	v_mul_f32_e32 v106, v77, v1
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v108, v76, v1 :: v_dual_lshlrev_b32 v83, 16, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v92, v92, v241, v183
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v103, v80, v1
	v_mul_f32_e32 v105, v78, v1
	v_mul_f32_e32 v109, v75, v1
	v_mul_f32_e32 v110, v74, v1
	v_mul_f32_e32 v111, v73, v1
	v_mul_f32_e32 v112, v72, v1
	v_mul_f32_e32 v113, v71, v1
	v_mul_f32_e32 v114, v70, v1
	v_mul_f32_e32 v115, v69, v1
	v_mul_f32_e32 v116, v68, v1
	v_mul_f32_e32 v151, v67, v1
	v_mul_f32_e32 v152, v66, v1
	v_mul_f32_e32 v153, v65, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v249.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v180, v87, s3
	v_cndmask_b32_e64 v91, v184, v91, s3
	v_cndmask_b32_e64 v92, v183, v92, s3
	v_cndmask_b32_e64 v93, v182, v93, s3
	v_cndmask_b32_e64 v94, v181, v94, s3
	v_cndmask_b32_e64 v95, v179, v95, s3
	v_cndmask_b32_e64 v96, v178, v96, s3
	v_cndmask_b32_e64 v97, v177, v97, s3
	v_cndmask_b32_e64 v98, v176, v98, s3
	v_cndmask_b32_e64 v99, v175, v99, s3
	v_cndmask_b32_e64 v100, v174, v100, s3
	v_cndmask_b32_e64 v101, v173, v101, s3
	v_cndmask_b32_e64 v102, v172, v102, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v115, v115, v223, v160
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v154, v80, v1
	v_mul_f32_e32 v172, v78, v1
	v_mul_f32_e32 v174, v76, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v155, v79, v1 :: v_dual_lshlrev_b32 v84, 16, v84
	v_mul_f32_e32 v173, v77, v1
	v_mul_f32_e32 v175, v75, v1
	v_mul_f32_e32 v176, v74, v1
	v_mul_f32_e32 v177, v73, v1
	v_mul_f32_e32 v178, v72, v1
	v_mul_f32_e32 v179, v71, v1
	v_mul_f32_e32 v180, v70, v1
	v_mul_f32_e32 v181, v69, v1
	v_mul_f32_e32 v182, v68, v1
	v_mul_f32_e32 v183, v67, v1
	v_mul_f32_e32 v184, v66, v1
	v_mul_f32_e32 v185, v65, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v247.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v115, v160, v115, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v160, v176, v212, v144
	v_fma_f32 v116, v116, v222, v159
	v_fma_f32 v155, v155, v217, v149
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v76, v1
	v_mul_f32_e32 v75, v75, v1
	v_mul_f32_e32 v74, v74, v1
	v_mul_f32_e32 v73, v73, v1
	v_mul_f32_e32 v65, v65, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v144, v144, v160, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v76, v197, v129
	v_fma_f32 v75, v75, v196, v128
	v_fma_f32 v74, v74, v195, v127
	v_fma_f32 v73, v73, v194, v126
	v_fma_f32 v160, v65, v202, v118
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v65, 16, v82
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v79, v1
	v_mul_f32_e32 v78, v78, v1
	v_mul_f32_e32 v77, v77, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v129, v129, v76, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v248, v65 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v128, v75, s3
	v_cndmask_b32_e64 v127, v127, v74, s3
	v_cndmask_b32_e64 v126, v126, v73, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[73:76], v252 offset:41472
	v_mul_f32_e32 v80, v80, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v79, v200, v132
	v_fma_f32 v78, v78, v199, v131
	v_fma_f32 v77, v77, v198, v130
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v69, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v80, v201, v133
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v132, v79, s3
	v_cndmask_b32_e64 v131, v131, v78, s3
	v_cndmask_b32_e64 v130, v130, v77, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v72, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v133, v80, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[77:80], v252 offset:41488
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v118, v160, s3
	v_cndmask_b32_e64 v116, v159, v116, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v159, v175, v213, v145
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v71, v1
	v_mul_f32_e32 v68, v68, v1
	v_mul_f32_e32 v67, v67, v1
	v_mul_f32_e32 v66, v66, v1
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v160, v73, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v149, v149, v155, s3
	v_cndmask_b32_e64 v145, v145, v159, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v155, v71, v192, v124
	v_fma_f32 v159, v66, v188, v119
	v_fma_f32 v16, v160, v16, v126
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v175, v73, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v104, v104, v233, v170
	v_fma_f32 v110, v110, v228, v165
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v119, v119, v159, s3
	v_cndmask_b32_e64 v16, v126, v16, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v70, v1
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v196, v79, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v153, v153, v219, v156
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v194, v77, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v151, v151, v221, v158
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v195, v78, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v141, v70, v141, v123
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v153, v156, v153, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v156, v172, v216, v148
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v151, v158, v151, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v158, v174, v214, v146
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v170, v104, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v112, v112, v226, v163
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v148, v148, v156, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v156, v69, v191, v122
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v191, v74, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v154, v154, v218, v150
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v146, v146, v158, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v158, v67, v254, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v122, v122, v156, s3
	v_cndmask_b32_e64 v110, v165, v110, s3
	v_cndmask_b32_e64 v150, v150, v154, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v154, v72, v193, v125
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v193, v76, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v152, v152, v220, v157
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[69:72], v252 offset:40976
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v120, v120, v158, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v165, v181, v207, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v125, v125, v154, s3
	v_cndmask_b32_e64 v152, v157, v152, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v157, v173, v215, v147
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v181, v79, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v106, v106, v231, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v112, v163, v112, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v176, v74, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v147, v147, v157, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v157, v68, v190, v121
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[65:68], v252 offset:40960
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v168, v106, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v190, v73, v83
	v_mul_f32_e32 v73, v73, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v168, v184, v204, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v124, v124, v155, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v113, v113, v225, v162
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v138, v138, v165, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v189, v72, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v114, v114, v224, v161
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v159, v72, v85
	v_mul_f32_e32 v174, v72, v86
	v_mul_f32_e32 v72, v72, v84
	v_mul_f32_e32 v156, v69, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v114, v161, v114, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v161, v177, v211, v143
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v158, v71, v85
	v_mul_f32_e32 v173, v71, v86
	v_mul_f32_e32 v188, v71, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v111, v111, v251, v164
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v170, v68, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v89, v253, v186
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v143, v143, v161, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v71, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v111, v164, v111, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v156, v12, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v186, v89, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v186, v69, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v109, v109, v229, v166
	v_fma_f32 v32, v175, v32, v143
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v184, v67, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v105, v105, v232, v169
	v_fma_f32 v15, v159, v15, v125
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v109, v166, v109, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v166, v182, v206, v137
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v182, v65, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v103, v103, v234, v171
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v122, v12, s2
	v_cndmask_b32_e64 v32, v143, v32, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v161, v74, v85
	v_mul_f32_e32 v74, v74, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v103, v171, v103, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v171, v69, v86
	v_mul_f32_e32 v69, v69, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v164, v180, v208, v139
	v_fma_f32 v163, v179, v209, v140
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v169, v105, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v169, v185, v203, v134
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v155, v68, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v139, v139, v164, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v164, v77, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v140, v140, v163, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v185, v68, v83
	v_mul_f32_e32 v68, v68, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v125, v15, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v164, v20, v130
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v12, v12, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v173, v30, v140
	v_fma_f32 v59, v68, v59, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v113, v162, v113, s3
	v_cndmask_b32_e64 v20, v130, v20, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v68, 0, v12
	v_max_f32_e32 v12, v15, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v134, v134, v169, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v154, v67, v85
	v_mul_f32_e32 v169, v67, v86
	v_mul_f32_e32 v179, v77, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v108, v108, v230, v167
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v67, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v162, v178, v210, v142
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v178, v76, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v71, v62, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v140, v30, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v163, v76, v85
	v_mul_f32_e32 v76, v76, v84
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v71, 0, v12
	v_max_f32_e32 v12, v20, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v108, v167, v108, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v180, v78, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v76, v4, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v121, v121, v157, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v76, 0, v12 :: v_dual_mul_f32 v165, v78, v85
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v78, v78, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v167, v183, v205, v136
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v11, v155, v11, v121
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v142, v142, v162, s3
	v_cndmask_b32_e64 v137, v137, v166, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v158, v14, v124
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v136, v136, v167, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v161, v17, v127
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v121, v11, s2
	v_cndmask_b32_e64 v135, v135, v168, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v168, v66, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v169, v26, v136
	v_fma_f32 v31, v174, v31, v142
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v124, v14, s2
	v_cndmask_b32_e64 v17, v127, v17, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, v11, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v136, v26, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v166, v79, v85 :: v_dual_mul_f32 v167, v65, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v168, v25, v135
	v_fma_f32 v27, v170, v27, v137
	v_fma_f32 v58, v67, v58, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v22, v166, v22, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v142, v31, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v67, 0, v11
	v_dual_max_f32 v11, v14, v14 :: v_dual_max_f32 v14, v17, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v132, v22, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v167, v24, v134
	v_fma_f32 v35, v178, v35, v146
	v_fma_f32 v64, v73, v64, v94
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v135, v25, s2
	v_cndmask_b32_e64 v27, v137, v27, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v73, 0, v14
	v_dual_max_f32 v14, v22, v22 :: v_dual_mul_f32 v133, v65, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v123, v123, v141, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v66, v85
	v_mul_f32_e32 v172, v70, v86
	v_mul_f32_e32 v177, v75, v86
	v_dual_mul_f32 v86, v80, v86 :: v_dual_mul_f32 v183, v66, v83
	v_mul_f32_e32 v187, v70, v83
	v_mul_f32_e32 v192, v75, v83
	v_mul_f32_e32 v83, v80, v83
	v_mul_f32_e32 v65, v65, v84
	v_mul_f32_e32 v66, v66, v84
	v_mul_f32_e32 v77, v77, v84
	v_mul_f32_e32 v79, v79, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v78, v6, v89
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v134, v24, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v162, v75, v85
	v_mul_f32_e32 v75, v75, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v146, v35, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v78, 0, v14
	v_max_f32_e32 v12, v25, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v157, v70, v85
	v_dual_mul_f32 v85, v80, v85 :: v_dual_mul_f32 v70, v70, v84
	v_mul_f32_e32 v80, v80, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v133, v107, v118
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v85, v23, v82
	v_fma_f32 v56, v65, v56, v102
	v_fma_f32 v9, v141, v9, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v118, v84, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v84, 0, v14
	v_max_f32_e32 v14, v32, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v180, v37, v148
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v82, v23, s2
	v_cndmask_b32_e64 v6, v89, v6, s2
	v_cndmask_b32_e64 v9, v119, v9, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v89, 0, v14 :: v_dual_max_f32 v82, 0, v12
	v_max_f32_e32 v12, v30, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v163, v19, v129
	v_fma_f32 v13, v157, v13, v123
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v148, v37, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v171, v28, v138
	v_fma_f32 v29, v172, v29, v139
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v129, v19, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v184, v42, v151
	v_fma_f32 v61, v70, v61, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v123, v13, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v70, 0, v11
	v_dual_max_f32 v11, v19, v19 :: v_dual_max_f32 v14, v37, v37
	v_max_f32_e32 v9, v9, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v182, v40, v153
	v_fma_f32 v52, v194, v52, v106
	v_fma_f32 v57, v66, v57, v101
	v_fma_f32 v3, v75, v3, v92
	v_fma_f32 v8, v80, v8, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v138, v28, s2
	v_cndmask_b32_e64 v29, v139, v29, s2
	v_cndmask_b32_e64 v42, v151, v42, s2
	v_cndmask_b32_e64 v64, v94, v64, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v75, 0, v11
	v_max_f32_e32 v11, v24, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v162, v18, v128
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v94, 0, v14
	v_max_f32_e32 v66, 0, v9
	v_dual_max_f32 v9, v13, v13 :: v_dual_max_f32 v14, v42, v42
	v_max_f32_e32 v13, v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v177, v34, v145
	v_fma_f32 v63, v72, v63, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v128, v18, s2
	v_cndmask_b32_e64 v40, v153, v40, s2
	v_cndmask_b32_e64 v52, v106, v52, s2
	v_cndmask_b32_e64 v8, v87, v8, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v72, 0, v13 :: v_dual_max_f32 v87, 0, v12
	v_dual_max_f32 v80, 0, v11 :: v_dual_max_f32 v11, v29, v29
	v_dual_max_f32 v12, v35, v35 :: v_dual_max_f32 v65, v65, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v86, v39, v150
	v_fma_f32 v60, v69, v60, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v145, v34, s2
	v_cndmask_b32_e64 v3, v92, v3, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v86, 0, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v165, v21, v131
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v92, 0, v12 :: v_dual_max_f32 v65, 0, v65
	v_dual_max_f32 v12, v40, v40 :: v_dual_max_f32 v69, 0, v9
	v_max_f32_e32 v9, v18, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v187, v45, v114
	v_fma_f32 v2, v74, v2, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v131, v21, s2
	v_cndmask_b32_e64 v39, v150, v39, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v74, 0, v9 :: v_dual_max_f32 v11, v34, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v186, v44, v115
	v_fma_f32 v47, v189, v47, v112
	v_fma_f32 v50, v192, v50, v109
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v114, v45, s2
	v_cndmask_b32_e64 v4, v91, v4, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, v21, v21 :: v_dual_max_f32 v42, 0, v14
	v_max_f32_e32 v91, 0, v11
	v_max_f32_e32 v11, v39, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v176, v33, v144
	v_fma_f32 v36, v179, v36, v147
	v_fma_f32 v55, v83, v55, v103
	v_fma_f32 v5, v77, v5, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v115, v44, s2
	v_cndmask_b32_e64 v47, v112, v47, s2
	v_cndmask_b32_e64 v50, v109, v50, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v77, 0, v13
	v_max_f32_e32 v9, v23, v23
	v_max_f32_e32 v13, v26, v26
	v_dual_max_f32 v39, 0, v11 :: v_dual_max_f32 v40, 0, v12
	v_max_f32_e32 v12, v45, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v181, v38, v149
	v_fma_f32 v41, v183, v41, v152
	v_fma_f32 v7, v79, v7, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v144, v33, s2
	v_cndmask_b32_e64 v36, v147, v36, s2
	v_cndmask_b32_e64 v55, v103, v55, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v83, 0, v13
	v_max_f32_e32 v13, v31, v31
	v_max_f32_e32 v11, v44, v44
	v_max_f32_e32 v79, 0, v9
	v_dual_max_f32 v9, v28, v28 :: v_dual_max_f32 v14, v47, v47
	v_dual_max_f32 v45, 0, v12 :: v_dual_max_f32 v12, v50, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v185, v43, v116
	v_fma_f32 v46, v188, v46, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v149, v38, s2
	v_cndmask_b32_e64 v41, v152, v41, s2
	v_cndmask_b32_e64 v57, v101, v57, s2
	v_cndmask_b32_e64 v7, v88, v7, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v85, 0, v9
	v_dual_max_f32 v88, 0, v13 :: v_dual_max_f32 v13, v36, v36
	v_dual_max_f32 v47, 0, v14 :: v_dual_max_f32 v14, v52, v52
	v_dual_max_f32 v37, 0, v12 :: v_dual_max_f32 v12, v55, v55
	v_max_f32_e32 v9, v33, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v190, v48, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v116, v43, s2
	v_cndmask_b32_e64 v46, v113, v46, s2
	v_cndmask_b32_e64 v60, v98, v60, s2
	v_cndmask_b32_e64 v2, v93, v2, s2
	v_cndmask_b32_e64 v5, v90, v5, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v33, 0, v14 :: v_dual_max_f32 v14, v57, v57
	v_max_f32_e32 v93, 0, v13
	v_dual_max_f32 v13, v41, v41 :: v_dual_max_f32 v30, 0, v12
	v_dual_max_f32 v90, 0, v9 :: v_dual_max_f32 v9, v38, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v195, v53, v105
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v111, v48, s2
	v_cndmask_b32_e64 v62, v96, v62, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v12, v60, v60
	v_max_f32_e32 v38, 0, v9
	v_max_f32_e32 v41, 0, v13
	v_max_f32_e32 v13, v46, v46
	v_max_f32_e32 v9, v43, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v191, v49, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v105, v53, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v51, v193, v51, v108
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v46, 0, v13
	v_dual_max_f32 v43, 0, v9 :: v_dual_max_f32 v22, 0, v12
	v_dual_max_f32 v9, v48, v48 :: v_dual_max_f32 v2, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v196, v54, v104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v110, v49, s2
	v_cndmask_b32_e64 v58, v100, v58, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v48, 0, v9
	v_max_f32_e32 v9, v53, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v154, v10, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v108, v51, s2
	v_cndmask_b32_e64 v54, v104, v54, s2
	v_cndmask_b32_e64 v63, v95, v63, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v44, 0, v11 :: v_dual_max_f32 v11, v49, v49
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v34, 0, v9 :: v_dual_max_f32 v9, v58, v58
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v65, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.h, v1.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v120, v10, s2
	v_cndmask_b32_e64 v56, v102, v56, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, v51, v51 :: v_dual_max_f32 v26, 0, v9
	v_max_f32_e32 v28, 0, v14
	v_dual_max_f32 v14, v62, v62 :: v_dual_max_f32 v9, v63, v63
	v_max_f32_e32 v49, 0, v11
	v_max_f32_e32 v15, 0, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.h, v1.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, v6, v6
	v_max_f32_e32 v11, v54, v54
	v_max_f32_e32 v10, v10, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v97, v61, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v36, 0, v13 :: v_dual_max_f32 v19, 0, v14
	v_dual_max_f32 v17, 0, v2 :: v_dual_max_f32 v2, v5, v5
	v_max_f32_e32 v5, v8, v8
	v_dual_max_f32 v13, v56, v56 :: v_dual_max_f32 v12, 0, v3
	v_dual_max_f32 v31, 0, v11 :: v_dual_mul_f32 v14, v66, v66
	v_max_f32_e32 v10, 0, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v99, v59, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v8, 0, v5
	v_max_f32_e32 v27, 0, v13
	v_max_f32_e32 v13, v61, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v24.l, v18.h
	v_mov_b16_e32 v24.h, v1.l
	v_mov_b16_e32 v21.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v10, v10
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v23, 0, v13 :: v_dual_and_b32 v10, 1, v24
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v24, v67, v67 :: v_dual_and_b32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v1.l
	v_add3_u32 v18, v18, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, v14, v21, 0x7fff
	v_mov_b16_e32 v14.l, v24.h
	v_mov_b16_e32 v14.h, v1.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v25, 0, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v21, 1, v32
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v69, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v35, v68, v68 :: v_dual_and_b32 v14, 1, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v18.h
	v_add3_u32 v18, v29, v21, 0x7fff
	v_mov_b16_e32 v21.l, v32.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v29.l, v35.h
	v_mov_b16_e32 v29.h, v1.l
	v_mov_b16_e32 v21.h, v1.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, v64, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v24, v14, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v24, v70, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v18.h
	v_and_b32_e32 v18, 1, v29
	v_and_b32_e32 v21, 1, v21
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v71, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v24.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v51, v72, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v35, v18, 0x7fff
	v_add3_u32 v18, v32, v21, 0x7fff
	v_mov_b16_e32 v21.l, v29.h
	v_mov_b16_e32 v21.h, v1.l
	v_and_b32_e32 v32, 1, v50
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v50, v73, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v35.h
	v_mov_b16_e32 v35.l, v51.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v38, v38, v38 :: v_dual_and_b32 v21, 1, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v24, v32, 0x7fff
	v_mov_b16_e32 v32.l, v50.h
	v_mov_b16_e32 v35.h, v1.l
	v_mov_b16_e32 v32.h, v1.l
	v_add3_u32 v21, v29, v21, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v74, v74
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v13, 0, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v24.h
	v_and_b32_e32 v24, 1, v35
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v35, v75, v75 :: v_dual_and_b32 v32, 1, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v53, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v51, v24, 0x7fff
	v_add3_u32 v24, v50, v32, 0x7fff
	v_mov_b16_e32 v32.l, v35.h
	v_mov_b16_e32 v32.h, v1.l
	v_and_b32_e32 v50, 1, v52
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v52, v77, v77
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v16, 0, v11 :: v_dual_max_f32 v11, 0, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v32
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v4, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v51.h
	v_add3_u32 v50, v29, v50, 0x7fff
	v_mov_b16_e32 v51.l, v52.h
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v51.h, v1.l
	v_add3_u32 v29, v35, v32, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v35, v78, v78 :: v_dual_max_f32 v20, 0, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v4 :: v_dual_and_b32 v32, 1, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v50.h
	v_and_b32_e32 v50, 1, v51
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v51, v79, v79
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v7, s27, v240
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.l, v35.h
	v_add3_u32 v53, v53, v32, 0x7fff
	v_add3_u32 v32, v52, v50, 0x7fff
	v_mov_b16_e32 v50.l, v51.h
	v_mov_b16_e32 v50.h, v1.l
	v_and_b32_e32 v52, 1, v54
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v54, v82, v82 :: v_dual_add_nc_u32 v3, s33, v7
	v_dual_mul_f32 v55, v80, v80 :: v_dual_mul_f32 v42, v42, v42
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v2, s49, s34, v81
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v50, 1, v50
	v_mov_b16_e32 v32.l, v53.h
	v_add3_u32 v52, v35, v52, 0x7fff
	v_mov_b16_e32 v53.l, v54.h
	v_mov_b16_e32 v56.l, v55.h
	v_mov_b16_e32 v56.h, v1.l
	v_mov_b16_e32 v53.h, v1.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v5, 0x80, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v51, v50, 0x7fff
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v50, v83, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v52.h
	v_and_b32_e32 v51, 1, v56
	v_and_b32_e32 v52, 1, v53
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v53, v84, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v50.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v57, v85, v85 :: v_dual_mul_f32 v40, v40, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v55, v51, 0x7fff
	v_add3_u32 v52, v54, v52, 0x7fff
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v34, v34, v34 :: v_dual_and_b32 v55, 1, v56
	v_mul_f32_e32 v56, v86, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v51.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v44, v44, v44 :: v_dual_and_b32 v51, 1, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v50, v50, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v54.l, v56.h
	v_mov_b16_e32 v55.l, v57.h
	v_mov_b16_e32 v55.h, v1.l
	v_add3_u32 v51, v53, v51, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v53, v87, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v50.h
	v_and_b32_e32 v54, 1, v54
	v_and_b32_e32 v50, 1, v55
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v55, v88, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v53.h
	v_mov_b16_e32 v58.h, v1.l
	v_add3_u32 v54, v56, v54, 0x7fff
	v_add3_u32 v50, v57, v50, 0x7fff
	v_mov_b16_e32 v56.l, v55.h
	v_mov_b16_e32 v56.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v48, v48, v48 :: v_dual_and_b32 v57, 1, v58
	v_dual_mul_f32 v58, v90, v90 :: v_dual_mul_f32 v59, v89, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.l, v50.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v50, 1, v56
	v_add3_u32 v53, v53, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v56.l, v58.h
	v_mov_b16_e32 v57.l, v59.h
	v_mov_b16_e32 v57.h, v1.l
	v_add3_u32 v50, v55, v50, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v55, v91, v91 :: v_dual_mul_f32 v36, v36, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v53.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v53, 1, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v56, 1, v56
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v57, v92, v92 :: v_dual_mul_f32 v26, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v55.h
	v_mov_b16_e32 v60.h, v1.l
	v_add3_u32 v53, v59, v53, 0x7fff
	v_add3_u32 v56, v58, v56, 0x7fff
	v_mov_b16_e32 v58.l, v57.h
	v_mov_b16_e32 v58.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v22, v22, v22 :: v_dual_and_b32 v59, 1, v60
	v_dual_mul_f32 v61, v93, v93 :: v_dual_mul_f32 v28, v28, v28
	v_mul_f32_e32 v60, v94, v94
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v53.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v20, v20, v20 :: v_dual_and_b32 v53, 1, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v55, v55, v59, 0x7fff
	v_mov_b16_e32 v59.l, v61.h
	v_mov_b16_e32 v59.h, v1.l
	v_mov_b16_e32 v58.l, v60.h
	v_add3_u32 v53, v57, v53, 0x7fff
	v_mov_b16_e32 v53.l, v55.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v39, v39, v39
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v55, 1, v59
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v57, 1, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v38.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v55, v61, v55, 0x7fff
	v_mov_b16_e32 v59.l, v39.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v41, v41, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v57, v60, v57, 0x7fff
	v_and_b32_e32 v58, 1, v58
	v_mov_b16_e32 v57.l, v55.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v55, 1, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v59.l, v40.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v38, v38, v58, 0x7fff
	v_mov_b16_e32 v58.l, v41.h
	v_mov_b16_e32 v58.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v37, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v39, v55, 0x7fff
	v_mov_b16_e32 v39.l, v38.h
	v_and_b32_e32 v38, 1, v59
	v_and_b32_e32 v55, 1, v58
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v43, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v42.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v45, v45, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v40, v38, 0x7fff
	v_add3_u32 v40, v41, v55, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v1.l
	v_and_b32_e32 v55, 1, v58
	v_mov_b16_e32 v40.l, v38.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v6, s35, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_and_b32 v38, 1, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v42, v55, 0x7fff
	v_mov_b16_e32 v55.l, v44.h
	v_mov_b16_e32 v55.h, v1.l
	v_mov_b16_e32 v42.l, v45.h
	v_mov_b16_e32 v42.h, v1.l
	v_add3_u32 v38, v43, v38, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v46, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v41.h
	v_and_b32_e32 v41, 1, v55
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v46, v47, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e32 v47.l, v43.h
	v_mov_b16_e32 v47.h, v1.l
	v_add3_u32 v41, v44, v41, 0x7fff
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v44.h, v1.l
	v_add3_u32 v42, v45, v42, 0x7fff
	v_and_b32_e32 v45, 1, v47
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v47, v49, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v41.h
	v_and_b32_e32 v41, 1, v44
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v43, v45, 0x7fff
	v_mov_b16_e32 v45.l, v48.h
	v_mov_b16_e32 v45.h, v1.l
	v_mov_b16_e32 v44.l, v47.h
	v_add3_u32 v41, v46, v41, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v46.l, v36.h
	v_and_b32_e32 v43, 1, v45
	v_mov_b16_e32 v45.l, v37.h
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v46.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v25, v25, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v48, v43, 0x7fff
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v44, v47, v44, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v23, v23, v23
	v_mul_f32_e32 v19, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v43.h
	v_and_b32_e32 v43, 1, v46
	v_add3_u32 v37, v37, v45, 0x7fff
	v_mov_b16_e32 v46.l, v33.h
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e32 v45.h, v1.l
	v_add3_u32 v36, v36, v43, 0x7fff
	v_mov_b16_e32 v36.l, v37.h
	v_and_b32_e32 v37, 1, v46
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v45
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v15, v15
	v_mul_f32_e32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v33, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v1.l
	v_add3_u32 v34, v34, v43, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v11, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v33.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v37
	v_mov_b16_e32 v37.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v9, v9, v9 :: v_dual_add_nc_u32 v4, s48, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v31.h
	v_add3_u32 v30, v30, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v33, 1, v37
	v_mov_b16_e32 v37.l, v26.h
	s_mov_b32 s27, s15
	v_add3_u32 v28, v28, v33, 0x7fff
	v_and_b32_e32 v43, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v33, 1, v37
	v_mov_b16_e32 v37.l, v19.h
	v_add3_u32 v31, v31, v43, 0x7fff
	v_mov_b16_e32 v43.l, v27.h
	v_mov_b16_e32 v43.h, v1.l
	v_add3_u32 v26, v26, v33, 0x7fff
	v_mov_b16_e32 v33.l, v22.h
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v33.h, v1.l
	v_and_b32_e32 v31, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v27, v31, 0x7fff
	v_mov_b16_e32 v31.l, v25.h
	v_mov_b16_e32 v31.h, v1.l
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v27, 1, v31
	v_mov_b16_e32 v31.l, v23.h
	v_add3_u32 v25, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v27, 1, v31
	v_and_b32_e32 v31, 1, v33
	v_mov_b16_e32 v33.l, v20.h
	v_mov_b16_e32 v25.l, v26.h
	v_and_b32_e32 v26, 1, v37
	v_add3_u32 v23, v23, v27, 0x7fff
	v_add3_u32 v22, v22, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	v_mov_b16_e32 v22.l, v17.h
	v_add3_u32 v19, v19, v26, 0x7fff
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v1.l
	v_mov_b16_e32 v23.l, v22.h
	v_add3_u32 v20, v20, v27, 0x7fff
	v_mov_b16_e32 v22.h, v1.l
	v_mov_b16_e32 v27.l, v15.h
	v_mov_b16_e32 v27.h, v1.l
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e32 v31.l, v13.h
	v_mov_b16_e32 v31.h, v1.l
	v_and_b32_e32 v22, 1, v22
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v16, v16, v26, 0x7fff
	v_mov_b16_e32 v20.l, v19.h
	v_and_b32_e32 v19, 1, v31
	v_add3_u32 v17, v17, v22, 0x7fff
	v_add3_u32 v15, v15, v27, 0x7fff
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v16.l, v11.h
	v_mov_b16_e32 v16.h, v1.l
	v_add3_u32 v13, v13, v19, 0x7fff
	v_mov_b16_e32 v13.l, v15.h
	v_mov_b16_e32 v15.l, v12.h
	v_mov_b16_e32 v19.l, v9.h
	v_mov_b16_e32 v19.h, v1.l
	v_mov_b16_e32 v15.h, v1.l
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v22.l, v8.h
	v_mov_b16_e32 v22.h, v1.l
	v_and_b32_e32 v1, 1, v19
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v11, v11, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v27, v39, v53 :: v_dual_and_b32 v16, 1, v22
	v_add3_u32 v1, v9, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v12, v15, 0x7fff
	v_mov_b16_e32 v9.l, v11.h
	v_cndmask_b32_e32 v11, v21, v14, vcc_lo
	v_add3_u32 v0, v8, v16, 0x7fff
	v_mov_b16_e32 v0.l, v1.h
	v_cndmask_b32_e32 v1, v18, v10, vcc_lo
	v_cndmask_b32_e32 v8, v10, v18, vcc_lo
	v_cndmask_b32_e32 v10, v14, v21, vcc_lo
	v_cndmask_b32_e32 v14, v32, v24, vcc_lo
	v_dual_cndmask_b32 v12, v24, v32 :: v_dual_cndmask_b32 v15, v35, v29
	v_cndmask_b32_e32 v16, v29, v35, vcc_lo
	v_cndmask_b32_e32 v29, v53, v39, vcc_lo
	v_dual_cndmask_b32 v31, v42, v40 :: v_dual_cndmask_b32 v32, v40, v42
	v_dual_cndmask_b32 v39, v20, v25 :: v_dual_cndmask_b32 v20, v25, v20
	v_cndmask_b32_e32 v40, v9, v17, vcc_lo
	v_cndmask_b32_e32 v9, v17, v9, vcc_lo
	v_mov_b32_e32 v17, 0x5410
	v_mov_b32_e32 v25, 0x7632
	v_cndmask_b32_e32 v33, v41, v38, vcc_lo
	v_cndmask_b32_e32 v35, v38, v41, vcc_lo
	v_dual_cndmask_b32 v41, v0, v13 :: v_dual_cndmask_b32 v0, v13, v0
	v_permlanex16_b32 v13, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v8, 0x1054, v17, vcc_lo
	v_cndmask_b32_e32 v17, 0x3276, v25, vcc_lo
	v_permlanex16_b32 v25, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v19, v52, v54, vcc_lo
	v_cndmask_b32_e32 v22, v51, v50, vcc_lo
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v10, v17, 8, v17
	v_dual_cndmask_b32 v26, v56, v57 :: v_dual_cndmask_b32 v37, v34, v44
	v_cndmask_b32_e32 v34, v44, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 0x540054, v8
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v38, v30, v36, vcc_lo
	v_cndmask_b32_e32 v30, v36, v30, vcc_lo
	v_cndmask_b32_e32 v36, v23, v28, vcc_lo
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v23, v28, v23, vcc_lo
	v_permlanex16_b32 v28, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x5040504, v8
	v_and_b32_e32 v44, 0x7060706, v10
	v_cndmask_b32_e32 v18, v54, v52, vcc_lo
	v_cndmask_b32_e32 v21, v50, v51, vcc_lo
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v24, v57, v56, vcc_lo
	v_permlanex16_b32 v22, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v13, v1, v43
	v_perm_b32 v9, v13, v1, v44
	v_perm_b32 v10, v25, v11, v43
	v_perm_b32 v11, v25, v11, v44
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v2, v7, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v12, v28, v14, v43
	v_perm_b32 v13, v28, v14, v44
	v_perm_b32 v14, v16, v15, v43
	v_perm_b32 v15, v16, v15, v44
	v_permlanex16_b32 v42, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v16, v17, v18, v43
	v_perm_b32 v17, v17, v18, v44
	v_perm_b32 v18, v19, v21, v43
	v_perm_b32 v19, v19, v21, v44
	v_add_lshl_u32 v7, v2, v6, 1
	v_perm_b32 v20, v22, v24, v43
	v_perm_b32 v21, v22, v24, v44
	v_perm_b32 v22, v26, v27, v43
	v_perm_b32 v23, v26, v27, v44
	v_perm_b32 v24, v29, v31, v43
	v_perm_b32 v25, v29, v31, v44
	v_perm_b32 v28, v34, v37, v43
	v_perm_b32 v29, v34, v37, v44
	v_perm_b32 v30, v35, v38, v43
	v_perm_b32 v31, v35, v38, v44
	v_perm_b32 v34, v45, v39, v43
	v_perm_b32 v35, v45, v39, v44
	v_perm_b32 v38, v0, v41, v43
	v_perm_b32 v39, v0, v41, v44
	v_add_lshl_u32 v0, v5, v6, 1
	v_perm_b32 v26, v32, v33, v43
	v_perm_b32 v27, v32, v33, v44
	s_clause 0x2
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v1, s[24:27], 0 offen offset:256
	buffer_store_b128 v[16:19], v7, s[24:27], 0 offen
	v_add_lshl_u32 v1, v2, v4, 1
	v_add_lshl_u32 v4, v5, v4, 1
	v_perm_b32 v32, v42, v36, v43
	v_perm_b32 v33, v42, v36, v44
	v_add_lshl_u32 v2, v2, v3, 1
	v_perm_b32 v36, v46, v40, v43
	v_perm_b32 v37, v46, v40, v44
	v_add_lshl_u32 v3, v5, v3, 1
	s_clause 0x4
	buffer_store_b128 v[20:23], v0, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v1, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	buffer_store_b128 v[32:35], v2, s[24:27], 0 offen
	buffer_store_b128 v[36:39], v3, s[24:27], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 44
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
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 44
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33860
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 44
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 55
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 44
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 10
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
