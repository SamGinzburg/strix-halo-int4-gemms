	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v155, 2, v0
	v_lshlrev_b32_e32 v153, 4, v0
	v_lshrrev_b32_e32 v154, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v41, 1, v0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	s_mov_b32 s40, 0
	v_and_b32_e32 v6, 0x70, v153
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v156, 32, v154
	scratch_store_b32 off, v41, off offset:452 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v42, 48, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v157, v42, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s14, v155
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
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
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s36, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s36, v155
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s33, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s2, s7
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s15, 1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s3
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s2, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v3
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s4, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[137:138], null, s34, v154, v[6:7]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s36, v154
	v_or_b32_e32 v5, s36, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s31, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s8, s34, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s31
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v153
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s33, v4
	v_cmp_gt_i32_e64 s3, s33, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v158, s15, 6, v137
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_add3_u32 v138, v2, v1, s29
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_add_i32 s6, s28, s8
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s4, s2, s31
	s_and_b32 s3, s3, s31
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s6, v158
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[16:17], null, s14, s36, v[138:139]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s6, v137
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s36, 64
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v10, s15, v3
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s36, v155
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s7, s15, 7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s36, v154
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s15, v2
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s36, v156
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v14, 0x80000000, v16, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v11
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v21, s6, v137
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v3, s3
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v17, 0x80000000, v10, s3
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_lshl_add_u32 v25, s14, 6, v16
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s33, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v2, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v15, 0x80000000, v9, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s33, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v22, s6, v158
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v24, s15, v21
	v_add3_u32 v23, s6, s15, v158
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v26, 0x80000000, v25, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_and_b32 s3, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v25, 0x80000000, v21, vcc_lo
	v_cndmask_b32_e64 v29, 0x80000000, v22, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v33, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e64 v37, 0x80000000, v23, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[9:12], v14, s[20:23], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[13:16], v15, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[21:24], v26, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v33, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v37, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v41, 0, v153
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v41, v[9:12] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v41, v[1:4]
	ds_store_b128 v41, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[13:16] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[17:20] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v41, v[21:24] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[25:28] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[29:32] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[37:40] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v41, v42, v0
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v1, 0x800, v41
	v_or_b32_e32 v240, 0x80, v41
	v_or_b32_e32 v241, 0x100, v41
	v_or_b32_e32 v242, 0x180, v41
	v_or_b32_e32 v243, 0x200, v41
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x880, v41
	v_or_b32_e32 v244, 0x280, v41
	v_or_b32_e32 v245, 0x300, v41
	v_or_b32_e32 v246, 0x380, v41
	v_or_b32_e32 v247, 0x400, v41
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x900, v41
	v_or_b32_e32 v248, 0x480, v41
	v_or_b32_e32 v249, 0x500, v41
	v_or_b32_e32 v250, 0x580, v41
	v_or_b32_e32 v251, 0x600, v41
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x980, v41
	v_or_b32_e32 v252, 0x680, v41
	v_or_b32_e32 v253, 0x700, v41
	v_or_b32_e32 v254, 0x780, v41
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa00, v41
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa80, v41
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb00, v41
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb80, v41
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc00, v41
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc80, v41
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd00, v41
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd80, v41
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe00, v41
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe80, v41
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf00, v41
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf80, v41
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1000, v41
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1080, v41
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1100, v41
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1180, v41
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1200, v41
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1280, v41
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1300, v41
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1380, v41
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1400, v41
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1480, v41
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1500, v41
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1580, v41
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1600, v41
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1680, v41
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1700, v41
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1780, v41
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v41
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1880, v41
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1900, v41
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1980, v41
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a00, v41
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a80, v41
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b00, v41
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b80, v41
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v41
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c80, v41
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d00, v41
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d80, v41
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e00, v41
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v41
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f00, v41
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v41
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 64, v41
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc0, v41
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x140, v41
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c0, v41
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x240, v41
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x2c0, v41
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x340, v41
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x3c0, v41
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x440, v41
	scratch_store_b32 off, v1, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x4c0, v41
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x540, v41
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x5c0, v41
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x640, v41
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x6c0, v41
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x740, v41
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x7c0, v41
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x840, v41
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x8c0, v41
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x940, v41
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x9c0, v41
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa40, v41
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xac0, v41
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb40, v41
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xbc0, v41
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc40, v41
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xcc0, v41
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd40, v41
	scratch_store_b32 off, v1, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xdc0, v41
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe40, v41
	scratch_store_b32 off, v1, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xec0, v41
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf40, v41
	scratch_store_b32 off, v1, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xfc0, v41
	scratch_store_b32 off, v1, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1040, v41
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x10c0, v41
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1140, v41
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x11c0, v41
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1240, v41
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x12c0, v41
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1340, v41
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x13c0, v41
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1440, v41
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x14c0, v41
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1540, v41
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x15c0, v41
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1640, v41
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x16c0, v41
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1740, v41
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x17c0, v41
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1840, v41
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x18c0, v41
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1940, v41
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x19c0, v41
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a40, v41
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1ac0, v41
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b40, v41
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1bc0, v41
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c40, v41
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1cc0, v41
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d40, v41
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1dc0, v41
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e40, v41
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1ec0, v41
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f40, v41
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1fc0, v41
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
.LBB0_3:                                ; %Flow289
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_and_or_b32 v141, v154, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	scratch_store_b32 off, v42, off offset:456 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v0, 0x800, v157
	v_or_b32_e32 v240, 0x80, v157
	v_or_b32_e32 v241, 0x100, v157
	v_or_b32_e32 v242, 0x180, v157
	v_or_b32_e32 v243, 0x200, v157
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v157
	v_or_b32_e32 v244, 0x280, v157
	v_or_b32_e32 v245, 0x300, v157
	v_or_b32_e32 v246, 0x380, v157
	v_or_b32_e32 v247, 0x400, v157
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v157
	v_or_b32_e32 v248, 0x480, v157
	v_or_b32_e32 v249, 0x500, v157
	v_or_b32_e32 v250, 0x580, v157
	v_or_b32_e32 v251, 0x600, v157
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v157
	v_or_b32_e32 v252, 0x680, v157
	v_or_b32_e32 v253, 0x700, v157
	v_or_b32_e32 v254, 0x780, v157
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v157
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v157
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v157
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v157
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v157
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v157
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v157
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v157
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v157
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v157
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v157
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v157
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v157
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v157
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v157
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v157
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s5, 6
	s_add_i32 s36, s36, 64
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v157
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s35, 0, 0x4000
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v157
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s26, s22
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v157
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v157
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v157
	s_mov_b32 s40, s4
	s_mov_b32 s39, s4
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v157
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v157
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v157
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v157
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v157
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v157
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v157
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v157
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v157
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v157
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v157
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v157
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v157
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v157
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v157
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v157
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v157
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v157
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v157
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v157
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v157
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v157
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v157
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 64, v157
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc0, v157
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x140, v157
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c0, v157
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x240, v157
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x2c0, v157
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x340, v157
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x3c0, v157
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x440, v157
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x4c0, v157
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x540, v157
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x5c0, v157
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x640, v157
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x6c0, v157
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x740, v157
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7c0, v157
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x840, v157
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x8c0, v157
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x940, v157
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x9c0, v157
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa40, v157
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xac0, v157
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb40, v157
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xbc0, v157
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc40, v157
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xcc0, v157
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd40, v157
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xdc0, v157
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe40, v157
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xec0, v157
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf40, v157
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xfc0, v157
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1040, v157
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x10c0, v157
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1140, v157
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x11c0, v157
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1240, v157
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x12c0, v157
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1340, v157
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x13c0, v157
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1440, v157
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x14c0, v157
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1540, v157
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x15c0, v157
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1640, v157
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x16c0, v157
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1740, v157
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x17c0, v157
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1840, v157
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x18c0, v157
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1940, v157
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x19c0, v157
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a40, v157
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ac0, v157
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b40, v157
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1bc0, v157
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c40, v157
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1cc0, v157
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d40, v157
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1dc0, v157
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e40, v157
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ec0, v157
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f40, v157
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1fc0, v157
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s42, s39, 6
	s_mov_b32 s41, s0
	s_mov_b32 s0, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s36, s42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v149, s11 :: v_dual_add_nc_u32 v160, s41, v141
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s35, v155
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s35, s14, v[138:139]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v148, s10 :: v_dual_add_nc_u32 v159, s40, v157
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v147, s9 :: v_dual_add_nc_u32 v0, s0, v157
	v_dual_mov_b32 v146, s8 :: v_dual_mov_b32 v145, s7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v144, s6 :: v_dual_mov_b32 v143, s5
	v_mov_b32_e32 v142, s4
	s_mov_b32 s40, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[65:68], v1, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v160 offset:832
	ds_load_u8 v2, v160 offset:768
	ds_load_u8 v3, v160 offset:960
	ds_load_u8 v4, v160 offset:896
	ds_load_u8 v5, v160 offset:576
	ds_load_u8 v6, v160 offset:512
	ds_load_u8 v7, v160 offset:704
	ds_load_u8 v8, v160 offset:640
	ds_load_u8 v9, v160 offset:320
	ds_load_u8 v10, v160 offset:256
	ds_load_u8 v11, v160 offset:448
	ds_load_u8 v12, v160 offset:384
	ds_load_u8 v13, v160 offset:64
	ds_load_u8 v14, v160
	ds_load_u8 v15, v160 offset:192
	ds_load_u8 v16, v160 offset:128
	ds_load_u8 v17, v159 offset:1664
	ds_load_u8 v18, v159 offset:1536
	ds_load_u8 v19, v159 offset:1920
	ds_load_u8 v20, v159 offset:1792
	ds_load_u8 v21, v159 offset:1152
	ds_load_u8 v22, v159 offset:1024
	ds_load_u8 v23, v159 offset:1408
	ds_load_u8 v24, v159 offset:1280
	ds_load_u8 v25, v159 offset:640
	ds_load_u8 v26, v159 offset:512
	ds_load_u8 v27, v159 offset:896
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:768
	ds_load_u8 v28, v159 offset:128
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	ds_load_u8 v6, v159 offset:256
	ds_load_u8 v7, v159 offset:1728
	v_lshl_or_b32 v52, v3, 16, v1
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	v_lshl_or_b32 v51, v5, 16, v4
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	ds_load_u8 v1, v159
	ds_load_u8 v5, v159 offset:384
	ds_load_u8 v8, v159 offset:1600
	ds_load_u8 v9, v159 offset:1984
	ds_load_u8 v10, v159 offset:1856
	ds_load_u8 v11, v159 offset:1216
	v_lshl_or_b32 v50, v4, 16, v3
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v12, v18, v17, 0xc0c0004
	ds_load_u8 v13, v159 offset:1088
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v14, v20, v19, 0xc0c0004
	ds_load_u8 v15, v159 offset:1472
	ds_load_u8 v17, v159 offset:1344
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v16, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v24, v23, 0xc0c0004
	v_lshl_or_b32 v49, v4, 16, v3
	v_lshl_or_b32 v4, v14, 16, v12
	ds_load_u8 v12, v159 offset:576
	ds_load_u8 v14, v159 offset:960
	ds_load_u8 v24, v159 offset:320
	ds_load_u8 v22, v159 offset:192
	v_lshl_or_b32 v3, v18, 16, v16
	ds_load_u8 v18, v159 offset:832
	ds_load_u8 v21, v159 offset:704
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v2, v27, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v1, v28, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v16
	ds_load_u8 v16, v159 offset:64
	ds_load_u8 v23, v159 offset:448
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v17, v15, 0xc0c0004
	ds_load_u8 v6, v160 offset:864
	ds_load_u8 v10, v160 offset:992
	ds_load_u8 v13, v160 offset:928
	ds_load_u8 v8, v160 offset:800
	ds_load_u8 v17, v160 offset:608
	v_lshl_or_b32 v1, v5, 16, v1
	v_lshl_or_b32 v20, v9, 16, v7
	v_lshl_or_b32 v19, v15, 16, v11
	ds_load_u8 v5, v160 offset:544
	ds_load_u8 v7, v160 offset:736
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v12, v21, 0xc0c0004
	ds_load_u8 v11, v160 offset:672
	v_perm_b32 v12, v18, v14, 0xc0c0004
	ds_load_u8 v14, v160 offset:352
	v_wmma_i32_16x16x16_iu8 v[41:48], v[1:4], v[49:52], v[142:149] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s38, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v18, v12, 16, v9
	ds_load_u8 v9, v160 offset:288
	ds_load_u8 v12, v160 offset:480
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v16, v22, 0xc0c0004
	ds_load_u8 v16, v160 offset:416
	ds_load_u8 v22, v160 offset:32
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v21, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	ds_load_u8 v13, v160 offset:224
	ds_load_u8 v8, v160 offset:96
	ds_load_u8 v23, v160 offset:160
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v5, v17, 0xc0c0004
	v_lshl_or_b32 v72, v10, 16, v6
	v_lshl_or_b32 v17, v21, 16, v15
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v11, v7, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v11, v0 offset:1664
	ds_load_u8 v15, v0 offset:640
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[49:52], v[142:149] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v7, 16, v5
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v9, v14, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v0 offset:1536
	ds_load_u8 v6, v0 offset:1920
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v16, v12, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v0 offset:1792
	ds_load_u8 v12, v0 offset:1152
	ds_load_u8 v14, v0 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v70, v10, 16, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v7, v0 offset:1024
	ds_load_u8 v10, v0 offset:1408
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v22, v8, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v23, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v13, 16, v8
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v0 offset:256
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v5, v5, v11, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	ds_load_u8 v9, v0 offset:896
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v7, v12, 0xc0c0004
	ds_load_u8 v12, v0 offset:768
	ds_load_u8 v11, v0 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	ds_load_u8 v14, v0 offset:128
	v_lshl_or_b32 v56, v6, 16, v5
	ds_load_u8 v5, v0
	ds_load_u8 v6, v0 offset:384
	v_lshl_or_b32 v55, v10, 16, v7
	ds_load_u8 v10, v0 offset:1728
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v11, v15, 0xc0c0004
	ds_load_u8 v11, v0 offset:1856
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v5, v14, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	v_lshl_or_b32 v54, v9, 16, v7
	ds_load_u8 v7, v0 offset:1600
	ds_load_u8 v9, v0 offset:1984
	ds_load_u8 v8, v0 offset:1216
	v_lshl_or_b32 v53, v6, 16, v5
	ds_load_u8 v5, v0 offset:576
	ds_load_u8 v6, v0 offset:960
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[49:52], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[53:56], v[69:72], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v0 offset:1472
	v_perm_b32 v7, v7, v10, 0xc0c0004
	ds_load_u8 v10, v0 offset:1088
	v_lshl_or_b32 v164, v9, 16, v7
	ds_load_u8 v7, v0 offset:832
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v10, v8, 0xc0c0004
	ds_load_u8 v10, v0 offset:1344
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v0 offset:192
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v0 offset:704
	v_lshl_or_b32 v163, v10, 16, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v11, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[69:72], v[142:149] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v162, v6, 16, v5
	ds_load_u8 v5, v0 offset:64
	ds_load_u8 v6, v0 offset:448
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v5, v7, 0xc0c0004
	ds_load_u8 v7, v0 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v161, v6, 16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[69:72], v[142:149] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[161:164], v[49:52], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[161:164], v[69:72], v[142:149] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v160 offset:1856
	ds_load_u8 v70, v160 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v160 offset:1984
	ds_load_u8 v71, v160 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v160 offset:1600
	ds_load_u8 v72, v160 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v160 offset:1728
	ds_load_u8 v139, v160 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v160 offset:1344
	ds_load_u8 v70, v160 offset:1280
	v_lshl_or_b32 v71, v139, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v160 offset:1472
	ds_load_u8 v139, v160 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v139, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v160 offset:1088
	ds_load_u8 v139, v160 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v139, v69, 0xc0c0004
	ds_load_u8 v139, v160 offset:1216
	ds_load_u8 v140, v160 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v139, 16, v69
	ds_load_u8 v139, v159 offset:3712
	ds_load_u8 v140, v159 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:3968
	ds_load_u8 v142, v159 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v159 offset:3200
	ds_load_u8 v143, v159 offset:3072
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v159 offset:2688
	ds_load_u8 v140, v159 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v159 offset:3456
	ds_load_u8 v144, v159 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v159 offset:2944
	ds_load_u8 v142, v159 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v159 offset:2176
	ds_load_u8 v140, v159 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:2432
	ds_load_u8 v142, v159 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	ds_load_u8 v139, v160 offset:1888
	ds_load_u8 v140, v160 offset:1824
	v_wmma_i32_16x16x16_iu8 v[41:48], v[142:145], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v160 offset:2016
	ds_load_u8 v146, v160 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	ds_load_u8 v146, v160 offset:1632
	ds_load_u8 v147, v160 offset:1568
	v_lshl_or_b32 v149, v140, 16, v139
	ds_load_u8 v139, v160 offset:1376
	ds_load_u8 v140, v160 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v160 offset:1760
	ds_load_u8 v148, v160 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v147, 16, v146
	ds_load_u8 v140, v160 offset:1504
	ds_load_u8 v146, v160 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	v_lshl_or_b32 v147, v140, 16, v139
	ds_load_u8 v139, v160 offset:1120
	ds_load_u8 v140, v160 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v160 offset:1248
	ds_load_u8 v146, v160 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v140, 16, v139
	ds_load_u8 v139, v159 offset:3776
	ds_load_u8 v140, v159 offset:3648
	v_wmma_i32_16x16x16_iu8 v[9:16], v[142:145], v[146:149], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:4032
	ds_load_u8 v142, v159 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v159 offset:3264
	ds_load_u8 v143, v159 offset:3136
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v159 offset:2752
	ds_load_u8 v140, v159 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v159 offset:3520
	ds_load_u8 v144, v159 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v159 offset:3008
	ds_load_u8 v142, v159 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v159 offset:2240
	ds_load_u8 v140, v159 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:2496
	ds_load_u8 v142, v159 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v0 offset:3712
	ds_load_u8 v140, v0 offset:3584
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[142:145], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[142:145], v[146:149], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:3968
	ds_load_u8 v142, v0 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v0 offset:3200
	ds_load_u8 v143, v0 offset:3072
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v0 offset:2688
	ds_load_u8 v140, v0 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v0 offset:3456
	ds_load_u8 v144, v0 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v0 offset:2944
	ds_load_u8 v142, v0 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v0 offset:2176
	ds_load_u8 v140, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:2432
	ds_load_u8 v142, v0 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	ds_load_u8 v139, v0 offset:3776
	ds_load_u8 v140, v0 offset:3648
	v_wmma_i32_16x16x16_iu8 v[33:40], v[142:145], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[142:145], v[146:149], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:4032
	ds_load_u8 v150, v0 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	ds_load_u8 v150, v0 offset:3264
	ds_load_u8 v151, v0 offset:3136
	v_lshl_or_b32 v164, v140, 16, v139
	ds_load_u8 v139, v0 offset:2752
	ds_load_u8 v140, v0 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v0 offset:3520
	ds_load_u8 v152, v0 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v151, 16, v150
	ds_load_u8 v140, v0 offset:3008
	ds_load_u8 v150, v0 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	v_lshl_or_b32 v162, v140, 16, v139
	ds_load_u8 v139, v0 offset:2240
	ds_load_u8 v140, v0 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:2496
	ds_load_u8 v150, v0 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v161, v140, 16, v139
	v_wmma_i32_16x16x16_iu8 v[17:24], v[161:164], v[69:72], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v160 offset:2880
	ds_load_u8 v70, v160 offset:2816
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[161:164], v[146:149], v[49:56] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v160 offset:3008
	ds_load_u8 v71, v160 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v160 offset:2624
	ds_load_u8 v72, v160 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v160 offset:2752
	ds_load_u8 v139, v160 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v160 offset:2368
	ds_load_u8 v70, v160 offset:2304
	v_lshl_or_b32 v71, v139, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v160 offset:2496
	ds_load_u8 v139, v160 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v139, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v160 offset:2112
	ds_load_u8 v139, v160 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v139, v69, 0xc0c0004
	ds_load_u8 v139, v160 offset:2240
	ds_load_u8 v140, v160 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v139, 16, v69
	ds_load_u8 v139, v159 offset:5760
	ds_load_u8 v140, v159 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:6016
	ds_load_u8 v142, v159 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v159 offset:5248
	ds_load_u8 v143, v159 offset:5120
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v159 offset:4736
	ds_load_u8 v140, v159 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v159 offset:5504
	ds_load_u8 v144, v159 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v159 offset:4992
	ds_load_u8 v142, v159 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v159 offset:4224
	ds_load_u8 v140, v159 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:4480
	ds_load_u8 v142, v159 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	ds_load_u8 v139, v160 offset:2912
	ds_load_u8 v140, v160 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[142:145], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v160 offset:3040
	ds_load_u8 v146, v160 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	ds_load_u8 v146, v160 offset:2656
	ds_load_u8 v147, v160 offset:2592
	v_lshl_or_b32 v149, v140, 16, v139
	ds_load_u8 v139, v160 offset:2400
	ds_load_u8 v140, v160 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v160 offset:2784
	ds_load_u8 v148, v160 offset:2720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v147, 16, v146
	ds_load_u8 v140, v160 offset:2528
	ds_load_u8 v146, v160 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	v_lshl_or_b32 v147, v140, 16, v139
	ds_load_u8 v139, v160 offset:2144
	ds_load_u8 v140, v160 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v160 offset:2272
	ds_load_u8 v146, v160 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v140, 16, v139
	ds_load_u8 v139, v159 offset:5824
	ds_load_u8 v140, v159 offset:5696
	v_wmma_i32_16x16x16_iu8 v[9:16], v[142:145], v[146:149], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:6080
	ds_load_u8 v142, v159 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v159 offset:5312
	ds_load_u8 v143, v159 offset:5184
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v159 offset:4800
	ds_load_u8 v140, v159 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v159 offset:5568
	ds_load_u8 v144, v159 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v159 offset:5056
	ds_load_u8 v142, v159 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v159 offset:4288
	ds_load_u8 v140, v159 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:4544
	ds_load_u8 v142, v159 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v0 offset:5760
	ds_load_u8 v140, v0 offset:5632
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[142:145], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[142:145], v[146:149], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:6016
	ds_load_u8 v142, v0 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v0 offset:5248
	ds_load_u8 v143, v0 offset:5120
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v0 offset:4736
	ds_load_u8 v140, v0 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v0 offset:5504
	ds_load_u8 v144, v0 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v0 offset:4992
	ds_load_u8 v142, v0 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v0 offset:4224
	ds_load_u8 v140, v0 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:4480
	ds_load_u8 v142, v0 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	ds_load_u8 v139, v0 offset:5824
	ds_load_u8 v140, v0 offset:5696
	v_wmma_i32_16x16x16_iu8 v[33:40], v[142:145], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[142:145], v[146:149], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:6080
	ds_load_u8 v150, v0 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	ds_load_u8 v150, v0 offset:5312
	ds_load_u8 v151, v0 offset:5184
	v_lshl_or_b32 v164, v140, 16, v139
	ds_load_u8 v139, v0 offset:4800
	ds_load_u8 v140, v0 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v0 offset:5568
	ds_load_u8 v152, v0 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v151, 16, v150
	ds_load_u8 v140, v0 offset:5056
	ds_load_u8 v150, v0 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	v_lshl_or_b32 v162, v140, 16, v139
	ds_load_u8 v139, v0 offset:4288
	ds_load_u8 v140, v0 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:4544
	ds_load_u8 v150, v0 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v161, v140, 16, v139
	v_wmma_i32_16x16x16_iu8 v[17:24], v[161:164], v[69:72], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v160 offset:3904
	ds_load_u8 v70, v160 offset:3840
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[161:164], v[146:149], v[49:56] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v160 offset:4032
	ds_load_u8 v71, v160 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v160 offset:3648
	ds_load_u8 v72, v160 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v160 offset:3776
	ds_load_u8 v139, v160 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v160 offset:3392
	ds_load_u8 v70, v160 offset:3328
	v_lshl_or_b32 v71, v139, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v160 offset:3520
	ds_load_u8 v139, v160 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v139, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v160 offset:3136
	ds_load_u8 v139, v160 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v139, v69, 0xc0c0004
	ds_load_u8 v139, v160 offset:3264
	ds_load_u8 v140, v160 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v139, 16, v69
	ds_load_u8 v139, v159 offset:7808
	ds_load_u8 v140, v159 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:8064
	ds_load_u8 v142, v159 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v159 offset:7296
	ds_load_u8 v143, v159 offset:7168
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v159 offset:6784
	ds_load_u8 v140, v159 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v159 offset:7552
	ds_load_u8 v144, v159 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v159 offset:7040
	ds_load_u8 v142, v159 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v159 offset:6272
	ds_load_u8 v140, v159 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:6528
	ds_load_u8 v142, v159 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	ds_load_u8 v139, v160 offset:3936
	ds_load_u8 v140, v160 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[142:145], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v160 offset:4064
	ds_load_u8 v146, v160 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	ds_load_u8 v146, v160 offset:3680
	ds_load_u8 v147, v160 offset:3616
	v_lshl_or_b32 v149, v140, 16, v139
	ds_load_u8 v139, v160 offset:3424
	ds_load_u8 v140, v160 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v160 offset:3808
	ds_load_u8 v148, v160 offset:3744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v147, 16, v146
	ds_load_u8 v140, v160 offset:3552
	ds_load_u8 v146, v160 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	v_lshl_or_b32 v147, v140, 16, v139
	ds_load_u8 v139, v160 offset:3168
	ds_load_u8 v140, v160 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v160 offset:3296
	ds_load_u8 v146, v160 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v140, 16, v139
	ds_load_u8 v139, v159 offset:7872
	ds_load_u8 v140, v159 offset:7744
	v_wmma_i32_16x16x16_iu8 v[9:16], v[142:145], v[146:149], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v132, v132, v12 :: v_dual_add_f32 v131, v131, v11
	v_dual_add_f32 v136, v136, v10 :: v_dual_add_f32 v135, v135, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:8128
	ds_load_u8 v142, v159 offset:8000
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v116, v116, v14 :: v_dual_add_f32 v115, v115, v13
	v_dual_add_f32 v108, v108, v16 :: v_dual_add_f32 v107, v107, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v159 offset:7360
	ds_load_u8 v143, v159 offset:7232
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v159 offset:6848
	ds_load_u8 v140, v159 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v159 offset:7616
	ds_load_u8 v144, v159 offset:7488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v159 offset:7104
	ds_load_u8 v142, v159 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v159 offset:6336
	ds_load_u8 v140, v159 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v159 offset:6592
	ds_load_u8 v142, v159 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v142, v140, 16, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v0 offset:7808
	ds_load_u8 v140, v0 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[142:145], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[142:145], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v99, v99, v1 :: v_dual_add_f32 v100, v100, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v91, v91, v3 :: v_dual_add_f32 v92, v92, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:8064
	ds_load_u8 v142, v0 offset:7936
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v76, v76, v8 :: v_dual_add_f32 v83, v83, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v84, v84, v6 :: v_dual_add_f32 v75, v75, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v98, v98, v26 :: v_dual_add_f32 v97, v97, v25
	v_dual_add_f32 v90, v90, v28 :: v_dual_add_f32 v89, v89, v27
	v_dual_add_f32 v82, v82, v30 :: v_dual_add_f32 v81, v81, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v0 offset:7296
	ds_load_u8 v143, v0 offset:7168
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v74, v74, v32 :: v_dual_add_f32 v73, v73, v31
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v139, v0 offset:6784
	ds_load_u8 v140, v0 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v0 offset:7552
	ds_load_u8 v144, v0 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v142
	ds_load_u8 v140, v0 offset:7040
	ds_load_u8 v142, v0 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v139
	ds_load_u8 v139, v0 offset:6272
	ds_load_u8 v140, v0 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:6528
	ds_load_u8 v142, v0 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v140, 16, v139
	ds_load_u8 v139, v0 offset:7872
	ds_load_u8 v140, v0 offset:7744
	v_wmma_i32_16x16x16_iu8 v[57:64], v[142:145], v[146:149], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[142:145], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v109, v109, v39 :: v_dual_add_f32 v110, v110, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:8128
	ds_load_u8 v150, v0 offset:8000
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v126, v126, v34 :: v_dual_add_f32 v125, v125, v33
	v_dual_add_f32 v122, v122, v36 :: v_dual_add_f32 v121, v121, v35
	v_dual_add_f32 v118, v118, v38 :: v_dual_add_f32 v117, v117, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	ds_load_u8 v150, v0 offset:7360
	ds_load_u8 v151, v0 offset:7232
	v_lshl_or_b32 v162, v140, 16, v139
	ds_load_u8 v139, v0 offset:6848
	ds_load_u8 v140, v0 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v0 offset:7616
	ds_load_u8 v152, v0 offset:7488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v161, v151, 16, v150
	ds_load_u8 v140, v0 offset:7104
	ds_load_u8 v150, v0 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	v_lshl_or_b32 v160, v140, 16, v139
	ds_load_u8 v139, v0 offset:6336
	ds_load_u8 v140, v0 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v0 offset:6592
	ds_load_u8 v0, v0 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v0, 16, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v48, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v64, s35, v154
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[159:162], v[69:72], v[17:24] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v127, v127, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[49:56], v[159:162], v[146:149], v[49:56] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v128, v128, v41 :: v_dual_add_f32 v123, v123, v42
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v64
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v64, s35, v156
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s35, s35, s34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s35, s35, s28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v0, s35, v137
	v_add_nc_u32_e32 v1, s35, v158
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s35, s35, s15
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s33, v64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v93, v93, v19 :: v_dual_add_nc_u32 v2, s35, v137
	v_dual_add_f32 v94, v94, v20 :: v_dual_add_nc_u32 v3, s35, v158
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v4, 0x80000000, v1, s0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v8, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e64 v12, 0x80000000, v3, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v101, v101, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[0:3], v0, s[24:27], 0 offen
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v85, v85, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s3, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s3, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_mov_b32 s35, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s1, s38, 12
	s_mov_b32 s0, s30
	s_add_i32 s3, s1, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v124, v124, v43
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s30, s3, 0x8000
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v111, v111, v62 :: v_dual_add_nc_u32 v16, s3, v153
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s3, s3, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v114, v114, v45 :: v_dual_add_f32 v113, v113, v44
	v_dual_add_f32 v106, v106, v47 :: v_dual_add_f32 v105, v105, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v102, v102, v18 :: v_dual_add_f32 v77, v77, v23
	v_dual_add_f32 v86, v86, v22 :: v_dual_add_f32 v133, v133, v48
	v_dual_add_f32 v78, v78, v24 :: v_dual_add_f32 v129, v129, v58
	v_dual_add_f32 v134, v134, v57 :: v_dual_add_f32 v119, v119, v60
	v_dual_add_f32 v130, v130, v59 :: v_dual_add_nc_u32 v17, s3, v153
	v_dual_add_f32 v120, v120, v61 :: v_dual_add_f32 v95, v95, v51
	v_dual_add_f32 v112, v112, v63 :: v_dual_add_f32 v103, v103, v49
	v_dual_add_f32 v104, v104, v50 :: v_dual_add_f32 v87, v87, v53
	v_dual_add_f32 v96, v96, v52 :: v_dual_add_f32 v79, v79, v55
	v_add_f32_e32 v88, v88, v54
	v_add_f32_e32 v80, v80, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s41, s39, 1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s1, s3, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s39, s37
	s_mov_b32 s39, s41
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v16, v[65:68] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v17, v[0:3]
	s_waitcnt vmcnt(2)
	ds_store_b128 v17, v[4:7] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v17, v[8:11] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[12:15] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v41, v157
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v125, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s35, 0, 0x4000
	v_mov_b32_e32 v126, v125
	v_mov_b32_e32 v117, v125
	v_mov_b32_e32 v113, v125
	v_mov_b32_e32 v121, v125
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v123, v125 :: v_dual_mov_b32 v124, v126
	v_dual_mov_b32 v128, v126 :: v_dual_mov_b32 v127, v125
	v_mov_b32_e32 v118, v126
	v_mov_b32_e32 v114, v126
	v_dual_mov_b32 v122, v126 :: v_dual_mov_b32 v109, v125
	v_dual_mov_b32 v110, v126 :: v_dual_mov_b32 v105, v125
	v_dual_mov_b32 v106, v126 :: v_dual_mov_b32 v101, v125
	v_dual_mov_b32 v102, v126 :: v_dual_mov_b32 v97, v125
	v_dual_mov_b32 v98, v126 :: v_dual_mov_b32 v85, v125
	v_dual_mov_b32 v86, v126 :: v_dual_mov_b32 v81, v125
	v_dual_mov_b32 v82, v126 :: v_dual_mov_b32 v93, v125
	v_dual_mov_b32 v94, v126 :: v_dual_mov_b32 v89, v125
	v_dual_mov_b32 v90, v126 :: v_dual_mov_b32 v77, v125
	v_dual_mov_b32 v78, v126 :: v_dual_mov_b32 v73, v125
	v_mov_b32_e32 v74, v126
	v_dual_mov_b32 v134, v126 :: v_dual_mov_b32 v133, v125
	v_dual_mov_b32 v136, v126 :: v_dual_mov_b32 v135, v125
	v_dual_mov_b32 v119, v125 :: v_dual_mov_b32 v120, v126
	v_dual_mov_b32 v115, v125 :: v_dual_mov_b32 v116, v126
	v_dual_mov_b32 v130, v126 :: v_dual_mov_b32 v129, v125
	v_dual_mov_b32 v132, v126 :: v_dual_mov_b32 v131, v125
	v_dual_mov_b32 v111, v125 :: v_dual_mov_b32 v112, v126
	v_dual_mov_b32 v107, v125 :: v_dual_mov_b32 v108, v126
	v_dual_mov_b32 v103, v125 :: v_dual_mov_b32 v104, v126
	v_dual_mov_b32 v99, v125 :: v_dual_mov_b32 v100, v126
	v_dual_mov_b32 v87, v125 :: v_dual_mov_b32 v88, v126
	v_dual_mov_b32 v83, v125 :: v_dual_mov_b32 v84, v126
	v_dual_mov_b32 v95, v125 :: v_dual_mov_b32 v96, v126
	v_dual_mov_b32 v91, v125 :: v_dual_mov_b32 v92, v126
	v_dual_mov_b32 v79, v125 :: v_dual_mov_b32 v80, v126
	v_dual_mov_b32 v75, v125 :: v_dual_mov_b32 v76, v126
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s0, v141
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v0, v1
	ds_load_u8_d16 v216, v1 offset:32
	ds_load_u8_d16 v35, v1 offset:64
	ds_load_u8_d16 v33, v1 offset:128
	ds_load_u8_d16 v34, v1 offset:192
	ds_load_u8_d16 v217, v1 offset:224
	ds_load_u8_d16 v218, v1 offset:160
	ds_load_u8_d16 v219, v1 offset:96
	ds_load_u8_d16 v37, v1 offset:256
	ds_load_u8_d16 v39, v1 offset:320
	ds_load_u8_d16 v36, v1 offset:384
	ds_load_u8_d16 v38, v1 offset:448
	ds_load_u8_d16 v220, v1 offset:480
	ds_load_u8_d16 v221, v1 offset:416
	ds_load_u8_d16 v222, v1 offset:352
	ds_load_u8_d16 v223, v1 offset:288
	ds_load_u8_d16 v139, v1 offset:512
	ds_load_u8_d16 v142, v1 offset:576
	ds_load_u8_d16 v40, v1 offset:640
	ds_load_u8_d16 v140, v1 offset:704
	ds_load_u8_d16 v224, v1 offset:736
	ds_load_u8_d16 v225, v1 offset:672
	ds_load_u8_d16 v226, v1 offset:608
	ds_load_u8_d16 v227, v1 offset:544
	ds_load_u8_d16 v144, v1 offset:768
	ds_load_u8_d16 v146, v1 offset:832
	ds_load_u8_d16 v143, v1 offset:896
	ds_load_u8_d16 v145, v1 offset:960
	ds_load_u8_d16 v228, v1 offset:992
	ds_load_u8_d16 v229, v1 offset:928
	ds_load_u8_d16 v230, v1 offset:864
	ds_load_u8_d16 v231, v1 offset:800
	ds_load_u8_d16 v200, v1 offset:1024
	ds_load_u8_d16 v201, v1 offset:1088
	ds_load_u8_d16 v202, v1 offset:1152
	ds_load_u8_d16 v203, v1 offset:1216
	ds_load_u8_d16 v168, v1 offset:1248
	ds_load_u8_d16 v255, v1 offset:1184
	ds_load_u8_d16 v170, v1 offset:1120
	ds_load_u8_d16 v171, v1 offset:1056
	ds_load_u8_d16 v204, v1 offset:1280
	ds_load_u8_d16 v205, v1 offset:1344
	ds_load_u8_d16 v206, v1 offset:1408
	ds_load_u8_d16 v207, v1 offset:1472
	ds_load_u8_d16 v172, v1 offset:1504
	ds_load_u8_d16 v173, v1 offset:1440
	ds_load_u8_d16 v174, v1 offset:1376
	ds_load_u8_d16 v175, v1 offset:1312
	ds_load_u8_d16 v208, v1 offset:1536
	ds_load_u8_d16 v209, v1 offset:1600
	ds_load_u8_d16 v210, v1 offset:1664
	ds_load_u8_d16 v211, v1 offset:1728
	ds_load_u8_d16 v180, v1 offset:1760
	ds_load_u8_d16 v181, v1 offset:1696
	ds_load_u8_d16 v182, v1 offset:1632
	ds_load_u8_d16 v184, v1 offset:1568
	ds_load_u8_d16 v212, v1 offset:1792
	ds_load_u8_d16 v213, v1 offset:1856
	ds_load_u8_d16 v214, v1 offset:1920
	ds_load_u8_d16 v215, v1 offset:1984
	ds_load_u8_d16 v188, v1 offset:2016
	ds_load_u8_d16 v189, v1 offset:1952
	ds_load_u8_d16 v190, v1 offset:1888
	ds_load_u8_d16 v191, v1 offset:1824
	ds_load_u8_d16 v176, v1 offset:2048
	ds_load_u8_d16 v177, v1 offset:2112
	ds_load_u8_d16 v178, v1 offset:2176
	ds_load_u8_d16 v179, v1 offset:2240
	ds_load_u8_d16 v58, v1 offset:2272
	ds_load_u8_d16 v59, v1 offset:2208
	ds_load_u8_d16 v60, v1 offset:2144
	ds_load_u8_d16 v61, v1 offset:2080
	ds_load_u8_d16 v183, v1 offset:2304
	ds_load_u8_d16 v185, v1 offset:2368
	ds_load_u8_d16 v186, v1 offset:2432
	ds_load_u8_d16 v187, v1 offset:2496
	ds_load_u8_d16 v62, v1 offset:2528
	ds_load_u8_d16 v63, v1 offset:2464
	ds_load_u8_d16 v64, v1 offset:2400
	ds_load_u8_d16 v65, v1 offset:2336
	ds_load_u8_d16 v192, v1 offset:2560
	ds_load_u8_d16 v193, v1 offset:2624
	ds_load_u8_d16 v194, v1 offset:2688
	ds_load_u8_d16 v195, v1 offset:2752
	ds_load_u8_d16 v70, v1 offset:2784
	ds_load_u8_d16 v71, v1 offset:2720
	ds_load_u8_d16 v72, v1 offset:2656
	ds_load_u8_d16 v138, v1 offset:2592
	ds_load_u8_d16 v196, v1 offset:2816
	ds_load_u8_d16 v197, v1 offset:2880
	ds_load_u8_d16 v198, v1 offset:2944
	ds_load_u8_d16 v199, v1 offset:3008
	ds_load_u8_d16 v156, v1 offset:3040
	ds_load_u8_d16 v157, v1 offset:2976
	ds_load_u8_d16 v159, v1 offset:2912
	ds_load_u8_d16 v162, v1 offset:2848
	ds_load_u8_d16 v66, v1 offset:3072
	ds_load_u8_d16 v67, v1 offset:3136
	ds_load_u8_d16 v68, v1 offset:3200
	ds_load_u8_d16 v69, v1 offset:3264
	ds_load_u8_d16 v42, v1 offset:3296
	ds_load_u8_d16 v43, v1 offset:3232
	ds_load_u8_d16 v44, v1 offset:3168
	ds_load_u8_d16 v45, v1 offset:3104
	ds_load_u8_d16 v137, v1 offset:3328
	ds_load_u8_d16 v153, v1 offset:3392
	ds_load_u8_d16 v154, v1 offset:3456
	ds_load_u8_d16 v155, v1 offset:3520
	ds_load_u8_d16 v46, v1 offset:3552
	ds_load_u8_d16 v47, v1 offset:3488
	ds_load_u8_d16 v48, v1 offset:3424
	ds_load_u8_d16 v49, v1 offset:3360
	ds_load_u8_d16 v158, v1 offset:3584
	ds_load_u8_d16 v160, v1 offset:3648
	ds_load_u8_d16 v161, v1 offset:3712
	ds_load_u8_d16 v163, v1 offset:3776
	ds_load_u8_d16 v50, v1 offset:3808
	ds_load_u8_d16 v51, v1 offset:3744
	ds_load_u8_d16 v52, v1 offset:3680
	ds_load_u8_d16 v53, v1 offset:3616
	ds_load_u8_d16 v164, v1 offset:3840
	ds_load_u8_d16 v165, v1 offset:3904
	ds_load_u8_d16 v166, v1 offset:3968
	ds_load_u8_d16 v167, v1 offset:4032
	ds_load_u8_d16 v54, v1 offset:4064
	ds_load_u8_d16 v55, v1 offset:4000
	ds_load_u8_d16 v56, v1 offset:3936
	ds_load_u8_d16 v57, v1 offset:3872
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v1, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v144, v146, 0xc0c0004
	v_perm_b32 v2, v143, v145, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v3, v139, v142, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v20, v2, 16, v1
	v_perm_b32 v1, v37, v39, 0xc0c0004
	v_perm_b32 v2, v36, v38, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v18, v2, 16, v1
	v_perm_b32 v1, v0, v35, 0xc0c0004
	v_perm_b32 v2, v33, v34, 0xc0c0004
	s_mov_b32 s11, s4
	v_perm_b32 v4, v40, v140, 0xc0c0004
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v15, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v17, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s40, v252
	v_add_nc_u32_e32 v2, s40, v251
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v14, s9 :: v_dual_add_nc_u32 v3, s40, v254
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	v_dual_mov_b32 v10, s5 :: v_dual_add_nc_u32 v5, s40, v249
	ds_load_u8 v3, v3
	v_dual_mov_b32 v11, s6 :: v_dual_add_nc_u32 v4, s40, v248
	ds_load_u8 v5, v5
	v_perm_b32 v151, v210, v211, 0xc0c0004
	v_mov_b32_e32 v13, s8
	ds_load_u8 v4, v4
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v9, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:56
	scratch_load_b32 v152, off, off offset:44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s40, v253
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s40, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v2, 16, v1
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s40, v244
	v_add_nc_u32_e32 v2, s40, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v4, s40, v250
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s40, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v149, v4, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s40, v246
	scratch_load_b32 v4, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s40, v241
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v148, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s40, v41
	v_add_nc_u32_e32 v2, s40, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s40, v242
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v147, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:240
	scratch_load_b32 v2, off, off offset:236
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v5, s40, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v4, s40, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s40, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s40, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s40, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s40, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v235, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s40, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s40, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v234, v4, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:216
	scratch_load_b32 v2, off, off offset:204
	v_add_nc_u32_e32 v1, s40, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v4, v225, v224, 0xc0c0004
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s40, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s40, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s40, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v233, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:188
	scratch_load_b32 v2, off, off offset:192
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s40, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s40, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s40, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s40, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v3, v227, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v232, v2, 16, v1
	v_perm_b32 v1, v231, v230, 0xc0c0004
	v_perm_b32 v2, v229, v228, 0xc0c0004
	v_lshl_or_b32 v238, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[232:235], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v239, v2, 16, v1
	v_perm_b32 v1, v223, v222, 0xc0c0004
	v_perm_b32 v2, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v237, v2, 16, v1
	v_perm_b32 v1, v216, v219, 0xc0c0004
	v_perm_b32 v2, v218, v217, 0xc0c0004
	v_lshl_or_b32 v236, v2, 16, v1
	v_wmma_i32_16x16x16_iu8 v[1:8], v[147:150], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[147:150], v[236:239], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v147, v212, v213, 0xc0c0004
	v_perm_b32 v148, v214, v215, 0xc0c0004
	v_perm_b32 v149, v208, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[232:235], v[236:239], v[9:16] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v148, 16, v147
	v_perm_b32 v147, v204, v205, 0xc0c0004
	v_perm_b32 v148, v206, v207, 0xc0c0004
	v_lshl_or_b32 v149, v151, 16, v149
	v_perm_b32 v151, v202, v203, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	v_lshl_or_b32 v148, v148, 16, v147
	v_perm_b32 v147, v200, v201, 0xc0c0004
	ds_load_u8 v152, v152
	v_lshl_or_b32 v147, v151, 16, v147
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v235, v152, 16, v151
	ds_load_u8 v232, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v233, s40, v169
	scratch_load_b32 v169, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v232, v232, v233, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, s40, v169
	scratch_load_b32 v169, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, s40, v169
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:24
	scratch_load_b32 v152, off, off offset:12
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v234, v234
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v234, v233, 16, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v232, s40, v169
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	scratch_load_b32 v169, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v233, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:444
	scratch_load_b32 v152, off, off
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v232, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v232, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:304
	scratch_load_b32 v152, off, off offset:300
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[232:235], v[147:150], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v236, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v239, v152, 16, v151
	ds_load_u8 v236, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v237, s40, v169
	scratch_load_b32 v169, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v237, v237
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v236, v236, v237, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, s40, v169
	scratch_load_b32 v169, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v237, v237
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, s40, v169
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:280
	scratch_load_b32 v152, off, off offset:268
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v238, v238
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v237, v238, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v238, v237, 16, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v236, s40, v169
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	scratch_load_b32 v169, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v236, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v237, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:252
	scratch_load_b32 v152, off, off offset:256
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v236, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v236, v152, 16, v151
	v_perm_b32 v151, v181, v180, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[236:239], v[147:150], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v147, v191, v190, 0xc0c0004
	v_perm_b32 v148, v189, v188, 0xc0c0004
	v_perm_b32 v149, v184, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v150, v148, 16, v147
	v_perm_b32 v147, v175, v174, 0xc0c0004
	v_perm_b32 v148, v173, v172, 0xc0c0004
	v_lshl_or_b32 v149, v151, 16, v149
	v_perm_b32 v151, v255, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v148, 16, v147
	v_perm_b32 v147, v171, v170, 0xc0c0004
	v_lshl_or_b32 v147, v151, 16, v147
	v_perm_b32 v151, v194, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[232:235], v[147:150], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[236:239], v[147:150], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v147, v196, v197, 0xc0c0004
	v_perm_b32 v148, v198, v199, 0xc0c0004
	v_perm_b32 v149, v192, v193, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v148, 16, v147
	v_perm_b32 v147, v183, v185, 0xc0c0004
	v_perm_b32 v148, v186, v187, 0xc0c0004
	v_lshl_or_b32 v149, v151, 16, v149
	v_perm_b32 v151, v178, v179, 0xc0c0004
	ds_load_u8 v232, v232
	v_lshl_or_b32 v148, v148, 16, v147
	v_perm_b32 v147, v176, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v151, 16, v147
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v235, v152, 16, v151
	ds_load_u8 v232, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v233, s40, v169
	scratch_load_b32 v169, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v232, v232, v233, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, s40, v169
	scratch_load_b32 v169, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, s40, v169
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:88
	scratch_load_b32 v152, off, off offset:76
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v234, v234
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v234, v233, 16, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v232, s40, v169
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	scratch_load_b32 v169, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v233, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:60
	scratch_load_b32 v152, off, off offset:64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v232, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v232, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:368
	scratch_load_b32 v152, off, off offset:364
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[232:235], v[147:150], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v236, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v239, v152, 16, v151
	ds_load_u8 v236, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v237, s40, v169
	scratch_load_b32 v169, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v237, v237
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v236, v236, v237, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, s40, v169
	scratch_load_b32 v169, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v237, v237
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, s40, v169
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:344
	scratch_load_b32 v152, off, off offset:332
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v238, v238
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v237, v238, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v238, v237, 16, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v236, s40, v169
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	scratch_load_b32 v169, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v236, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v237, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:316
	scratch_load_b32 v152, off, off offset:320
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v236, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v236, v152, 16, v151
	v_perm_b32 v151, v71, v70, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[236:239], v[147:150], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v147, v162, v159, 0xc0c0004
	v_perm_b32 v148, v157, v156, 0xc0c0004
	v_perm_b32 v149, v138, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v150, v148, 16, v147
	v_perm_b32 v147, v65, v64, 0xc0c0004
	v_perm_b32 v148, v63, v62, 0xc0c0004
	v_lshl_or_b32 v149, v151, 16, v149
	v_perm_b32 v151, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v148, 16, v147
	v_perm_b32 v147, v61, v60, 0xc0c0004
	v_lshl_or_b32 v147, v151, 16, v147
	v_perm_b32 v151, v161, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[232:235], v[147:150], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[236:239], v[147:150], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v147, v164, v165, 0xc0c0004
	v_perm_b32 v148, v166, v167, 0xc0c0004
	v_perm_b32 v149, v158, v160, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v148, 16, v147
	v_perm_b32 v147, v137, v153, 0xc0c0004
	v_perm_b32 v148, v154, v155, 0xc0c0004
	v_lshl_or_b32 v149, v151, 16, v149
	v_perm_b32 v151, v68, v69, 0xc0c0004
	ds_load_u8 v232, v232
	v_lshl_or_b32 v148, v148, 16, v147
	v_perm_b32 v147, v66, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v151, 16, v147
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v235, v152, 16, v151
	ds_load_u8 v232, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v233, s40, v169
	scratch_load_b32 v169, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v232, v232, v233, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, s40, v169
	scratch_load_b32 v169, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, s40, v169
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:152
	scratch_load_b32 v152, off, off offset:140
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v234, v234
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v234, v233, 16, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v232, s40, v169
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	scratch_load_b32 v169, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s40, v169
	scratch_load_b32 v169, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v233, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:124
	scratch_load_b32 v152, off, off offset:128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v232, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v232, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:432
	scratch_load_b32 v152, off, off offset:428
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[232:235], v[147:150], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v124, v124, v4 :: v_dual_add_f32 v123, v123, v3
	v_dual_add_f32 v114, v114, v6 :: v_dual_add_f32 v113, v113, v5
	v_dual_add_f32 v106, v106, v8 :: v_dual_add_f32 v105, v105, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v128, v128, v2 :: v_dual_add_f32 v127, v127, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v236, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s40, v169
	scratch_load_b32 v169, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v239, v152, 16, v151
	ds_load_u8 v236, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v151, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v237, s40, v169
	scratch_load_b32 v169, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v237, v237
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v236, v236, v237, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, s40, v169
	scratch_load_b32 v169, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v237, v237
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, s40, v169
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:408
	scratch_load_b32 v152, off, off offset:396
	v_add_nc_u32_e32 v151, s40, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v238, v238
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v237, v238, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v238, v237, 16, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v236, s40, v169
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	scratch_load_b32 v169, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v236, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s40, v169
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v237, v152, 16, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:380
	scratch_load_b32 v152, off, off offset:384
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v151, s40, v151
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v152, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s40, v152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v236, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v236, v152, 16, v151
	v_perm_b32 v151, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[236:239], v[147:150], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v147, v57, v56, 0xc0c0004
	v_perm_b32 v148, v55, v54, 0xc0c0004
	v_perm_b32 v149, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_lshl_or_b32 v150, v148, 16, v147
	v_perm_b32 v147, v49, v48, 0xc0c0004
	v_perm_b32 v148, v47, v46, 0xc0c0004
	v_lshl_or_b32 v149, v151, 16, v149
	v_perm_b32 v151, v43, v42, 0xc0c0004
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_lshl_or_b32 v148, v148, 16, v147
	v_perm_b32 v147, v45, v44, 0xc0c0004
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_lshl_or_b32 v147, v151, 16, v147
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v98, v98, v26 :: v_dual_add_f32 v97, v97, v25
	v_dual_add_f32 v90, v90, v28 :: v_dual_add_f32 v89, v89, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[232:235], v[147:150], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[236:239], v[147:150], v[9:16] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v82, v82, v30 :: v_dual_add_f32 v81, v81, v29
	v_add_f32_e32 v74, v74, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v73, v73, v31 :: v_dual_add_f32 v136, v136, v18
	v_dual_add_f32 v135, v135, v17 :: v_dual_add_f32 v132, v132, v20
	v_dual_add_f32 v131, v131, v19 :: v_dual_add_f32 v116, v116, v22
	v_dual_add_f32 v115, v115, v21 :: v_dual_add_f32 v108, v108, v24
	v_dual_add_f32 v107, v107, v23 :: v_dual_add_f32 v100, v100, v10
	v_dual_add_f32 v99, v99, v9 :: v_dual_add_f32 v92, v92, v12
	v_dual_add_f32 v91, v91, v11 :: v_dual_add_f32 v84, v84, v14
	v_dual_add_f32 v83, v83, v13 :: v_dual_add_f32 v76, v76, v16
	v_add_f32_e32 v75, v75, v15
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v240, off offset:460
	scratch_store_b32 off, v241, off offset:464
	scratch_store_b32 off, v242, off offset:468
	scratch_store_b32 off, v243, off offset:472
	scratch_store_b32 off, v244, off offset:476
	scratch_store_b32 off, v245, off offset:480
	scratch_store_b32 off, v246, off offset:484
	scratch_store_b32 off, v247, off offset:488
	scratch_store_b32 off, v248, off offset:492
	scratch_store_b32 off, v249, off offset:496
	scratch_store_b32 off, v250, off offset:500
	scratch_store_b32 off, v251, off offset:504
	scratch_store_b32 off, v252, off offset:508
	scratch_store_b32 off, v253, off offset:512
	scratch_store_b32 off, v254, off offset:516
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v144, v146, 0xc0c0004
	v_perm_b32 v2, v143, v145, 0xc0c0004
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v3, v139, v142, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v20, v2, 16, v1
	v_perm_b32 v1, v37, v39, 0xc0c0004
	v_perm_b32 v2, v36, v38, 0xc0c0004
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_lshl_or_b32 v18, v2, 16, v1
	v_perm_b32 v1, v33, v34, 0xc0c0004
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v4, v40, v140, 0xc0c0004
	v_mov_b32_e32 v16, s11
	v_lshl_or_b32 v17, v1, 16, v0
	v_dual_mov_b32 v15, s10 :: v_dual_add_nc_u32 v0, s35, v252
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s35, v251
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v13, s8 :: v_dual_add_nc_u32 v2, s35, v254
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	v_dual_mov_b32 v9, s4 :: v_dual_add_nc_u32 v4, s35, v249
	ds_load_u8 v2, v2
	v_dual_mov_b32 v12, s7 :: v_dual_add_nc_u32 v3, s35, v248
	ds_load_u8 v4, v4
	v_dual_mov_b32 v14, s9 :: v_dual_mov_b32 v11, s6
	ds_load_u8 v3, v3
	v_mov_b32_e32 v10, s5
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:312
	scratch_load_b32 v139, off, off offset:4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s35, v253
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v2, s35, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v36, v1, 16, v0
	ds_load_u8 v2, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s35, v244
	v_add_nc_u32_e32 v1, s35, v243
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v3, s35, v250
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s35, v245
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v4, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v35, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v2, s35, v246
	scratch_load_b32 v3, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v2, s35, v241
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s35, v41
	v_add_nc_u32_e32 v1, s35, v240
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s35, v242
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v33, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v1, off, off offset:236
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v140, s35, v140
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v4, s35, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v3, s35, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s35, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v40, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s35, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s35, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:216
	scratch_load_b32 v1, off, off offset:204
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v3, v225, v224, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s35, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v38, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v1, off, off offset:192
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s35, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v227, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v37, v1, 16, v0
	v_perm_b32 v0, v231, v230, 0xc0c0004
	v_perm_b32 v1, v229, v228, 0xc0c0004
	v_lshl_or_b32 v144, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v1, 16, v0
	v_perm_b32 v0, v223, v222, 0xc0c0004
	v_perm_b32 v1, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v1, 16, v0
	v_perm_b32 v0, v216, v219, 0xc0c0004
	v_perm_b32 v1, v218, v217, 0xc0c0004
	v_lshl_or_b32 v142, v1, 16, v0
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v0, v212, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[142:145], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v33, v214, v215, 0xc0c0004
	v_perm_b32 v34, v208, v209, 0xc0c0004
	v_perm_b32 v35, v210, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[142:145], v[9:16] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:56
	scratch_load_b32 v37, off, off offset:44
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v36, v33, 16, v0
	v_perm_b32 v0, v204, v205, 0xc0c0004
	v_perm_b32 v33, v206, v207, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v39, off, off offset:32
	scratch_load_b32 v40, off, off offset:36
	scratch_load_b32 v142, off, off offset:288
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v33, 16, v0
	v_perm_b32 v0, v200, v201, 0xc0c0004
	v_perm_b32 v33, v202, v203, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v139, s35, v139
	scratch_load_b32 v143, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v33, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v38, s35, v38
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v39, s35, v39
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v40, s35, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v142, s35, v142
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v143, s35, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v142, v142
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v143, v143
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s35, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v39, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s35, v39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v39, v39, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:24
	scratch_load_b32 v37, off, off offset:12
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s35, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:444
	scratch_load_b32 v37, off, off
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v169, v0 :: v_dual_add_nc_u32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v139, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v37, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[33:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v139, s35, v139
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v139, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v140, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v140, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v139, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v140, s35, v140
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v142, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v142, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v142, s35, v142
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v142, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v142, 16, v140
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:280
	scratch_load_b32 v139, off, off offset:268
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v140, s35, v140
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v139, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v140, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v140, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v143, v139, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:252
	scratch_load_b32 v139, off, off offset:256
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v140, s35, v140
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	ds_load_u8 v0, v0
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v139, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v140, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v142, v139, 16, v0
	v_perm_b32 v0, v191, v190, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[142:145], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v33, v189, v188, 0xc0c0004
	v_perm_b32 v34, v184, v182, 0xc0c0004
	v_perm_b32 v35, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v33, 16, v0
	v_perm_b32 v0, v175, v174, 0xc0c0004
	v_perm_b32 v33, v173, v172, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	v_perm_b32 v0, v171, v170, 0xc0c0004
	v_perm_b32 v33, v255, v168, 0xc0c0004
	v_lshl_or_b32 v33, v33, 16, v0
	v_perm_b32 v0, v196, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[142:145], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v33, v198, v199, 0xc0c0004
	v_perm_b32 v34, v192, v193, 0xc0c0004
	v_perm_b32 v35, v194, v195, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:120
	scratch_load_b32 v37, off, off offset:108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v36, v33, 16, v0
	v_perm_b32 v0, v183, v185, 0xc0c0004
	v_perm_b32 v33, v186, v187, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v39, off, off offset:96
	scratch_load_b32 v40, off, off offset:100
	scratch_load_b32 v142, off, off offset:352
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v33, 16, v0
	v_perm_b32 v0, v176, v177, 0xc0c0004
	v_perm_b32 v33, v178, v179, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v143, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v33, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v140, s35, v140
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v38, s35, v38
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v39, s35, v39
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v40, s35, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v142, s35, v142
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v143, s35, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v142, v142
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v143, v143
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s35, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v39, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s35, v39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v39, v39, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:88
	scratch_load_b32 v37, off, off offset:76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s35, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:60
	scratch_load_b32 v37, off, off offset:64
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v139, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v37, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[33:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v139, s35, v139
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v139, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v140, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v140, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v139, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v140, s35, v140
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v142, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v142, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v142, s35, v142
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v142, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v142, 16, v140
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:344
	scratch_load_b32 v139, off, off offset:332
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v140, s35, v140
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v139, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v140, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v140, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v143, v139, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:316
	scratch_load_b32 v139, off, off offset:320
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v140, s35, v140
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v140
	ds_load_u8 v0, v0
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v139, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v139, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s35, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v142, v139, 16, v0
	v_perm_b32 v0, v162, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[142:145], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v33, v157, v156, 0xc0c0004
	v_perm_b32 v34, v138, v72, 0xc0c0004
	v_perm_b32 v35, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v33, 16, v0
	v_perm_b32 v0, v65, v64, 0xc0c0004
	v_perm_b32 v33, v63, v62, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v62, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v33, 16, v0
	v_perm_b32 v0, v61, v60, 0xc0c0004
	v_perm_b32 v33, v59, v58, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v59, off, off offset:440
	scratch_load_b32 v61, off, off offset:420
	scratch_load_b32 v58, off, off offset:132
	scratch_load_b32 v60, off, off offset:416
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v33, v33, 16, v0
	v_perm_b32 v0, v164, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[142:145], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v33, v166, v167, 0xc0c0004
	v_perm_b32 v34, v158, v160, 0xc0c0004
	v_perm_b32 v35, v161, v163, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:184
	scratch_load_b32 v37, off, off offset:172
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v36, v33, 16, v0
	v_perm_b32 v0, v137, v153, 0xc0c0004
	v_perm_b32 v33, v154, v155, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:160
	scratch_load_b32 v40, off, off offset:164
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v33, 16, v0
	v_perm_b32 v0, v66, v67, 0xc0c0004
	v_perm_b32 v33, v68, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v62, s35, v62
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v62, v62
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v59, s35, v59
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v61, s35, v61
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v58, s35, v58
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v60, s35, v60
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v59
	ds_load_u8 v61, v61
	ds_load_u8 v58, v58
	ds_load_u8 v60, v60
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v38, s35, v38
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s35, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s35, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s35, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v39, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s35, v39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v39, v39, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:152
	scratch_load_b32 v37, off, off offset:140
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s35, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v37, off, off offset:128
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s35, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v58, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v37, v37, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v122, v122, v4 :: v_dual_add_f32 v121, v121, v3
	v_dual_add_f32 v118, v118, v6 :: v_dual_add_f32 v117, v117, v5
	v_dual_add_f32 v110, v110, v8 :: v_dual_add_f32 v109, v109, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v126, v126, v2 :: v_dual_add_f32 v125, v125, v1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v58, s35, v58
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s35, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v59, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v59, s35, v59
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v59
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v60, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v60, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, s35, v60
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v60, v60
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_lshl_or_b32 v61, v58, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v60, v60, 16, v59
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:408
	scratch_load_b32 v58, off, off offset:396
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v59, s35, v59
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s35, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v59, v59
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s35, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:380
	scratch_load_b32 v58, off, off offset:384
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s35, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s35, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v58, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s35, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v58, 16, v0
	v_perm_b32 v0, v57, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[58:61], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v33, v55, v54, 0xc0c0004
	v_perm_b32 v34, v53, v52, 0xc0c0004
	v_perm_b32 v35, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v25
	v_lshl_or_b32 v36, v33, 16, v0
	v_perm_b32 v0, v49, v48, 0xc0c0004
	v_perm_b32 v33, v47, v46, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_lshl_or_b32 v34, v33, 16, v0
	v_perm_b32 v0, v45, v44, 0xc0c0004
	v_perm_b32 v33, v43, v42, 0xc0c0004
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v101, v101, v25
	v_add_f32_e32 v93, v93, v27
	v_add_f32_e32 v85, v85, v29
	v_add_f32_e32 v77, v77, v31
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v33, v33, 16, v0
	v_cvt_f32_i32_e32 v0, v26
	v_cvt_f32_i32_e32 v26, v28
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v30, v32
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[58:61], v[33:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v102, v102, v0
	v_add_f32_e32 v94, v94, v26
	v_add_f32_e32 v86, v86, v28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v78, v78, v30
	v_dual_add_f32 v134, v134, v18 :: v_dual_add_f32 v133, v133, v17
	v_dual_add_f32 v130, v130, v20 :: v_dual_add_f32 v129, v129, v19
	v_dual_add_f32 v120, v120, v22 :: v_dual_add_f32 v119, v119, v21
	v_dual_add_f32 v112, v112, v24 :: v_dual_add_f32 v111, v111, v23
	v_dual_add_f32 v104, v104, v10 :: v_dual_add_f32 v103, v103, v9
	v_dual_add_f32 v96, v96, v12 :: v_dual_add_f32 v95, v95, v11
	v_dual_add_f32 v88, v88, v14 :: v_dual_add_f32 v87, v87, v13
	v_dual_add_f32 v80, v80, v16 :: v_dual_add_f32 v79, v79, v15
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	scratch_load_b32 v169, off, off offset:444 ; 4-byte Folded Reload
.LBB0_13:
	v_dual_mov_b32 v240, 0 :: v_dual_add_nc_u32 v1, s30, v141
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	s_waitcnt lgkmcnt(50)
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v242, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v224, v1
	s_waitcnt lgkmcnt(16)
	ds_load_u8_d16 v158, v1 offset:32
	ds_load_u8_d16 v225, v1 offset:64
	ds_load_u8_d16 v226, v1 offset:128
	ds_load_u8_d16 v227, v1 offset:192
	ds_load_u8_d16 v191, v1 offset:224
	ds_load_u8_d16 v193, v1 offset:160
	ds_load_u8_d16 v194, v1 offset:96
	ds_load_u8_d16 v228, v1 offset:256
	ds_load_u8_d16 v59, v1 offset:320
	ds_load_u8_d16 v229, v1 offset:384
	ds_load_u8_d16 v58, v1 offset:448
	ds_load_u8_d16 v197, v1 offset:480
	ds_load_u8_d16 v198, v1 offset:416
	ds_load_u8_d16 v201, v1 offset:352
	ds_load_u8_d16 v203, v1 offset:288
	s_waitcnt lgkmcnt(16)
	ds_load_u8_d16 v57, v1 offset:512
	ds_load_u8_d16 v51, v1 offset:576
	ds_load_u8_d16 v43, v1 offset:640
	ds_load_u8_d16 v60, v1 offset:704
	ds_load_u8_d16 v204, v1 offset:736
	ds_load_u8_d16 v206, v1 offset:672
	ds_load_u8_d16 v217, v1 offset:608
	ds_load_u8_d16 v221, v1 offset:544
	ds_load_u8_d16 v42, v1 offset:768
	ds_load_u8_d16 v52, v1 offset:832
	ds_load_u8_d16 v44, v1 offset:896
	ds_load_u8_d16 v0, v1 offset:960
	ds_load_u8_d16 v244, v1 offset:992
	ds_load_u8_d16 v246, v1 offset:928
	ds_load_u8_d16 v248, v1 offset:864
	ds_load_u8_d16 v250, v1 offset:800
	ds_load_u8_d16 v152, v1 offset:1024
	ds_load_u8_d16 v61, v1 offset:1088
	ds_load_u8_d16 v62, v1 offset:1152
	ds_load_u8_d16 v208, v1 offset:1216
	ds_load_u8_d16 v167, v1 offset:1248
	ds_load_u8_d16 v168, v1 offset:1184
	ds_load_u8_d16 v172, v1 offset:1120
	ds_load_u8_d16 v174, v1 offset:1056
	ds_load_u8_d16 v209, v1 offset:1280
	ds_load_u8_d16 v210, v1 offset:1344
	ds_load_u8_d16 v211, v1 offset:1408
	ds_load_u8_d16 v212, v1 offset:1472
	ds_load_u8_d16 v184, v1 offset:1504
	ds_load_u8_d16 v185, v1 offset:1440
	ds_load_u8_d16 v186, v1 offset:1376
	ds_load_u8_d16 v187, v1 offset:1312
	ds_load_u8_d16 v213, v1 offset:1536
	ds_load_u8_d16 v214, v1 offset:1600
	ds_load_u8_d16 v215, v1 offset:1664
	ds_load_u8_d16 v216, v1 offset:1728
	ds_load_u8_d16 v205, v1 offset:1760
	ds_load_u8_d16 v207, v1 offset:1696
	ds_load_u8_d16 v218, v1 offset:1632
	ds_load_u8_d16 v243, v1 offset:1568
	ds_load_u8_d16 v219, v1 offset:1792
	ds_load_u8_d16 v220, v1 offset:1856
	ds_load_u8_d16 v222, v1 offset:1920
	ds_load_u8_d16 v223, v1 offset:1984
	ds_load_u8_d16 v245, v1 offset:2016
	ds_load_u8_d16 v247, v1 offset:1952
	ds_load_u8_d16 v249, v1 offset:1888
	ds_load_u8_d16 v251, v1 offset:1824
	ds_load_u8_d16 v153, v1 offset:2048
	ds_load_u8_d16 v40, v1 offset:2112
	ds_load_u8_d16 v53, v1 offset:2176
	ds_load_u8_d16 v54, v1 offset:2240
	ds_load_u8_d16 v159, v1 offset:2272
	ds_load_u8_d16 v161, v1 offset:2208
	ds_load_u8_d16 v165, v1 offset:2144
	ds_load_u8_d16 v166, v1 offset:2080
	ds_load_u8_d16 v154, v1 offset:2304
	ds_load_u8_d16 v49, v1 offset:2368
	ds_load_u8_d16 v50, v1 offset:2432
	ds_load_u8_d16 v56, v1 offset:2496
	ds_load_u8_d16 v176, v1 offset:2528
	ds_load_u8_d16 v177, v1 offset:2464
	ds_load_u8_d16 v180, v1 offset:2400
	ds_load_u8_d16 v181, v1 offset:2336
	ds_load_u8_d16 v139, v1 offset:2560
	ds_load_u8_d16 v142, v1 offset:2624
	ds_load_u8_d16 v252, v1 offset:2688
	ds_load_u8_d16 v143, v1 offset:2752
	ds_load_u8_d16 v188, v1 offset:2784
	ds_load_u8_d16 v189, v1 offset:2720
	ds_load_u8_d16 v190, v1 offset:2656
	ds_load_u8_d16 v192, v1 offset:2592
	ds_load_u8_d16 v145, v1 offset:2816
	ds_load_u8_d16 v146, v1 offset:2880
	ds_load_u8_d16 v255, v1 offset:2944
	ds_load_u8_d16 v147, v1 offset:3008
	ds_load_u8_d16 v195, v1 offset:3040
	ds_load_u8_d16 v196, v1 offset:2976
	ds_load_u8_d16 v199, v1 offset:2912
	ds_load_u8_d16 v200, v1 offset:2848
	ds_load_u8_d16 v45, v1 offset:3072
	ds_load_u8_d16 v46, v1 offset:3136
	ds_load_u8_d16 v47, v1 offset:3200
	ds_load_u8_d16 v48, v1 offset:3264
	ds_load_u8_d16 v160, v1 offset:3296
	ds_load_u8_d16 v162, v1 offset:3232
	ds_load_u8_d16 v163, v1 offset:3168
	ds_load_u8_d16 v164, v1 offset:3104
	ds_load_u8_d16 v55, v1 offset:3328
	ds_load_u8_d16 v155, v1 offset:3392
	ds_load_u8_d16 v230, v1 offset:3456
	ds_load_u8_d16 v157, v1 offset:3520
	ds_load_u8_d16 v170, v1 offset:3552
	ds_load_u8_d16 v171, v1 offset:3488
	ds_load_u8_d16 v173, v1 offset:3424
	ds_load_u8_d16 v175, v1 offset:3360
	ds_load_u8_d16 v140, v1 offset:3584
	ds_load_u8_d16 v253, v1 offset:3648
	ds_load_u8_d16 v254, v1 offset:3712
	ds_load_u8_d16 v144, v1 offset:3776
	ds_load_u8_d16 v178, v1 offset:3808
	ds_load_u8_d16 v179, v1 offset:3744
	ds_load_u8_d16 v182, v1 offset:3680
	ds_load_u8_d16 v183, v1 offset:3616
	ds_load_u8_d16 v148, v1 offset:3840
	ds_load_u8_d16 v149, v1 offset:3904
	ds_load_u8_d16 v150, v1 offset:3968
	ds_load_u8_d16 v151, v1 offset:4032
	ds_load_u8_d16 v202, v1 offset:4064
	ds_load_u8_d16 v72, v1 offset:4000
	ds_load_u8_d16 v137, v1 offset:3936
	ds_load_u8_d16 v138, v1 offset:3872
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v235, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v42, v52, 0xc0c0004
	v_perm_b32 v2, v44, v0, 0xc0c0004
	v_perm_b32 v3, v57, v51, 0xc0c0004
	v_perm_b32 v4, v43, v60, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v37, v215, v216, 0xc0c0004
	v_lshl_or_b32 v20, v2, 16, v1
	v_perm_b32 v1, v228, v59, 0xc0c0004
	v_perm_b32 v2, v229, v58, 0xc0c0004
	v_lshl_or_b32 v19, v4, 16, v3
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v18, v2, 16, v1
	v_perm_b32 v1, v224, v225, 0xc0c0004
	v_perm_b32 v2, v226, v227, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v17, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:508
	scratch_load_b32 v2, off, off offset:504
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:492
	scratch_load_b32 v5, off, off offset:496
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v15, s10
	v_dual_mov_b32 v14, s9 :: v_dual_mov_b32 v13, s8
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v10, s5 :: v_dual_mov_b32 v9, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:56
	scratch_load_b32 v38, off, off offset:44
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v3, s3, v3
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v1, s3, v1
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v4, s3, v4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v5, s3, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	ds_load_u8 v4, v4
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s3, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s3, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v4, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:484
	scratch_load_b32 v2, off, off offset:472
	v_add_nc_u32_e32 v1, s3, v1
	scratch_load_b32 v4, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v5, s3, v5
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s3, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s3, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v2, v2
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:460 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, s3, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s3, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:240
	scratch_load_b32 v2, off, off offset:236
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s3, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s3, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s3, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s3, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v4, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:216
	scratch_load_b32 v2, off, off offset:204
	v_add_nc_u32_e32 v1, s3, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v4, v206, v204, 0xc0c0004
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s3, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:188
	scratch_load_b32 v2, off, off offset:192
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s3, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s3, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s3, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v3, v221, v217, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v64, v2, 16, v1
	v_perm_b32 v1, v250, v248, 0xc0c0004
	v_perm_b32 v2, v246, v244, 0xc0c0004
	v_lshl_or_b32 v70, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[64:67], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v2, 16, v1
	v_perm_b32 v1, v203, v201, 0xc0c0004
	v_perm_b32 v2, v198, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v2, 16, v1
	v_perm_b32 v1, v158, v194, 0xc0c0004
	v_perm_b32 v2, v193, v191, 0xc0c0004
	v_lshl_or_b32 v68, v2, 16, v1
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[68:71], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v33, v219, v220, 0xc0c0004
	v_perm_b32 v34, v222, v223, 0xc0c0004
	v_perm_b32 v35, v213, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[64:67], v[68:71], v[9:16] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:32
	scratch_load_b32 v65, off, off offset:36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v209, v210, 0xc0c0004
	v_perm_b32 v34, v211, v212, 0xc0c0004
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v62, v208, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:288
	scratch_load_b32 v69, off, off offset:292
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v152, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v64, s3, v64
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v65, s3, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v64
	ds_load_u8 v65, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, s3, v68
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v64, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v64, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s3, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v64, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:24
	scratch_load_b32 v38, off, off offset:12
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off          ; 4-byte Folded Reload
	v_add_nc_u32_e32 v37, s3, v169
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v64, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:304
	scratch_load_b32 v38, off, off offset:300
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[64:67], v[33:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v71, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v68, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v68, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v68, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:280
	scratch_load_b32 v38, off, off offset:268
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v69, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:252
	scratch_load_b32 v38, off, off offset:256
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v38, 16, v37
	v_perm_b32 v37, v207, v205, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[68:71], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v33, v251, v249, 0xc0c0004
	v_perm_b32 v34, v247, v245, 0xc0c0004
	v_perm_b32 v35, v243, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v187, v186, 0xc0c0004
	v_perm_b32 v34, v185, v184, 0xc0c0004
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v174, v172, 0xc0c0004
	v_lshl_or_b32 v33, v37, 16, v33
	v_perm_b32 v37, v252, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[64:67], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[68:71], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v33, v145, v146, 0xc0c0004
	v_perm_b32 v34, v255, v147, 0xc0c0004
	v_perm_b32 v35, v139, v142, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:96
	scratch_load_b32 v65, off, off offset:100
	scratch_load_b32 v68, off, off offset:352
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v154, v49, 0xc0c0004
	v_perm_b32 v34, v50, v56, 0xc0c0004
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v53, v54, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v69, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v153, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v64, s3, v64
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v65, s3, v65
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v64
	ds_load_u8 v65, v65
	ds_load_u8 v68, v68
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v69
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v64, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v64, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s3, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v64, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:88
	scratch_load_b32 v38, off, off offset:76
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:60
	scratch_load_b32 v38, off, off offset:64
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v64, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:368
	scratch_load_b32 v38, off, off offset:364
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[64:67], v[33:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v71, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v68, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v68, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v68, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:344
	scratch_load_b32 v38, off, off offset:332
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v69, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:316
	scratch_load_b32 v38, off, off offset:320
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v38, 16, v37
	v_perm_b32 v37, v189, v188, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[68:71], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v33, v200, v199, 0xc0c0004
	v_perm_b32 v34, v196, v195, 0xc0c0004
	v_perm_b32 v35, v192, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v181, v180, 0xc0c0004
	v_perm_b32 v34, v177, v176, 0xc0c0004
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v161, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v166, v165, 0xc0c0004
	v_lshl_or_b32 v33, v37, 16, v33
	v_perm_b32 v37, v254, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[64:67], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[68:71], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v33, v148, v149, 0xc0c0004
	v_perm_b32 v34, v150, v151, 0xc0c0004
	v_perm_b32 v35, v140, v253, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:160
	scratch_load_b32 v65, off, off offset:164
	scratch_load_b32 v68, off, off offset:416
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v55, v155, 0xc0c0004
	v_perm_b32 v34, v230, v157, 0xc0c0004
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v47, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v69, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v45, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v64, s3, v64
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v65, s3, v65
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v64
	ds_load_u8 v65, v65
	ds_load_u8 v68, v68
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v69
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v64, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v64, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s3, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v64, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:152
	scratch_load_b32 v38, off, off offset:140
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:124
	scratch_load_b32 v38, off, off offset:128
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v64, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:432
	scratch_load_b32 v38, off, off offset:428
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[64:67], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v236, v3
	v_cvt_f32_i32_e32 v239, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v234, v5
	v_cvt_f32_i32_e32 v237, v6
	v_cvt_f32_i32_e32 v238, v7
	v_cvt_f32_i32_e32 v241, v8
	v_cvt_f32_i32_e32 v240, v1
	v_cvt_f32_i32_e32 v242, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v71, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v68, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v68, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v68, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:408
	scratch_load_b32 v38, off, off offset:396
	v_add_nc_u32_e32 v37, s3, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v69, v38, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:380
	scratch_load_b32 v38, off, off offset:384
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s3, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s3, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v68, v38, 16, v37
	v_perm_b32 v37, v179, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[68:71], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v33, v138, v137, 0xc0c0004
	v_perm_b32 v34, v72, v202, 0xc0c0004
	v_perm_b32 v35, v183, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v175, v173, 0xc0c0004
	v_perm_b32 v34, v171, v170, 0xc0c0004
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v162, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v164, v163, 0xc0c0004
	v_lshl_or_b32 v33, v37, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[64:67], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[68:71], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v36, v27
	v_cvt_f32_i32_e32 v68, v28
	v_cvt_f32_i32_e32 v27, v29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v67, v31
	v_cvt_f32_i32_e32 v70, v32
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v29, v19
	v_cvt_f32_i32_e32 v30, v20
	v_cvt_f32_i32_e32 v19, v21
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v23, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v233, v12
	v_cvt_f32_i32_e32 v10, v13
	v_cvt_f32_i32_e32 v231, v14
	v_cvt_f32_i32_e32 v232, v15
	v_cvt_f32_i32_e32 v235, v16
	v_mov_b32_e32 v16, v17
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v11, off offset:556
	scratch_store_b32 off, v23, off offset:552
	scratch_store_b32 off, v10, off offset:548
	scratch_store_b32 off, v22, off offset:544
	scratch_store_b32 off, v9, off offset:540
	scratch_store_b32 off, v30, off offset:536
	scratch_store_b32 off, v21, off offset:532
	scratch_store_b32 off, v20, off offset:528
	scratch_store_b32 off, v29, off offset:524
	scratch_store_b32 off, v19, off offset:520
	scratch_store_b32 off, v18, off offset:444
	s_waitcnt lgkmcnt(20)
	v_mov_b16_e64 v19.l, v157.l
	v_mov_b16_e64 v24.l, v155.l
	v_mov_b16_e32 v22.l, v55.l
	v_mov_b16_e32 v55.l, v56.l
	v_mov_b16_e32 v56.l, v50.l
	v_mov_b16_e32 v50.l, v49.l
	v_mov_b16_e64 v49.l, v154.l
	v_mov_b16_e32 v20.l, v48.l
	v_mov_b16_e32 v48.l, v47.l
	v_mov_b16_e32 v47.l, v46.l
	v_mov_b16_e32 v46.l, v45.l
	v_mov_b16_e32 v45.l, v54.l
	v_mov_b16_e32 v54.l, v53.l
	v_mov_b16_e32 v53.l, v40.l
	v_mov_b16_e64 v40.l, v153.l
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v138, off offset:568
	scratch_store_b32 off, v137, off offset:564
	scratch_store_b32 off, v72, off offset:560
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v155, 0
	v_mov_b32_e32 v157, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	s_mov_b32 s4, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v0, v44, v0, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v169, s1, v169
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v2, off, off offset:512
	scratch_load_b32 v3, off, off offset:508
	scratch_load_b32 v4, off, off offset:504
	scratch_load_b32 v5, off, off offset:500
	scratch_load_b32 v6, off, off offset:496
	scratch_load_b32 v7, off, off offset:492
	scratch_load_b32 v8, off, off offset:488
	scratch_load_b32 v9, off, off offset:484
	scratch_load_b32 v10, off, off offset:480
	scratch_load_b32 v11, off, off offset:476
	scratch_load_b32 v12, off, off offset:472
	scratch_load_b32 v13, off, off offset:468
	scratch_load_b32 v14, off, off offset:464
	scratch_load_b32 v15, off, off offset:460
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v3, s1, v3
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v4, s1, v4
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v5, s1, v5
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v6, s1, v6
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v7, s1, v7
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v8, s1, v8
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v9, s1, v9
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v10, s1, v10
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v11, s1, v11
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v12, s1, v12
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v13, s1, v13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v14, s1, v14
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s1, v15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v185, off offset:316
	scratch_store_b32 off, v186, off offset:312
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v185, s1, v1
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s1, v1
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v187, off offset:308
	scratch_store_b32 off, v188, off offset:304
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s1, v1
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s1, v1
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v181, off offset:300
	scratch_store_b32 off, v182, off offset:296
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s1, v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v182, s1, v1
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v183, off offset:292
	scratch_store_b32 off, v184, off offset:288
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v183, s1, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v184, s1, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v177, off offset:284
	scratch_store_b32 off, v178, off offset:280
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v177, s1, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v178, s1, v1
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v179, off offset:276
	scratch_store_b32 off, v180, off offset:272
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s1, v1
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v180, s1, v1
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:576 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:580 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:584 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v173, off offset:268
	scratch_store_b32 off, v193, off offset:252
	scratch_store_b32 off, v194, off offset:248
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v193, s1, v1
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v194, s1, v1
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v174, off offset:264
	scratch_store_b32 off, v195, off offset:244
	scratch_store_b32 off, v196, off offset:240
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v195, s1, v1
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v196, s1, v1
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v175, off offset:260
	scratch_store_b32 off, v189, off offset:236
	scratch_store_b32 off, v190, off offset:232
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s1, v1
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v190, s1, v1
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v176, off offset:256
	scratch_store_b32 off, v191, off offset:228
	scratch_store_b32 off, v192, off offset:224
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v191, s1, v1
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v192, s1, v1
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v1
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v63, s1, v1
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s1, v1
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s1, v1
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v176, s1, v1
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v175, s1, v1
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v174, s1, v1
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s1, v1
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:188
	scratch_store_b32 off, v68, off offset:184
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v1
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s1, v1
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v1
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s1, v1
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s1, v1
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s1, v1
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v1
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s1, v1
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v199, off offset:156
	scratch_store_b32 off, v200, off offset:152
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s1, v1
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v200, s1, v1
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s1, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s1, v1
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v197, off offset:140
	scratch_store_b32 off, v198, off offset:136
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s1, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s1, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v201, off offset:132
	scratch_store_b32 off, v202, off offset:128
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v201, s1, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v202, s1, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v161, off offset:124
	scratch_store_b32 off, v162, off offset:120
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v161, s1, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v162, s1, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v165, off offset:116
	scratch_store_b32 off, v166, off offset:112
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s1, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v166, s1, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	scratch_store_b32 off, v158, off offset:104 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v157, s1, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v158, s1, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v163, off offset:100
	scratch_store_b32 off, v164, off offset:96
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s1, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v164, s1, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v153, s1, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s1, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v159, off offset:84
	scratch_store_b32 off, v160, off offset:80
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v159, s1, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v160, s1, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s1, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s1, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s1, v1
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v156, s1, v1
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s1, v1
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, s1, v1
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s1, v1
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s1, v1
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s1, v1
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s1, v1
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	scratch_store_b32 off, v36, off offset:32 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v31, v31
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v34, v31, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, s1, v1
	scratch_load_b32 v1, off, off offset:28 ; 4-byte Folded Reload
	scratch_store_b32 off, v167, off offset:28 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s1, v1
	scratch_load_b32 v1, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s1, v1
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v170, off offset:24
	scratch_store_b32 off, v171, off offset:20
	scratch_store_b32 off, v172, off offset:40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v170, s1, v1
	scratch_load_b32 v1, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s1, v1
	scratch_load_b32 v1, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s1, v1
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	scratch_store_b32 off, v26, off offset:8 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s1, v1
	scratch_load_b32 v1, off, off offset:4  ; 4-byte Folded Reload
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v27, off offset:4
	scratch_store_b32 off, v168, off offset:36
	scratch_store_b32 off, v16, off offset:16
	scratch_store_b32 off, v28, off offset:12
	v_add_nc_u32_e32 v16, s1, v41
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v167, s1, v1
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	scratch_store_b32 off, v25, off         ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v25, v42, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v44, v0, 16, v25
	v_perm_b32 v0, v57, v51, 0xc0c0004
	v_perm_b32 v25, v43, v60, 0xc0c0004
	v_perm_b32 v60, v222, v223, 0xc0c0004
	v_perm_b32 v57, v62, v208, 0xc0c0004
	v_lshl_or_b32 v43, v25, 16, v0
	v_perm_b32 v0, v228, v59, 0xc0c0004
	v_perm_b32 v25, v229, v58, 0xc0c0004
	v_perm_b32 v59, v215, v216, 0xc0c0004
	v_perm_b32 v58, v211, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v25, 16, v0
	v_perm_b32 v0, v224, v225, 0xc0c0004
	v_perm_b32 v25, v226, v227, 0xc0c0004
	v_lshl_or_b32 v41, v25, 16, v0
	ds_load_u8 v0, v3
	ds_load_u8 v3, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v3, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v168, s1, v1
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v1, 16, v0
	ds_load_u8 v0, v7
	ds_load_u8 v1, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v5
	ds_load_u8 v2, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v1, 16, v0
	ds_load_u8 v0, v11
	ds_load_u8 v1, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v9
	ds_load_u8 v2, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v1, 16, v0
	ds_load_u8 v0, v15
	ds_load_u8 v1, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v13
	ds_load_u8 v2, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v25, v1, 16, v0
	v_perm_b32 v0, v219, v220, 0xc0c0004
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_lshl_or_b32 v60, v60, 16, v0
	v_perm_b32 v0, v213, v214, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v59, v59, 16, v0
	v_perm_b32 v0, v209, v210, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v58, v58, 16, v0
	v_perm_b32 v0, v152, v61, 0xc0c0004
	scratch_load_b32 v61, off, off offset:580 ; 4-byte Folded Reload
	v_lshl_or_b32 v57, v57, 16, v0
	ds_load_u8 v0, v38
	ds_load_u8 v38, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v38, v0, 0xc0c0004
	ds_load_u8 v32, v32
	ds_load_u8 v38, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v38, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v32, 16, v0
	ds_load_u8 v0, v35
	ds_load_u8 v35, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v0
	ds_load_u8 v0, v171
	ds_load_u8 v34, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v30, v30
	ds_load_u8 v34, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v34, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v0
	ds_load_u8 v0, v168
	ds_load_u8 v34, v169
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v29, v29
	ds_load_u8 v34, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v34, v29, 0xc0c0004
	v_perm_b32 v34, v255, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v29, v29, 16, v0
	v_perm_b32 v0, v145, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v0
	v_perm_b32 v0, v139, v142, 0xc0c0004
	v_perm_b32 v34, v252, v143, 0xc0c0004
	v_lshl_or_b32 v51, v34, 16, v0
	v_perm_b32 v0, v49, v50, 0xc0c0004
	v_perm_b32 v34, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v0
	v_perm_b32 v0, v40, v53, 0xc0c0004
	v_perm_b32 v34, v54, v45, 0xc0c0004
	v_lshl_or_b32 v49, v34, 16, v0
	ds_load_u8 v0, v165
	ds_load_u8 v34, v166
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v161
	ds_load_u8 v35, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v34, 16, v0
	ds_load_u8 v0, v163
	ds_load_u8 v34, v164
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v157
	ds_load_u8 v35, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v0
	ds_load_u8 v0, v159
	ds_load_u8 v34, v160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v153
	ds_load_u8 v38, v154
	s_waitcnt vmcnt(0)
	ds_load_u8 v61, v61
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v0
	ds_load_u8 v0, v155
	ds_load_u8 v38, v156
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v38, v0, 0xc0c0004
	ds_load_u8 v33, v33
	ds_load_u8 v38, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v38, v33, 0xc0c0004
	v_perm_b32 v38, v150, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v33, 16, v0
	v_perm_b32 v0, v148, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[49:52], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v38, 16, v0
	v_perm_b32 v0, v140, v253, 0xc0c0004
	v_perm_b32 v38, v254, v144, 0xc0c0004
	v_lshl_or_b32 v55, v38, 16, v0
	v_perm_b32 v0, v22, v24, 0xc0c0004
	v_perm_b32 v38, v230, v19, 0xc0c0004
	ds_load_u8 v21, v21
	ds_load_u8 v22, v63
	v_lshl_or_b32 v54, v38, 16, v0
	v_perm_b32 v0, v46, v47, 0xc0c0004
	v_perm_b32 v38, v48, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v38, 16, v0
	ds_load_u8 v0, v71
	ds_load_u8 v38, v72
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v38, v0, 0xc0c0004
	ds_load_u8 v38, v67
	ds_load_u8 v39, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v38, 16, v0
	ds_load_u8 v0, v69
	ds_load_u8 v38, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v38, v0, 0xc0c0004
	ds_load_u8 v37, v37
	ds_load_u8 v38, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v37, 16, v0
	ds_load_u8 v0, v65
	ds_load_u8 v37, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	ds_load_u8 v37, v199
	ds_load_u8 v38, v200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v37, 16, v0
	ds_load_u8 v0, v201
	ds_load_u8 v37, v202
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	ds_load_u8 v37, v197
	ds_load_u8 v45, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v45, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v37, 16, v0
	ds_load_u8 v0, v195
	ds_load_u8 v45, v196
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[53:56], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v45, v0, 0xc0c0004
	ds_load_u8 v45, v193
	ds_load_u8 v46, v194
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v45, 16, v0
	ds_load_u8 v0, v191
	ds_load_u8 v45, v192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v45, v0, 0xc0c0004
	ds_load_u8 v45, v189
	ds_load_u8 v46, v190
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v45, 16, v0
	ds_load_u8 v0, v23
	ds_load_u8 v23, v18
	ds_load_u8 v17, v176
	ds_load_u8 v18, v175
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v23, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v21, 16, v0
	ds_load_u8 v0, v174
	ds_load_u8 v19, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	v_lshl_or_b32 v45, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v187
	ds_load_u8 v41, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v185
	ds_load_u8 v42, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v41, 16, v0
	ds_load_u8 v0, v183
	ds_load_u8 v41, v184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v181
	ds_load_u8 v42, v182
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v41, 16, v0
	ds_load_u8 v0, v179
	ds_load_u8 v41, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v177
	ds_load_u8 v42, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:584
	scratch_load_b32 v41, off, off offset:588
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	scratch_load_b32 v41, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v61, v41, 0xc0c0004
	scratch_load_b32 v61, off, off offset:324 ; 4-byte Folded Reload
	v_lshl_or_b32 v41, v41, 16, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[57:60], v[17:24] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:572
	scratch_load_b32 v58, off, off offset:372
	s_waitcnt vmcnt(3)
	ds_load_u8 v61, v61
	s_waitcnt vmcnt(2)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(1)
	ds_load_u8 v57, v57
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	scratch_load_b32 v58, off, off offset:356 ; 4-byte Folded Reload
	v_lshl_or_b32 v60, v57, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:352
	scratch_load_b32 v57, off, off offset:364
	s_waitcnt vmcnt(2)
	ds_load_u8 v58, v58
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	scratch_load_b32 v58, off, off offset:340 ; 4-byte Folded Reload
	v_lshl_or_b32 v59, v57, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:336
	scratch_load_b32 v57, off, off offset:348
	s_waitcnt vmcnt(2)
	ds_load_u8 v58, v58
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:320
	scratch_load_b32 v57, off, off offset:332
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v61, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[49:52], v[17:24] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:436
	scratch_load_b32 v49, off, off offset:428
	s_waitcnt vmcnt(2)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(1)
	ds_load_u8 v50, v50
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:420 ; 4-byte Folded Reload
	v_lshl_or_b32 v64, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:416
	scratch_load_b32 v49, off, off offset:412
	s_waitcnt vmcnt(2)
	ds_load_u8 v50, v50
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:404 ; 4-byte Folded Reload
	v_lshl_or_b32 v63, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:400
	scratch_load_b32 v49, off, off offset:396
	s_waitcnt vmcnt(2)
	ds_load_u8 v50, v50
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:388 ; 4-byte Folded Reload
	v_lshl_or_b32 v62, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:384
	scratch_load_b32 v49, off, off offset:380
	s_waitcnt vmcnt(2)
	ds_load_u8 v50, v50
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v61, v49, 16, v0
	v_perm_b32 v0, v250, v248, 0xc0c0004
	v_perm_b32 v49, v246, v244, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[53:56], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v68, v49, 16, v0
	v_perm_b32 v0, v221, v217, 0xc0c0004
	v_perm_b32 v49, v206, v204, 0xc0c0004
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_lshl_or_b32 v67, v49, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v49, off, off offset:140
	scratch_load_b32 v50, off, off offset:136
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v203, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:248
	scratch_load_b32 v49, off, off offset:104
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:252
	scratch_load_b32 v50, off, off offset:228
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v65, v49, 16, v0
	v_perm_b32 v0, v251, v249, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[49:56], v[25:28], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v25, v247, v245, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[45:48], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:184
	scratch_load_b32 v67, off, off offset:188
	v_lshl_or_b32 v28, v25, 16, v0
	v_perm_b32 v0, v243, v218, 0xc0c0004
	v_perm_b32 v25, v207, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:312
	scratch_load_b32 v25, off, off offset:308
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:316
	scratch_load_b32 v26, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:264
	scratch_load_b32 v25, off, off offset:40
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:28
	scratch_load_b32 v69, off, off offset:36
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v69, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v0
	v_wmma_i32_16x16x16_iu8 v[49:56], v[29:32], v[25:28], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:156
	scratch_load_b32 v29, off, off offset:152
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v28, off, off offset:12
	scratch_load_b32 v26, off, off offset:8
	scratch_load_b32 v27, off, off offset:4
	scratch_load_b32 v25, off, off
	s_waitcnt vmcnt(4)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:244
	scratch_load_b32 v30, off, off offset:240
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v29, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:232
	scratch_load_b32 v29, off, off offset:224
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:304
	scratch_load_b32 v30, off, off offset:236
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v29, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v29, off, off offset:272
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:284
	scratch_load_b32 v30, off, off offset:256
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v29, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v29, off, off offset:112
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:124
	scratch_load_b32 v69, off, off offset:84
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v29, 16, v0
	v_wmma_i32_16x16x16_iu8 v[49:56], v[33:36], v[29:32], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:564
	scratch_load_b32 v33, off, off offset:568
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v32, v16
	v_cvt_f32_i32_e32 v31, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v30, v15
	scratch_load_b32 v16, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:560
	scratch_load_b32 v34, off, off offset:128
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v33, off, off offset:292
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:280
	scratch_load_b32 v34, off, off offset:276
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:268
	scratch_load_b32 v33, off, off offset:260
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:24
	scratch_load_b32 v34, off, off offset:20
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:100
	scratch_load_b32 v33, off, off offset:96
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:120
	scratch_load_b32 v69, off, off offset:80
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v0
	v_wmma_i32_16x16x16_iu8 v[49:56], v[37:40], v[33:36], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[61:64], v[33:36], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v36, off, off offset:32 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v63, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v13
	v_cvt_f32_i32_e32 v33, v19
	v_cvt_f32_i32_e32 v37, v20
	v_cvt_f32_i32_e32 v35, v22
	v_cvt_f32_i32_e32 v38, v24
	v_cvt_f32_i32_e32 v39, v49
	v_cvt_f32_i32_e32 v64, v50
	v_cvt_f32_i32_e32 v71, v51
	v_cvt_f32_i32_e32 v138, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v72, v54
	v_cvt_f32_i32_e32 v137, v55
	v_cvt_f32_i32_e32 v153, v56
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v154, v2
	v_cvt_f32_i32_e32 v155, v3
	v_cvt_f32_i32_e32 v156, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v157, v8
.LBB0_17:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v196, off, off offset:448
	scratch_load_b32 v2, off, off offset:456
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v41, 32, v141
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s28, s15
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v97, v25
	v_add_f32_e32 v54, v106, v241
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v152, v126, v9
	v_dual_add_f32 v158, v122, v31 :: v_dual_add_f32 v69, v119, v69
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s29, s15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v60, v135, v16
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v46, v101, v17 :: v_dual_add_f32 v51, v104, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v122, v122, v158, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v101, v46, s2
	v_cndmask_b32_e64 v51, v104, v51, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v53, v124, v239
	v_add_f32_e32 v59, v123, v236
	v_dual_add_f32 v48, v127, v240 :: v_dual_add_f32 v65, v114, v237
	v_add_f32_e32 v25, v90, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v124, v124, v53, s2
	v_cndmask_b32_e64 v123, v123, v59, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v127, v127, v48, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v61, v110, v32
	v_dual_add_f32 v32, v94, v37 :: v_dual_add_f32 v37, v95, v155
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v114, v65, s2
	v_cndmask_b32_e64 v25, v90, v25, s2
	v_cndmask_b32_e64 v61, v110, v61, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v32, v94, v32, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v52, v128, v242 :: v_dual_add_f32 v151, v125, v63
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v63, v112, v153
	v_add_f32_e32 v159, v121, v11
	v_add_f32_e32 v55, v109, v30
	v_add_f32_e32 v30, v133, v39
	v_add_f32_e32 v39, v129, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v128, v52, s2
	v_cndmask_b32_e64 v126, v126, v152, s2
	v_cndmask_b32_e64 v125, v125, v151, s2
	v_cndmask_b32_e64 v121, v121, v159, s2
	v_cndmask_b32_e64 v63, v112, v63, s2
	v_cndmask_b32_e64 v129, v129, v39, s2
	v_cndmask_b32_e64 v55, v109, v55, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v47, v102, v18
	v_dual_add_f32 v18, v86, v35 :: v_dual_add_f32 v49, v111, v137
	v_add_f32_e32 v35, v130, v138
	v_add_f32_e32 v31, v93, v33
	v_add_f32_e32 v33, v134, v64
	v_dual_add_f32 v64, v120, v72 :: v_dual_add_f32 v11, v79, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v130, v35, s2
	v_cndmask_b32_e64 v49, v111, v49, s2
	v_cndmask_b32_e64 v47, v102, v47, s2
	v_cndmask_b32_e64 v18, v86, v18, s2
	v_cndmask_b32_e64 v134, v134, v33, s2
	v_cndmask_b32_e64 v120, v120, v64, s2
	v_cndmask_b32_e64 v31, v93, v31, s2
	v_cndmask_b32_e64 v11, v79, v11, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v17, v85, v21
	v_add_f32_e32 v21, v87, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v4, s15, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v133, v133, v30, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v9, v78, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v85, v17, s2
	v_cndmask_b32_e64 v21, v87, v21, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v9, v78, v9, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v196
	s_waitcnt vmcnt(0)
	v_and_or_b32 v19, v0, 1, v2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v0, s29, v141
	v_or_b32_e32 v2, s29, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v13, s28, v19
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v19
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v3, 6, v19
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 4, v19
	v_or_b32_e32 v22, 10, v19
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v13, 1, v13
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v14, s0, v19, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v24, 8, v19
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v20, v0, s[8:11], 0 offen
	buffer_load_u16 v29, v2, s[8:11], 0 offen
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v0, s28, v8
	v_or_b32_e32 v15, s28, v3
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v8, s0, v8, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s28, v7
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v3, s0, v3, 1
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v34, v13, s[8:11], 0 offen
	buffer_load_u16 v139, v14, s[8:11], 0 offen
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v13, s0, v22, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v14, s0, v24, 1
	s_clause 0x5
	buffer_load_u16 v140, v8, s[8:11], 0 offen
	buffer_load_u16 v142, v3, s[8:11], 0 offen
	buffer_load_u16 v143, v7, s[8:11], 0 offen
	buffer_load_u16 v144, v13, s[8:11], 0 offen
	buffer_load_u16 v145, v14, s[8:11], 0 offen
	buffer_load_u16 v146, v0, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v0, 1, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v13, v82, v28 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v147, v0, s[8:11], 0 offen
	buffer_load_u16 v148, v2, s[8:11], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v0, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v3, v73, v67
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v30, 0x4e, v19
	v_or_b32_e32 v33, 0x4c, v19
	v_or_b32_e32 v39, 0x4a, v19
	v_or_b32_e32 v41, 0x48, v19
	v_or_b32_e32 v48, 0x44, v19
	v_or_b32_e32 v52, 0x42, v19
	v_or_b32_e32 v53, 12, v19
	v_or_b32_e32 v59, 14, v19
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v24, s28, v24
	v_or_b32_e32 v22, s28, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v7, v76, v235
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v135, v135, v60, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v60, s28, v53
	v_or_b32_e32 v71, s28, v48
	v_or_b32_e32 v151, s28, v33
	v_or_b32_e32 v152, s28, v30
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v53, s0, v53, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v74, v70 :: v_dual_add_f32 v15, v84, v231
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v70, v118, v12
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v48, s0, v48, 1
	v_add_lshl_u32 v33, s0, v33, 1
	v_add_lshl_u32 v153, s0, v30, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v14, v81, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v12, v80, v157 :: v_dual_lshlrev_b32 v151, 1, v151
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v154, 1, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v8, v75, v232
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v118, v70, s2
	v_cndmask_b32_e64 v54, v106, v54, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v92, v233
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v84, v15, s2
	v_cndmask_b32_e64 v13, v82, v13, s2
	v_cndmask_b32_e64 v3, v73, v3, s2
	v_cndmask_b32_e64 v7, v76, v7, s2
	v_cndmask_b32_e64 v27, v92, v27, s2
	v_cndmask_b32_e64 v8, v75, v8, s2
	v_cndmask_b32_e64 v14, v81, v14, s2
	v_cndmask_b32_e64 v12, v80, v12, s2
	v_cndmask_b32_e64 v2, v74, v2, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v22, 1, v22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v147, 16, v147
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v45, 56, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v0, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v152, 1, v152
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v6, s1, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v62, v136, v0
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	v_add_f32_e32 v66, v113, v234
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v136, v136, v62, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v62, s28, v59
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v59, s0, v59, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v149, v132, v0 :: v_dual_lshlrev_b32 v62, 1, v62
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v113, v66, s2
	v_cndmask_b32_e64 v132, v132, v149, s2
	v_cndmask_b32_e64 v149, v119, v69, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v69, s28, v52
	v_or_b32_e32 v119, s28, v41
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v52, s0, v52, 1
	v_add_lshl_u32 v41, s0, v41, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v38, v96, v156 :: v_dual_lshlrev_b32 v155, 1, v69
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v156, 1, v71
	v_lshlrev_b32_e32 v158, 1, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v96, v38, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v150, v131, v0
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	v_add_f32_e32 v56, v105, v238
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v131, v131, v150, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v150, s28, v39
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v39, s0, v39, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v67, v116, v0 :: v_dual_lshlrev_b32 v150, 1, v150
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v105, v56, s2
	v_cndmask_b32_e64 v67, v116, v67, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v115, v0
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	v_add_f32_e32 v40, v98, v26
	v_add_f32_e32 v26, v89, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v36, v117, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v115, v68, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, v89, v26, s2
	v_cndmask_b32_e64 v36, v117, v36, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v138.h, v10.h
	v_mov_b16_e64 v137.h, v10.h
	v_mov_b16_e64 v130.h, v10.h
	v_mov_b16_e32 v112.h, v10.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v57, v108, v0
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v98, v40, s2
	v_cndmask_b32_e64 v57, v108, v57, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v58, v107, v0
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v107, v58, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v43, v100, v0
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v97, v42, s2
	v_cndmask_b32_e64 v43, v100, v43, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v44, v99, v0
	scratch_load_b32 v0, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v99, v44, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v91, v0
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v91, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v83, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v0, v77, v23 :: v_dual_add_f32 v23, v88, v5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v5, s1, v45, 64
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v45, 0x46, v19
	v_or_b32_e32 v19, 64, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v83, v16, s2
	v_cndmask_b32_e64 v23, v88, v23, s2
	v_cndmask_b32_e64 v0, v77, v0, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v72, s28, v45
	v_or_b32_e32 v64, s28, v19
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v19, s0, v19, 1
	v_add_lshl_u32 v45, s0, v45, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v50, v103, v1 :: v_dual_lshlrev_b32 v157, 1, v72
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v64, 1, v64
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x15
	buffer_load_u16 v159, v53, s[8:11], 0 offen
	buffer_load_u16 v160, v59, s[8:11], 0 offen
	buffer_load_u16 v69, v19, s[8:11], 0 offen
	buffer_load_u16 v71, v52, s[8:11], 0 offen
	buffer_load_u16 v59, v48, s[8:11], 0 offen
	buffer_load_u16 v60, v45, s[8:11], 0 offen
	buffer_load_u16 v45, v41, s[8:11], 0 offen
	buffer_load_u16 v48, v39, s[8:11], 0 offen
	buffer_load_u16 v30, v33, s[8:11], 0 offen
	buffer_load_u16 v33, v153, s[8:11], 0 offen
	buffer_load_u16 v153, v24, s[8:11], 0 offen
	buffer_load_u16 v161, v22, s[8:11], 0 offen
	buffer_load_u16 v72, v154, s[8:11], 0 offen
	buffer_load_u16 v119, v62, s[8:11], 0 offen
	buffer_load_u16 v62, v64, s[8:11], 0 offen
	buffer_load_u16 v64, v155, s[8:11], 0 offen
	buffer_load_u16 v52, v156, s[8:11], 0 offen
	buffer_load_u16 v53, v157, s[8:11], 0 offen
	buffer_load_u16 v39, v158, s[8:11], 0 offen
	buffer_load_u16 v41, v150, s[8:11], 0 offen
	buffer_load_u16 v22, v151, s[8:11], 0 offen
	buffer_load_u16 v24, v152, s[8:11], 0 offen
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v19, 16, v29
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v29, 16, v139
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s15, v141
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.h, v10.h
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v103, v50, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v150, v19, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s15, s11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v135, v135, v150
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v34, v20, v34 :: v_dual_lshlrev_b32 v139, 16, v140
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v140, 16, v142
	v_lshlrev_b32_e32 v142, 16, v143
	v_lshlrev_b32_e32 v143, 16, v144
	v_lshlrev_b32_e32 v144, 16, v145
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v145, v19, v29
	v_mul_f32_e32 v29, v20, v29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v133, v133, v145
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v145, v20, v146
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v152, v19, v142
	v_mul_f32_e32 v151, v19, v139
	v_mul_f32_e32 v139, v20, v139
	v_dual_mul_f32 v142, v20, v142 :: v_dual_mul_f32 v29, v125, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v129, v129, v152
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v154, v19, v140
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v126, v126, v139
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v139, v19, v147
	v_mul_f32_e32 v147, v20, v147
	v_mul_f32_e32 v125, v19, v146
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v35, v35, v154
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v34, v127, v34
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v121, v121, v142
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v127, v19, v148
	v_mul_f32_e32 v146, v20, v148
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v128, v128, v145
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v134, v134, v151
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v156, v19, v143 :: v_dual_mul_f32 v125, v136, v125
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v127, v131, v127
	v_dual_mul_f32 v123, v123, v146 :: v_dual_mul_f32 v140, v20, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v145, 0xbfb8aa3b, v126
	v_mul_f32_e32 v131, 0xbfb8aa3b, v129
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v155, v19, v144 :: v_dual_mul_f32 v124, v124, v147
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v132, v132, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v145
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v131
	v_mul_f32_e32 v139, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v145, 0, 0x42800000, s3
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v122, v122, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v131, 0, 0x42800000, s5
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v140, v149, v155
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v145, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v120, v120, v156
	v_mul_f32_e32 v147, 0xbfb8aa3b, v122
	v_fmac_f32_e32 v131, 0xbfb8aa3b, v129
	v_dual_mul_f32 v142, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v149, 0xbfb8aa3b, v140
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v147
	v_exp_f32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v142
	v_exp_f32_e32 v145, v145
	v_cndmask_b32_e64 v139, 0, 0x42800000, s4
	v_cndmask_b32_e64 v147, 0, 0x42800000, s6
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v142, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v148, 0xbfb8aa3b, v29 :: v_dual_fmac_f32 v139, 0xbfb8aa3b, v35
	v_fmac_f32_e32 v147, 0xbfb8aa3b, v122
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v131, v131, v157
	v_mul_f32_e32 v146, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v147, v147
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v131, 1.0, v131
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s4
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v148
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v166, null, v131, v131, v129
	v_div_scale_f32 v167, s5, v129, v131, v129
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v147, v147, v158
	v_fmac_f32_e32 v142, 0xbfb8aa3b, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v176, v166
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v139, v139, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v150, 0xbfb8aa3b, v120 :: v_dual_add_f32 v147, 1.0, v147
	v_exp_f32_e32 v142, v142
	v_cndmask_b32_e64 v148, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v139, 1.0, v139
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v145, v145, v155
	v_mul_f32_e32 v136, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v185, -v166, v176, 1.0
	v_div_scale_f32 v164, null, v139, v139, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v145, 1.0, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v142, v142, v151
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v176, v185, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v136
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v175, v164
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v146, 0, 0x42800000, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v142, 1.0, v142 :: v_dual_mul_f32 v185, v167, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v136, 0, 0x42800000, s1
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v158, null, v145, v145, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v151, null, v142, v142, v133
	v_fma_f32 v184, -v164, v175, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v174, v158
	v_rcp_f32_e32 v171, v151
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v150
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v175, v184, v175
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v136, v136
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v193, -v166, v185, v167
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v150, 0, 0x42800000, s8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v168, null, v147, v147, v122
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v183, -v158, v174, 1.0
	v_fma_f32 v180, -v151, v171, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v148, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v177, v168
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v136, v136, v154
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v165, s4, v35, v139, v35
	v_fmac_f32_e32 v171, v180, v171
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v148, v148
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v169, s6, v122, v147, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v184, v165, v175
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, s8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v186, -v168, v177, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v192, -v164, v184, v165
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v148, v148, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v152, vcc_lo, v133, v142, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v177, v186, v177 :: v_dual_fmac_f32 v184, v192, v175
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v148, 1.0, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v180, v152, v171
	v_mul_f32_e32 v186, v169, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v154, null, v148, v148, v29
	v_fma_f32 v188, -v151, v180, v152
	v_div_scale_f32 v155, s0, v29, v148, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v172, v154
	v_fma_f32 v194, -v168, v186, v169
	v_fmac_f32_e32 v180, v188, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v186, v194, v177
	v_fma_f32 v151, -v151, v180, v152
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v181, -v154, v172, 1.0
	v_div_fmas_f32 v151, v151, v171, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v172, v181, v172
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v146, 0xbfb8aa3b, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v151, v142, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v181, v155, v172
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v146, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v133, v135, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v174, v183, v174 :: v_dual_fmac_f32 v185, v193, v176
	v_fma_f32 v189, -v154, v181, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v181, v189, v172
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v146, v146, v162
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v162, s3, v126, v145, v126
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v150, 0xbfb8aa3b, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v152, -v154, v181, v155
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v146, 1.0, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v183, v162, v174
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v150, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v170, null, v146, v146, v121
	v_fma_f32 v191, -v158, v183, v162
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v136, 1.0, v136
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v179, s7, v121, v146, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v178, v170
	v_fmac_f32_e32 v183, v191, v174
	s_delay_alu instid0(VALU_DEP_3)
	v_div_scale_f32 v156, null, v136, v136, v134
	v_div_scale_f32 v157, s1, v134, v136, v134
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v173, v156
	v_fma_f32 v155, -v158, v183, v162
	v_fma_f32 v158, -v168, v186, v169
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v187, -v170, v178, 1.0
	v_fmac_f32_e32 v178, v187, v178
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v182, -v156, v173, 1.0
	v_mul_f32_e32 v187, v179, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v173, v182, v173
	v_fma_f32 v195, -v170, v187, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v182, v157, v173 :: v_dual_fmac_f32 v187, v195, v178
	v_fma_f32 v190, -v156, v182, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v162, -v170, v187, v179
	v_fmac_f32_e32 v182, v190, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v154, -v156, v182, v157
	v_fma_f32 v156, -v164, v184, v165
	v_fma_f32 v157, -v166, v185, v167
	v_div_fmas_f32 v154, v154, v173, v182
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v133, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v142, v152, v172, v181
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v134, v154, v136, v134
	v_div_fmas_f32 v151, v155, v174, v183
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v29, v142, v148, v29
	v_div_fmas_f32 v136, v156, v175, v184
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v126, v151, v145, v126
	v_div_fmas_f32 v135, v157, v176, v185
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v35, v136, v139, v35
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v125, v125, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v134, v158, v177, v186
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v34, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v129, v135, v131, v129
	v_div_fmas_f32 v34, v162, v178, v187
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v138.l, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v122, v134, v147, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v29.h
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v34, v146, v121
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v121, v127, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v123, v123, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.l, v121.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v130.l, v123.h
	v_cmp_o_f32_e64 s5, v123, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v127, 1, v141
	v_add3_u32 v127, v121, v127, 0x7fff
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v116, 16, v161
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v118, v20, v143
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v119, 16, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v139, v19, v116
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v117, v20, v144 :: v_dual_mul_f32 v70, v70, v118
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v67, v67, v139 :: v_dual_lshlrev_b32 v22, 16, v22
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v117, v36, v117
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v126, v128, v126
	v_dual_mul_f32 v128, v132, v35 :: v_dual_and_b32 v35, 1, v138
	v_mul_f32_e32 v122, v124, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v124, 1, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v137.l, v126.h
	v_mov_b16_e64 v10.l, v133.h
	v_add3_u32 v35, v125, v35, 0x7fff
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v124, v29, v124, 0x7fff
	v_and_b32_e32 v34, 1, v137
	v_and_b32_e32 v125, 1, v10
	v_cndmask_b16 v29.h, 0x7fff, v35.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v149
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v126, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v124.h, s1
	v_add3_u32 v124, v133, v125, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v125, 0xbfb8aa3b, v117
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v126, v126
	v_and_b32_e32 v126, 1, v130
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.l, 0x7fff, v124.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v125
	v_ldexp_f32 v124, v150, v163
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v125, 0, 0x42800000, s0
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v117
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v122.h
	v_cmp_o_f32_e64 s4, v122, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v35, 1, v10
	v_mov_b16_e64 v10.l, v128.h
	v_add3_u32 v35, v122, v35, 0x7fff
	v_add3_u32 v122, v123, v126, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v123, 1, v10
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v35.l, 0x7fff, v122.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v122, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v118, v128, v123, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v123, 0xbfb8aa3b, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v128, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v122, 0xbfb8aa3b, v140
	v_exp_f32_e32 v36, v122
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v122, 1.0, v124
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v126, null, v122, v122, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v123, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v36, v36, v124
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v124, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v123, 0xbfb8aa3b, v70 :: v_dual_add_f32 v128, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.h, 0x7fff, v118.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v118, v125
	v_exp_f32_e32 v123, v123
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v127.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v121, -v126, v124, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v115, v118, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v123, v123, v129
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v115, 1.0, v115 :: v_dual_lshlrev_b32 v130, 16, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v118, 1.0, v123 :: v_dual_mul_f32 v113, v20, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v129, null, v115, v115, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v127, null, v118, v118, v70
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v66, v66, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v133, v127
	v_fma_f32 v138, -v127, v133, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v133, v138, v133
	v_div_scale_f32 v125, null, v128, v128, v140
	v_div_scale_f32 v134, s0, v140, v128, v140
	v_div_scale_f32 v138, s1, v70, v118, v70
	v_rcp_f32_e32 v131, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v123, -v125, v131, 1.0
	v_fmac_f32_e32 v131, v123, v131
	v_rcp_f32_e32 v123, v129
	v_fmac_f32_e32 v124, v121, v124
	v_div_scale_f32 v121, vcc_lo, v120, v122, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v137, v134, v131 :: v_dual_mul_f32 v132, v121, v124
	v_fma_f32 v141, -v125, v137, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v135, -v126, v132, v121
	v_dual_fmac_f32 v137, v141, v131 :: v_dual_mul_f32 v116, v20, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v65, v65, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v132, v135, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v135, -v129, v123, 1.0
	v_fma_f32 v121, -v126, v132, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v123, v135, v123
	v_div_scale_f32 v135, s3, v117, v115, v117
	v_mul_f32_e32 v126, v138, v133
	v_div_fmas_f32 v121, v121, v124, v132
	v_fma_f32 v124, -v125, v137, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v139, v135, v123
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v125, -v127, v126, v138
	v_div_fmas_f32 v124, v124, v131, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v132, -v129, v139, v135
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v136, v19, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v126, v125, v133
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v116, v124, v128, v140
	v_fmac_f32_e32 v139, v132, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v114, -v127, v126, v138
	v_fma_f32 v125, -v129, v139, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v114, v114, v133, v126
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v123, v125, v123, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v70, v114, v118, v70
	v_div_fixup_f32 v114, v121, v122, v120
	v_div_fixup_f32 v113, v123, v115, v117
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v115, 16, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v65, v70
	v_dual_mul_f32 v67, v67, v114 :: v_dual_mul_f32 v110, v20, v115
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v70, v19, v115
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v65.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v68, v68, v136
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v61, v61, v110
	v_dual_mul_f32 v63, v63, v70 :: v_dual_lshlrev_b32 v70, 16, v159
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v66, v66, v113 :: v_dual_and_b32 v113, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v110, 0xbfb8aa3b, v61
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v67.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v111, v19, v70
	v_mul_f32_e32 v70, v20, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v112.l, v66.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v68, v116
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v113, v65, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v111, v49, v111 :: v_dual_mul_f32 v70, v55, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v114, 0xbfb8aa3b, v63 :: v_dual_and_b32 v115, 1, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v49.h, 0x7fff, v113.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v115, v67, v115, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v112, 1, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v110
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v110.l, v68.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v112, v66, v112, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v110.h, v10.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v49.l, 0x7fff, v112.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v55, v65, v109
	v_dual_mul_f32 v109, 0xbfb8aa3b, v70 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v113, 1.0, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v109, null, v113, v113, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v65, v65, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v112, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v124, s1, v111, v65, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v117, -v109, v112, 1.0
	v_div_scale_f32 v116, null, v65, v65, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v112, v117, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v118, v116
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v66, v66, v114
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v120, vcc_lo, v63, v113, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v55, v55, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v114, null, v66, v66, v61
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v117, 1.0, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v116, v118, 1.0
	v_rcp_f32_e32 v121, v114
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v125, -v114, v121, 1.0
	v_fmac_f32_e32 v121, v125, v121
	v_div_scale_f32 v122, null, v117, v117, v70
	v_div_scale_f32 v125, s3, v61, v66, v61
	v_fmac_f32_e32 v118, v55, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v123, v122
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v55.h, 0x7fff, v115.h, s0
	v_cmp_o_f32_e64 s0, v68, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v127, v125, v121
	v_mul_f32_e32 v115, v124, v118
	v_fma_f32 v126, -v122, v123, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v123, v126, v123
	v_dual_mul_f32 v67, v120, v112 :: v_dual_and_b32 v110, 1, v110
	v_div_scale_f32 v126, s4, v70, v117, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v110, v68, v110, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v109, v67, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v55.l, 0x7fff, v110.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v68, v112
	v_fma_f32 v68, -v116, v115, v124
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v109, -v109, v67, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v115, v68, v118
	v_fma_f32 v68, -v114, v127, v125
	v_mul_f32_e32 v120, v126, v123
	v_div_fmas_f32 v67, v109, v112, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v109, -v116, v115, v124
	v_fmac_f32_e32 v127, v68, v121
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v112, -v122, v120, v126
	v_div_fixup_f32 v63, v67, v113, v63
	v_div_fmas_f32 v68, v109, v118, v115
	v_fma_f32 v105, -v114, v127, v125
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v65, v68, v65, v111
	v_div_fmas_f32 v105, v105, v121, v127
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v61, v105, v66, v61
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v66, v19, v119
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v120, v112, v123
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v112, v20, v119 :: v_dual_mul_f32 v57, v57, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v109, -v122, v120, v126
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v66, 16, v71
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v54, v54, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v109, v109, v123, v120
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v54, v61
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.h, v10.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v106, v20, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v70, v109, v117, v70
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v56, v56, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v56, v56, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v56.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v56, v56
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v56, v61, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v56, v57, v63 :: v_dual_lshlrev_b32 v57, 16, v69
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v63, v19, v57
	v_dual_mul_f32 v57, v20, v57 :: v_dual_mul_f32 v72, v19, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v50, v50, v63 :: v_dual_mul_f32 v63, v20, v66
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v58, v58, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v57, v46, v57
	v_mul_f32_e32 v47, v47, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v54.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v58, v58, v65 :: v_dual_mul_f32 v65, v19, v66
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v68, 0xbfb8aa3b, v57 :: v_dual_and_b32 v67, 1, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v56.h
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v67, v54, v67, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v51, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v51.l, 0x7fff, v61.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v66
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v51.h, 0x7fff, v67.h, vcc_lo
	v_mov_b16_e32 v65.h, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, s0
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v58.h
	v_cmp_o_f32_e64 s0, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v63, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v65, v58, v65, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v63, v63, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v54
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v54
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v61, v61, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, s1
	v_dual_mul_f32 v46, 0xbfb8aa3b, v47 :: v_dual_add_f32 v61, 1.0, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v61, v61, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v67, v67
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v70, v69
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v102, s1, v54, v61, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v67, v67, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v67, 1.0, v67 :: v_dual_and_b32 v66, 1, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v56, v66, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v68
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v63, v63, v50
	v_div_scale_f32 v58, null, v67, v67, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v71, v68
	v_rcp_f32_e32 v104, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v103, -v68, v71, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v56, 1.0, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v69, v70, 1.0
	v_fma_f32 v105, -v58, v104, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v103, v71
	v_div_scale_f32 v72, null, v56, v56, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v101, v72
	v_fma_f32 v103, -v72, v101, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v101, v103, v101
	v_div_scale_f32 v103, s3, v47, v56, v47
	v_fmac_f32_e32 v70, v46, v70
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.h, 0x7fff, v66.h, vcc_lo
	v_cndmask_b16 v46.l, 0x7fff, v65.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, s0, v50, v63, v50
	v_mul_f32_e32 v107, v103, v101
	v_mul_f32_e32 v65, v102, v70
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v69, v65, v102
	v_dual_mul_f32 v106, v66, v71 :: v_dual_fmac_f32 v65, v99, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v99, -v68, v106, v66
	v_fma_f32 v69, -v69, v65, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v106, v99, v71
	v_fma_f32 v99, -v72, v107, v103
	v_fmac_f32_e32 v104, v105, v104
	v_div_scale_f32 v105, s4, v57, v67, v57
	v_fma_f32 v66, -v68, v106, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v107, v99, v101
	v_div_fmas_f32 v65, v69, v70, v65
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v108, v105, v104
	v_div_fmas_f32 v66, v66, v71, v106
	v_fma_f32 v68, -v72, v107, v103
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v54, v65, v61, v54
	v_fma_f32 v102, -v58, v108, v105
	v_div_fixup_f32 v50, v66, v63, v50
	v_div_fmas_f32 v68, v68, v101, v107
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v47, v68, v56, v47
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v56, 16, v60
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v69, v20, v62 :: v_dual_lshlrev_b32 v64, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v20, v64
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v42, v42, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v40, v70
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v40, v40, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.h, v10.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v108, v102, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v40.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v58, v108, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v58, v58, v104, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v57, v58, v67, v57
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v58, v19, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v43, v43, v58
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v43, v43, v54 :: v_dual_lshlrev_b32 v54, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v58, v19, v54
	v_mul_f32_e32 v54, v20, v54
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v31, v54
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v42, v42, v57 :: v_dual_mul_f32 v57, v19, v56
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v62, v19, v62
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v56, v20, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.l, v42.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v38, v38, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v44, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v95, v37, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v32, v32, v56 :: v_dual_and_b32 v47, 1, v47
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v44, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v50, 1, v10
	v_mov_b16_e32 v10.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v42, v47, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v42, v57, v58 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v50, v40, v50, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s0
	v_mov_b16_e32 v47.l, v44.h
	v_mov_b16_e32 v47.h, v10.h
	v_cndmask_b16 v37.h, 0x7fff, v50.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v58, 1, v10
	v_and_b32_e32 v47, 1, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v50
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v58, v43, v58, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v38
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v44, v47, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v31, v40, v56
	v_mul_f32_e32 v56, 0xbfb8aa3b, v54
	v_exp_f32_e32 v40, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v56, null, v59, v59, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s0
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v40, v40, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v54 :: v_dual_add_f32 v40, 1.0, v40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v50, v50, v60
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v40, v40, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v56, v57, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v61
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v43, v57
	v_div_scale_f32 v43, null, v50, v50, v32
	v_div_scale_f32 v60, s1, v38, v59, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v64, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v61, v62, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v58.h, vcc_lo
	v_cndmask_b16 v31.l, 0x7fff, v47.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v44, v44, v54
	v_dual_mul_f32 v47, v60, v57 :: v_dual_fmac_f32 v62, v63, v62
	v_div_scale_f32 v63, s0, v42, v40, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v65
	v_fma_f32 v66, -v43, v64, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v56, v47, v60
	v_mul_f32_e32 v68, v63, v62
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v64, v66, v64
	v_div_scale_f32 v66, s3, v32, v50, v32
	v_fmac_f32_e32 v47, v67, v57
	v_fma_f32 v69, -v65, v58, 1.0
	v_fma_f32 v67, -v61, v68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v70, v66, v64
	v_fma_f32 v56, -v56, v47, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v69, v58
	v_div_scale_f32 v69, s4, v54, v44, v54
	v_fmac_f32_e32 v68, v67, v62
	v_fma_f32 v60, -v43, v70, v66
	v_div_fmas_f32 v47, v56, v57, v47
	v_mul_f32_e32 v67, v69, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v56, -v61, v68, v63
	v_fmac_f32_e32 v70, v60, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v65, v67, v69
	v_div_fmas_f32 v56, v56, v62, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v43, v70, v66
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v67, v57, v58
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v57, v20, v52
	v_mul_f32_e32 v52, v19, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v43, v43, v64, v70
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v60, -v65, v67, v69
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v26, v26, v57
	v_mul_f32_e32 v28, v28, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v43, v50, v32
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v43, 16, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v60, v58, v67
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v60, v20, v53
	v_mul_f32_e32 v53, v19, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v38, v47, v59, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v44, v58, v44, v54
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v25, v25, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v27, v27, v53 :: v_dual_mul_f32 v26, v26, v44
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v25, v25, v32 :: v_dual_mul_f32 v32, v19, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v44.l, v26.h
	v_mov_b16_e32 v10.l, v25.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v23, v23, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v40, v56, v40, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v25, v25
	v_and_b32_e32 v32, 1, v44
	v_and_b32_e32 v44, 1, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v23
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v40
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v40, 16, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v26, v32, 0x7fff
	v_add3_u32 v44, v25, v44, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v26, v26
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v45, v19, v40
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v27, v38
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v40, v20, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v21, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v32.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v17, v17, v40 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v44.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v26.h
	v_cmp_o_f32_e64 s3, v28, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v42
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v42, v20, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v18, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v43
	v_ldexp_f32 v32, v32, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v26, v45, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_exp_f32_e32 v27, v27
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v32, v32, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v43, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_mov_b16_e32 v38.l, v28.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v18
	v_ldexp_f32 v27, v27, v42
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v10.h
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v40
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v43, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, s0, v23, v32, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v27, v27, v25
	v_fma_f32 v50, -v44, v42, 1.0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v53, v47
	v_div_scale_f32 v57, s1, v25, v27, v25
	v_fmac_f32_e32 v42, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v26, v26, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v28, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v54, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v50, null, v40, v40, v18
	v_fma_f32 v48, -v47, v53, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v44, v54, v43
	v_rcp_f32_e32 v56, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.l, 0x7fff, v38.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v48, v53
	v_rcp_f32_e32 v48, v52
	v_fmac_f32_e32 v54, v28, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v58, v57, v53
	v_fma_f32 v43, -v44, v54, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v50, v56, 1.0
	v_fma_f32 v60, -v47, v58, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v52, v48, 1.0
	v_div_fmas_f32 v42, v43, v42, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v59, v56
	v_div_scale_f32 v59, s4, v18, v40, v18
	v_fmac_f32_e32 v48, v28, v48
	v_div_scale_f32 v28, s5, v17, v26, v17
	v_fmac_f32_e32 v58, v60, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v59, v56
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v60, v28, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v47, v58, v57
	v_fma_f32 v47, -v50, v44, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v52, v60, v28
	v_div_fmas_f32 v43, v43, v53, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v47, v56
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v60, v54, v48 :: v_dual_mul_f32 v53, v20, v41
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v47, v20, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v50, v44, v59
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v41, v19, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v52, v60, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v13, v13, v53 :: v_dual_mul_f32 v14, v14, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v50, v56, v44
	s_mov_b32 vcc_lo, s5
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v15, v15, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v48, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v44, v40, v18
	v_div_fixup_f32 v17, v28, v26, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v26, v19, v39 :: v_dual_mul_f32 v13, v13, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v43, v27, v25
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v25, 16, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v14, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v16, v16, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v42, v32, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.h, v10.h
	v_mov_b16_e32 v23.l, v14.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v16, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v10
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v26, v19, v25
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v15, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v17, v13, v18, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v12, v26
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v18, 16, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v14, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v12
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v23, v19, v18
	v_mul_f32_e32 v18, v20, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s0
	v_mov_b16_e32 v10.l, v15.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v11, v23
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v23, v20, v25
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v0, v0, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v16.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v25, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v9, v9, v23 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v10.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_mul_f32_e32 v18, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v11 :: v_dual_and_b32 v26, 1, v10
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v17, 1, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v13, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v15, v26, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v16, v17, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v13, v13, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v23, v23, v27
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, s0, v12, v13, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v27
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v25, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v23, v23, v11
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v38, null, v18, v18, v9
	v_rcp_f32_e32 v33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v15, null, v25, v25, v0
	v_fmac_f32_e32 v30, v32, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v32, v38
	v_rcp_f32_e32 v41, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v42, v39, v30
	v_fma_f32 v40, -v27, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v44, -v28, v42, v39
	v_fma_f32 v43, -v38, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v11, v23, v11
	v_fma_f32 v47, -v15, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v43, v32
	v_div_scale_f32 v43, s3, v9, v18, v9
	v_mul_f32_e32 v48, v40, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v47, v41
	v_div_scale_f32 v47, s4, v0, v25, v0
	v_fmac_f32_e32 v42, v44, v30
	v_mul_f32_e32 v50, v43, v32
	v_fma_f32 v44, -v27, v48, v40
	v_mul_f32_e32 v52, v47, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v28, v42, v39
	v_fma_f32 v39, -v38, v50, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v44, v33
	v_fma_f32 v44, -v15, v52, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v30, v42
	v_fmac_f32_e32 v50, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v27, v48, v40
	v_fmac_f32_e32 v52, v44, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v38, v50, v43
	v_div_fmas_f32 v27, v27, v33, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v15, -v15, v52, v47
	s_mov_b32 vcc_lo, s3
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v33, v20, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v30, v32, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v20, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v15, v41, v52
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v3, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v30, v18, v9
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v19, v24
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v2, v20
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v15, v25, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v15, v19, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v7, v7, v32 :: v_dual_mul_f32 v2, v2, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v3, v0 :: v_dual_mul_f32 v3, v8, v15
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v27, v23, v11
	v_div_fixup_f32 v11, v28, v13, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.h, v10.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v10.l, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v8
	v_mul_f32_e32 v7, v7, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.l, 0x7fff, v17.h, vcc_lo
	v_and_b32_e32 v8, 1, v9
	v_and_b32_e32 v11, 1, v10
	v_mov_b16_e32 v9.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v8, v0, v8, 0x7fff
	v_add3_u32 v11, v2, v11, 0x7fff
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v2, 16, v196
	v_cmp_o_f32_e64 s2, v3, v3
	v_mov_b32_e32 v13, 0x7632
	v_mov_b16_e32 v10.l, v7.h
	v_add3_u32 v0, v3, v9, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v11.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v11, 0x5410 :: v_dual_and_b32 v10, 1, v10
	v_cmp_o_f32_e64 s1, v7, v7
	v_cndmask_b16 v3.l, 0x7fff, v8.h, s0
	v_cndmask_b32_e32 v13, 0x3276, v13, vcc_lo
	v_cndmask_b32_e32 v11, 0x1054, v11, vcc_lo
	v_add3_u32 v9, v7, v10, 0x7fff
	v_dual_cndmask_b32 v7, v34, v49 :: v_dual_cndmask_b32 v8, v35, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v13, v13, 8, v13
	v_lshl_or_b32 v11, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v2.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v0.h, s2
	s_mov_b32 s0, 0x76543210
	v_and_b32_e32 v13, 0x760076, v13
	v_dual_cndmask_b32 v12, v14, v37 :: v_dual_and_b32 v11, 0x540054, v11
	v_dual_cndmask_b32 v9, v37, v14 :: v_dual_cndmask_b32 v14, v3, v21
	v_cndmask_b32_e32 v3, v21, v3, vcc_lo
	v_permlanex16_b32 v21, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v7, v11, 4, v11
	v_lshl_or_b32 v8, v13, 4, v13
	v_cndmask_b32_e32 v15, v29, v55, vcc_lo
	v_dual_cndmask_b32 v17, v36, v46 :: v_dual_cndmask_b32 v22, v2, v45
	v_cndmask_b32_e32 v2, v45, v2, vcc_lo
	v_cndmask_b32_e32 v19, v31, v26, vcc_lo
	v_cndmask_b32_e32 v0, v49, v34, vcc_lo
	v_cndmask_b32_e32 v10, v51, v35, vcc_lo
	v_cndmask_b32_e32 v20, v26, v31, vcc_lo
	v_and_b32_e32 v25, 0x5040504, v7
	v_and_b32_e32 v26, 0x7060706, v8
	v_permlanex16_b32 v13, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v16, v55, v29, vcc_lo
	v_cndmask_b32_e32 v18, v46, v36, vcc_lo
	v_permlanex16_b32 v24, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v21, v0, v25
	v_perm_b32 v8, v21, v0, v26
	v_perm_b32 v9, v23, v10, v25
	v_perm_b32 v10, v23, v10, v26
	v_add_lshl_u32 v0, v6, v1, 1
	v_perm_b32 v11, v13, v12, v25
	v_perm_b32 v12, v13, v12, v26
	v_perm_b32 v13, v3, v14, v25
	v_perm_b32 v14, v3, v14, v26
	v_add_lshl_u32 v1, v5, v1, 1
	v_perm_b32 v15, v24, v16, v25
	v_perm_b32 v16, v24, v16, v26
	v_perm_b32 v17, v27, v18, v25
	v_perm_b32 v18, v27, v18, v26
	v_perm_b32 v21, v2, v22, v25
	v_perm_b32 v22, v2, v22, v26
	v_add_lshl_u32 v2, v6, v4, 1
	v_perm_b32 v19, v28, v20, v25
	v_perm_b32 v20, v28, v20, v26
	v_add_lshl_u32 v3, v5, v4, 1
	s_clause 0x3
	buffer_store_b128 v[7:10], v0, s[12:15], 0 offen
	buffer_store_b128 v[11:14], v1, s[12:15], 0 offen
	buffer_store_b128 v[15:18], v2, s[12:15], 0 offen
	buffer_store_b128 v[19:22], v3, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 596
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
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 596
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 51460
; TotalNumSgprs: 45
; NumVgprs: 256
; ScratchSize: 596
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 45
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 596
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 344
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
