	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v14, 4, v0
	v_and_b32_e32 v80, 15, v0
	v_lshlrev_b32_e32 v91, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v9, 48, v14
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s24, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	s_load_b128 s[16:19], s[0:1], 0x0
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[18:19]
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s23, s19
	s_mov_b32 s22, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	v_readfirstlane_b32 s9, v1
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[10:11], null, s10, v1, v[9:10]
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v2, 0xc0, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_mad_u64_u32 v[11:12], null, s10, v2, v[9:10]
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_hi_u32 s4, s9, s11
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v89, s10, 6, v10
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_add_i32 s9, s9, s4
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v90, s10, 7, v10
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
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
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s30, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s5, s4, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s26, s4, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s5, s10, 0xff
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s6
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_mul_i32 s29, s26, s10
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s24, s2, 6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[12:13], null, s24, s10, v[10:11]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s4, s29, s30
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v2, s4, v10
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v1, s30, v12
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_addk_i32 s30, 0x100
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v5, s4, v11
	v_add_nc_u32_e32 v3, s4, v89
	v_add_nc_u32_e32 v4, s4, v90
	s_addk_i32 s4, 0x100
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v7, s30, v12
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v15, 0x80000000, v2, s3
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v2, 0x100, v2
	v_add_nc_u32_e32 v8, s4, v89
	v_add_nc_u32_e32 v13, s4, v90
	v_add_nc_u32_e32 v32, 0x100, v5
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v20, 0x80000000, v3, s3
	v_cndmask_b32_e64 v24, 0x80000000, v4, s3
	v_cndmask_b32_e64 v28, 0x80000000, v5, s3
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b128 v[3:6], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v7, s2
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v7, 0x80000000, v8, s2
	v_cndmask_b32_e64 v8, 0x80000000, v13, s2
	v_cndmask_b32_e64 v13, 0x80000000, v32, s2
	s_clause 0x3
	buffer_load_b128 v[16:19], v15, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v20, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v24, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v28, s[20:23], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[32:35], v1, s[16:19], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[36:39], v2, s[20:23], 0 offen
	buffer_load_b128 v[40:43], v7, s[20:23], 0 offen
	buffer_load_b128 v[44:47], v8, s[20:23], 0 offen
	buffer_load_b128 v[48:51], v13, s[20:23], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v15, 1, v0
	v_lshlrev_b32_e32 v2, 3, v0
	s_mov_b32 s4, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x2ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v1, 48, v15
	v_xor_b32_e32 v92, v14, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v92
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[3:6] offset:32768
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[16:19]
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[20:23] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[24:27] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[28:31] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[32:35] offset:36864
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[36:39] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[40:43] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[44:47] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[48:51] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshl_or_b32 v81, v80, 6, v3
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_b32_e32 v13, 0x1c00, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v82, 16, v81
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_or_b32_e32 v85, v81, v13
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v83, 32, v81
	v_xor_b32_e32 v84, 48, v81
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v86, 16, v85
	v_xor_b32_e32 v88, 32, v85
	v_xor_b32_e32 v87, 48, v85
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
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
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v55, 0
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s27, 0, 0x9000
	s_add_i32 s28, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr87
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s31, s5, 8
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 48, v2
	v_and_b32_e32 v13, 0x1c00, v91
	v_mov_b32_e32 v55, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v81, v80, 6, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v2, s5
	v_or_b32_e32 v85, v81, v13
	v_xor_b32_e32 v82, 16, v81
	v_xor_b32_e32 v83, 32, v81
	v_xor_b32_e32 v84, 48, v81
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v78, 0
	v_xor_b32_e32 v86, 16, v85
	v_xor_b32_e32 v88, 32, v85
	v_xor_b32_e32 v87, 48, v85
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v17, 0
	s_addk_i32 s30, 0x100
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s27, 0, 0x9000
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s31, s31, -3
	s_mov_b32 s33, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s6, s5, 8
	s_mov_b32 s7, s4
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s4, s30, s6
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v101, s7, v85
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v93, s4, v12
	.loc	1 374 22 is_stmt 0              ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v169, s34, v81
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v102, s7, v86
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v173, s34, v82
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s4, s4, s29
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[157:160], v93, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[161:164], v101 offset:8192
	ds_load_b128 v[165:168], v102 offset:8192
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[109:112], v169
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[149:152], v101
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[113:116], v173
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[153:156], v102
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[125:128], v169 offset:1024
	ds_load_b128 v[129:132], v173 offset:1024
	ds_load_b128 v[141:144], v169 offset:2048
	ds_load_b128 v[145:148], v173 offset:2048
	ds_load_b128 v[169:172], v169 offset:3072
	ds_load_b128 v[173:176], v173 offset:3072
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s6, s33, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s6, 2
	s_cselect_b32 s33, s6, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s6, s33, 12
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_lshl_b32 s8, s33, 14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s6, s6, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[149:152], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[161:164], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[161:164], v[125:128], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[153:156], v[113:116], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[165:168], v[113:116], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[149:152], v[125:128], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[129:132], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[161:164], v[141:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[129:132], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[149:152], v[141:144], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[165:168], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[169:172], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[173:176], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[161:164], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v169, s7, v88
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[149:156], v[165:168], v[173:176], v[149:156] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v173, s34, v83
	ds_load_b128 v[161:164], v173
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[165:168], v169
	ds_load_b128 v[169:172], v169 offset:8192
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[165:168], v[161:164], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[161:164], v[101:108] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[161:164], v173 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[161:164], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[169:172], v[161:164], v[117:124] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[161:164], v173 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[161:164], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[169:172], v[161:164], v[133:140] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[161:164], v173 offset:3072
	v_add_nc_u32_e32 v173, s34, v84
	s_mov_b32 s34, s27
	s_add_i32 s27, s6, 0x8000
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[169:172], v[161:164], v[149:156] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v169, s7, v87
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[161:164], v[141:148] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[161:164], v173
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[165:168], v169
	ds_load_b128 v[169:172], v169 offset:8192
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s7, s5, 1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[165:168], v[161:164], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[161:164], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v175, v107
	v_cvt_f32_i32_e32 v174, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v176, v108
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v66, v66, v175
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[161:164], v173 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[161:164], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[169:172], v[161:164], v[117:124] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[161:164], v173 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v56, v56, v117
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[161:164], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[169:172], v[161:164], v[133:140] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[161:164], v173 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v173, v105
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v105, s4, v11
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v62, v62, v111
	v_add_f32_e32 v60, v60, v113
	v_add_f32_e32 v58, v58, v115
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[161:164], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[169:172], v[161:164], v[149:156] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v161, v93
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v93, s4, v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v165, v97
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v97, s4, v89
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v169, v101
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v101, s4, v90
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v162, v94
	v_cvt_f32_i32_e32 v163, v95
	v_cvt_f32_i32_e32 v164, v96
	v_cvt_f32_i32_e32 v166, v98
	v_cvt_f32_i32_e32 v167, v99
	v_cvt_f32_i32_e32 v168, v100
	v_cvt_f32_i32_e32 v170, v102
	v_cvt_f32_i32_e32 v171, v103
	v_cvt_f32_i32_e32 v172, v104
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[93:96], v93, s[20:23], 0 offen
	buffer_load_b128 v[97:100], v97, s[20:23], 0 offen
	buffer_load_b128 v[101:104], v101, s[20:23], 0 offen
	buffer_load_b128 v[105:108], v105, s[20:23], 0 offen
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	s_mov_b32 s4, s28
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_add_i32 s28, s8, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v54, v54, v118 :: v_dual_add_nc_u32 v177, s6, v92
	v_add_f32_e32 v55, v55, v161
	v_dual_add_f32 v79, v79, v162 :: v_dual_add_f32 v52, v52, v120
	v_dual_add_f32 v78, v78, v163 :: v_dual_add_f32 v77, v77, v164
	v_add_f32_e32 v50, v50, v122
	v_dual_add_f32 v76, v76, v165 :: v_dual_add_f32 v75, v75, v166
	v_add_f32_e32 v48, v48, v124
	v_dual_add_f32 v74, v74, v167 :: v_dual_add_f32 v73, v73, v168
	v_add_f32_e32 v46, v46, v126
	v_dual_add_f32 v72, v72, v169 :: v_dual_add_f32 v71, v71, v170
	v_add_f32_e32 v44, v44, v128
	v_dual_add_f32 v70, v70, v171 :: v_dual_add_f32 v69, v69, v172
	v_add_f32_e32 v42, v42, v130
	v_dual_add_f32 v68, v68, v173 :: v_dual_add_f32 v67, v67, v174
	v_add_f32_e32 v40, v40, v132
	v_dual_add_f32 v65, v65, v176 :: v_dual_add_f32 v38, v38, v134
	v_dual_add_f32 v64, v64, v109 :: v_dual_add_f32 v63, v63, v110
	v_add_f32_e32 v36, v36, v136
	v_dual_add_f32 v61, v61, v112 :: v_dual_add_f32 v34, v34, v138
	v_dual_add_f32 v59, v59, v114 :: v_dual_add_f32 v32, v32, v140
	v_dual_add_f32 v57, v57, v116 :: v_dual_add_f32 v30, v30, v142
	v_dual_add_f32 v53, v53, v119 :: v_dual_add_f32 v28, v28, v144
	v_dual_add_f32 v51, v51, v121 :: v_dual_add_f32 v26, v26, v146
	v_dual_add_f32 v49, v49, v123 :: v_dual_add_f32 v24, v24, v148
	v_dual_add_f32 v47, v47, v125 :: v_dual_add_f32 v22, v22, v150
	v_dual_add_f32 v45, v45, v127 :: v_dual_add_f32 v20, v20, v152
	v_dual_add_f32 v43, v43, v129 :: v_dual_add_f32 v18, v18, v154
	v_dual_add_f32 v41, v41, v131 :: v_dual_add_f32 v16, v16, v156
	v_add_f32_e32 v39, v39, v133
	v_add_f32_e32 v37, v37, v135
	v_add_f32_e32 v35, v35, v137
	v_add_f32_e32 v33, v33, v139
	v_add_f32_e32 v31, v31, v141
	v_add_f32_e32 v29, v29, v143
	v_add_f32_e32 v27, v27, v145
	v_add_f32_e32 v25, v25, v147
	v_add_f32_e32 v23, v23, v149
	v_add_f32_e32 v21, v21, v151
	v_add_f32_e32 v19, v19, v153
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v109, s28, v92
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v17, v17, v155
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s5, s31
	s_mov_b32 s5, s7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v177, v[157:160] offset:32768
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v109, v[93:96]
	s_waitcnt vmcnt(2)
	ds_store_b128 v109, v[97:100] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v109, v[101:104] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[105:108] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v91
.LBB0_7:                                ; %._crit_edge
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v6, s4, v88
	v_add_nc_u32_e32 v7, s4, v86
	v_add_nc_u32_e32 v8, s4, v87
	v_add_nc_u32_e32 v10, s4, v85
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s11, s4
	s_mov_b32 s10, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_dual_mov_b32 v96, s11 :: v_dual_mov_b32 v95, s10
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[2:5], v6 offset:8192
	ds_load_b128 v[153:156], v6
	ds_load_b128 v[157:160], v7 offset:8192
	ds_load_b128 v[161:164], v7
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v89, s4 :: v_dual_add_nc_u32 v6, s34, v81
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[129:132], v6 offset:1024
	ds_load_b128 v[113:116], v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v91, s6
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[165:168], v10 offset:8192
	ds_load_b128 v[169:172], v10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v10, s34, v82
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v92, s7 :: v_dual_add_nc_u32 v11, s34, v83
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[173:176], v10 offset:1024
	ds_load_b128 v[117:120], v10
	ds_load_b128 v[177:180], v11 offset:1024
	ds_load_b128 v[121:124], v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v94, s9 :: v_dual_add_nc_u32 v7, s34, v84
	v_dual_mov_b32 v93, s8 :: v_dual_mov_b32 v90, s5
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[181:184], v8 offset:8192
	ds_load_b128 v[185:188], v8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[189:192], v7 offset:1024
	ds_load_b128 v[125:128], v7
	ds_load_b128 v[193:196], v6 offset:3072
	ds_load_b128 v[145:148], v6 offset:2048
	ds_load_b128 v[197:200], v10 offset:3072
	ds_load_b128 v[201:204], v10 offset:2048
	ds_load_b128 v[205:208], v11 offset:3072
	ds_load_b128 v[209:212], v11 offset:2048
	ds_load_b128 v[213:216], v7 offset:3072
	ds_load_b128 v[217:220], v7 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[113:116], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[169:172], v[113:116], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[161:164], v[117:120], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[157:160], v[117:120], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[169:172], v[129:132], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[153:156], v[121:124], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[2:5], v[121:124], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[165:168], v[145:148], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[161:164], v[173:176], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[185:188], v[125:128], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[181:184], v[125:128], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[129:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[169:172], v[145:148], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[169:172], v[193:196], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[165:168], v[193:196], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[157:160], v[173:176], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[157:160], v[201:204], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[153:156], v[177:180], v[113:120] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v106
	v_wmma_i32_16x16x16_iu8 v[89:96], v[157:160], v[197:200], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[2:5], v[177:180], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[2:5], v[209:212], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[185:188], v[189:192], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[161:164], v[201:204], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[2:5], v[205:208], v[89:96] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v98
	v_cvt_f32_i32_e32 v3, v99
	v_cvt_f32_i32_e32 v4, v100
	v_cvt_f32_i32_e32 v5, v101
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v71, v71, v6
	v_add_f32_e32 v79, v79, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v102
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v78, v78, v3 :: v_dual_add_f32 v77, v77, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v103
	v_cvt_f32_i32_e32 v4, v104
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v76, v76, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v75, v75, v2 :: v_dual_add_f32 v74, v74, v3
	v_add_f32_e32 v73, v73, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v107
	v_cvt_f32_i32_e32 v3, v108
	v_cvt_f32_i32_e32 v4, v109
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v72, v72, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v110
	v_cvt_f32_i32_e32 v6, v111
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v70, v70, v2 :: v_dual_add_f32 v69, v69, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v112
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v68, v68, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v113
	v_cvt_f32_i32_e32 v4, v114
	v_wmma_i32_16x16x16_iu8 v[129:136], v[153:156], v[209:212], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[181:184], v[189:192], v[121:128] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v67, v67, v5 :: v_dual_add_f32 v66, v66, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v63, v63, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v115
	v_cvt_f32_i32_e32 v6, v116
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v65, v65, v2 :: v_dual_add_f32 v64, v64, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v117
	v_cvt_f32_i32_e32 v3, v118
	v_cvt_f32_i32_e32 v4, v119
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[185:188], v[217:220], v[129:136] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v62, v62, v5 :: v_dual_add_f32 v61, v61, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v120
	v_cvt_f32_i32_e32 v6, v121
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v60, v60, v2 :: v_dual_add_f32 v59, v59, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v122
	v_cvt_f32_i32_e32 v3, v123
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v58, v58, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v124
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v57, v57, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v125
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v56, v56, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v6, v126
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v53, v53, v3 :: v_dual_add_f32 v52, v52, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v128
	v_cvt_f32_i32_e32 v4, v129
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v54, v54, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v127
	v_wmma_i32_16x16x16_iu8 v[145:152], v[161:164], v[197:200], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[181:184], v[217:220], v[137:144] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v51, v51, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v130
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v49, v49, v2 :: v_dual_add_f32 v48, v48, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v132
	v_cvt_f32_i32_e32 v3, v133
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v50, v50, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v6, v131
	v_wmma_i32_16x16x16_iu8 v[145:152], v[153:156], v[205:208], v[145:152] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v47, v47, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v134
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v44, v44, v2
	v_add_f32_e32 v45, v45, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v6, v136
	v_cvt_f32_i32_e32 v2, v137
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v46, v46, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v135
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[213:216], v[145:152] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v43, v43, v3 :: v_dual_add_f32 v40, v40, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v41, v41, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v140
	v_cvt_f32_i32_e32 v6, v141
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v42, v42, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v139
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v39, v39, v2 :: v_dual_add_f32 v36, v36, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v142
	v_cvt_f32_i32_e32 v5, v145
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v38, v38, v3 :: v_dual_add_f32 v37, v37, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v143
	v_cvt_f32_i32_e32 v4, v144
	v_wmma_i32_16x16x16_iu8 v[89:96], v[181:184], v[213:216], v[89:96] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v35, v35, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v6, v146
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v33, v33, v3 :: v_dual_add_f32 v32, v32, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v148
	v_cvt_f32_i32_e32 v4, v149
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v34, v34, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v147
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v31, v31, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v150
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v28, v28, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v89
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v30, v30, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v6, v151
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v29, v29, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v152
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v27, v27, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v90
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v25, v25, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v6, v92
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v24, v24, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v93
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v26, v26, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v91
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v23, v23, v3 :: v_dual_add_f32 v20, v20, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v94
	v_cvt_f32_i32_e32 v6, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v22, v22, v4 :: v_dual_add_f32 v21, v21, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v95
	v_cvt_f32_i32_e32 v5, v96
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v19, v19, v2 :: v_dual_add_f32 v18, v18, v3
	v_add_f32_e32 v55, v55, v6
	v_dual_add_f32 v17, v17, v4 :: v_dual_add_f32 v16, v16, v5
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
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
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v6, s28, v88
	v_add_nc_u32_e32 v7, s28, v86
	v_add_nc_u32_e32 v10, s28, v85
	ds_load_b128 v[2:5], v6 offset:8192
	ds_load_b128 v[145:148], v6
	ds_load_b128 v[149:152], v7 offset:8192
	ds_load_b128 v[153:156], v7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v6, s27, v81
	v_add_nc_u32_e32 v7, s27, v83
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[157:160], v10 offset:8192
	ds_load_b128 v[161:164], v10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v11, s27, v82
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v8, s28, v87
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v10, s27, v84
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v88, s11
	v_dual_mov_b32 v86, s9 :: v_dual_mov_b32 v81, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[121:124], v6 offset:1024
	ds_load_b128 v[105:108], v6
	ds_load_b128 v[165:168], v7 offset:1024
	ds_load_b128 v[113:116], v7
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v84, s7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[169:172], v11 offset:1024
	ds_load_b128 v[117:120], v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v87, s10
	v_mov_b32_e32 v85, s8
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[173:176], v8 offset:8192
	ds_load_b128 v[177:180], v8
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v83, s6 :: v_dual_mov_b32 v82, s5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[181:184], v10 offset:1024
	ds_load_b128 v[125:128], v10
	ds_load_b128 v[185:188], v6 offset:3072
	ds_load_b128 v[137:140], v6 offset:2048
	ds_load_b128 v[189:192], v11 offset:3072
	ds_load_b128 v[193:196], v11 offset:2048
	ds_load_b128 v[197:200], v7 offset:3072
	ds_load_b128 v[201:204], v7 offset:2048
	ds_load_b128 v[205:208], v10 offset:3072
	ds_load_b128 v[209:212], v10 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[161:164], v[105:108], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[157:160], v[105:108], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[161:164], v[121:124], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[153:156], v[117:120], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[149:152], v[117:120], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[153:156], v[169:172], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[157:160], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[145:148], v[113:116], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[2:5], v[113:116], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[157:160], v[121:124], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[149:152], v[193:196], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[177:180], v[125:128], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[173:176], v[125:128], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[161:164], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[161:164], v[185:188], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[157:160], v[185:188], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[149:152], v[169:172], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[153:156], v[193:196], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[153:156], v[189:192], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[145:148], v[165:168], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[149:152], v[189:192], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[2:5], v[165:168], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[145:148], v[201:204], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[2:5], v[201:204], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[145:148], v[197:200], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[2:5], v[197:200], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[177:180], v[181:184], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[173:176], v[181:184], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[177:180], v[209:212], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[173:176], v[209:212], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[177:180], v[205:208], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[173:176], v[205:208], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v89
	v_cvt_f32_i32_e32 v4, v90
	v_cvt_f32_i32_e32 v5, v91
	v_cvt_f32_i32_e32 v6, v92
	v_cvt_f32_i32_e32 v7, v93
	v_cvt_f32_i32_e32 v8, v94
	v_cvt_f32_i32_e32 v10, v95
	v_cvt_f32_i32_e32 v11, v96
	v_cvt_f32_i32_e32 v12, v97
	v_cvt_f32_i32_e32 v89, v98
	v_cvt_f32_i32_e32 v90, v99
	v_cvt_f32_i32_e32 v91, v100
	v_cvt_f32_i32_e32 v92, v101
	v_cvt_f32_i32_e32 v93, v102
	v_cvt_f32_i32_e32 v94, v103
	v_cvt_f32_i32_e32 v95, v104
	v_cvt_f32_i32_e32 v96, v105
	v_cvt_f32_i32_e32 v97, v106
	v_cvt_f32_i32_e32 v98, v107
	v_cvt_f32_i32_e32 v99, v108
	v_cvt_f32_i32_e32 v100, v109
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v103, v112
	v_cvt_f32_i32_e32 v104, v113
	v_cvt_f32_i32_e32 v105, v114
	v_cvt_f32_i32_e32 v106, v115
	v_cvt_f32_i32_e32 v107, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v110, v119
	v_cvt_f32_i32_e32 v111, v120
	v_cvt_f32_i32_e32 v112, v121
	v_cvt_f32_i32_e32 v113, v122
	v_cvt_f32_i32_e32 v114, v123
	v_cvt_f32_i32_e32 v115, v124
	v_cvt_f32_i32_e32 v116, v125
	v_cvt_f32_i32_e32 v117, v126
	v_cvt_f32_i32_e32 v118, v127
	v_cvt_f32_i32_e32 v119, v128
	v_cvt_f32_i32_e32 v120, v129
	v_cvt_f32_i32_e32 v121, v130
	v_cvt_f32_i32_e32 v122, v131
	v_cvt_f32_i32_e32 v123, v132
	v_cvt_f32_i32_e32 v124, v133
	v_cvt_f32_i32_e32 v125, v134
	v_cvt_f32_i32_e32 v126, v135
	v_cvt_f32_i32_e32 v127, v136
	v_cvt_f32_i32_e32 v128, v137
	v_cvt_f32_i32_e32 v129, v138
	v_cvt_f32_i32_e32 v130, v139
	v_cvt_f32_i32_e32 v131, v140
	v_cvt_f32_i32_e32 v132, v141
	v_cvt_f32_i32_e32 v133, v142
	v_cvt_f32_i32_e32 v134, v143
	v_cvt_f32_i32_e32 v135, v144
	v_cvt_f32_i32_e32 v136, v81
	v_cvt_f32_i32_e32 v137, v82
	v_cvt_f32_i32_e32 v138, v83
	v_cvt_f32_i32_e32 v139, v84
	v_cvt_f32_i32_e32 v140, v85
	v_cvt_f32_i32_e32 v141, v86
	v_cvt_f32_i32_e32 v142, v87
	v_cvt_f32_i32_e32 v143, v88
.LBB0_11:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v80, s24, v80
	.loc	1 404 14 is_stmt 0              ; generate_amdgcn.py:404:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 399 13 is_stmt 1              ; generate_amdgcn.py:399:13
	v_dual_add_f32 v3, v55, v3 :: v_dual_lshlrev_b32 v80, 1, v80
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	v_or_b32_e32 v2, s26, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v5, v78, v5 :: v_dual_add_f32 v6, v77, v6
	v_add_f32_e32 v85, v71, v89
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_or_b32_e32 v81, 32, v80
	v_or_b32_e32 v82, 64, v80
	v_or_b32_e32 v83, 0x60, v80
	s_clause 0x3
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	v_lshlrev_b32_e32 v84, 1, v2
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v12, v72, v12 :: v_dual_add_f32 v89, v67, v93
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v86, v70, v90
	v_dual_add_f32 v88, v68, v92 :: v_dual_add_f32 v93, v63, v97
	v_add_f32_e32 v90, v66, v94
	v_dual_add_f32 v92, v64, v96 :: v_dual_add_f32 v97, v59, v101
	v_add_f32_e32 v94, v62, v98
	v_dual_add_f32 v96, v60, v100 :: v_dual_add_f32 v101, v54, v105
	v_add_f32_e32 v98, v58, v102
	v_dual_add_f32 v100, v56, v104 :: v_dual_add_f32 v105, v50, v109
	v_add_f32_e32 v102, v53, v106
	v_dual_add_f32 v104, v51, v108 :: v_dual_add_f32 v109, v46, v113
	v_add_f32_e32 v106, v49, v110
	v_dual_add_f32 v108, v47, v112 :: v_dual_add_f32 v113, v42, v117
	v_add_f32_e32 v110, v45, v114
	v_dual_add_f32 v112, v43, v116 :: v_dual_add_f32 v117, v38, v121
	v_add_f32_e32 v114, v41, v118
	v_dual_add_f32 v116, v39, v120 :: v_dual_add_f32 v121, v34, v125
	v_add_f32_e32 v118, v37, v122
	v_dual_add_f32 v120, v35, v124 :: v_dual_add_f32 v125, v30, v129
	v_add_f32_e32 v122, v33, v126
	v_dual_add_f32 v124, v31, v128 :: v_dual_add_f32 v129, v26, v133
	v_add_f32_e32 v126, v29, v130
	v_dual_add_f32 v128, v27, v132 :: v_dual_add_f32 v133, v22, v137
	v_add_f32_e32 v130, v25, v134
	v_dual_add_f32 v132, v23, v136 :: v_dual_add_f32 v137, v18, v141
	v_add_f32_e32 v134, v21, v138
	v_dual_add_f32 v138, v17, v142 :: v_dual_and_b32 v1, 32, v1
	v_dual_add_f32 v136, v19, v140 :: v_dual_and_b32 v141, 28, v15
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v47, v47, v108, s2
	v_cndmask_b32_e64 v46, v46, v109, s2
	v_cndmask_b32_e64 v108, v18, v137, s2
	v_cndmask_b32_e64 v109, v17, v138, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v10, v74, v10 :: v_dual_add_f32 v87, v69, v91
	v_add_f32_e32 v91, v65, v95
	v_add_f32_e32 v95, v61, v99
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v55, v55, v3, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v4, v79, v4 :: v_dual_add_f32 v7, v76, v7
	v_add_f32_e32 v99, v57, v103
	v_add_f32_e32 v103, v52, v107
	v_add_f32_e32 v107, v48, v111
	v_add_f32_e32 v111, v44, v115
	v_add_f32_e32 v115, v40, v119
	v_add_f32_e32 v119, v36, v123
	v_add_f32_e32 v123, v32, v127
	v_add_f32_e32 v127, v28, v131
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v61, v61, v95, s2
	v_cndmask_b32_e64 v95, v33, v122, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v8, v75, v8 :: v_dual_add_f32 v11, v73, v11
	v_add_f32_e32 v131, v24, v135
	v_add_f32_e32 v135, v20, v139
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v79, v79, v4, s2
	v_cndmask_b32_e64 v78, v78, v5, s2
	v_cndmask_b32_e64 v77, v77, v6, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v139, v16, v143
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v8, v75, v8, s2
	v_cndmask_b32_e64 v10, v74, v10, s2
	v_cndmask_b32_e64 v71, v71, v85, s2
	v_cndmask_b32_e64 v70, v70, v86, s2
	v_cndmask_b32_e64 v74, v60, v96, s2
	v_cndmask_b32_e64 v59, v59, v97, s2
	v_cndmask_b32_e64 v58, v58, v98, s2
	v_cndmask_b32_e64 v57, v57, v99, s2
	v_cndmask_b32_e64 v75, v56, v100, s2
	v_cndmask_b32_e64 v54, v54, v101, s2
	v_cndmask_b32_e64 v51, v51, v104, s2
	v_cndmask_b32_e64 v50, v50, v105, s2
	v_cndmask_b32_e64 v85, v49, v106, s2
	v_cndmask_b32_e64 v86, v48, v107, s2
	v_cndmask_b32_e64 v96, v32, v123, s2
	v_cndmask_b32_e64 v97, v31, v124, s2
	v_cndmask_b32_e64 v98, v30, v125, s2
	v_cndmask_b32_e64 v99, v29, v126, s2
	v_cndmask_b32_e64 v100, v26, v129, s2
	v_cndmask_b32_e64 v101, v25, v130, s2
	v_cndmask_b32_e64 v104, v22, v133, s2
	v_cndmask_b32_e64 v105, v21, v134, s2
	v_cndmask_b32_e64 v106, v20, v135, s2
	v_cndmask_b32_e64 v107, v19, v136, s2
	v_cndmask_b32_e64 v7, v76, v7, s2
	v_cndmask_b32_e64 v76, v52, v103, s2
	v_cndmask_b32_e64 v103, v23, v132, s2
	v_cndmask_b32_e64 v11, v73, v11, s2
	v_cndmask_b32_e64 v73, v64, v92, s2
	v_cndmask_b32_e64 v53, v53, v102, s2
	v_cndmask_b32_e64 v92, v37, v118, s2
	v_cndmask_b32_e64 v102, v24, v131, s2
	v_cndmask_b32_e64 v12, v72, v12, s2
	v_cndmask_b32_e64 v68, v68, v88, s2
	v_cndmask_b32_e64 v66, v66, v90, s2
	v_cndmask_b32_e64 v65, v65, v91, s2
	v_cndmask_b32_e64 v62, v62, v94, s2
	v_cndmask_b32_e64 v43, v43, v112, s2
	v_cndmask_b32_e64 v39, v39, v116, s2
	v_cndmask_b32_e64 v91, v38, v117, s2
	v_cndmask_b32_e64 v35, v35, v120, s2
	v_cndmask_b32_e64 v94, v34, v121, s2
	v_cndmask_b32_e64 v69, v69, v87, s2
	v_cndmask_b32_e64 v67, v67, v89, s2
	v_cndmask_b32_e64 v63, v63, v93, s2
	v_cndmask_b32_e64 v87, v45, v110, s2
	v_cndmask_b32_e64 v88, v44, v111, s2
	v_cndmask_b32_e64 v42, v42, v113, s2
	v_cndmask_b32_e64 v89, v41, v114, s2
	v_cndmask_b32_e64 v90, v40, v115, s2
	v_cndmask_b32_e64 v93, v36, v119, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s24, s25
	s_mul_i32 s5, s25, 3
	s_add_i32 s21, s4, s25
	s_lshl1_add_u32 s20, s25, s4
	s_mul_i32 s8, s25, 5
	s_mul_i32 s3, s25, 62
	s_add_i32 s19, s4, s5
	s_mul_i32 s9, s25, 6
	s_lshl2_add_u32 s18, s25, s4
	s_mul_i32 s10, s25, 7
	s_mul_i32 s11, s25, 9
	s_mul_i32 s12, s25, 10
	s_mul_i32 s56, s25, 11
	s_mul_i32 s57, s25, 12
	s_mul_i32 s58, s25, 13
	s_mul_i32 s59, s25, 14
	s_mul_i32 s60, s25, 15
	s_mul_i32 s23, s25, 17
	s_mul_i32 s26, s25, 18
	s_mul_i32 s28, s25, 19
	s_mul_i32 s30, s25, 20
	s_mul_i32 s34, s25, 21
	s_mul_i32 s36, s25, 22
	s_mul_i32 s38, s25, 23
	s_mul_i32 s40, s25, 24
	s_mul_i32 s41, s25, 25
	s_mul_i32 s45, s25, 26
	s_mul_i32 s46, s25, 27
	s_mul_i32 s47, s25, 28
	s_mul_i32 s48, s25, 29
	s_mul_i32 s49, s25, 30
	s_mul_i32 s50, s25, 31
	s_lshl_b32 s51, s25, 5
	s_mul_i32 s52, s25, 33
	s_mul_i32 s70, s25, 34
	s_mul_i32 s71, s25, 35
	s_mul_i32 s72, s25, 36
	s_mul_i32 s73, s25, 37
	s_mul_i32 s74, s25, 38
	s_mul_i32 s75, s25, 39
	s_mul_i32 s76, s25, 40
	s_mul_i32 s77, s25, 41
	s_mul_i32 s78, s25, 42
	s_mul_i32 s79, s25, 43
	s_mul_i32 s80, s25, 44
	s_mul_i32 s81, s25, 45
	s_mul_i32 s82, s25, 46
	s_mul_i32 s83, s25, 47
	s_mul_i32 s42, s25, 48
	s_mul_i32 s43, s25, 49
	s_mul_i32 s44, s25, 50
	s_mul_i32 s35, s25, 51
	s_mul_i32 s37, s25, 52
	s_mul_i32 s39, s25, 53
	s_mul_i32 s29, s25, 54
	s_mul_i32 s31, s25, 55
	s_mul_i32 s33, s25, 56
	s_mul_i32 s55, s25, 57
	s_mul_i32 s24, s25, 58
	s_mul_i32 s27, s25, 59
	s_mul_i32 s53, s25, 60
	s_mul_i32 s54, s25, 61
	s_mul_i32 s22, s25, 63
	s_add_i32 s17, s4, s8
	s_lshl3_add_u32 s14, s25, s4
	s_lshl4_add_u32 s87, s25, s4
	s_add_i32 s25, s4, s3
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s16, s4, s9
	s_add_i32 s15, s4, s10
	s_add_i32 s13, s4, s11
	s_add_i32 s12, s4, s12
	s_add_i32 s11, s4, s56
	s_add_i32 s10, s4, s57
	s_add_i32 s9, s4, s58
	s_add_i32 s8, s4, s59
	s_add_i32 s5, s4, s60
	s_add_i32 s86, s4, s23
	s_add_i32 s85, s4, s26
	s_add_i32 s84, s4, s28
	s_add_i32 s69, s4, s30
	s_add_i32 s68, s4, s34
	s_add_i32 s67, s4, s36
	s_add_i32 s66, s4, s38
	s_add_i32 s65, s4, s40
	s_add_i32 s64, s4, s41
	s_add_i32 s63, s4, s45
	s_add_i32 s62, s4, s46
	s_add_i32 s61, s4, s47
	s_add_i32 s60, s4, s48
	s_add_i32 s59, s4, s49
	s_add_i32 s58, s4, s50
	s_add_i32 s57, s4, s51
	s_add_i32 s56, s4, s52
	s_add_i32 s52, s4, s70
	s_add_i32 s50, s4, s71
	s_add_i32 s49, s4, s72
	s_add_i32 s48, s4, s73
	s_add_i32 s47, s4, s74
	s_add_i32 s41, s4, s75
	s_add_i32 s40, s4, s76
	s_add_i32 s38, s4, s77
	s_add_i32 s36, s4, s78
	s_add_i32 s34, s4, s79
	s_add_i32 s30, s4, s80
	s_add_i32 s28, s4, s81
	s_add_i32 s26, s4, s82
	s_add_i32 s23, s4, s83
	s_add_i32 s51, s4, s42
	s_add_i32 s45, s4, s43
	s_add_i32 s43, s4, s44
	s_add_i32 s46, s4, s35
	s_add_i32 s44, s4, s37
	s_add_i32 s42, s4, s39
	s_add_i32 s39, s4, s29
	s_add_i32 s37, s4, s31
	s_add_i32 s35, s4, s33
	s_add_i32 s31, s4, s55
	s_add_i32 s33, s4, s24
	s_add_i32 s29, s4, s27
	s_add_i32 s27, s4, s53
	s_add_i32 s24, s4, s54
	s_add_i32 s22, s4, s22
	.loc	1 404 14 is_stmt 1              ; generate_amdgcn.py:404:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v82
	v_lshlrev_b32_e32 v17, 16, v80
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_and_b32_e32 v140, 0xf0, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v80, v16, v139, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v3, v140, 2, 0
	v_lshl_add_u32 v33, v140, 1, 0
	v_add3_u32 v1, v3, v1, v141
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v84
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v84, v28, v127, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_store_b32 v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v33
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v1, v27, v128, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_load_b128 v[25:28], v33 offset:16
	ds_load_b128 v[29:32], v33 offset:512
	ds_load_b128 v[19:22], v33 offset:528
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, s6
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v124, v4, v18 :: v_dual_lshlrev_b32 v23, 16, v83
	v_mul_f32_e32 v24, v3, v17
	v_mul_f32_e32 v37, v25, v17
	v_dual_mul_f32 v123, v3, v18 :: v_dual_lshlrev_b32 v16, 16, v81
	v_dual_mul_f32 v49, v31, v17 :: v_dual_mul_f32 v130, v28, v18
	v_mul_f32_e32 v143, v25, v23
	v_dual_mul_f32 v137, v21, v18 :: v_dual_mul_f32 v144, v26, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v38, v26, v17 :: v_dual_mul_f32 v83, v5, v16
	v_dual_mul_f32 v60, v19, v17 :: v_dual_mul_f32 v121, v21, v16
	v_dual_mul_f32 v64, v20, v17 :: v_dual_mul_f32 v117, v31, v16
	v_dual_mul_f32 v72, v21, v17 :: v_dual_mul_f32 v119, v19, v16
	v_mul_f32_e32 v112, v26, v16
	v_dual_mul_f32 v116, v30, v16 :: v_dual_mul_f32 v125, v5, v18
	v_dual_mul_f32 v118, v32, v16 :: v_dual_mul_f32 v127, v25, v18
	v_dual_mul_f32 v120, v20, v16 :: v_dual_mul_f32 v129, v27, v18
	v_dual_mul_f32 v122, v22, v16 :: v_dual_mul_f32 v131, v29, v18
	v_dual_mul_f32 v126, v6, v18 :: v_dual_mul_f32 v139, v3, v23
	v_dual_mul_f32 v128, v26, v18 :: v_dual_mul_f32 v141, v5, v23
	v_dual_mul_f32 v132, v30, v18 :: v_dual_mul_f32 v145, v27, v23
	v_dual_mul_f32 v133, v31, v18 :: v_dual_mul_f32 v140, v4, v23
	v_dual_mul_f32 v134, v32, v18 :: v_dual_mul_f32 v147, v29, v23
	v_dual_mul_f32 v135, v19, v18 :: v_dual_mul_f32 v142, v6, v23
	v_dual_mul_f32 v136, v20, v18 :: v_dual_mul_f32 v149, v31, v23
	v_dual_mul_f32 v138, v22, v18 :: v_dual_mul_f32 v151, v19, v23
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v52, v70, v49
	v_dual_mul_f32 v18, v46, v124 :: v_dual_mul_f32 v31, v1, v143
	v_dual_mul_f32 v70, v95, v137 :: v_dual_and_b32 v1, 16, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v33, v4, v17
	v_mul_f32_e32 v34, v5, v17
	v_dual_mul_f32 v36, v6, v17 :: v_dual_mul_f32 v81, v3, v16
	v_dual_mul_f32 v40, v27, v17 :: v_dual_mul_f32 v111, v25, v16
	v_dual_mul_f32 v41, v28, v17 :: v_dual_mul_f32 v110, v6, v16
	v_dual_mul_f32 v44, v29, v17 :: v_dual_mul_f32 v113, v27, v16
	v_dual_mul_f32 v45, v30, v17 :: v_dual_mul_f32 v82, v4, v16
	v_dual_mul_f32 v56, v32, v17 :: v_dual_mul_f32 v115, v29, v16
	v_dual_mul_f32 v17, v22, v17 :: v_dual_mul_f32 v114, v28, v16
	v_dual_mul_f32 v146, v28, v23 :: v_dual_mul_f32 v3, v55, v24
	v_dual_mul_f32 v150, v32, v23 :: v_dual_mul_f32 v25, v61, v110
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v28, v7, v37 :: v_dual_mul_f32 v29, v74, v111
	v_dual_mul_f32 v32, v8, v38 :: v_dual_mul_f32 v37, v58, v113
	v_mul_f32_e32 v60, v68, v60
	v_mul_f32_e32 v68, v66, v72
	v_dual_mul_f32 v66, v94, v136 :: v_dual_and_b32 v7, 0xcf0, v14
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_or_b32 v8, v15, 64, v1
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v24, v77, v36
	v_dual_mul_f32 v36, v10, v40 :: v_dual_mul_f32 v53, v53, v117
	v_dual_mul_f32 v74, v96, v138 :: v_dual_lshlrev_b32 v1, 2, v1
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v10, 13, v0
	v_xor_b32_e32 v7, v8, v7
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v148, v30, v23
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v4, v73, v81 :: v_dual_mul_f32 v19, v98, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_or_b32 v7, 0xe000, v10, v7
	v_and_or_b32 v0, 0x300, v0, v1
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v5, v47, v123
	.loc	1 406 16 is_stmt 0              ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v152, v20, v23
	v_dual_mul_f32 v153, v21, v23 :: v_dual_mul_f32 v16, v79, v33
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v8, 0, v7
	v_or3_b32 v0, v0, v13, v9
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v6, v97, v139
	.loc	1 406 16 is_stmt 0              ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v154, v22, v23
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v20, v78, v34
	v_dual_mul_f32 v21, v62, v83 :: v_dual_mul_f32 v22, v87, v125
	v_mul_f32_e32 v23, v99, v141
	v_dual_mul_f32 v30, v43, v127 :: v_dual_mul_f32 v43, v102, v146
	v_dual_mul_f32 v72, v65, v17 :: v_dual_mul_f32 v65, v50, v120
	v_mul_f32_e32 v17, v63, v82
	v_mul_f32_e32 v26, v88, v126
	v_mul_f32_e32 v38, v89, v129
	v_dual_mul_f32 v46, v39, v131 :: v_dual_mul_f32 v39, v101, v145
	v_dual_mul_f32 v40, v11, v41 :: v_dual_mul_f32 v49, v54, v116
	v_dual_mul_f32 v44, v12, v44 :: v_dual_mul_f32 v61, v51, v119
	v_dual_mul_f32 v48, v71, v45 :: v_dual_mul_f32 v41, v57, v114
	v_dual_mul_f32 v45, v75, v115 :: v_dual_mul_f32 v34, v42, v128
	v_mul_f32_e32 v47, v103, v147
	v_dual_mul_f32 v50, v91, v132 :: v_dual_mul_f32 v71, v109, v153
	v_dual_mul_f32 v62, v35, v135 :: v_dual_mul_f32 v75, v80, v154
	v_mul_f32_e32 v35, v100, v144
	v_mul_f32_e32 v51, v104, v148
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v1, 0, v0
	ds_store_b128 v8, v[3:6]
	ds_store_b128 v8, v[20:23] offset:256
	ds_store_b128 v8, v[28:31] offset:512
	ds_store_b128 v8, v[36:39] offset:768
	v_xad_u32 v3, v7, 32, 0
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v56, v69, v56 :: v_dual_mul_f32 v73, v86, v122
	v_dual_mul_f32 v64, v67, v64 :: v_dual_mul_f32 v27, v84, v142
	v_mul_f32_e32 v33, v59, v112
	v_mul_f32_e32 v57, v76, v118
	v_dual_mul_f32 v42, v90, v130 :: v_dual_mul_f32 v55, v105, v149
	v_dual_mul_f32 v54, v92, v133 :: v_dual_mul_f32 v63, v107, v151
	v_dual_mul_f32 v58, v93, v134 :: v_dual_mul_f32 v67, v108, v152
	v_mul_f32_e32 v59, v106, v150
	v_mul_f32_e32 v69, v85, v121
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_b128 v8, v[44:47] offset:4096
	ds_store_b128 v8, v[52:55] offset:4352
	ds_store_b128 v8, v[60:63] offset:4608
	ds_store_b128 v8, v[68:71] offset:4864
	ds_store_b128 v3, v[16:19]
	ds_store_b128 v3, v[24:27] offset:256
	ds_store_b128 v3, v[32:35] offset:512
	ds_store_b128 v3, v[40:43] offset:768
	ds_store_b128 v3, v[48:51] offset:4096
	ds_store_b128 v3, v[56:59] offset:4352
	ds_store_b128 v3, v[64:67] offset:4608
	ds_store_b128 v3, v[72:75] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v1 offset:128
	v_xad_u32 v1, 0x6030, v0, 0
	v_xad_u32 v15, 0x2010, v0, 0
	v_xad_u32 v23, 0x4020, v0, 0
	ds_load_b128 v[27:30], v1
	ds_load_b128 v[31:34], v1 offset:128
	v_xad_u32 v1, 0xa050, v0, 0
	v_xad_u32 v39, 0x8040, v0, 0
	ds_load_b128 v[11:14], v15
	ds_load_b128 v[15:18], v15 offset:128
	ds_load_b128 v[19:22], v23
	ds_load_b128 v[23:26], v23 offset:128
	v_xad_u32 v55, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[43:46], v1
	ds_load_b128 v[47:50], v1 offset:128
	ds_load_b128 v[51:54], v55
	ds_load_b128 v[55:58], v55 offset:128
	ds_load_b128 v[59:62], v0
	ds_load_b128 v[35:38], v39
	ds_load_b128 v[39:42], v39 offset:128
	v_add_lshl_u32 v1, s4, v2, 2
	ds_load_b128 v[63:66], v0 offset:128
	v_add_lshl_u32 v67, s21, v2, 2
	v_add_lshl_u32 v68, s20, v2, 2
	v_add_lshl_u32 v69, s19, v2, 2
	v_add_lshl_u32 v0, s18, v2, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v3, v1, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v11, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	s_clause 0x1
	buffer_atomic_add_f32 v19, v68, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v69, s[0:3], 0 offen
	v_add_lshl_u32 v1, s17, v2, 2
	v_add_lshl_u32 v3, s16, v2, 2
	v_add_lshl_u32 v11, s15, v2, 2
	v_add_lshl_u32 v19, s14, v2, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v35, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v51, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v11, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v19, s[0:3], 0 offen
	v_add_lshl_u32 v0, s13, v2, 2
	v_add_lshl_u32 v1, s12, v2, 2
	v_add_lshl_u32 v3, s11, v2, 2
	v_add_lshl_u32 v7, s10, v2, 2
	v_add_lshl_u32 v11, s9, v2, 2
	s_clause 0x2
	buffer_atomic_add_f32 v15, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v3, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v39, v7, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v11, s[0:3], 0 offen
	v_add_lshl_u32 v0, s8, v2, 2
	v_add_lshl_u32 v1, s5, v2, 2
	v_add_lshl_u32 v3, s87, v2, 2
	v_add_lshl_u32 v7, s86, v2, 2
	v_add_lshl_u32 v11, s85, v2, 2
	buffer_atomic_add_f32 v55, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v63, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v12, v7, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v11, s[0:3], 0 offen
	v_add_lshl_u32 v0, s84, v2, 2
	v_add_lshl_u32 v1, s69, v2, 2
	v_add_lshl_u32 v3, s68, v2, 2
	v_add_lshl_u32 v4, s67, v2, 2
	v_add_lshl_u32 v7, s66, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v52, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v60, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s65, v2, 2
	v_add_lshl_u32 v1, s64, v2, 2
	v_add_lshl_u32 v3, s63, v2, 2
	v_add_lshl_u32 v4, s62, v2, 2
	v_add_lshl_u32 v7, s61, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v8, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v16, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v40, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s60, v2, 2
	v_add_lshl_u32 v1, s59, v2, 2
	v_add_lshl_u32 v3, s58, v2, 2
	v_add_lshl_u32 v4, s57, v2, 2
	v_add_lshl_u32 v7, s56, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v48, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v64, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s52, v2, 2
	v_add_lshl_u32 v1, s50, v2, 2
	v_add_lshl_u32 v3, s49, v2, 2
	v_add_lshl_u32 v4, s48, v2, 2
	v_add_lshl_u32 v5, s47, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v21, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v45, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s41, v2, 2
	v_add_lshl_u32 v1, s40, v2, 2
	v_add_lshl_u32 v3, s38, v2, 2
	v_add_lshl_u32 v4, s36, v2, 2
	v_add_lshl_u32 v5, s34, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v61, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s30, v2, 2
	v_add_lshl_u32 v1, s28, v2, 2
	v_add_lshl_u32 v3, s26, v2, 2
	v_add_lshl_u32 v4, s23, v2, 2
	v_add_lshl_u32 v5, s51, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v41, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v65, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s45, v2, 2
	v_add_lshl_u32 v1, s43, v2, 2
	v_add_lshl_u32 v3, s46, v2, 2
	v_add_lshl_u32 v4, s44, v2, 2
	v_add_lshl_u32 v5, s42, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v14, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v38, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s39, v2, 2
	v_add_lshl_u32 v1, s37, v2, 2
	v_add_lshl_u32 v3, s35, v2, 2
	v_add_lshl_u32 v4, s31, v2, 2
	v_add_lshl_u32 v5, s33, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v54, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v18, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s29, v2, 2
	v_add_lshl_u32 v1, s27, v2, 2
	v_add_lshl_u32 v3, s24, v2, 2
	v_add_lshl_u32 v4, s25, v2, 2
	v_add_lshl_u32 v2, s22, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v58, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v66, v2, s[0:3], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 88
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 221
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 88
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8932
; TotalNumSgprs: 90
; NumVgprs: 221
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 90
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     90
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     221
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
