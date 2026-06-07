	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v104, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v35, 15, v0
	s_mov_b32 s29, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v41, 0, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 2, v35
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
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
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x0
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v4, s10, v36
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s23
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v104
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s30, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[33:34], null, s30, v2, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s33, s3, 6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v106, s15, 6, v33
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s28, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v105, v4, v3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s30, s33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s14, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s33, v105
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s15, 7
	v_add_nc_u32_e32 v2, s4, v33
	v_add_nc_u32_e32 v3, s4, v106
	s_add_i32 s4, s4, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s33, s33, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s4, v33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s33, v105
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v10, s15, v2
	v_add_nc_u32_e32 v11, s15, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s4, v106
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v19, s15, v12
	v_add3_u32 v18, s4, s15, v106
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v30, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v14, 0x80000000, v11, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v20, 0x80000000, v12, s2
	v_cndmask_b32_e64 v22, 0x80000000, v13, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v26, 0x80000000, v19, s2
	v_cndmask_b32_e64 v31, 0x80000000, v18, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[2:5], v5, s[24:27], 0 offen
	buffer_load_b128 v[6:9], v6, s[24:27], 0 offen
	buffer_load_b128 v[10:13], v10, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v14, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v32, v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[18:21], v20, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v22, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v26, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v31, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v31, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v34, 48, v1
	v_xor_b32_e32 v108, v31, v34
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v34, 0x70, v1
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v31, 0, v108
	v_or_b32_e32 v107, v34, v35
	s_waitcnt vmcnt(9)
	ds_store_b32 v31, v30 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v41, v[2:5]
	s_waitcnt vmcnt(7)
	ds_store_b128 v41, v[6:9] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[10:13] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[14:17] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v31, v32 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[18:21] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[22:25] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[26:29] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[37:40] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v109, v34, v35
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v100, v35, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v38, 0x80, v109
	v_or_b32_e32 v39, 0x100, v109
	v_or_b32_e32 v40, 0x180, v109
	v_or_b32_e32 v42, 0x200, v109
	v_or_b32_e32 v45, 0x280, v109
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v101, 16, v100
	v_xor_b32_e32 v102, 32, v100
	v_xor_b32_e32 v103, 48, v100
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v48, 0x300, v109
	v_or_b32_e32 v50, 0x380, v109
	v_or_b32_e32 v52, 0x400, v109
	v_or_b32_e32 v54, 0x480, v109
	v_or_b32_e32 v56, 0x500, v109
	v_or_b32_e32 v58, 0x580, v109
	v_or_b32_e32 v60, 0x600, v109
	v_or_b32_e32 v62, 0x680, v109
	v_or_b32_e32 v64, 0x700, v109
	v_or_b32_e32 v66, 0x780, v109
	v_or_b32_e32 v41, 0x800, v109
	v_or_b32_e32 v43, 0x880, v109
	v_or_b32_e32 v44, 0x900, v109
	v_or_b32_e32 v46, 0x980, v109
	v_or_b32_e32 v47, 0xa00, v109
	v_or_b32_e32 v49, 0xa80, v109
	v_or_b32_e32 v51, 0xb00, v109
	v_or_b32_e32 v53, 0xb80, v109
	v_or_b32_e32 v55, 0xc00, v109
	v_or_b32_e32 v57, 0xc80, v109
	v_or_b32_e32 v59, 0xd00, v109
	v_or_b32_e32 v61, 0xd80, v109
	v_or_b32_e32 v63, 0xe00, v109
	v_or_b32_e32 v65, 0xe80, v109
	v_or_b32_e32 v67, 0xf00, v109
	v_or_b32_e32 v68, 0xf80, v109
	v_or_b32_e32 v37, 0x1000, v109
	v_or_b32_e32 v69, 0x1080, v109
	v_or_b32_e32 v70, 0x1100, v109
	v_or_b32_e32 v71, 0x1180, v109
	v_or_b32_e32 v72, 0x1200, v109
	v_or_b32_e32 v73, 0x1280, v109
	v_or_b32_e32 v74, 0x1300, v109
	v_or_b32_e32 v75, 0x1380, v109
	v_or_b32_e32 v76, 0x1400, v109
	v_or_b32_e32 v77, 0x1480, v109
	v_or_b32_e32 v78, 0x1500, v109
	v_or_b32_e32 v79, 0x1580, v109
	v_or_b32_e32 v80, 0x1600, v109
	v_or_b32_e32 v81, 0x1680, v109
	v_or_b32_e32 v82, 0x1700, v109
	v_or_b32_e32 v83, 0x1780, v109
	v_or_b32_e32 v84, 0x1800, v109
	v_or_b32_e32 v85, 0x1880, v109
	v_or_b32_e32 v86, 0x1900, v109
	v_or_b32_e32 v87, 0x1980, v109
	v_or_b32_e32 v88, 0x1a00, v109
	v_or_b32_e32 v89, 0x1a80, v109
	v_or_b32_e32 v90, 0x1b00, v109
	v_or_b32_e32 v91, 0x1b80, v109
	v_or_b32_e32 v92, 0x1c00, v109
	v_or_b32_e32 v93, 0x1c80, v109
	v_or_b32_e32 v94, 0x1d00, v109
	v_or_b32_e32 v95, 0x1d80, v109
	v_or_b32_e32 v96, 0x1e00, v109
	v_or_b32_e32 v97, 0x1e80, v109
	v_or_b32_e32 v98, 0x1f00, v109
	v_or_b32_e32 v99, 0x1f80, v109
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
.LBB0_3:                                ; %Flow88
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v1, 48, v1
	v_or_b32_e32 v38, 0x80, v107
	v_or_b32_e32 v39, 0x100, v107
	v_or_b32_e32 v40, 0x180, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v100, v35, 6, v1
	v_or_b32_e32 v42, 0x200, v107
	v_or_b32_e32 v45, 0x280, v107
	v_or_b32_e32 v48, 0x300, v107
	v_or_b32_e32 v50, 0x380, v107
	v_xor_b32_e32 v101, 16, v100
	v_xor_b32_e32 v102, 32, v100
	v_xor_b32_e32 v103, 48, v100
	v_or_b32_e32 v52, 0x400, v107
	v_or_b32_e32 v54, 0x480, v107
	v_or_b32_e32 v56, 0x500, v107
	v_or_b32_e32 v58, 0x580, v107
	v_or_b32_e32 v60, 0x600, v107
	v_or_b32_e32 v62, 0x680, v107
	v_or_b32_e32 v64, 0x700, v107
	v_or_b32_e32 v66, 0x780, v107
	v_or_b32_e32 v41, 0x800, v107
	v_or_b32_e32 v43, 0x880, v107
	v_or_b32_e32 v44, 0x900, v107
	v_or_b32_e32 v46, 0x980, v107
	v_or_b32_e32 v47, 0xa00, v107
	v_or_b32_e32 v49, 0xa80, v107
	v_or_b32_e32 v51, 0xb00, v107
	v_or_b32_e32 v53, 0xb80, v107
	v_or_b32_e32 v55, 0xc00, v107
	v_or_b32_e32 v57, 0xc80, v107
	v_or_b32_e32 v59, 0xd00, v107
	v_or_b32_e32 v61, 0xd80, v107
	v_or_b32_e32 v63, 0xe00, v107
	v_or_b32_e32 v65, 0xe80, v107
	v_or_b32_e32 v67, 0xf00, v107
	v_or_b32_e32 v68, 0xf80, v107
	v_or_b32_e32 v37, 0x1000, v107
	v_or_b32_e32 v69, 0x1080, v107
	v_or_b32_e32 v70, 0x1100, v107
	v_or_b32_e32 v71, 0x1180, v107
	v_or_b32_e32 v72, 0x1200, v107
	v_or_b32_e32 v73, 0x1280, v107
	v_or_b32_e32 v74, 0x1300, v107
	v_or_b32_e32 v75, 0x1380, v107
	v_or_b32_e32 v76, 0x1400, v107
	v_or_b32_e32 v77, 0x1480, v107
	v_or_b32_e32 v78, 0x1500, v107
	v_or_b32_e32 v79, 0x1580, v107
	v_or_b32_e32 v80, 0x1600, v107
	v_or_b32_e32 v81, 0x1680, v107
	v_or_b32_e32 v82, 0x1700, v107
	v_or_b32_e32 v83, 0x1780, v107
	v_or_b32_e32 v84, 0x1800, v107
	v_or_b32_e32 v85, 0x1880, v107
	v_or_b32_e32 v86, 0x1900, v107
	v_or_b32_e32 v87, 0x1980, v107
	v_or_b32_e32 v88, 0x1a00, v107
	v_or_b32_e32 v89, 0x1a80, v107
	v_or_b32_e32 v90, 0x1b00, v107
	v_or_b32_e32 v91, 0x1b80, v107
	v_or_b32_e32 v92, 0x1c00, v107
	v_or_b32_e32 v93, 0x1c80, v107
	v_or_b32_e32 v94, 0x1d00, v107
	v_or_b32_e32 v95, 0x1d80, v107
	v_or_b32_e32 v96, 0x1e00, v107
	v_or_b32_e32 v97, 0x1e80, v107
	v_or_b32_e32 v98, 0x1f00, v107
	v_or_b32_e32 v99, 0x1f80, v107
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v29, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s34, s5, 6
	s_add_i32 s33, s33, 64
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s37, 0, 0x8400
	s_add_i32 s36, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s31, 0, 0x6000
	s_add_i32 s34, s34, -3
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
	s_mov_b32 s29, s4
	s_mov_b32 s35, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s39, s0
	s_mov_b32 s0, s37
	s_mov_b32 s37, s29
	s_mov_b32 s29, s36
	s_mov_b32 s36, s1
	s_mov_b32 s1, s31
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s31, s35, 6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s37, v107
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s31, s33, s31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v117, s11 :: v_dual_add_nc_u32 v154, s36, v107
	v_dual_mov_b32 v116, s10 :: v_dual_add_nc_u32 v1, s31, v105
	v_dual_mov_b32 v114, s8 :: v_dual_mov_b32 v115, s9
	v_mov_b32_e32 v113, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v109, v1, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v13 offset:1664
	ds_load_u8 v10, v13 offset:1536
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v126, v154 offset:1664
	ds_load_u8 v127, v154 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v112, s6 :: v_dual_add_nc_u32 v1, s39, v100
	v_dual_mov_b32 v111, s5 :: v_dual_mov_b32 v110, s4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s31, s31, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[134:137], v1
	v_add_nc_u32_e32 v1, s39, v101
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s31, s31, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[138:141], v1
	v_add_nc_u32_e32 v1, s39, v102
	ds_load_b128 v[142:145], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:1920
	ds_load_u8 v11, v13 offset:1792
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v154 offset:1920
	ds_load_u8 v128, v154 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s39, v103
	ds_load_b128 v[146:149], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v13 offset:1152
	ds_load_u8 v10, v13 offset:1024
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v153, v127, 16, v126
	ds_load_u8 v126, v154 offset:1152
	ds_load_u8 v127, v154 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:1408
	ds_load_u8 v11, v13 offset:1280
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v154 offset:1408
	ds_load_u8 v128, v154 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v13 offset:640
	ds_load_u8 v10, v13 offset:512
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v152, v127, 16, v126
	ds_load_u8 v126, v154 offset:640
	ds_load_u8 v127, v154 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:896
	ds_load_u8 v14, v13 offset:768
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v154 offset:896
	ds_load_u8 v128, v154 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v13 offset:128
	ds_load_u8 v14, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v151, v127, 16, v126
	ds_load_u8 v126, v154 offset:128
	ds_load_u8 v127, v154
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v13 offset:384
	ds_load_u8 v15, v13 offset:256
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v154 offset:384
	ds_load_u8 v128, v154 offset:256
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v9, v14, 16, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v150, v127, 16, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[118:125], v[9:12], v[134:137], v[110:117] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[126:133], v[150:153], v[134:137], v[110:117] neg_lo:[1,1,0]
	ds_load_u8 v110, v154 offset:3712
	ds_load_u8 v111, v154 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:3968
	ds_load_u8 v112, v154 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v111, 16, v110
	ds_load_u8 v110, v154 offset:3200
	ds_load_u8 v111, v154 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:3456
	ds_load_u8 v112, v154 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v111, 16, v110
	ds_load_u8 v110, v154 offset:2688
	ds_load_u8 v111, v154 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:2944
	ds_load_u8 v114, v154 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v114, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v111, 16, v110
	ds_load_u8 v110, v154 offset:2176
	ds_load_u8 v114, v154 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v114, v110, 0xc0c0004
	ds_load_u8 v114, v154 offset:2432
	ds_load_u8 v115, v154 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v114, 16, v110
	v_wmma_i32_16x16x16_iu8 v[126:133], v[110:113], v[138:141], v[126:133] neg_lo:[1,1,0]
	ds_load_u8 v110, v154 offset:5760
	ds_load_u8 v111, v154 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:6016
	ds_load_u8 v112, v154 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v111, 16, v110
	ds_load_u8 v110, v154 offset:5248
	ds_load_u8 v111, v154 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:5504
	ds_load_u8 v112, v154 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v111, 16, v110
	ds_load_u8 v110, v154 offset:4736
	ds_load_u8 v111, v154 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:4992
	ds_load_u8 v114, v154 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v114, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v111, 16, v110
	ds_load_u8 v110, v154 offset:4224
	ds_load_u8 v114, v154 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v114, v110, 0xc0c0004
	ds_load_u8 v114, v154 offset:4480
	ds_load_u8 v115, v154 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v114, 16, v110
	v_wmma_i32_16x16x16_iu8 v[126:133], v[110:113], v[142:145], v[126:133] neg_lo:[1,1,0]
	ds_load_u8 v110, v154 offset:7808
	ds_load_u8 v111, v154 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:8064
	ds_load_u8 v112, v154 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v111, 16, v110
	ds_load_u8 v110, v154 offset:7296
	ds_load_u8 v111, v154 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:7552
	ds_load_u8 v112, v154 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v111, 16, v110
	ds_load_u8 v110, v154 offset:6784
	ds_load_u8 v111, v154 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v154 offset:7040
	ds_load_u8 v114, v154 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v114, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v111, 16, v110
	ds_load_u8 v110, v154 offset:6272
	ds_load_u8 v114, v154 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v114, v110, 0xc0c0004
	ds_load_u8 v114, v154 offset:6528
	ds_load_u8 v115, v154 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v114, 16, v110
	v_wmma_i32_16x16x16_iu8 v[126:133], v[110:113], v[146:149], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v117, v129
	v_cvt_f32_i32_e32 v112, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v127
	v_cvt_f32_i32_e32 v116, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v28, v28, v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v13 offset:3712
	ds_load_u8 v10, v13 offset:3584
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v18, v18, v113 :: v_dual_add_f32 v17, v17, v112
	v_add_f32_e32 v27, v27, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:3968
	ds_load_u8 v11, v13 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v13 offset:3200
	ds_load_u8 v10, v13 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:3456
	ds_load_u8 v11, v13 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v13 offset:2688
	ds_load_u8 v10, v13 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:2944
	ds_load_u8 v14, v13 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v13 offset:2176
	ds_load_u8 v14, v13 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v13 offset:2432
	ds_load_u8 v15, v13 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu8 v[118:125], v[9:12], v[138:141], v[118:125] neg_lo:[1,1,0]
	ds_load_u8 v9, v13 offset:5760
	ds_load_u8 v10, v13 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:6016
	ds_load_u8 v11, v13 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v13 offset:5248
	ds_load_u8 v10, v13 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:5504
	ds_load_u8 v11, v13 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v13 offset:4736
	ds_load_u8 v10, v13 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:4992
	ds_load_u8 v14, v13 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v13 offset:4224
	ds_load_u8 v14, v13 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v13 offset:4480
	ds_load_u8 v15, v13 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu8 v[118:125], v[9:12], v[142:145], v[118:125] neg_lo:[1,1,0]
	ds_load_u8 v9, v13 offset:7808
	ds_load_u8 v10, v13 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:8064
	ds_load_u8 v11, v13 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v13 offset:7296
	ds_load_u8 v10, v13 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:7552
	ds_load_u8 v11, v13 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v13 offset:6784
	ds_load_u8 v10, v13 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:7040
	ds_load_u8 v14, v13 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v13 offset:6272
	ds_load_u8 v14, v13 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v13 offset:6528
	ds_load_u8 v13, v13 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	v_wmma_i32_16x16x16_iu8 v[118:125], v[9:12], v[146:149], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v111, v119
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s31, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v115, v121
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s31, v106
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s31, s31, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v119, v123
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s31, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v125
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v125, v133
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v111 :: v_dual_add_nc_u32 v13, s31, v106
	v_add_f32_e32 v32, v32, v115
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v24, v24, v125
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s31, s38, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v110, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s31, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v114, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s31, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v118, v122
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s31, s38, 10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v120, v130
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s31, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v121, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v124, v132
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v25, v110 :: v_dual_add_nc_u32 v110, s31, v108
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s37, s31, 0x8000
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s31, s38, 13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v31, v31, v114
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s36, s31, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v22, v22, v119 :: v_dual_add_f32 v21, v21, v118
	v_dual_add_f32 v30, v30, v123 :: v_dual_add_f32 v29, v29, v122
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v20, v20, v121 :: v_dual_add_f32 v19, v19, v120
	v_add_f32_e32 v23, v23, v124
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v110, v109 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v109, s36, v104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s39, s35, 1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s31, s36, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s35, s34
	s_mov_b32 s35, s39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v109, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v109, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v109, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v109, v107
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v17, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s37, 0, 0x8400
	s_add_i32 s36, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v18, v17
	s_add_i32 s31, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, v18 :: v_dual_mov_b32 v25, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v21, v17
	v_dual_mov_b32 v28, v18 :: v_dual_mov_b32 v27, v17
	v_dual_mov_b32 v32, v18 :: v_dual_mov_b32 v31, v17
	v_dual_mov_b32 v24, v18 :: v_dual_mov_b32 v23, v17
	v_dual_mov_b32 v30, v18 :: v_dual_mov_b32 v29, v17
