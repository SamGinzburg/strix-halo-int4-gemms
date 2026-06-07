	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[14:15], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x0
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v157, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v38, 48, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v88, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v87, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v159, 32, v157
	v_lshlrev_b32_e32 v158, 3, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v165, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v89, 0x70, v88
	s_mov_b32 s35, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v39, 0, v165
	v_or_b32_e32 v163, v89, v87
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s33, v157
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	v_or_b32_e32 v3, s36, v158
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s15, 1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s2, s7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s33, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v6, s34, v157
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s2, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s4, 5
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s4, s28, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v162, v1, v158, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s29, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s36, v157
	v_or_b32_e32 v5, s36, v159
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s29
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s36, v162
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s8, s34, s36
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s33, v4
	v_cmp_gt_i32_e64 s3, s33, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v11, 0x80000000, v3, vcc_lo
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v160, v2, 4, v6
	s_add_i32 s6, s14, s8
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s29
	s_and_b32 s4, s2, s29
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v161, s15, 6, v160
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s6, v160
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s36, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s6, v161
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s36, v158
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s4
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s15, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s7, s15, 7
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v10, s15, v2
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s36, v157
	v_or_b32_e32 v14, s36, v159
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v19, s6, v160
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s3
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v18, s36, v162
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v15, 0x80000000, v10, s3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s33, v13
	v_cmp_gt_i32_e64 s4, s33, v14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v20, s6, v161
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v22, s15, v19
	v_add3_u32 v21, s6, s15, v161
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[34:35], v11, s[20:23], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[10:13], v1, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v15, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v18, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_and_b32 s3, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v18, 0x80000000, v19, vcc_lo
	v_cndmask_b32_e64 v23, 0x80000000, v20, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v26, 0x80000000, v22, vcc_lo
	v_cndmask_b32_e64 v30, 0x80000000, v21, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[2:5], v4, s[24:27], 0 offen
	buffer_load_b128 v[6:9], v6, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[36:37], v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v23, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v26, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v30, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v164, v1, v38
	v_add_nc_u32_e32 v38, 0, v164
	s_waitcnt vmcnt(9)
	ds_store_b64 v38, v[34:35] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v39, v[2:5]
	s_waitcnt vmcnt(5)
	ds_store_b128 v39, v[6:9] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v39, v[10:13] offset:16384
	ds_store_b128 v39, v[14:17] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v38, v[36:37] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v39, v[18:21] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v39, v[22:25] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v39, v[26:29] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[30:33] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v33, v89, v87
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v153, v87, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v90, 0x80, v33
	v_or_b32_e32 v92, 0x100, v33
	v_or_b32_e32 v94, 0x180, v33
	v_or_b32_e32 v95, 0x200, v33
	v_or_b32_e32 v98, 0x280, v33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v154, 16, v153
	v_xor_b32_e32 v155, 32, v153
	v_xor_b32_e32 v156, 48, v153
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v100, 0x300, v33
	v_or_b32_e32 v102, 0x380, v33
	v_or_b32_e32 v104, 0x400, v33
	v_or_b32_e32 v106, 0x480, v33
	v_or_b32_e32 v108, 0x500, v33
	v_or_b32_e32 v110, 0x580, v33
	v_or_b32_e32 v112, 0x600, v33
	v_or_b32_e32 v114, 0x680, v33
	v_or_b32_e32 v116, 0x700, v33
	v_or_b32_e32 v118, 0x780, v33
	v_or_b32_e32 v91, 0x800, v33
	v_or_b32_e32 v93, 0x880, v33
	v_or_b32_e32 v96, 0x900, v33
	v_or_b32_e32 v97, 0x980, v33
	v_or_b32_e32 v99, 0xa00, v33
	v_or_b32_e32 v101, 0xa80, v33
	v_or_b32_e32 v103, 0xb00, v33
	v_or_b32_e32 v105, 0xb80, v33
	v_or_b32_e32 v107, 0xc00, v33
	v_or_b32_e32 v109, 0xc80, v33
	v_or_b32_e32 v111, 0xd00, v33
	v_or_b32_e32 v113, 0xd80, v33
	v_or_b32_e32 v115, 0xe00, v33
	v_or_b32_e32 v117, 0xe80, v33
	v_or_b32_e32 v119, 0xf00, v33
	v_or_b32_e32 v120, 0xf80, v33
	v_or_b32_e32 v121, 0x1000, v33
	v_or_b32_e32 v122, 0x1080, v33
	v_or_b32_e32 v123, 0x1100, v33
	v_or_b32_e32 v124, 0x1180, v33
	v_or_b32_e32 v125, 0x1200, v33
	v_or_b32_e32 v126, 0x1280, v33
	v_or_b32_e32 v127, 0x1300, v33
	v_or_b32_e32 v128, 0x1380, v33
	v_or_b32_e32 v129, 0x1400, v33
	v_or_b32_e32 v130, 0x1480, v33
	v_or_b32_e32 v131, 0x1500, v33
	v_or_b32_e32 v132, 0x1580, v33
	v_or_b32_e32 v133, 0x1600, v33
	v_or_b32_e32 v134, 0x1680, v33
	v_or_b32_e32 v135, 0x1700, v33
	v_or_b32_e32 v136, 0x1780, v33
	v_or_b32_e32 v137, 0x1800, v33
	v_or_b32_e32 v138, 0x1880, v33
	v_or_b32_e32 v139, 0x1900, v33
	v_or_b32_e32 v140, 0x1980, v33
	v_or_b32_e32 v141, 0x1a00, v33
	v_or_b32_e32 v142, 0x1a80, v33
	v_or_b32_e32 v143, 0x1b00, v33
	v_or_b32_e32 v144, 0x1b80, v33
	v_or_b32_e32 v145, 0x1c00, v33
	v_or_b32_e32 v146, 0x1c80, v33
	v_or_b32_e32 v147, 0x1d00, v33
	v_or_b32_e32 v148, 0x1d80, v33
	v_or_b32_e32 v149, 0x1e00, v33
	v_or_b32_e32 v150, 0x1e80, v33
	v_or_b32_e32 v151, 0x1f00, v33
	v_or_b32_e32 v152, 0x1f80, v33
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr155
                                        ; implicit-def: $vgpr156
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $vgpr148
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr152
.LBB0_3:                                ; %Flow176
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v1, 48, v1
	v_or_b32_e32 v90, 0x80, v163
	v_or_b32_e32 v92, 0x100, v163
	v_or_b32_e32 v94, 0x180, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v153, v87, 6, v1
	v_or_b32_e32 v95, 0x200, v163
	v_or_b32_e32 v98, 0x280, v163
	v_or_b32_e32 v100, 0x300, v163
	v_or_b32_e32 v102, 0x380, v163
	v_xor_b32_e32 v154, 16, v153
	v_xor_b32_e32 v155, 32, v153
	v_xor_b32_e32 v156, 48, v153
	v_or_b32_e32 v104, 0x400, v163
	v_or_b32_e32 v106, 0x480, v163
	v_or_b32_e32 v108, 0x500, v163
	v_or_b32_e32 v110, 0x580, v163
	v_or_b32_e32 v112, 0x600, v163
	v_or_b32_e32 v114, 0x680, v163
	v_or_b32_e32 v116, 0x700, v163
	v_or_b32_e32 v118, 0x780, v163
	v_or_b32_e32 v91, 0x800, v163
	v_or_b32_e32 v93, 0x880, v163
	v_or_b32_e32 v96, 0x900, v163
	v_or_b32_e32 v97, 0x980, v163
	v_or_b32_e32 v99, 0xa00, v163
	v_or_b32_e32 v101, 0xa80, v163
	v_or_b32_e32 v103, 0xb00, v163
	v_or_b32_e32 v105, 0xb80, v163
	v_or_b32_e32 v107, 0xc00, v163
	v_or_b32_e32 v109, 0xc80, v163
	v_or_b32_e32 v111, 0xd00, v163
	v_or_b32_e32 v113, 0xd80, v163
	v_or_b32_e32 v115, 0xe00, v163
	v_or_b32_e32 v117, 0xe80, v163
	v_or_b32_e32 v119, 0xf00, v163
	v_or_b32_e32 v120, 0xf80, v163
	v_or_b32_e32 v121, 0x1000, v163
	v_or_b32_e32 v122, 0x1080, v163
	v_or_b32_e32 v123, 0x1100, v163
	v_or_b32_e32 v124, 0x1180, v163
	v_or_b32_e32 v125, 0x1200, v163
	v_or_b32_e32 v126, 0x1280, v163
	v_or_b32_e32 v127, 0x1300, v163
	v_or_b32_e32 v128, 0x1380, v163
	v_or_b32_e32 v129, 0x1400, v163
	v_or_b32_e32 v130, 0x1480, v163
	v_or_b32_e32 v131, 0x1500, v163
	v_or_b32_e32 v132, 0x1580, v163
	v_or_b32_e32 v133, 0x1600, v163
	v_or_b32_e32 v134, 0x1680, v163
	v_or_b32_e32 v135, 0x1700, v163
	v_or_b32_e32 v136, 0x1780, v163
	v_or_b32_e32 v137, 0x1800, v163
	v_or_b32_e32 v138, 0x1880, v163
	v_or_b32_e32 v139, 0x1900, v163
	v_or_b32_e32 v140, 0x1980, v163
	v_or_b32_e32 v141, 0x1a00, v163
	v_or_b32_e32 v142, 0x1a80, v163
	v_or_b32_e32 v143, 0x1b00, v163
	v_or_b32_e32 v144, 0x1b80, v163
	v_or_b32_e32 v145, 0x1c00, v163
	v_or_b32_e32 v146, 0x1c80, v163
	v_or_b32_e32 v147, 0x1d00, v163
	v_or_b32_e32 v148, 0x1d80, v163
	v_or_b32_e32 v149, 0x1e00, v163
	v_or_b32_e32 v150, 0x1e80, v163
	v_or_b32_e32 v151, 0x1f00, v163
	v_or_b32_e32 v152, 0x1f80, v163
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v55, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s5, 6
	s_add_i32 s36, s36, 64
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s35, s4
	s_mov_b32 s39, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s40, s0
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s39, 6
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v167, s1, v163
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s36, s0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v166, s35, v163
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s0, v158
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s1, s0, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s0, v157
	v_or_b32_e32 v4, s0, v159
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s0, v162
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s0, s1, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s40, v153
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s35, s0, s15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s0, v160
	v_add_nc_u32_e32 v7, s0, v161
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s33, v3
	v_cmp_gt_i32_e64 s1, s33, v4
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s35, v160
	v_add_nc_u32_e32 v3, s35, v161
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v4, 0x80000000, v5, vcc_lo
	v_add_nc_u32_e32 v168, s40, v154
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v173, 0x80000000, v6, s0
	v_cndmask_b32_e64 v176, 0x80000000, v7, s1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v177, 0x80000000, v2, s0
	v_cndmask_b32_e64 v178, 0x80000000, v3, s1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[85:86], v4, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[41:44], v1 offset:1024
	ds_load_b128 v[45:48], v168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v166 offset:1664
	ds_load_u8 v2, v166 offset:1536
	ds_load_u8 v3, v166 offset:1920
	ds_load_u8 v4, v166 offset:1792
	ds_load_u8 v5, v166 offset:1152
	ds_load_u8 v6, v166 offset:1024
	ds_load_u8 v7, v166 offset:1408
	ds_load_u8 v8, v166 offset:1280
	ds_load_u8 v9, v166 offset:640
	ds_load_u8 v10, v166 offset:512
	ds_load_u8 v11, v166 offset:896
	ds_load_u8 v12, v166 offset:768
	ds_load_u8 v13, v166 offset:128
	ds_load_u8 v14, v166
	ds_load_u8 v15, v166 offset:384
	ds_load_u8 v16, v166 offset:256
	ds_load_u8 v169, v166 offset:3712
	ds_load_u8 v170, v166 offset:3584
	ds_load_u8 v171, v166 offset:3968
	ds_load_u8 v174, v166 offset:3840
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v167 offset:1664
	ds_load_u8 v18, v167 offset:1536
	ds_load_u8 v19, v167 offset:1920
	ds_load_u8 v20, v167 offset:1792
	ds_load_u8 v21, v167 offset:1152
	ds_load_u8 v22, v167 offset:1024
	ds_load_u8 v23, v167 offset:1408
	ds_load_u8 v24, v167 offset:1280
	ds_load_u8 v29, v167 offset:640
	ds_load_u8 v30, v167 offset:512
	ds_load_u8 v31, v167 offset:896
	ds_load_u8 v32, v167 offset:768
	ds_load_u8 v49, v167 offset:128
	ds_load_u8 v50, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v167 offset:384
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v167 offset:256
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v175, v166 offset:3200
	ds_load_u8 v180, v166 offset:3456
	ds_load_u8 v181, v166 offset:3328
	ds_load_u8 v179, v166 offset:3072
	ds_load_u8 v182, v166 offset:2688
	ds_load_u8 v183, v166 offset:2560
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v9, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v14, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v16, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v40, s11 :: v_dual_mov_b32 v39, s10
	v_dual_mov_b32 v38, s9 :: v_dual_mov_b32 v37, s8
	v_dual_mov_b32 v36, s7 :: v_dual_mov_b32 v35, s6
	v_dual_mov_b32 v34, s5 :: v_dual_mov_b32 v33, s4
	v_lshl_or_b32 v12, v3, 16, v1
	v_lshl_or_b32 v11, v6, 16, v5
	v_lshl_or_b32 v10, v8, 16, v7
	v_lshl_or_b32 v9, v13, 16, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v52, v15, 16, v14
	v_lshl_or_b32 v51, v17, 16, v16
	v_lshl_or_b32 v50, v19, 16, v18
	v_lshl_or_b32 v49, v2, 16, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[9:12], v[41:44], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[41:44], v[33:40] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v166 offset:2944
	ds_load_u8 v38, v166 offset:2816
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[33:36], v168 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v166 offset:2176
	ds_load_u8 v42, v166 offset:2048
	ds_load_u8 v43, v166 offset:2432
	ds_load_u8 v44, v166 offset:2304
	v_perm_b32 v39, v170, v169, 0xc0c0004
	v_perm_b32 v40, v174, v171, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v50, v179, v175, 0xc0c0004
	v_perm_b32 v51, v181, v180, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v49, v167 offset:3712
	ds_load_u8 v168, v167 offset:3840
	ds_load_u8 v169, v167 offset:3200
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v40, 16, v39
	v_lshl_or_b32 v39, v51, 16, v50
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v50, v167 offset:3584
	ds_load_u8 v51, v167 offset:3968
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v52, v183, v182, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v172, s40, v155
	s_mov_b32 s1, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s38, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s3, 2
	s_mov_b32 s35, s30
	s_cselect_b32 s38, s3, 0
	s_mov_b32 s0, s31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v37, 16, v52
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v37, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v42, v44, v43, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v167 offset:3328
	ds_load_u8 v43, v167 offset:2688
	ds_load_u8 v52, v167 offset:3072
	ds_load_u8 v170, v167 offset:3456
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s3, s38, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v42, 16, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v42, v167 offset:2560
	ds_load_u8 v44, v167 offset:2944
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s30, s38, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s3, s3, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s30, s30, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[45:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[33:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v167 offset:2816
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v174, v166 offset:5760
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v171, v167 offset:2176
	ds_load_u8 v175, v167 offset:2048
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v50, v49, 0xc0c0004
	ds_load_u8 v49, v167 offset:2432
	ds_load_u8 v50, v167 offset:2304
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v39, v168, v51, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s3, 0x8000
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v40, v39, 16, v38
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v51, v52, v169, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v41, v170, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v42, v43, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v166 offset:5888
	ds_load_u8 v43, v166 offset:5248
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v39, v41, 16, v51
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v37, v37, v44, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v166 offset:5632
	ds_load_u8 v179, v166 offset:6016
	ds_load_u8 v44, v166 offset:5120
	ds_load_u8 v180, v166 offset:5504
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v38, v37, 16, v38
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v175, v171, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v175, v166 offset:5376
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v37, v49, 16, v37
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[168:171], v172
	ds_load_b128 v[49:52], v172 offset:1024
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[45:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v166 offset:4736
	ds_load_u8 v34, v166 offset:4608
	ds_load_u8 v37, v166 offset:4992
	ds_load_u8 v38, v166 offset:4864
	ds_load_u8 v39, v166 offset:4224
	ds_load_u8 v40, v166 offset:4096
	ds_load_u8 v45, v166 offset:4480
	ds_load_u8 v46, v166 offset:4352
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v41, v174, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v36, v42, v179, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v167 offset:5760
	ds_load_u8 v42, v167 offset:5632
	ds_load_u8 v47, v167 offset:5248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v44, v175, v180, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v172, v167 offset:4224
	ds_load_u8 v179, v167 offset:4096
	ds_load_u8 v180, v167 offset:4480
	ds_load_u8 v181, v167 offset:4352
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v35, v44, 16, v43
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v34, v38, v37, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v167 offset:5120
	ds_load_u8 v38, v167 offset:5504
	ds_load_u8 v48, v167 offset:5376
	ds_load_u8 v43, v167 offset:6016
	ds_load_u8 v44, v167 offset:5888
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v46, v45, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v167 offset:4736
	ds_load_u8 v45, v167 offset:4608
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v40, 16, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v167 offset:4992
	ds_load_u8 v46, v167 offset:4864
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[168:171], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[49:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[33:36], v173, s[24:27], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v37, v47, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v38, v48, v38, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v42, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v174, v38, 16, v37
	v_lshl_or_b32 v175, v42, 16, v41
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v45, v39, 0xc0c0004
	v_perm_b32 v45, v179, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v40, 0xc0c0004
	v_perm_b32 v46, v181, v180, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[37:40], v176, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v176, s40, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s40, s39, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v173, v44, 16, v43
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[41:44], v177, s[24:27], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v172, v46, 16, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[45:48], v178, s[24:27], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[172:175], v[168:171], v[9:16] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v168, v166 offset:7808
	ds_load_u8 v169, v166 offset:7680
	ds_load_u8 v170, v166 offset:8064
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[172:175], v[49:52], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v166 offset:7936
	ds_load_u8 v50, v166 offset:7296
	ds_load_u8 v51, v166 offset:7168
	ds_load_u8 v52, v166 offset:7552
	ds_load_u8 v171, v166 offset:7424
	ds_load_u8 v172, v166 offset:6784
	ds_load_u8 v173, v166 offset:6656
	ds_load_u8 v174, v166 offset:7040
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v166 offset:6912
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v171, v52, 0xc0c0004
	v_perm_b32 v49, v49, v170, 0xc0c0004
	ds_load_u8 v170, v166 offset:6272
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v171, v167 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v51, v51, 16, v50
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v173, v172, 0xc0c0004
	v_lshl_or_b32 v52, v49, 16, v168
	ds_load_u8 v49, v166 offset:6144
	ds_load_u8 v168, v166 offset:6528
	ds_load_u8 v166, v166 offset:6400
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v172, v167 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v169, v169, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v169, 16, v50
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v169, v167 offset:8064
	ds_load_u8 v173, v167 offset:7936
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v49, v49, v170, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v170, v167 offset:7296
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v166, v166, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v166, 16, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v169, v173, v169, 0xc0c0004
	ds_load_u8 v173, v167 offset:7424
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v167 offset:7552
	ds_load_u8 v168, v167 offset:7168
	v_lshl_or_b32 v169, v169, 16, v171
	ds_load_u8 v166, v167 offset:7040
	ds_load_u8 v171, v167 offset:6912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v168, v168, v170, 0xc0c0004
	ds_load_u8 v170, v167 offset:6784
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v167 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v171, v166, 0xc0c0004
	ds_load_u8 v171, v167 offset:6144
	v_lshl_or_b32 v168, v172, 16, v168
	ds_load_u8 v172, v167 offset:6272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v173, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v172, 0xc0c0004
	ds_load_u8 v172, v167 offset:6528
	ds_load_u8 v167, v167 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v167, v172, 0xc0c0004
	v_lshl_or_b32 v167, v166, 16, v170
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v166, v172, 16, v171
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[170:173], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[166:169], v[170:173], v[9:16] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v176 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v78, v78, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[170:173], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[166:169], v[170:173], v[25:32] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v77, v77, v17 :: v_dual_add_f32 v72, v72, v20
	v_add_f32_e32 v71, v71, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v55, v55, v7 :: v_dual_add_nc_u32 v174, s3, v164
	v_dual_add_f32 v80, v80, v4 :: v_dual_add_nc_u32 v175, s30, v165
	v_dual_add_f32 v62, v62, v22 :: v_dual_add_f32 v61, v61, v21
	v_dual_add_f32 v54, v54, v24 :: v_dual_add_f32 v53, v53, v23
	v_dual_add_f32 v84, v84, v2 :: v_dual_add_f32 v83, v83, v1
	v_dual_add_f32 v79, v79, v3 :: v_dual_add_f32 v68, v68, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v73, v73, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v67, v67, v5 :: v_dual_add_f32 v56, v56, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v69, v69, v11 :: v_dual_add_f32 v74, v74, v10
	v_dual_add_f32 v63, v63, v13 :: v_dual_add_f32 v70, v70, v12
	v_dual_add_f32 v57, v57, v15 :: v_dual_add_f32 v64, v64, v14
	v_dual_add_f32 v81, v81, v25 :: v_dual_add_f32 v58, v58, v16
	v_dual_add_f32 v75, v75, v27 :: v_dual_add_f32 v82, v82, v26
	v_dual_add_f32 v65, v65, v29 :: v_dual_add_f32 v76, v76, v28
	v_dual_add_f32 v59, v59, v31 :: v_dual_add_f32 v66, v66, v30
	v_add_f32_e32 v60, v60, v32
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s3, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s39, s37
	s_mov_b32 s39, s40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v174, v[85:86] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v175, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v175, v[37:40] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v175, v[41:44] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v175, v[45:48] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v33, v163
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v73, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v74, v73
	v_mov_b32_e32 v63, v73
	v_mov_b32_e32 v61, v73
	v_mov_b32_e32 v69, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v71, v73 :: v_dual_mov_b32 v72, v74
	v_dual_mov_b32 v78, v74 :: v_dual_mov_b32 v77, v73
	v_mov_b32_e32 v64, v74
	v_mov_b32_e32 v62, v74
	v_dual_mov_b32 v70, v74 :: v_dual_mov_b32 v57, v73
	v_dual_mov_b32 v58, v74 :: v_dual_mov_b32 v53, v73
	v_mov_b32_e32 v54, v74
	v_dual_mov_b32 v82, v74 :: v_dual_mov_b32 v81, v73
	v_dual_mov_b32 v84, v74 :: v_dual_mov_b32 v83, v73
	v_dual_mov_b32 v65, v73 :: v_dual_mov_b32 v66, v74
	v_dual_mov_b32 v67, v73 :: v_dual_mov_b32 v68, v74
	v_dual_mov_b32 v76, v74 :: v_dual_mov_b32 v75, v73
	v_dual_mov_b32 v80, v74 :: v_dual_mov_b32 v79, v73
	v_dual_mov_b32 v59, v73 :: v_dual_mov_b32 v60, v74
	v_dual_mov_b32 v55, v73 :: v_dual_mov_b32 v56, v74
	s_add_i32 s3, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s0, v153
	v_add_nc_u32_e32 v2, s0, v154
	v_add_nc_u32_e32 v3, s0, v155
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[5:8], v1 offset:1024
	v_add_nc_u32_e32 v1, s0, v156
	ds_load_b128 v[25:28], v2
	ds_load_b128 v[13:16], v2 offset:1024
	ds_load_b128 v[21:24], v3
	ds_load_b128 v[9:12], v3 offset:1024
	ds_load_b128 v[17:20], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v1 offset:1024
	v_cndmask_b32_e64 v34, 0, 1, s29
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v34
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v44, s35, v114
	v_add_nc_u32_e32 v45, s35, v112
	v_add_nc_u32_e32 v42, s35, v118
	v_add_nc_u32_e32 v48, s35, v106
	v_add_nc_u32_e32 v43, s35, v116
	v_add_nc_u32_e32 v46, s35, v110
	v_add_nc_u32_e32 v47, s35, v108
	v_add_nc_u32_e32 v49, s35, v104
	v_add_nc_u32_e32 v157, s35, v102
	v_add_nc_u32_e32 v158, s35, v100
	v_add_nc_u32_e32 v159, s35, v98
	v_add_nc_u32_e32 v160, s35, v95
	v_add_nc_u32_e32 v161, s35, v94
	v_add_nc_u32_e32 v162, s35, v92
	v_add_nc_u32_e32 v163, s35, v90
	v_add_nc_u32_e32 v164, s35, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v42, v42
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v43, v43
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v157, v157
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v158, v158
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v186, s35, v117
	v_add_nc_u32_e32 v187, s35, v115
	v_add_nc_u32_e32 v184, s35, v120
	v_add_nc_u32_e32 v190, s35, v109
	v_add_nc_u32_e32 v185, s35, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v188, s35, v113
	v_add_nc_u32_e32 v189, s35, v111
	v_add_nc_u32_e32 v191, s35, v107
	v_add_nc_u32_e32 v192, s35, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v43, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v160, v159, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v48, s35, v93
	v_add_nc_u32_e32 v49, s35, v91
	v_add_nc_u32_e32 v193, s35, v103
	v_add_nc_u32_e32 v194, s35, v101
	v_add_nc_u32_e32 v195, s35, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v158, v157, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s35, v97
	v_add_nc_u32_e32 v197, s35, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v160, v42, 16, v44
	v_lshl_or_b32 v159, v45, 16, v43
	v_lshl_or_b32 v158, v47, 16, v46
	v_perm_b32 v42, v164, v163, 0xc0c0004
	v_perm_b32 v43, v162, v161, 0xc0c0004
	ds_load_u8 v44, v186
	ds_load_u8 v45, v187
	ds_load_u8 v46, v184
	ds_load_u8 v47, v190
	ds_load_u8 v161, v191
	ds_load_u8 v162, v188
	ds_load_u8 v163, v189
	ds_load_u8 v164, v185
	ds_load_u8 v184, v194
	ds_load_u8 v185, v195
	ds_load_u8 v186, v192
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v187, v196
	ds_load_u8 v188, v197
	ds_load_u8 v189, v193
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s35, v134
	v_add_nc_u32_e32 v37, s35, v133
	v_add_nc_u32_e32 v34, s35, v136
	v_add_nc_u32_e32 v40, s35, v130
	v_add_nc_u32_e32 v41, s35, v129
	v_add_nc_u32_e32 v35, s35, v135
	v_add_nc_u32_e32 v38, s35, v132
	v_add_nc_u32_e32 v39, s35, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v190, v36
	ds_load_u8 v191, v37
	ds_load_u8 v192, v34
	ds_load_u8 v193, v40
	ds_load_u8 v194, v41
	ds_load_u8 v195, v38
	ds_load_u8 v196, v39
	ds_load_u8 v197, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v178, s35, v126
	v_add_nc_u32_e32 v179, s35, v125
	v_add_nc_u32_e32 v176, s35, v128
	v_add_nc_u32_e32 v182, s35, v122
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v177, s35, v127
	v_add_nc_u32_e32 v180, s35, v124
	v_add_nc_u32_e32 v181, s35, v123
	v_add_nc_u32_e32 v183, s35, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s35, v150
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v161, v161, v47, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v185, v189, v186, 0xc0c0004
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	ds_load_u8 v176, v176
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v177, v177
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v85, s35, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v41, s11 :: v_dual_add_nc_u32 v50, s35, v152
	v_dual_mov_b32 v35, s5 :: v_dual_add_nc_u32 v166, s35, v146
	v_dual_mov_b32 v40, s10 :: v_dual_add_nc_u32 v51, s35, v151
	v_dual_mov_b32 v37, s7 :: v_dual_add_nc_u32 v86, s35, v148
	v_dual_mov_b32 v34, s4 :: v_dual_add_nc_u32 v167, s35, v145
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v169, s35, v143
	v_add_nc_u32_e32 v170, s35, v142
	v_add_nc_u32_e32 v171, s35, v141
	v_add_nc_u32_e32 v172, s35, v140
	v_add_nc_u32_e32 v173, s35, v139
	v_add_nc_u32_e32 v174, s35, v138
	v_add_nc_u32_e32 v175, s35, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v36, s6 :: v_dual_add_nc_u32 v165, s35, v147
	v_dual_mov_b32 v39, s9 :: v_dual_add_nc_u32 v168, s35, v144
	v_mov_b32_e32 v38, s8
	v_perm_b32 v187, v188, v187, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v161
	v_lshl_or_b32 v162, v185, 16, v184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v191, v190, 0xc0c0004
	ds_load_u8 v52, v52
	ds_load_u8 v85, v85
	ds_load_u8 v50, v50
	ds_load_u8 v188, v166
	ds_load_u8 v189, v167
	ds_load_u8 v86, v86
	ds_load_u8 v190, v165
	ds_load_u8 v51, v51
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	ds_load_u8 v191, v168
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v169, v169
	v_lshl_or_b32 v157, v43, 16, v42
	v_perm_b32 v198, v45, v44, 0xc0c0004
	v_perm_b32 v164, v164, v46, 0xc0c0004
	v_perm_b32 v186, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v185, v197, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[157:160], v[29:32], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v164, 16, v198
	v_lshl_or_b32 v161, v187, 16, v186
	v_perm_b32 v186, v194, v193, 0xc0c0004
	v_perm_b32 v187, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v165, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v166, v177, v176, 0xc0c0004
	v_perm_b32 v176, v183, v182, 0xc0c0004
	v_perm_b32 v177, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[157:160], v[5:8], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v168, v185, 16, v184
	v_lshl_or_b32 v167, v187, 16, v186
	v_lshl_or_b32 v166, v166, 16, v165
	v_lshl_or_b32 v165, v177, 16, v176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v52, v85, v52, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v51, v189, v188, 0xc0c0004
	v_perm_b32 v85, v190, v86, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v86, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v191, 0xc0c0004
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v173, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[161:164], v[13:16], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[161:164], v[25:28], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v172, v50, 16, v52
	v_lshl_or_b32 v171, v85, 16, v51
	v_lshl_or_b32 v170, v169, 16, v86
	v_lshl_or_b32 v169, v173, 16, v174
	v_wmma_i32_16x16x16_iu8 v[34:41], v[165:168], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[165:168], v[21:24], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[169:172], v[1:4], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[169:172], v[17:20], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v84, v84, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v35, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v72, v72, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v45, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v44, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v83, v83, v34 :: v_dual_add_f32 v80, v80, v37
	v_add_f32_e32 v79, v79, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v34, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v68, v68, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v38, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v62, v62, v45 :: v_dual_add_f32 v61, v61, v46
	v_dual_add_f32 v54, v54, v47 :: v_dual_add_f32 v53, v53, v44
	v_dual_add_f32 v67, v67, v34 :: v_dual_add_f32 v56, v56, v35
	v_dual_add_f32 v55, v55, v36 :: v_dual_add_f32 v78, v78, v37
	v_add_f32_e32 v77, v77, v38
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v44, s1, v114
	v_add_nc_u32_e32 v45, s1, v112
	v_add_nc_u32_e32 v42, s1, v118
	v_add_nc_u32_e32 v48, s1, v106
	v_add_nc_u32_e32 v43, s1, v116
	v_add_nc_u32_e32 v46, s1, v110
	v_add_nc_u32_e32 v47, s1, v108
	v_add_nc_u32_e32 v49, s1, v104
	v_add_nc_u32_e32 v157, s1, v102
	v_add_nc_u32_e32 v158, s1, v100
	v_add_nc_u32_e32 v159, s1, v98
	v_add_nc_u32_e32 v160, s1, v95
	v_add_nc_u32_e32 v180, s1, v94
	v_add_nc_u32_e32 v181, s1, v92
	v_add_nc_u32_e32 v182, s1, v90
	v_add_nc_u32_e32 v183, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v42, v42
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v43, v43
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v157, v157
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v158, v158
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v186, s1, v117
	v_add_nc_u32_e32 v187, s1, v115
	v_add_nc_u32_e32 v184, s1, v120
	v_add_nc_u32_e32 v190, s1, v109
	v_add_nc_u32_e32 v185, s1, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v188, s1, v113
	v_add_nc_u32_e32 v189, s1, v111
	v_add_nc_u32_e32 v191, s1, v107
	v_add_nc_u32_e32 v36, s1, v134
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v43, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v160, v159, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v48, s1, v93
	v_add_nc_u32_e32 v49, s1, v91
	v_add_nc_u32_e32 v174, s1, v126
	v_add_nc_u32_e32 v192, s1, v105
	v_add_nc_u32_e32 v193, s1, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v158, v157, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v194, s1, v101
	v_add_nc_u32_e32 v195, s1, v99
	v_add_nc_u32_e32 v196, s1, v97
	v_add_nc_u32_e32 v197, s1, v96
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v160, v42, 16, v44
	v_lshl_or_b32 v159, v45, 16, v43
	v_lshl_or_b32 v158, v47, 16, v46
	v_perm_b32 v42, v183, v182, 0xc0c0004
	v_perm_b32 v43, v181, v180, 0xc0c0004
	ds_load_u8 v44, v186
	ds_load_u8 v45, v187
	ds_load_u8 v46, v184
	ds_load_u8 v47, v190
	ds_load_u8 v180, v191
	ds_load_u8 v181, v188
	ds_load_u8 v182, v189
	ds_load_u8 v183, v185
	ds_load_u8 v184, v194
	ds_load_u8 v185, v195
	ds_load_u8 v186, v192
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v187, v196
	ds_load_u8 v188, v197
	ds_load_u8 v189, v193
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s1, v133
	v_add_nc_u32_e32 v175, s1, v125
	v_add_nc_u32_e32 v34, s1, v136
	v_add_nc_u32_e32 v172, s1, v128
	v_add_nc_u32_e32 v40, s1, v130
	v_add_nc_u32_e32 v178, s1, v122
	v_add_nc_u32_e32 v41, s1, v129
	v_add_nc_u32_e32 v173, s1, v127
	v_add_nc_u32_e32 v176, s1, v124
	v_add_nc_u32_e32 v177, s1, v123
	v_add_nc_u32_e32 v179, s1, v121
	v_add_nc_u32_e32 v35, s1, v135
	v_add_nc_u32_e32 v38, s1, v132
	v_add_nc_u32_e32 v39, s1, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v190, v36
	ds_load_u8 v191, v37
	ds_load_u8 v192, v34
	ds_load_u8 v193, v40
	ds_load_u8 v194, v41
	ds_load_u8 v195, v38
	ds_load_u8 v196, v39
	ds_load_u8 v197, v35
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v172, v172
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	ds_load_u8 v176, v176
	ds_load_u8 v177, v177
	ds_load_u8 v173, v173
	s_mov_b32 s4, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v164, s1, v144
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v52, s1, v150
	v_add_nc_u32_e32 v85, s1, v149
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v41, s11 :: v_dual_add_nc_u32 v50, s1, v152
	v_dual_mov_b32 v35, s5 :: v_dual_add_nc_u32 v162, s1, v146
	v_dual_mov_b32 v40, s10 :: v_dual_add_nc_u32 v51, s1, v151
	v_dual_mov_b32 v37, s7 :: v_dual_add_nc_u32 v86, s1, v148
	v_dual_mov_b32 v36, s6 :: v_dual_add_nc_u32 v161, s1, v147
	v_dual_mov_b32 v34, s4 :: v_dual_add_nc_u32 v163, s1, v145
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v165, s1, v143
	v_add_nc_u32_e32 v166, s1, v142
	v_add_nc_u32_e32 v167, s1, v141
	v_add_nc_u32_e32 v168, s1, v140
	v_add_nc_u32_e32 v169, s1, v139
	v_add_nc_u32_e32 v170, s1, v138
	v_add_nc_u32_e32 v171, s1, v137
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v39, s9 :: v_dual_mov_b32 v38, s8
	ds_load_u8 v52, v52
	ds_load_u8 v85, v85
	ds_load_u8 v50, v50
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v86, v86
	ds_load_u8 v161, v161
	ds_load_u8 v51, v51
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v165, v165
	v_lshl_or_b32 v157, v43, 16, v42
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v198, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v183, v183, v46, 0xc0c0004
	v_perm_b32 v180, v180, v47, 0xc0c0004
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v182, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v184, v189, v186, 0xc0c0004
	v_perm_b32 v185, v49, v48, 0xc0c0004
	v_perm_b32 v186, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[157:160], v[29:32], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v183, 16, v198
	v_lshl_or_b32 v31, v181, 16, v180
	v_lshl_or_b32 v30, v184, 16, v182
	v_lshl_or_b32 v29, v186, 16, v185
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v180, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v181, v197, v192, 0xc0c0004
	v_perm_b32 v182, v194, v193, 0xc0c0004
	v_perm_b32 v183, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	v_perm_b32 v173, v179, v178, 0xc0c0004
	v_perm_b32 v175, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[29:32], v[25:28], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v28, v181, 16, v180
	v_lshl_or_b32 v27, v183, 16, v182
	v_lshl_or_b32 v26, v172, 16, v174
	v_lshl_or_b32 v25, v175, 16, v173
	v_wmma_i32_16x16x16_iu8 v[34:41], v[157:160], v[5:8], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[25:28], v[21:24], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v21, v85, v52, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v51, v50, 0xc0c0004
	v_perm_b32 v23, v163, v162, 0xc0c0004
	v_perm_b32 v50, v161, v86, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v165, v164, 0xc0c0004
	v_perm_b32 v85, v171, v170, 0xc0c0004
	v_perm_b32 v86, v169, v168, 0xc0c0004
	v_lshl_or_b32 v24, v22, 16, v21
	v_lshl_or_b32 v23, v50, 16, v23
	v_lshl_or_b32 v22, v52, 16, v51
	v_wmma_i32_16x16x16_iu8 v[34:41], v[29:32], v[13:16], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v86, 16, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[25:28], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[21:24], v[17:20], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[21:24], v[1:4], v[34:41] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v47
	v_cvt_f32_i32_e32 v3, v46
	v_cvt_f32_i32_e32 v4, v49
	v_cvt_f32_i32_e32 v5, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v69, v69, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v64, v64, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v63, v63, v3 :: v_dual_add_f32 v58, v58, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v57, v57, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v34
	v_cvt_f32_i32_e32 v3, v37
	v_cvt_f32_i32_e32 v4, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v82, v82, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v70, v70, v5
	v_dual_add_f32 v81, v81, v1 :: v_dual_add_f32 v76, v76, v3
	v_add_f32_e32 v75, v75, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v66, v66, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v41
	v_cvt_f32_i32_e32 v3, v40
	v_cvt_f32_i32_e32 v4, v43
	v_cvt_f32_i32_e32 v5, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v65, v65, v1 :: v_dual_add_f32 v60, v60, v2
	v_dual_add_f32 v59, v59, v3 :: v_dual_add_f32 v74, v74, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v73, v73, v5
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v1, s31, v153
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v5, s31, v155
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v35, 0, 1, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s31, v154
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v6, s31, v156
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[9:12], v5 offset:1024
	ds_load_b128 v[13:16], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v6 offset:1024
	v_cmp_ne_u32_e64 s0, 1, v35
	v_mov_b32_e32 v35, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[17:20], v1 offset:1024
	ds_load_b128 v[21:24], v2
	ds_load_b128 v[1:4], v2 offset:1024
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v46, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s30, v114
	v_add_nc_u32_e32 v47, s30, v112
	v_add_nc_u32_e32 v36, s30, v118
	v_add_nc_u32_e32 v50, s30, v106
	v_add_nc_u32_e32 v37, s30, v116
	v_add_nc_u32_e32 v48, s30, v110
	v_add_nc_u32_e32 v49, s30, v108
	v_add_nc_u32_e32 v51, s30, v104
	v_add_nc_u32_e32 v153, s30, v102
	v_add_nc_u32_e32 v154, s30, v100
	v_add_nc_u32_e32 v155, s30, v98
	v_add_nc_u32_e32 v156, s30, v95
	v_add_nc_u32_e32 v157, s30, v94
	v_add_nc_u32_e32 v158, s30, v92
	v_add_nc_u32_e32 v159, s30, v90
	v_add_nc_u32_e32 v160, s30, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v47, v47
	ds_load_u8 v36, v36
	ds_load_u8 v50, v50
	ds_load_u8 v51, v51
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v37, v37
	ds_load_u8 v155, v155
	ds_load_u8 v156, v156
	ds_load_u8 v153, v153
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v157, v157
	ds_load_u8 v158, v158
	ds_load_u8 v154, v154
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v183, s30, v117
	v_add_nc_u32_e32 v184, s30, v115
	v_add_nc_u32_e32 v181, s30, v120
	v_add_nc_u32_e32 v187, s30, v109
	v_add_nc_u32_e32 v182, s30, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v38, v47, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v185, s30, v113
	v_add_nc_u32_e32 v186, s30, v111
	v_add_nc_u32_e32 v188, s30, v107
	v_add_nc_u32_e32 v189, s30, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v47, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	v_perm_b32 v37, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v48, v156, v155, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v190, s30, v103
	v_add_nc_u32_e32 v191, s30, v101
	v_add_nc_u32_e32 v192, s30, v99
	v_add_nc_u32_e32 v193, s30, v97
	v_add_nc_u32_e32 v194, s30, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v154, v153, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s30, v93
	v_add_nc_u32_e32 v51, s30, v91
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v36, 16, v38
	v_lshl_or_b32 v37, v47, 16, v37
	v_lshl_or_b32 v36, v49, 16, v48
	v_perm_b32 v47, v160, v159, 0xc0c0004
	v_perm_b32 v48, v158, v157, 0xc0c0004
	ds_load_u8 v153, v183
	ds_load_u8 v154, v184
	ds_load_u8 v155, v181
	ds_load_u8 v156, v187
	ds_load_u8 v157, v188
	ds_load_u8 v158, v185
	ds_load_u8 v159, v186
	ds_load_u8 v160, v182
	ds_load_u8 v181, v191
	ds_load_u8 v182, v192
	ds_load_u8 v183, v189
	ds_load_u8 v184, v50
	ds_load_u8 v185, v51
	ds_load_u8 v186, v193
	ds_load_u8 v187, v194
	ds_load_u8 v188, v190
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v40, s30, v134
	v_add_nc_u32_e32 v175, s30, v126
	v_add_nc_u32_e32 v41, s30, v133
	v_add_nc_u32_e32 v176, s30, v125
	v_add_nc_u32_e32 v35, s30, v136
	v_add_nc_u32_e32 v173, s30, v128
	v_add_nc_u32_e32 v45, s30, v130
	v_add_nc_u32_e32 v179, s30, v122
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v46, s30, v129
	v_add_nc_u32_e32 v174, s30, v127
	v_add_nc_u32_e32 v177, s30, v124
	v_add_nc_u32_e32 v178, s30, v123
	v_add_nc_u32_e32 v180, s30, v121
	v_add_nc_u32_e32 v39, s30, v135
	v_add_nc_u32_e32 v42, s30, v132
	v_add_nc_u32_e32 v44, s30, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	ds_load_u8 v189, v40
	ds_load_u8 v190, v41
	ds_load_u8 v191, v35
	ds_load_u8 v192, v45
	ds_load_u8 v193, v46
	ds_load_u8 v194, v42
	ds_load_u8 v195, v44
	ds_load_u8 v196, v39
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v85, s30, v150
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v173, v173
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v174, v174
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v86, s30, v149
	v_add_nc_u32_e32 v43, s30, v152
	v_add_nc_u32_e32 v163, s30, v146
	v_add_nc_u32_e32 v52, s30, v151
	v_add_nc_u32_e32 v164, s30, v145
	v_add_nc_u32_e32 v165, s30, v144
	v_add_nc_u32_e32 v166, s30, v143
	v_add_nc_u32_e32 v167, s30, v142
	v_add_nc_u32_e32 v168, s30, v141
	v_add_nc_u32_e32 v169, s30, v140
	v_add_nc_u32_e32 v170, s30, v139
	v_add_nc_u32_e32 v171, s30, v138
	v_add_nc_u32_e32 v172, s30, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v48, 16, v47
	v_mov_b32_e32 v51, s11
	v_dual_mov_b32 v46, s6 :: v_dual_add_nc_u32 v161, s30, v148
	v_dual_mov_b32 v47, s7 :: v_dual_add_nc_u32 v162, s30, v147
	v_dual_mov_b32 v50, s10 :: v_dual_mov_b32 v49, s9
	v_dual_mov_b32 v48, s8 :: v_dual_mov_b32 v45, s5
	v_mov_b32_e32 v44, s4
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v182, v188, v183, 0xc0c0004
	v_perm_b32 v183, v185, v184, 0xc0c0004
	v_perm_b32 v184, v187, v186, 0xc0c0004
	ds_load_u8 v85, v85
	ds_load_u8 v86, v86
	ds_load_u8 v43, v43
	ds_load_u8 v185, v163
	ds_load_u8 v186, v164
	ds_load_u8 v187, v161
	ds_load_u8 v188, v162
	ds_load_u8 v52, v52
	ds_load_u8 v167, v167
	ds_load_u8 v168, v168
	ds_load_u8 v165, v165
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v166, v166
	v_perm_b32 v39, v154, v153, 0xc0c0004
	v_perm_b32 v40, v160, v155, 0xc0c0004
	v_perm_b32 v41, v157, v156, 0xc0c0004
	v_perm_b32 v197, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[153:160], v[35:38], v[29:32], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v42, v40, 16, v39
	v_lshl_or_b32 v40, v182, 16, v181
	v_lshl_or_b32 v41, v197, 16, v41
	v_lshl_or_b32 v39, v184, 16, v183
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v181, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v182, v196, v191, 0xc0c0004
	v_perm_b32 v183, v193, v192, 0xc0c0004
	v_perm_b32 v184, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v161, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v162, v174, v173, 0xc0c0004
	v_perm_b32 v173, v180, v179, 0xc0c0004
	v_perm_b32 v174, v178, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[44:51], v[35:38], v[17:20], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[39:42], v[21:24], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v182, 16, v181
	v_lshl_or_b32 v163, v184, 16, v183
	v_lshl_or_b32 v162, v162, 16, v161
	v_lshl_or_b32 v161, v174, 16, v173
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v43, v52, v43, 0xc0c0004
	v_perm_b32 v52, v186, v185, 0xc0c0004
	v_perm_b32 v86, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_perm_b32 v166, v172, v171, 0xc0c0004
	v_perm_b32 v35, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[44:51], v[39:42], v[1:4], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[161:164], v[25:28], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v38, v43, 16, v85
	v_lshl_or_b32 v37, v86, 16, v52
	v_lshl_or_b32 v36, v165, 16, v167
	v_lshl_or_b32 v35, v35, 16, v166
	v_wmma_i32_16x16x16_iu8 v[44:51], v[161:164], v[9:12], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[35:38], v[13:16], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[35:38], v[5:8], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v36, v155
	v_cvt_f32_i32_e32 v39, v156
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v35, v157
	v_cvt_f32_i32_e32 v37, v158
	v_cvt_f32_i32_e32 v38, v159
	v_cvt_f32_i32_e32 v40, v160
	v_cvt_f32_i32_e32 v41, v44
	v_cvt_f32_i32_e32 v42, v45
	v_cvt_f32_i32_e32 v44, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v43, v48
	v_cvt_f32_i32_e32 v45, v49
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v49, v51
	v_cvt_f32_i32_e32 v48, v153
	v_cvt_f32_i32_e32 v50, v154
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v163, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v114, s3, v114
	v_add_nc_u32_e32 v112, s3, v112
	v_add_nc_u32_e32 v118, s3, v118
	v_add_nc_u32_e32 v106, s3, v106
	v_add_nc_u32_e32 v116, s3, v116
	v_add_nc_u32_e32 v110, s3, v110
	v_add_nc_u32_e32 v108, s3, v108
	v_add_nc_u32_e32 v104, s3, v104
	v_add_nc_u32_e32 v102, s3, v102
	v_add_nc_u32_e32 v100, s3, v100
	v_add_nc_u32_e32 v98, s3, v98
	v_add_nc_u32_e32 v95, s3, v95
	v_add_nc_u32_e32 v94, s3, v94
	v_add_nc_u32_e32 v92, s3, v92
	v_add_nc_u32_e32 v90, s3, v90
	v_add_nc_u32_e32 v33, s3, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v114, v114
	ds_load_u8 v112, v112
	ds_load_u8 v118, v118
	ds_load_u8 v106, v106
	ds_load_u8 v104, v104
	ds_load_u8 v110, v110
	ds_load_u8 v108, v108
	ds_load_u8 v116, v116
	ds_load_u8 v98, v98
	ds_load_u8 v95, v95
	ds_load_u8 v102, v102
	ds_load_u8 v90, v90
	ds_load_u8 v33, v33
	ds_load_u8 v94, v94
	ds_load_u8 v92, v92
	ds_load_u8 v100, v100
	s_mov_b32 s4, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v117, s3, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v104, v104, v106, 0xc0c0004
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v85, s3, v149
	v_add_nc_u32_e32 v86, s3, v148
	v_add_nc_u32_e32 v148, s3, v109
	v_add_nc_u32_e32 v149, s3, v107
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v107, v112, v114, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v109, v116, v118, 0xc0c0004
	v_perm_b32 v106, v108, v110, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v95, v95, v98, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v115, s3, v115
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v100, v102, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v120, s3, v120
	v_add_nc_u32_e32 v113, s3, v113
	v_add_nc_u32_e32 v111, s3, v111
	v_add_nc_u32_e32 v105, s3, v105
	v_add_nc_u32_e32 v103, s3, v103
	v_add_nc_u32_e32 v101, s3, v101
	v_add_nc_u32_e32 v99, s3, v99
	v_add_nc_u32_e32 v119, s3, v119
	v_add_nc_u32_e32 v97, s3, v97
	v_add_nc_u32_e32 v96, s3, v96
	v_add_nc_u32_e32 v93, s3, v93
	v_add_nc_u32_e32 v91, s3, v91
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v109, v109, 16, v107
	v_lshl_or_b32 v108, v106, 16, v104
	v_lshl_or_b32 v107, v98, 16, v95
	ds_load_u8 v98, v117
	ds_load_u8 v100, v115
	ds_load_u8 v102, v120
	ds_load_u8 v104, v148
	ds_load_u8 v110, v149
	ds_load_u8 v112, v113
	ds_load_u8 v111, v111
	ds_load_u8 v113, v119
	ds_load_u8 v101, v101
	ds_load_u8 v99, v99
	ds_load_u8 v105, v105
	ds_load_u8 v114, v93
	ds_load_u8 v115, v91
	ds_load_u8 v116, v97
	ds_load_u8 v117, v96
	ds_load_u8 v103, v103
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v134, s3, v134
	v_add_nc_u32_e32 v133, s3, v133
	v_add_nc_u32_e32 v136, s3, v136
	v_add_nc_u32_e32 v130, s3, v130
	v_add_nc_u32_e32 v132, s3, v132
	v_add_nc_u32_e32 v131, s3, v131
	v_add_nc_u32_e32 v129, s3, v129
	v_add_nc_u32_e32 v135, s3, v135
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v118, v134
	ds_load_u8 v119, v133
	ds_load_u8 v120, v136
	ds_load_u8 v130, v130
	ds_load_u8 v129, v129
	ds_load_u8 v132, v132
	ds_load_u8 v131, v131
	ds_load_u8 v133, v135
	v_perm_b32 v33, v33, v90, 0xc0c0004
	v_perm_b32 v90, v92, v94, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s3, v152
	v_add_nc_u32_e32 v51, s3, v151
	v_add_nc_u32_e32 v52, s3, v150
	v_add_nc_u32_e32 v147, s3, v147
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v106, v90, 16, v33
	v_dual_mov_b32 v97, s11 :: v_dual_add_nc_u32 v146, s3, v146
	v_mov_b32_e32 v91, s5
	v_dual_mov_b32 v90, s4 :: v_dual_add_nc_u32 v145, s3, v145
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v126, s3, v126
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v96, s10 :: v_dual_mov_b32 v95, s9
	v_dual_mov_b32 v94, s8 :: v_dual_mov_b32 v93, s7
	v_mov_b32_e32 v92, s6
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v33, v100, v98, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v113, v113, v102, 0xc0c0004
	v_perm_b32 v110, v110, v104, 0xc0c0004
	v_perm_b32 v111, v111, v112, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v112, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v134, v103, v105, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v115, v117, v116, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v125, s3, v125
	v_add_nc_u32_e32 v128, s3, v128
	v_add_nc_u32_e32 v122, s3, v122
	v_add_nc_u32_e32 v121, s3, v121
	v_add_nc_u32_e32 v127, s3, v127
	v_add_nc_u32_e32 v124, s3, v124
	v_add_nc_u32_e32 v123, s3, v123
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[98:105], v[106:109], v[29:32], v[90:97] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v113, 16, v33
	v_lshl_or_b32 v31, v111, 16, v110
	v_lshl_or_b32 v30, v134, 16, v112
	v_lshl_or_b32 v29, v115, 16, v114
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v119, v118, 0xc0c0004
	ds_load_u8 v111, v126
	ds_load_u8 v112, v125
	ds_load_u8 v113, v128
	ds_load_u8 v114, v122
	ds_load_u8 v115, v121
	ds_load_u8 v116, v124
	ds_load_u8 v117, v123
	ds_load_u8 v118, v127
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v144, s3, v144
	v_add_nc_u32_e32 v143, s3, v143
	v_add_nc_u32_e32 v142, s3, v142
	v_add_nc_u32_e32 v141, s3, v141
	v_add_nc_u32_e32 v140, s3, v140
	v_add_nc_u32_e32 v139, s3, v139
	v_add_nc_u32_e32 v138, s3, v138
	v_add_nc_u32_e32 v137, s3, v137
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v133, v120, 0xc0c0004
	v_perm_b32 v119, v129, v130, 0xc0c0004
	v_perm_b32 v120, v131, v132, 0xc0c0004
	ds_load_u8 v52, v52
	ds_load_u8 v85, v85
	ds_load_u8 v34, v34
	ds_load_u8 v121, v146
	ds_load_u8 v122, v145
	ds_load_u8 v86, v86
	ds_load_u8 v123, v147
	ds_load_u8 v51, v51
	ds_load_u8 v124, v142
	ds_load_u8 v125, v141
	ds_load_u8 v126, v144
	ds_load_u8 v127, v138
	ds_load_u8 v128, v137
	ds_load_u8 v129, v140
	ds_load_u8 v130, v139
	ds_load_u8 v131, v143
	v_wmma_i32_16x16x16_iu8 v[98:105], v[29:32], v[21:24], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_lshl_or_b32 v24, v110, 16, v33
	v_lshl_or_b32 v23, v120, 16, v119
	v_wmma_i32_16x16x16_iu8 v[90:97], v[106:109], v[17:20], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v112, v118, v113, 0xc0c0004
	v_perm_b32 v113, v115, v114, 0xc0c0004
	v_perm_b32 v114, v117, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[90:97], v[29:32], v[1:4], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v22, v112, 16, v111
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v125, v124, 0xc0c0004
	v_lshl_or_b32 v21, v114, 16, v113
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[21:24], v[25:28], v[98:105] neg_lo:[1,1,0]
	v_perm_b32 v25, v85, v52, 0xc0c0004
	v_perm_b32 v26, v51, v34, 0xc0c0004
	v_perm_b32 v27, v122, v121, 0xc0c0004
	v_perm_b32 v28, v123, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v131, v126, 0xc0c0004
	v_perm_b32 v51, v128, v127, 0xc0c0004
	v_lshl_or_b32 v20, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[90:97], v[21:24], v[9:12], v[90:97] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v28, 16, v27
	v_lshl_or_b32 v18, v34, 16, v33
	v_lshl_or_b32 v17, v17, 16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[17:20], v[13:16], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[17:20], v[5:8], v[90:97] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v34, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v51, v99
	v_cvt_f32_i32_e32 v85, v100
	v_cvt_f32_i32_e32 v154, v101
	v_cvt_f32_i32_e32 v52, v102
	v_cvt_f32_i32_e32 v86, v103
	v_cvt_f32_i32_e32 v153, v104
	v_cvt_f32_i32_e32 v155, v105
	v_cvt_f32_i32_e32 v156, v90
	v_cvt_f32_i32_e32 v157, v91
	v_cvt_f32_i32_e32 v159, v92
	v_cvt_f32_i32_e32 v162, v93
	v_cvt_f32_i32_e32 v158, v94
	v_cvt_f32_i32_e32 v160, v95
	v_cvt_f32_i32_e32 v161, v96
	v_cvt_f32_i32_e32 v163, v97
.LBB0_16:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s28, v87
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s14, s15
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v12, v1, 1, v89
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v71, v36 :: v_dual_lshlrev_b32 v1, 1, v2
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s20, s16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v8, s14, v12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v7, 32, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 6, v12
	v_or_b32_e32 v5, 4, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v72, v39 :: v_dual_lshlrev_b32 v8, 1, v8
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v9, s0, v12, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v2, 10, v12
	v_or_b32_e32 v3, 8, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v13, v1, s[20:23], 0 offen
	buffer_load_u16 v19, v7, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	.loc	1 379 22 is_stmt 0              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v1, s14, v6
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v7, s14, v5
	v_or_b32_e32 v10, s14, v4
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v20, v8, s[20:23], 0 offen
	buffer_load_u16 v21, v9, s[20:23], 0 offen
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v8, s0, v2, 1
	v_add_lshl_u32 v9, s0, v3, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v16, v78, v50 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x5
	buffer_load_u16 v22, v6, s[20:23], 0 offen
	buffer_load_u16 v23, v4, s[20:23], 0 offen
	buffer_load_u16 v24, v5, s[20:23], 0 offen
	buffer_load_u16 v25, v8, s[20:23], 0 offen
	buffer_load_u16 v26, v9, s[20:23], 0 offen
	buffer_load_u16 v27, v1, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v1, 1, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v77, v48 :: v_dual_lshlrev_b32 v4, 1, v10
	v_add_f32_e32 v10, v62, v37
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v28, v1, s[20:23], 0 offen
	buffer_load_u16 v29, v4, s[20:23], 0 offen
	.loc	1 379 22 is_stmt 0              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s14, v2
	v_or_b32_e32 v3, s14, v3
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_add_f32_e32 v18, v83, v41
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v50, s15, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v11, v61, v35 :: v_dual_and_b32 v14, 0x78, v88
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v1, 1, v2
	v_lshlrev_b32_e32 v2, 1, v3
	s_clause 0x1
	buffer_load_u16 v30, v1, s[20:23], 0 offen
	buffer_load_u16 v31, v2, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v53, v38 :: v_dual_add_f32 v35, v80, v47
	v_dual_add_f32 v33, v84, v42 :: v_dual_add_f32 v36, v79, v44
	v_dual_add_f32 v37, v68, v45 :: v_dual_add_f32 v38, v67, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v42, v64, v86 :: v_dual_add_f32 v43, v63, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v15, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v15, 12, v12
	v_or_b32_e32 v12, 14, v12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s28, s15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v44, v81, v156 :: v_dual_add_f32 v45, v82, v157
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v71, v32, s2
	v_cndmask_b32_e64 v71, v72, v17, s2
	v_cndmask_b32_e64 v43, v63, v43, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v17, s14, v15
	v_or_b32_e32 v63, s14, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v64, v42, s2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v64, s0, v12, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v12, s1, v14, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v56, v49 :: v_dual_add_f32 v4, v55, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v34, v73, v34 :: v_dual_add_f32 v39, v74, v51
	v_dual_add_f32 v48, v66, v160 :: v_dual_add_f32 v49, v65, v158
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v81, v44, s2
	v_cndmask_b32_e64 v38, v67, v38, s2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v15, s0, v15, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v1, v54, v40
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v40, v70, v154 :: v_dual_add_f32 v41, v69, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v83, v18, s2
	v_cndmask_b32_e64 v39, v74, v39, s2
	v_cndmask_b32_e64 v34, v73, v34, s2
	v_cndmask_b32_e64 v37, v68, v37, s2
	v_cndmask_b32_e64 v49, v65, v49, s2
	v_cndmask_b32_e64 v48, v66, v48, s2
	v_cndmask_b32_e64 v40, v70, v40, s2
	v_cndmask_b32_e64 v52, v78, v16, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v46, v76, v162 :: v_dual_add_f32 v47, v75, v159
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v82, v45, s2
	v_cndmask_b32_e64 v33, v84, v33, s2
	v_cndmask_b32_e64 v41, v69, v41, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v46, v76, v46, s2
	v_cndmask_b32_e64 v36, v79, v36, s2
	v_cndmask_b32_e64 v35, v80, v35, s2
	v_cndmask_b32_e64 v47, v75, v47, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.h, 0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v9, v60, v163 :: v_dual_add_f32 v8, v59, v161
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v62, v10, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v7, v58, v155 :: v_dual_add_f32 v6, v57, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v5.h
	v_mov_b16_e32 v18.h, v5.h
	v_mov_b16_e32 v69.h, v5.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v59, v8, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v5.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v61, v11, s2
	v_cndmask_b32_e64 v6, v57, v6, s2
	v_cndmask_b32_e64 v7, v58, v7, s2
	v_cndmask_b32_e64 v9, v60, v9, s2
	v_cndmask_b32_e64 v4, v55, v4, s2
	v_cndmask_b32_e64 v2, v53, v2, s2
	v_cndmask_b32_e64 v1, v54, v1, s2
	v_cndmask_b32_e64 v3, v56, v3, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s15, s15, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s22
	v_and_b32_e32 v0, 16, v0
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v14, 16, v13
	v_lshlrev_b32_e32 v13, 16, v19
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v19, 16, v21
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v21, 16, v22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v22, 16, v23
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v23, 16, v24
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v24, 16, v25
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v63, 1, v63
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v67, v13, v22
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v25, 16, v26
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v26, v13, v19
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x3
	buffer_load_u16 v50, v15, s[20:23], 0 offen
	buffer_load_u16 v64, v64, s[20:23], 0 offen
	buffer_load_u16 v15, v17, s[20:23], 0 offen
	buffer_load_u16 v17, v63, s[20:23], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v63, v13, v20
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v22, v14, v22
	v_mul_f32_e32 v72, v13, v24
	v_mul_f32_e32 v68, v13, v25
	v_mul_f32_e32 v65, v13, v21
	v_mul_f32_e32 v21, v14, v21
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v24, v14, v24 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v26, v44, v26
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v66, v13, v23
	v_mul_f32_e32 v19, v14, v19
	v_dual_mul_f32 v25, v14, v25 :: v_dual_mul_f32 v44, v51, v63
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v21, v39, v21
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v39, v13, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v19, v34, v19 :: v_dual_mul_f32 v22, v40, v22
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v13, v27
	v_dual_mul_f32 v51, v13, v29 :: v_dual_mul_f32 v24, v42, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v42, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v27, v14, v27
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v48, v48, v72 :: v_dual_mul_f32 v23, v14, v23
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v45, v45, v65 :: v_dual_mul_f32 v46, v46, v67
	v_mul_f32_e32 v23, v41, v23
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v33, v33, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v27, v52, v27 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v49, v49, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v29, v14, v29
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v36, v36, v39
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v28, v14, v28 :: v_dual_mul_f32 v41, v13, v30
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v21
	v_exp_f32_e32 v42, v42
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v20, v14, v20 :: v_dual_mul_f32 v25, v43, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v28, v32, v28
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v20, v77, v20 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v47, v47, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v25
	v_ldexp_f32 v42, v42, v68
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v29, v71, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v35, v35, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s3
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v23
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v66
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v42, v42, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v52, v52
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v32
	v_cndmask_b32_e64 v66, 0, 0x42800000, s11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v68
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v40, v13, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	v_cndmask_b32_e64 v32, 0, 0x42800000, s7
	v_dual_mul_f32 v51, 0xbfb8aa3b, v46 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v52, v52, v73
	v_dual_mul_f32 v63, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v106, -v68, v94, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v24
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v63
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v94, v106, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v67
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v51
	v_cndmask_b32_e64 v63, 0, 0x42800000, s6
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s6
	v_exp_f32_e32 v66, v66
	v_cndmask_b32_e64 v67, 0, 0x42800000, s10
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v51, 0, 0x42800000, s4
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s11
	v_exp_f32_e32 v34, v34
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s4
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v43
	v_ldexp_f32 v66, v66, v81
	v_exp_f32_e32 v67, v67
	v_mul_f32_e32 v65, 0xbfb8aa3b, v48
	v_exp_f32_e32 v32, v32
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_ldexp_f32 v34, v34, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v65
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v37, v37, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v67, v80
	v_cndmask_b32_e64 v65, 0, 0x42800000, s8
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s0
	v_ldexp_f32 v32, v32, v77
	v_mul_f32_e32 v41, 0xbfb8aa3b, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v67, v67, v24
	v_div_scale_f32 v91, s10, v24, v67, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v104, v90
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v41
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, s3, v21, v52, v21
	v_div_scale_f32 v84, null, v32, v32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s9
	v_ldexp_f32 v65, v65, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v116, -v90, v104, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v101, v84
	v_div_scale_f32 v85, s7, v23, v32, v23
	v_fmac_f32_e32 v104, v116, v104
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v63, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v66, v66, v25
	v_div_scale_f32 v93, s11, v25, v66, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v116, v91, v104
	v_fma_f32 v113, -v84, v101, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v105, v92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v63, v63, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v52, v52, v21
	v_fma_f32 v128, -v90, v116, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v97, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v117, -v92, v105, 1.0
	v_fmac_f32_e32 v116, v128, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v82, null, v63, v63, v22
	v_div_scale_f32 v83, s6, v22, v63, v22
	v_rcp_f32_e32 v100, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v109, -v76, v97, 1.0
	v_fma_f32 v112, -v82, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v46 :: v_dual_fmac_f32 v100, v112, v100
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v112, v83, v100
	v_fma_f32 v124, -v82, v112, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v51, v51, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v34, v34, v45
	v_fmac_f32_e32 v112, v124, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v96, v74
	v_fma_f32 v108, -v74, v96, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v96, v108, v96
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v65, v65, v48
	v_div_scale_f32 v87, s8, v48, v65, v48
	v_rcp_f32_e32 v102, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, vcc_lo, v26, v42, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v106, v71, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v41, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v114, -v86, v102, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v118, -v68, v106, v71
	v_dual_fmac_f32 v102, v114, v102 :: v_dual_add_f32 v51, 1.0, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v106, v118, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v41, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v114, v87, v102
	v_div_scale_f32 v78, null, v51, v51, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v68, v106, v71
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v126, -v86, v114, v87
	v_rcp_f32_e32 v98, v78
	v_fmac_f32_e32 v97, v109, v97
	v_div_fmas_f32 v68, v68, v94, v106
	v_div_scale_f32 v79, s4, v46, v51, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v114, v126, v102 :: v_dual_mul_f32 v109, v77, v97
	v_div_fixup_f32 v26, v68, v42, v26
	v_div_scale_f32 v88, null, v41, v41, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v110, -v78, v98, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v121, -v76, v109, v77
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v44, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v103, v88
	v_fmac_f32_e32 v98, v110, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v109, v121, v97
	v_div_scale_f32 v89, s9, v49, v41, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v110, v79, v98
	v_fma_f32 v115, -v88, v103, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v122, -v78, v110, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v75, s1, v45, v34, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_fmac_f32 v110, v122, v98
	v_dual_add_f32 v39, 1.0, v39 :: v_dual_mul_f32 v108, v75, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v72, null, v43, v43, v19
	v_div_scale_f32 v80, null, v39, v39, v47
	v_div_scale_f32 v73, s0, v19, v43, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v95, v72
	v_rcp_f32_e32 v99, v80
	v_div_scale_f32 v81, s5, v47, v39, v47
	v_fma_f32 v120, -v74, v108, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v107, -v72, v95, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v111, -v80, v99, 1.0
	v_fmac_f32_e32 v95, v107, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v99, v111, v99
	v_mul_f32_e32 v107, v73, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v111, v81, v99
	v_fma_f32 v119, -v72, v107, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v123, -v80, v111, v81
	v_fmac_f32_e32 v107, v119, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v111, v123, v99
	v_fma_f32 v71, -v72, v107, v73
	v_fma_f32 v72, -v74, v108, v75
	v_fma_f32 v73, -v76, v109, v77
	v_fma_f32 v74, -v78, v110, v79
	v_fma_f32 v75, -v80, v111, v81
	v_fma_f32 v76, -v82, v112, v83
	v_div_fmas_f32 v72, v72, v96, v108
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v78, -v86, v114, v87
	v_div_fmas_f32 v42, v71, v95, v107
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v34, v72, v34, v45
	v_div_fmas_f32 v68, v73, v97, v109
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v19, v42, v43, v19
	v_div_fmas_f32 v45, v74, v98, v110
	s_mov_b32 vcc_lo, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v75, v99, v111
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v43, v45, v51, v46
	v_fmac_f32_e32 v101, v113, v101
	v_div_fmas_f32 v34, v76, v100, v112
	s_mov_b32 vcc_lo, s7
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v20, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v33.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v103, v115, v103
	v_div_fixup_f32 v22, v34, v63, v22
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v34, v35, v43 :: v_dual_mul_f32 v113, v85, v101
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v68, v52, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v5.l, v19.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v42, v39, v47
	v_fma_f32 v125, -v84, v113, v85
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v21, v27, v21 :: v_dual_mul_f32 v22, v29, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v5
	v_mov_b16_e32 v5.l, v26.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v113, v125, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v21.h
	v_cmp_o_f32_e64 s3, v21, v21
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s4, v34, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v77, -v84, v113, v85
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v18, v33, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v77, v101, v113
	s_mov_b32 vcc_lo, s8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v21, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v78, v102, v114
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v20, v20, v32, v23
	v_fmac_f32_e32 v105, v117, v105
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v36, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v20, v28, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v5
	v_mov_b16_e32 v5.l, v22.h
	v_mov_b16_e32 v70.l, v23.h
	v_cmp_o_f32_e64 s5, v23, v23
	v_mov_b16_e32 v69.l, v20.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v115, v89, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v21, 1, v5
	v_mov_b16_e32 v5.l, v34.h
	v_cmp_o_f32_e64 s7, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v88, v115, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v22, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v115, v127, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v88, v115, v89
	v_div_fmas_f32 v35, v79, v103, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v19, v29, 0x7fff
	v_and_b32_e32 v29, 1, v70
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v16.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v19, v26, v28, 0x7fff
	v_and_b32_e32 v28, 1, v5
	v_and_b32_e32 v26, 1, v69
	v_add3_u32 v23, v23, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s0
	v_add3_u32 v22, v34, v28, 0x7fff
	v_add3_u32 v20, v20, v26, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v14, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v117, v93, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v90, v116, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s7
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v14, v31
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v10, v23
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v129, -v92, v117, v93
	v_div_fmas_f32 v22, v22, v104, v116
	s_mov_b32 vcc_lo, s11
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v11, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v117, v129, v105 :: v_dual_lshlrev_b32 v20, 16, v64
	v_div_fixup_f32 v22, v22, v67, v24
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v24, v38, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v22, v13, v20
	v_mul_f32_e32 v20, v14, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v92, v117, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v10.h
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v7, v7, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v26, v105, v117
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v9, v9, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.h, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v26, v66, v25
	v_div_fixup_f32 v25, v35, v41, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v24, v24, v25 :: v_dual_lshlrev_b32 v25, 16, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v28, v13, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v8, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v5.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v25, v14, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v6, v6, v25 :: v_dual_mul_f32 v11, v11, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v27, v65, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v24, v28, 0x7fff
	v_mov_b16_e32 v22.l, v11.h
	v_cmp_o_f32_e64 s1, v11, v11
	v_add3_u32 v27, v10, v27, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v5.l, v10.h
	v_add3_u32 v22, v11, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 1, v5
	v_cndmask_b16 v23.l, 0x7fff, v22.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v26, v22
	v_mul_f32_e32 v26, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_mul_f32_e32 v11, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v26, v26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v20, v20, v9
	v_div_scale_f32 v35, null, v26, v26, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v31
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, vcc_lo, v9, v20, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v22, v22, v7
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v11, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v27
	v_fma_f32 v40, -v33, v36, 1.0
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v27, v25, 1.0
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s0, v7, v22, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v32, v25
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v10, v31, v25 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v30, null, v11, v11, v8
	v_div_scale_f32 v37, s1, v8, v11, v8
	v_fma_f32 v38, -v27, v10, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v34, v30
	v_fmac_f32_e32 v10, v38, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v27, v10, v31
	v_fma_f32 v32, -v30, v34, 1.0
	v_mul_f32_e32 v31, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v32, v34
	v_rcp_f32_e32 v32, v35
	v_mul_f32_e32 v39, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v30, v39, v37
	v_fma_f32 v38, -v35, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v38, v32
	v_div_scale_f32 v38, s3, v6, v26, v6
	v_div_fmas_f32 v10, v27, v25, v10
	v_fma_f32 v27, -v33, v31, v40
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v31, v27, v36
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v27, v14, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v39, v41, v34 :: v_dual_mul_f32 v14, v14, v17
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v17, v13, v17
	v_mul_f32_e32 v13, v13, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v38, v32
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v2, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v30, v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v4, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v35, v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v34, v39
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v30, v32
	v_fma_f32 v30, -v33, v31, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v35, v41, v38
	v_div_fmas_f32 v30, v30, v36, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v33, v32, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v7, v30, v22, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v1, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v31, v26, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v7 :: v_dual_and_b32 v0, 0x540054, v0
	v_mul_f32_e32 v2, v2, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v25, v11, v8
	v_div_fixup_f32 v7, v10, v20, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v5.h
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v8.l, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v3, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v5
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s2, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v7 :: v_dual_and_b32 v10, 0x5040504, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v8
	v_mov_b16_e32 v8.l, v4.h
	v_add3_u32 v6, v1, v6, 0x7fff
	v_mov_b16_e32 v5.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v2, v7, 0x7fff
	v_and_b32_e32 v7, 1, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v2, v4, v7, 0x7fff
	v_mov_b32_e32 v7, 0x7632
	v_cndmask_b16 v6.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cndmask_b32_e64 v8, v18, v29, s0
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e64 v4, 0x3276, v7, s0
	v_cndmask_b32_e64 v3, v23, v16, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	v_cndmask_b32_e64 v5, v6, v21, s0
	v_cndmask_b32_e64 v6, v21, v6, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v16, v23, s0
	v_cndmask_b32_e64 v9, v1, v19, s0
	v_cndmask_b32_e64 v1, v19, v1, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v2, 0x760076, v2
	v_cndmask_b32_e64 v7, v29, v18, s0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v13, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v2
	v_perm_b32 v2, v6, v5, v10
	v_perm_b32 v1, v4, v3, v11
	v_perm_b32 v3, v6, v5, v11
	v_perm_b32 v4, v8, v7, v10
	v_perm_b32 v5, v8, v7, v11
	v_lshlrev_b32_e32 v8, 1, v12
	v_perm_b32 v6, v13, v9, v10
	v_perm_b32 v7, v13, v9, v11
	v_add_lshl_u32 v9, v12, s15, 1
	s_mov_b32 s15, s23
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 199
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17324
; TotalNumSgprs: 43
; NumVgprs: 199
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     199
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