.LBB0_8:                                ; %Flow89
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s0, v100
	v_add_nc_u32_e32 v2, s0, v101
	v_add_nc_u32_e32 v3, s0, v102
	v_add_nc_u32_e32 v4, s0, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_cndmask_b32_e64 v104, 0, 1, s3
	v_and_b32_e32 v33, 0xf0, v0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s0, 1, v104
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v110, s29, v62
	v_add_nc_u32_e32 v111, s29, v60
	v_add_nc_u32_e32 v106, s29, v66
	v_add_nc_u32_e32 v114, s29, v54
	v_add_nc_u32_e32 v107, s29, v64
	v_add_nc_u32_e32 v112, s29, v58
	v_add_nc_u32_e32 v113, s29, v56
	v_add_nc_u32_e32 v115, s29, v52
	v_add_nc_u32_e32 v116, s29, v50
	v_add_nc_u32_e32 v117, s29, v48
	v_add_nc_u32_e32 v148, s29, v45
	v_add_nc_u32_e32 v149, s29, v42
	v_add_nc_u32_e32 v150, s29, v40
	v_add_nc_u32_e32 v151, s29, v39
	v_add_nc_u32_e32 v152, s29, v38
	v_add_nc_u32_e32 v153, s29, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v110, v110
	ds_load_u8 v111, v111
	ds_load_u8 v106, v106
	ds_load_u8 v114, v114
	ds_load_u8 v115, v115
	ds_load_u8 v112, v112
	ds_load_u8 v113, v113
	ds_load_u8 v107, v107
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v116, v116
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v117, v117
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v154, s29, v65
	v_add_nc_u32_e32 v155, s29, v63
	v_add_nc_u32_e32 v104, s29, v68
	v_add_nc_u32_e32 v158, s29, v57
	v_add_nc_u32_e32 v156, s29, v61
	v_add_nc_u32_e32 v157, s29, v59
	v_add_nc_u32_e32 v159, s29, v55
	v_add_nc_u32_e32 v160, s29, v53
	v_add_nc_u32_e32 v161, s29, v51
	v_add_nc_u32_e32 v162, s29, v49
	v_add_nc_u32_e32 v163, s29, v47
	v_add_nc_u32_e32 v164, s29, v46
	v_add_nc_u32_e32 v165, s29, v44
	v_add_nc_u32_e32 v166, s29, v43
	v_add_nc_u32_e32 v167, s29, v41
	v_add_nc_u32_e32 v105, s29, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v113, v149, v148, 0xc0c0004
	ds_load_u8 v148, v154
	ds_load_u8 v149, v155
	ds_load_u8 v154, v104
	ds_load_u8 v155, v158
	ds_load_u8 v158, v159
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v159, v105
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v160, v160
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v161, v161
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v119, s29, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v111, v111, v110, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v117, v116, 0xc0c0004
	v_perm_b32 v104, v153, v152, 0xc0c0004
	v_perm_b32 v116, v151, v150, 0xc0c0004
	v_mov_b32_e32 v110, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v108, s29, v99
	v_add_nc_u32_e32 v118, s29, v98
	v_add_nc_u32_e32 v120, s29, v96
	v_add_nc_u32_e32 v121, s29, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v117, v110 :: v_dual_add_nc_u32 v122, s29, v94
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v123, s29, v93
	v_add_nc_u32_e32 v125, s29, v91
	v_add_nc_u32_e32 v135, s29, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v107, v106, 16, v111
	v_lshl_or_b32 v106, v112, 16, v114
	v_lshl_or_b32 v105, v115, 16, v113
	v_lshl_or_b32 v104, v116, 16, v104
	v_mov_b32_e32 v111, v110
	v_mov_b32_e32 v112, v110
	v_mov_b32_e32 v113, v110
	v_mov_b32_e32 v114, v110
	v_mov_b32_e32 v115, v110
	v_mov_b32_e32 v116, v110
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v149, v159, v154, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v136, s29, v80
	v_add_nc_u32_e32 v133, s29, v83
	v_add_nc_u32_e32 v139, s29, v77
	v_add_nc_u32_e32 v124, s29, v92
	v_add_nc_u32_e32 v126, s29, v90
	v_add_nc_u32_e32 v127, s29, v89
	v_add_nc_u32_e32 v128, s29, v88
	v_add_nc_u32_e32 v129, s29, v87
	v_add_nc_u32_e32 v130, s29, v86
	v_add_nc_u32_e32 v131, s29, v85
	v_add_nc_u32_e32 v132, s29, v84
	v_add_nc_u32_e32 v134, s29, v82
	v_add_nc_u32_e32 v137, s29, v79
	v_add_nc_u32_e32 v138, s29, v78
	v_add_nc_u32_e32 v140, s29, v76
	v_add_nc_u32_e32 v141, s29, v75
	v_add_nc_u32_e32 v142, s29, v74
	v_add_nc_u32_e32 v143, s29, v73
	v_add_nc_u32_e32 v144, s29, v72
	v_add_nc_u32_e32 v145, s29, v71
	v_add_nc_u32_e32 v146, s29, v70
	v_add_nc_u32_e32 v147, s29, v69
	v_add_nc_u32_e32 v154, s29, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[110:117], v[104:107], v[13:16], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v149, 16, v148
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v133, v133
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v134, v134
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v141, v141
	ds_load_u8 v147, v147
	ds_load_u8 v149, v154
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v142, v142
	ds_load_u8 v119, v119
	ds_load_u8 v120, v120
	ds_load_u8 v108, v108
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	ds_load_u8 v121, v121
	ds_load_u8 v122, v122
	ds_load_u8 v118, v118
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	ds_load_u8 v125, v125
	ds_load_u8 v131, v131
	ds_load_u8 v132, v132
	ds_load_u8 v129, v129
	ds_load_u8 v130, v130
	ds_load_u8 v126, v126
	v_perm_b32 v150, v158, v155, 0xc0c0004
	v_perm_b32 v151, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v152, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v153, v161, v160, 0xc0c0004
	v_perm_b32 v104, v167, v166, 0xc0c0004
	v_perm_b32 v148, v165, v164, 0xc0c0004
	v_lshl_or_b32 v106, v151, 16, v150
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_lshl_or_b32 v105, v153, 16, v152
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_lshl_or_b32 v104, v148, 16, v104
	v_perm_b32 v134, v140, v139, 0xc0c0004
	v_perm_b32 v136, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v137, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v138, v142, v141, 0xc0c0004
	v_perm_b32 v139, v149, v147, 0xc0c0004
	v_perm_b32 v140, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[104:107], v[9:12], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v133, 16, v135
	v_lshl_or_b32 v106, v136, 16, v134
	v_lshl_or_b32 v105, v138, 16, v137
	v_lshl_or_b32 v104, v140, 16, v139
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v118, v108, 0xc0c0004
	v_perm_b32 v118, v124, v123, 0xc0c0004
	v_perm_b32 v120, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v121, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v126, v125, 0xc0c0004
	v_perm_b32 v123, v132, v131, 0xc0c0004
	v_perm_b32 v124, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[104:107], v[5:8], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v108, 16, v119
	v_lshl_or_b32 v106, v120, 16, v118
	v_lshl_or_b32 v105, v122, 16, v121
	v_lshl_or_b32 v104, v124, 16, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[104:107], v[1:4], v[110:117] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v104, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v106, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v107, v111
	v_cvt_f32_i32_e32 v108, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v104 :: v_dual_add_f32 v31, v31, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v104, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v22, v22, v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v117
	v_cvt_f32_i32_e32 v106, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v107 :: v_dual_add_f32 v21, v21, v104
	v_dual_add_f32 v25, v25, v108 :: v_dual_add_f32 v30, v30, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v29, v29, v106
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v110, s1, v62
	v_add_nc_u32_e32 v111, s1, v60
	v_add_nc_u32_e32 v106, s1, v66
	v_add_nc_u32_e32 v114, s1, v54
	v_add_nc_u32_e32 v107, s1, v64
	v_add_nc_u32_e32 v112, s1, v58
	v_add_nc_u32_e32 v113, s1, v56
	v_add_nc_u32_e32 v115, s1, v52
	v_add_nc_u32_e32 v116, s1, v50
	v_add_nc_u32_e32 v117, s1, v48
	v_add_nc_u32_e32 v148, s1, v45
	v_add_nc_u32_e32 v149, s1, v42
	v_add_nc_u32_e32 v150, s1, v40
	v_add_nc_u32_e32 v151, s1, v39
	v_add_nc_u32_e32 v152, s1, v38
	v_add_nc_u32_e32 v153, s1, v109
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v110, v110
	ds_load_u8 v111, v111
	ds_load_u8 v106, v106
	ds_load_u8 v114, v114
	ds_load_u8 v115, v115
	ds_load_u8 v112, v112
	ds_load_u8 v113, v113
	ds_load_u8 v107, v107
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v116, v116
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v117, v117
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v154, s1, v65
	v_add_nc_u32_e32 v155, s1, v63
	v_add_nc_u32_e32 v104, s1, v68
	v_add_nc_u32_e32 v158, s1, v57
	v_add_nc_u32_e32 v156, s1, v61
	v_add_nc_u32_e32 v157, s1, v59
	v_add_nc_u32_e32 v159, s1, v55
	v_add_nc_u32_e32 v160, s1, v53
	v_add_nc_u32_e32 v161, s1, v51
	v_add_nc_u32_e32 v162, s1, v49
	v_add_nc_u32_e32 v163, s1, v47
	v_add_nc_u32_e32 v164, s1, v46
	v_add_nc_u32_e32 v165, s1, v44
	v_add_nc_u32_e32 v166, s1, v43
	v_add_nc_u32_e32 v167, s1, v41
	v_add_nc_u32_e32 v105, s1, v67
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v113, v149, v148, 0xc0c0004
	ds_load_u8 v148, v154
	ds_load_u8 v149, v155
	ds_load_u8 v154, v104
	ds_load_u8 v155, v158
	ds_load_u8 v158, v159
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v159, v105
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v160, v160
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v161, v161
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v119, s1, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v111, v111, v110, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v117, v116, 0xc0c0004
	v_perm_b32 v104, v153, v152, 0xc0c0004
	v_perm_b32 v116, v151, v150, 0xc0c0004
	v_mov_b32_e32 v110, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v108, s1, v99
	v_add_nc_u32_e32 v118, s1, v98
	v_add_nc_u32_e32 v120, s1, v96
	v_add_nc_u32_e32 v121, s1, v95
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v117, v110 :: v_dual_add_nc_u32 v122, s1, v94
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v123, s1, v93
	v_add_nc_u32_e32 v125, s1, v91
	v_add_nc_u32_e32 v135, s1, v81
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v107, v106, 16, v111
	v_lshl_or_b32 v106, v112, 16, v114
	v_lshl_or_b32 v105, v115, 16, v113
	v_lshl_or_b32 v104, v116, 16, v104
	v_mov_b32_e32 v111, v110
	v_mov_b32_e32 v112, v110
	v_mov_b32_e32 v113, v110
	v_mov_b32_e32 v114, v110
	v_mov_b32_e32 v115, v110
	v_mov_b32_e32 v116, v110
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v136, s1, v80
	v_add_nc_u32_e32 v133, s1, v83
	v_add_nc_u32_e32 v139, s1, v77
	v_add_nc_u32_e32 v124, s1, v92
	v_add_nc_u32_e32 v126, s1, v90
	v_add_nc_u32_e32 v127, s1, v89
	v_add_nc_u32_e32 v128, s1, v88
	v_add_nc_u32_e32 v129, s1, v87
	v_add_nc_u32_e32 v130, s1, v86
	v_add_nc_u32_e32 v131, s1, v85
	v_add_nc_u32_e32 v132, s1, v84
	v_add_nc_u32_e32 v134, s1, v82
	v_add_nc_u32_e32 v137, s1, v79
	v_add_nc_u32_e32 v138, s1, v78
	v_add_nc_u32_e32 v140, s1, v76
	v_add_nc_u32_e32 v141, s1, v75
	v_add_nc_u32_e32 v142, s1, v74
	v_add_nc_u32_e32 v143, s1, v73
	v_add_nc_u32_e32 v144, s1, v72
	v_add_nc_u32_e32 v145, s1, v71
	v_add_nc_u32_e32 v146, s1, v70
	v_add_nc_u32_e32 v147, s1, v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v149, v159, v154, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v154, s1, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[110:117], v[104:107], v[13:16], v[110:117] neg_lo:[1,1,0]
	ds_load_u8 v105, v135
	ds_load_u8 v106, v136
	ds_load_u8 v107, v133
	ds_load_u8 v133, v139
	ds_load_u8 v135, v140
	ds_load_u8 v136, v137
	ds_load_u8 v137, v138
	ds_load_u8 v134, v134
	ds_load_u8 v138, v143
	ds_load_u8 v139, v144
	ds_load_u8 v140, v141
	ds_load_u8 v141, v147
	ds_load_u8 v143, v154
	ds_load_u8 v144, v145
	ds_load_u8 v145, v146
	ds_load_u8 v142, v142
	ds_load_u8 v119, v119
	ds_load_u8 v120, v120
	ds_load_u8 v108, v108
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	ds_load_u8 v121, v121
	ds_load_u8 v122, v122
	ds_load_u8 v118, v118
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	ds_load_u8 v125, v125
	ds_load_u8 v131, v131
	ds_load_u8 v132, v132
	ds_load_u8 v129, v129
	ds_load_u8 v130, v130
	ds_load_u8 v126, v126
	v_perm_b32 v150, v158, v155, 0xc0c0004
	v_perm_b32 v151, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v152, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v153, v161, v160, 0xc0c0004
	v_perm_b32 v13, v167, v166, 0xc0c0004
	v_perm_b32 v104, v165, v164, 0xc0c0004
	v_lshl_or_b32 v16, v149, 16, v148
	v_lshl_or_b32 v15, v151, 16, v150
	v_lshl_or_b32 v14, v153, 16, v152
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v13, v104, 16, v13
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v104, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v105, v134, v107, 0xc0c0004
	v_perm_b32 v106, v135, v133, 0xc0c0004
	v_perm_b32 v107, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v133, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v134, v142, v140, 0xc0c0004
	v_perm_b32 v135, v143, v141, 0xc0c0004
	v_perm_b32 v136, v145, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[13:16], v[9:12], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v105, 16, v104
	v_lshl_or_b32 v11, v107, 16, v106
	v_lshl_or_b32 v10, v134, 16, v133
	v_lshl_or_b32 v9, v136, 16, v135
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v118, v108, 0xc0c0004
	v_perm_b32 v15, v124, v123, 0xc0c0004
	v_perm_b32 v16, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v104, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v126, v125, 0xc0c0004
	v_perm_b32 v106, v132, v131, 0xc0c0004
	v_perm_b32 v107, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[9:12], v[5:8], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v14, 16, v13
	v_lshl_or_b32 v7, v16, 16, v15
	v_lshl_or_b32 v6, v105, 16, v104
	v_lshl_or_b32 v5, v107, 16, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[5:8], v[1:4], v[110:117] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v112
	v_cvt_f32_i32_e32 v3, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v111
	v_cvt_f32_i32_e32 v5, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v28, v28, v1 :: v_dual_add_f32 v27, v27, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v114
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v20, v20, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v117
	v_cvt_f32_i32_e32 v3, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v19, v19, v1
	v_dual_add_f32 v17, v17, v5 :: v_dual_add_f32 v24, v24, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v23, v23, v3
.LBB0_12:
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v1, s37, v100
	v_mov_b32_e32 v100, 0
	v_add_nc_u32_e32 v2, s37, v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v101, 0, 1, s2
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v3, s37, v102
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s37, v103
	v_mov_b32_e32 v103, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v101
	v_mov_b32_e32 v101, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v107, 0
	v_mov_b32_e32 v104, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v110, s36, v62
	v_add_nc_u32_e32 v111, s36, v60
	v_add_nc_u32_e32 v103, s36, v66
	v_add_nc_u32_e32 v114, s36, v54
	v_add_nc_u32_e32 v104, s36, v64
	v_add_nc_u32_e32 v112, s36, v58
	v_add_nc_u32_e32 v113, s36, v56
	v_add_nc_u32_e32 v115, s36, v52
	v_add_nc_u32_e32 v116, s36, v50
	v_add_nc_u32_e32 v117, s36, v48
	v_add_nc_u32_e32 v145, s36, v45
	v_add_nc_u32_e32 v146, s36, v42
	v_add_nc_u32_e32 v147, s36, v40
	v_add_nc_u32_e32 v148, s36, v39
	v_add_nc_u32_e32 v149, s36, v38
	v_add_nc_u32_e32 v150, s36, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v110, v110
	ds_load_u8 v111, v111
	ds_load_u8 v103, v103
	ds_load_u8 v114, v114
	ds_load_u8 v115, v115
	ds_load_u8 v112, v112
	ds_load_u8 v113, v113
	ds_load_u8 v104, v104
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v116, v116
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	ds_load_u8 v147, v147
	ds_load_u8 v148, v148
	ds_load_u8 v117, v117
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s36, v65
	v_add_nc_u32_e32 v152, s36, v63
	v_add_nc_u32_e32 v101, s36, v68
	v_add_nc_u32_e32 v155, s36, v57
	v_add_nc_u32_e32 v153, s36, v61
	v_add_nc_u32_e32 v154, s36, v59
	v_add_nc_u32_e32 v156, s36, v55
	v_add_nc_u32_e32 v157, s36, v53
	v_add_nc_u32_e32 v158, s36, v51
	v_add_nc_u32_e32 v159, s36, v49
	v_add_nc_u32_e32 v160, s36, v47
	v_add_nc_u32_e32 v161, s36, v46
	v_add_nc_u32_e32 v162, s36, v44
	v_add_nc_u32_e32 v163, s36, v43
	v_add_nc_u32_e32 v164, s36, v41
	v_add_nc_u32_e32 v102, s36, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v113, v146, v145, 0xc0c0004
	ds_load_u8 v145, v151
	ds_load_u8 v146, v152
	ds_load_u8 v151, v101
	ds_load_u8 v152, v155
	ds_load_u8 v155, v156
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v156, v102
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v157, v157
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v158, v158
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v105, s36, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v111, v111, v110, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v117, v116, 0xc0c0004
	v_perm_b32 v101, v150, v149, 0xc0c0004
	v_perm_b32 v116, v148, v147, 0xc0c0004
	v_mov_b32_e32 v110, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v106, s36, v98
	v_add_nc_u32_e32 v107, s36, v97
	v_add_nc_u32_e32 v108, s36, v96
	v_add_nc_u32_e32 v118, s36, v95
	v_add_nc_u32_e32 v119, s36, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v117, v110 :: v_dual_add_nc_u32 v120, s36, v93
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v121, s36, v92
	v_add_nc_u32_e32 v132, s36, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v104, v103, 16, v111
	v_lshl_or_b32 v103, v112, 16, v114
	v_lshl_or_b32 v102, v115, 16, v113
	v_lshl_or_b32 v101, v116, 16, v101
	v_mov_b32_e32 v111, v110
	v_mov_b32_e32 v112, v110
	v_mov_b32_e32 v113, v110
	v_mov_b32_e32 v114, v110
	v_mov_b32_e32 v115, v110
	v_mov_b32_e32 v116, v110
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v146, v156, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v133, s36, v80
	v_add_nc_u32_e32 v130, s36, v83
	v_add_nc_u32_e32 v136, s36, v77
	v_add_nc_u32_e32 v122, s36, v91
	v_add_nc_u32_e32 v123, s36, v90
	v_add_nc_u32_e32 v124, s36, v89
	v_add_nc_u32_e32 v125, s36, v88
	v_add_nc_u32_e32 v126, s36, v87
	v_add_nc_u32_e32 v127, s36, v86
	v_add_nc_u32_e32 v128, s36, v85
	v_add_nc_u32_e32 v129, s36, v84
	v_add_nc_u32_e32 v131, s36, v82
	v_add_nc_u32_e32 v134, s36, v79
	v_add_nc_u32_e32 v135, s36, v78
	v_add_nc_u32_e32 v137, s36, v76
	v_add_nc_u32_e32 v138, s36, v75
	v_add_nc_u32_e32 v139, s36, v74
	v_add_nc_u32_e32 v140, s36, v73
	v_add_nc_u32_e32 v141, s36, v72
	v_add_nc_u32_e32 v142, s36, v71
	v_add_nc_u32_e32 v143, s36, v70
	v_add_nc_u32_e32 v144, s36, v69
	v_add_nc_u32_e32 v151, s36, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[110:117], v[101:104], v[13:16], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v146, 16, v145
	ds_load_u8 v132, v132
	ds_load_u8 v133, v133
	ds_load_u8 v130, v130
	ds_load_u8 v136, v136
	ds_load_u8 v137, v137
	ds_load_u8 v134, v134
	ds_load_u8 v135, v135
	ds_load_u8 v131, v131
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	ds_load_u8 v138, v138
	ds_load_u8 v144, v144
	ds_load_u8 v146, v151
	ds_load_u8 v142, v142
	ds_load_u8 v143, v143
	ds_load_u8 v139, v139
	ds_load_u8 v107, v107
	ds_load_u8 v108, v108
	ds_load_u8 v105, v105
	ds_load_u8 v120, v120
	ds_load_u8 v121, v121
	ds_load_u8 v118, v118
	ds_load_u8 v119, v119
	ds_load_u8 v106, v106
	ds_load_u8 v124, v124
	ds_load_u8 v125, v125
	ds_load_u8 v122, v122
	ds_load_u8 v128, v128
	ds_load_u8 v129, v129
	ds_load_u8 v126, v126
	ds_load_u8 v127, v127
	ds_load_u8 v123, v123
	v_perm_b32 v147, v155, v152, 0xc0c0004
	v_perm_b32 v148, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v149, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v150, v158, v157, 0xc0c0004
	v_perm_b32 v101, v164, v163, 0xc0c0004
	v_perm_b32 v145, v162, v161, 0xc0c0004
	v_lshl_or_b32 v103, v148, 16, v147
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_lshl_or_b32 v102, v150, 16, v149
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_lshl_or_b32 v101, v145, 16, v101
	v_perm_b32 v131, v137, v136, 0xc0c0004
	v_perm_b32 v133, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v134, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v135, v139, v138, 0xc0c0004
	v_perm_b32 v136, v146, v144, 0xc0c0004
	v_perm_b32 v137, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[101:104], v[9:12], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v130, 16, v132
	v_lshl_or_b32 v103, v133, 16, v131
	v_lshl_or_b32 v102, v135, 16, v134
	v_lshl_or_b32 v101, v137, 16, v136
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v106, v121, v120, 0xc0c0004
	v_perm_b32 v108, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v123, v122, 0xc0c0004
	v_perm_b32 v120, v129, v128, 0xc0c0004
	v_perm_b32 v121, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[101:104], v[5:8], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v105, 16, v107
	v_lshl_or_b32 v103, v108, 16, v106
	v_lshl_or_b32 v102, v119, 16, v118
	v_lshl_or_b32 v101, v121, 16, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[101:104], v[1:4], v[110:117] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v105, v113
	v_cvt_f32_i32_e32 v101, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v103, v115
	v_cvt_f32_i32_e32 v104, v116
	v_cvt_f32_i32_e32 v107, v117
	v_cvt_f32_i32_e32 v106, v110
	v_cvt_f32_i32_e32 v108, v111
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_mov_b32_e32 v116, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v62, s31, v62
	v_add_nc_u32_e32 v60, s31, v60
	v_add_nc_u32_e32 v66, s31, v66
	v_add_nc_u32_e32 v54, s31, v54
	v_add_nc_u32_e32 v64, s31, v64
	v_add_nc_u32_e32 v58, s31, v58
	v_add_nc_u32_e32 v56, s31, v56
	v_add_nc_u32_e32 v52, s31, v52
	v_add_nc_u32_e32 v50, s31, v50
	v_add_nc_u32_e32 v48, s31, v48
	v_add_nc_u32_e32 v45, s31, v45
	v_add_nc_u32_e32 v42, s31, v42
	v_add_nc_u32_e32 v40, s31, v40
	v_add_nc_u32_e32 v39, s31, v39
	v_add_nc_u32_e32 v38, s31, v38
	v_add_nc_u32_e32 v100, s31, v109
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v62, v62
	ds_load_u8 v60, v60
	ds_load_u8 v66, v66
	ds_load_u8 v54, v54
	ds_load_u8 v52, v52
	ds_load_u8 v58, v58
	ds_load_u8 v56, v56
	ds_load_u8 v64, v64
	ds_load_u8 v45, v45
	ds_load_u8 v42, v42
	ds_load_u8 v50, v50
	ds_load_u8 v38, v38
	ds_load_u8 v100, v100
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	ds_load_u8 v48, v48
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v65, s31, v65
	v_add_nc_u32_e32 v63, s31, v63
	v_add_nc_u32_e32 v68, s31, v68
	v_add_nc_u32_e32 v57, s31, v57
	v_add_nc_u32_e32 v67, s31, v67
	v_add_nc_u32_e32 v61, s31, v61
	v_add_nc_u32_e32 v59, s31, v59
	v_add_nc_u32_e32 v55, s31, v55
	v_add_nc_u32_e32 v53, s31, v53
	v_add_nc_u32_e32 v51, s31, v51
	v_add_nc_u32_e32 v49, s31, v49
	v_add_nc_u32_e32 v47, s31, v47
	v_add_nc_u32_e32 v46, s31, v46
	v_add_nc_u32_e32 v44, s31, v44
	v_add_nc_u32_e32 v43, s31, v43
	v_add_nc_u32_e32 v41, s31, v41
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v60, v60, v62, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v62, v64, v66, 0xc0c0004
	v_perm_b32 v52, v52, v54, 0xc0c0004
	v_perm_b32 v54, v56, v58, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v42, v42, v45, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v50, 0xc0c0004
	ds_load_u8 v50, v65
	ds_load_u8 v56, v63
	ds_load_u8 v58, v68
	ds_load_u8 v57, v57
	ds_load_u8 v55, v55
	ds_load_u8 v61, v61
	ds_load_u8 v59, v59
	ds_load_u8 v63, v67
	ds_load_u8 v64, v49
	ds_load_u8 v65, v47
	ds_load_u8 v53, v53
	ds_load_u8 v66, v43
	ds_load_u8 v67, v41
	ds_load_u8 v68, v46
	ds_load_u8 v109, v44
	ds_load_u8 v51, v51
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v99, s31, v99
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v41, v100, v38, 0xc0c0004
	v_perm_b32 v39, v39, v40, 0xc0c0004
	v_mov_b32_e32 v38, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v98, s31, v98
	v_add_nc_u32_e32 v97, s31, v97
	v_add_nc_u32_e32 v96, s31, v96
	v_add_nc_u32_e32 v95, s31, v95
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v43, v38 :: v_dual_add_nc_u32 v94, s31, v94
	v_dual_mov_b32 v44, v38 :: v_dual_add_nc_u32 v93, s31, v93
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v92, s31, v92
	v_add_nc_u32_e32 v81, s31, v81
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v49, v62, 16, v60
	v_lshl_or_b32 v48, v54, 16, v52
	v_lshl_or_b32 v47, v45, 16, v42
	v_lshl_or_b32 v46, v39, 16, v41
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v40, v38
	v_mov_b32_e32 v41, v38
	v_mov_b32_e32 v42, v38
	v_mov_b32_e32 v45, v38
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v50, v56, v50, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v63, v58, 0xc0c0004
	v_perm_b32 v54, v55, v57, 0xc0c0004
	v_perm_b32 v55, v59, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v80, s31, v80
	v_add_nc_u32_e32 v83, s31, v83
	v_add_nc_u32_e32 v77, s31, v77
	v_add_nc_u32_e32 v76, s31, v76
	v_add_nc_u32_e32 v75, s31, v75
	v_add_nc_u32_e32 v74, s31, v74
	v_add_nc_u32_e32 v73, s31, v73
	v_add_nc_u32_e32 v72, s31, v72
	v_add_nc_u32_e32 v71, s31, v71
	v_add_nc_u32_e32 v70, s31, v70
	v_add_nc_u32_e32 v69, s31, v69
	v_add_nc_u32_e32 v37, s31, v37
	v_add_nc_u32_e32 v91, s31, v91
	v_add_nc_u32_e32 v90, s31, v90
	v_add_nc_u32_e32 v89, s31, v89
	v_add_nc_u32_e32 v88, s31, v88
	v_add_nc_u32_e32 v87, s31, v87
	v_add_nc_u32_e32 v86, s31, v86
	v_add_nc_u32_e32 v85, s31, v85
	v_add_nc_u32_e32 v84, s31, v84
	v_add_nc_u32_e32 v82, s31, v82
	v_add_nc_u32_e32 v79, s31, v79
	v_add_nc_u32_e32 v78, s31, v78
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[13:16], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v52, 16, v50
	v_lshl_or_b32 v15, v55, 16, v54
	v_lshl_or_b32 v14, v51, 16, v56
	v_perm_b32 v13, v67, v66, 0xc0c0004
	v_perm_b32 v46, v109, v68, 0xc0c0004
	ds_load_u8 v47, v81
	ds_load_u8 v48, v80
	ds_load_u8 v49, v83
	ds_load_u8 v50, v77
	ds_load_u8 v51, v76
	ds_load_u8 v52, v79
	ds_load_u8 v53, v78
	ds_load_u8 v54, v82
	ds_load_u8 v55, v73
	ds_load_u8 v56, v72
	ds_load_u8 v57, v75
	ds_load_u8 v58, v69
	ds_load_u8 v37, v37
	ds_load_u8 v59, v71
	ds_load_u8 v60, v70
	ds_load_u8 v61, v74
	ds_load_u8 v62, v97
	ds_load_u8 v63, v96
	ds_load_u8 v64, v99
	ds_load_u8 v65, v93
	ds_load_u8 v66, v92
	ds_load_u8 v67, v95
	ds_load_u8 v68, v94
	ds_load_u8 v69, v98
	ds_load_u8 v70, v89
	ds_load_u8 v71, v88
	ds_load_u8 v72, v91
	ds_load_u8 v73, v85
	ds_load_u8 v74, v84
	ds_load_u8 v75, v87
	ds_load_u8 v76, v86
	ds_load_u8 v77, v90
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v37, v37, v58, 0xc0c0004
	v_lshl_or_b32 v13, v46, 16, v13
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_perm_b32 v47, v54, v49, 0xc0c0004
	v_perm_b32 v48, v51, v50, 0xc0c0004
	v_perm_b32 v49, v53, v52, 0xc0c0004
	v_perm_b32 v50, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v51, v61, v57, 0xc0c0004
	v_perm_b32 v52, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[13:16], v[9:12], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v47, 16, v46
	v_lshl_or_b32 v11, v49, 16, v48
	v_lshl_or_b32 v10, v51, 16, v50
	v_lshl_or_b32 v9, v52, 16, v37
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v69, v64, 0xc0c0004
	v_perm_b32 v15, v66, v65, 0xc0c0004
	v_perm_b32 v16, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v77, v72, 0xc0c0004
	v_perm_b32 v47, v74, v73, 0xc0c0004
	v_perm_b32 v48, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[9:12], v[5:8], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v14, 16, v13
	v_lshl_or_b32 v7, v16, 16, v15
	v_lshl_or_b32 v6, v46, 16, v37
	v_lshl_or_b32 v5, v48, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[5:8], v[1:4], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v100, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v110, v39
	v_cvt_f32_i32_e32 v112, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v115, v41
	v_cvt_f32_i32_e32 v111, v42
	v_cvt_f32_i32_e32 v113, v43
	v_cvt_f32_i32_e32 v114, v44
	v_cvt_f32_i32_e32 v116, v45
.LBB0_16:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, s28, v35
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v36, 1, v34
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s14, s15
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v26, v108 :: v_dual_lshlrev_b32 v9, 1, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v2
	v_or_b32_e32 v7, 4, v2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v10, 6, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 10, v2
	v_or_b32_e32 v6, 8, v2
	v_or_b32_e32 v3, 14, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v11, s14, v2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v12, s14, v8
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v8, s0, v8, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v13, s14, v7
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v14, s14, v10
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v10, s0, v10, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v15, s14, v6
	v_or_b32_e32 v16, s14, v5
	v_or_b32_e32 v34, s14, v4
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v6, s0, v6, 1
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v4, s0, v4, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v40, v31, v102 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v35, s14, v3
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v3, s0, v3, 1
	s_clause 0x8
	buffer_load_u16 v36, v2, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v37, v3, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v32, v105 :: v_dual_lshlrev_b32 v2, 1, v14
	v_dual_add_f32 v44, v29, v104 :: v_dual_lshlrev_b32 v3, 1, v13
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v12, 1, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v22, v103 :: v_dual_lshlrev_b32 v14, 1, v16
	v_dual_add_f32 v42, v21, v101 :: v_dual_lshlrev_b32 v13, 1, v15
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v15, v2, s[8:11], 0 offen
	buffer_load_u16 v16, v3, s[8:11], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v46, v18, v110 :: v_dual_lshlrev_b32 v3, 1, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v43, v30, v107 :: v_dual_lshlrev_b32 v2, 1, v34
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x3
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v34, v3, s[8:11], 0 offen
	buffer_load_u16 v35, v2, s[8:11], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v25, v106
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v46, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v45, v17, v100 :: v_dual_add_f32 v50, v19, v111
	v_dual_add_f32 v47, v28, v115 :: v_dual_add_f32 v48, v27, v112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v33, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v49, v20, v113 :: v_dual_add_f32 v52, v23, v114
	v_dual_add_f32 v51, v24, v116 :: v_dual_mov_b32 v54, 0x7632
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v45, s2
	v_cndmask_b32_e64 v27, v27, v48, s2
	v_cndmask_b32_e64 v28, v28, v47, s2
	v_cndmask_b32_e64 v19, v19, v50, s2
	v_cndmask_b32_e64 v20, v20, v49, s2
	v_cndmask_b32_e64 v23, v23, v52, s2
	v_cndmask_b32_e64 v24, v24, v51, s2
	v_cndmask_b32_e64 v26, v26, v38, s2
	v_cndmask_b32_e64 v31, v31, v40, s2
	v_cndmask_b32_e64 v32, v32, v39, s2
	v_cndmask_b32_e64 v21, v21, v42, s2
	v_cndmask_b32_e64 v22, v22, v41, s2
	v_cndmask_b32_e64 v29, v29, v44, s2
	v_cndmask_b32_e64 v30, v30, v43, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.h, 0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v33.h, v3.h
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v38.h, v3.h
	v_mov_b16_e32 v40.h, v3.h
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v7, 16, v7
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v8, v9, v8
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v8, v18, v8 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v36, 16, v36
	v_lshlrev_b32_e32 v5, 16, v5
	v_lshlrev_b32_e32 v10, 16, v10
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v11, v9, v11 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v36, v9, v36
	v_mul_f32_e32 v7, v9, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v25, v11
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v4, v9, v4 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v7, v27, v7 :: v_dual_lshlrev_b32 v16, 16, v16
	v_dual_mul_f32 v17, v17, v36 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v5, v9, v5
	v_dual_mul_f32 v10, v9, v10 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v16, v9, v16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v37, v9, v37
	v_mul_f32_e32 v6, v9, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v15, v9, v15
	v_dual_mul_f32 v12, v9, v12 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v10, v28, v10
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v14, v9, v14 :: v_dual_mul_f32 v5, v20, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v13, v9, v13 :: v_dual_mul_f32 v6, v19, v6
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v19, v24, v37 :: v_dual_mul_f32 v4, v23, v4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v15, v32, v15 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v23, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v18, v9, v35
	v_mul_f32_e32 v25, 0xbfb8aa3b, v10
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v9, v9, v34 :: v_dual_mul_f32 v12, v26, v12
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v13, v21, v13 :: v_dual_mul_f32 v16, v31, v16
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v6
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v14, v22, v14 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v21
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v27
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_cndmask_b32_e64 v21, 0, 0x42800000, s4
	v_dual_mul_f32 v24, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v9, v30, v9
	v_cndmask_b32_e64 v27, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v6
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v18, v29, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v4 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v19
	v_exp_f32_e32 v20, v20
	v_mul_f32_e32 v22, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v8
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v27, v27
	v_cndmask_b32_e64 v24, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v22
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s5
	v_ldexp_f32 v20, v20, v28
	v_cndmask_b32_e64 v22, 0, 0x42800000, s3
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_ldexp_f32 v25, v25, v30
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v7
	v_ldexp_f32 v27, v27, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_ldexp_f32 v23, v23, v29
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v5
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v20, v20, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s4
	v_ldexp_f32 v24, v24, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v23, v23, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v21, v21, v34
	v_ldexp_f32 v22, v22, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v25, v25, v10
	v_fma_f32 v58, -v28, v47, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v4 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v27, v27, v19
	v_rcp_f32_e32 v49, v32
	v_fmac_f32_e32 v47, v58, v47
	v_div_scale_f32 v35, null, v24, v24, v7
	v_div_scale_f32 v42, null, v21, v21, v6
	v_rcp_f32_e32 v48, v30
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v35
	v_rcp_f32_e32 v55, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v42
	v_fma_f32 v60, -v32, v49, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, vcc_lo, v17, v20, v17
	v_fma_f32 v59, -v30, v48, 1.0
	v_fma_f32 v61, -v35, v50, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v64, -v44, v55, 1.0
	v_fmac_f32_e32 v49, v60, v49
	v_div_scale_f32 v37, null, v22, v22, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s0, v8, v23, v8
	v_div_scale_f32 v36, s2, v7, v24, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v37
	v_fma_f32 v63, -v42, v52, 1.0
	v_dual_fmac_f32 v48, v59, v48 :: v_dual_fmac_f32 v55, v64, v55
	v_fmac_f32_e32 v50, v61, v50
	v_div_scale_f32 v43, s4, v6, v21, v6
	v_mul_f32_e32 v59, v31, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v52, v63, v52 :: v_dual_mul_f32 v61, v36, v50
	v_mul_f32_e32 v58, v29, v47
	v_fma_f32 v62, -v37, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_mul_f32 v63, v43, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v35, v61, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v28, v58, v29
	v_fmac_f32_e32 v51, v62, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v46, null, v26, v26, v4
	v_div_scale_f32 v41, s3, v5, v22, v5
	v_dual_fmac_f32 v58, v66, v47 :: v_dual_fmac_f32 v61, v69, v50
	v_fma_f32 v67, -v30, v59, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v56, v46
	v_mul_f32_e32 v62, v41, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v28, v58, v29
	v_div_scale_f32 v34, s1, v10, v25, v10
	v_fmac_f32_e32 v59, v67, v48
	v_div_scale_f32 v57, s6, v4, v26, v4
	v_div_fmas_f32 v28, v28, v47, v58
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v30, v59, v31
	v_fma_f32 v65, -v46, v56, 1.0
	v_fma_f32 v70, -v37, v62, v41
	v_div_fixup_f32 v17, v28, v20, v17
	v_div_scale_f32 v45, s5, v19, v27, v19
	v_div_fmas_f32 v29, v29, v48, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v65, v56 :: v_dual_mul_f32 v11, v11, v17
	v_mul_f32_e32 v60, v34, v49
	v_fma_f32 v71, -v42, v63, v43
	v_div_fixup_f32 v8, v29, v23, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v65, v57, v56
	v_fma_f32 v31, -v35, v61, v36
	v_fma_f32 v68, -v32, v60, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v12, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v46, v65, v57
	v_dual_mul_f32 v64, v45, v55 :: v_dual_fmac_f32 v63, v71, v52
	v_fmac_f32_e32 v60, v68, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v62, v70, v51 :: v_dual_fmac_f32 v65, v73, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v44, v64, v45
	v_fma_f32 v30, -v32, v60, v34
	v_fma_f32 v34, -v42, v63, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v32, -v37, v62, v41
	v_fma_f32 v36, -v46, v65, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v11.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v30, v49, v60
	s_mov_b32 vcc_lo, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v11, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v31, v50, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v20, v25, v10
	v_div_fmas_f32 v23, v32, v51, v62
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v7, v28, v24, v7
	v_div_fmas_f32 v17, v34, v52, v63
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v23, v22, v5
	v_fmac_f32_e32 v64, v72, v55
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v10, v15, v10 :: v_dual_mul_f32 v7, v16, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v17, v21, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v14, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v44, v64, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v10, v10
	v_mov_b16_e32 v38.l, v7.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v13, v6 :: v_dual_and_b32 v13, 1, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v35, v55, v64
	s_mov_b32 vcc_lo, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v5, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v36, v56, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v27, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v3
	v_mov_b16_e32 v3.l, v10.h
	v_add3_u32 v8, v8, v13, 0x7fff
	v_mov_b16_e32 v39.l, v6.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v15, v26, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v11, v14, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v12, 1, v3
	v_mov_b16_e32 v3.l, v5.h
	v_and_b32_e32 v15, 1, v39
	v_cmp_o_f32_e64 s4, v6, v6
	v_cndmask_b16 v8.l, 0x7fff, v11.h, s0
	v_cmp_o_f32_e64 s2, v7, v7
	v_and_b32_e32 v13, 1, v3
	v_add3_u32 v6, v6, v15, 0x7fff
	v_mov_b16_e32 v3.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v18, v4 :: v_dual_cndmask_b32 v11, 0x3276, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v5, v13, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v40.l, v4.h
	v_cmp_o_f32_e64 s5, v9, v9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_and_b32_e32 v14, 1, v38
	v_cmp_o_f32_e64 s0, v4, v4
	v_add3_u32 v3, v9, v3, 0x7fff
	v_lshl_or_b32 v9, v11, 8, v11
	v_cndmask_b32_e32 v6, v5, v8, vcc_lo
	v_add3_u32 v0, v7, v14, 0x7fff
	v_cndmask_b32_e32 v7, 0x1054, v53, vcc_lo
	v_add3_u32 v10, v10, v12, 0x7fff
	v_and_b32_e32 v12, 1, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v10.l, 0x7fff, v0.h, s2
	v_lshl_or_b32 v7, v7, 8, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s1
	v_add3_u32 v4, v4, v12, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s0
	v_and_b32_e32 v3, 0x540054, v7
	v_and_b32_e32 v7, 0x760076, v9
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v4, v1, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v1, v8, v5, vcc_lo
	v_cndmask_b32_e32 v8, v0, v10, vcc_lo
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v5, v7, 4, v7
	v_cndmask_b32_e32 v7, v10, v0, vcc_lo
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v9, s14, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 0x5040504, v3
	v_and_b32_e32 v5, 0x7060706, v5
	v_permlanex16_b32 v7, v7, s7, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s14, s10
	v_add_lshl_u32 v4, v9, v4, 1
	v_perm_b32 v0, v1, v6, v3
	v_perm_b32 v1, v1, v6, v5
	v_perm_b32 v2, v7, v8, v3
	v_perm_b32 v3, v7, v8, v5
	s_mov_b32 s15, s11
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 168
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14116
; TotalNumSgprs: 42
; NumVgprs: 168
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
