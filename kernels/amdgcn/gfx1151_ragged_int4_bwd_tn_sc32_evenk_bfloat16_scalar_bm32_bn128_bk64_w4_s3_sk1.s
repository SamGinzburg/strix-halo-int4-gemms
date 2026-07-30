	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v51, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s19, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s5, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s9, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s7, s9
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s12, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s9
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s12, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s20, s12, s18
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s6
	s_add_i32 s4, s7, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s9
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s13, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s13, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s13, s12, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[12:13], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s10, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s4, s10, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s27, s10, 5
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s4, s2, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s27, v51
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s13, s[6:7], 0x0
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s17, s18, v1
	v_cmp_gt_i32_e64 s2, s18, v2
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s13, s13, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s13, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge38_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s26, s27, s20
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr26
.LBB0_3:                                ; %Flow195
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v48, 0 :: v_dual_and_b32 v73, 0x70, v0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
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
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v78, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s16, s4, 7
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v1, 31, v0
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s28, s13, 1
	s_cmp_lt_i32 s3, 16
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v33, s16, v0
	v_mad_u64_u32 v[34:35], null, s18, v2, v[1:2]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s27, v1
	s_cselect_b32 s29, -1, 0
	s_add_i32 s26, s27, s20
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s18, v1
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v1, s26, v51
	v_mad_u64_u32 v[35:36], null, s18, 12, v[34:35]
	v_mad_u64_u32 v[36:37], null, s19, 3, v[33:34]
	v_mad_u64_u32 v[37:38], null, s19, 5, v[33:34]
	v_mad_u64_u32 v[38:39], null, s19, 6, v[33:34]
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v3, 0x60, v0
	v_mad_u64_u32 v[39:40], null, s19, 7, v[33:34]
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v6, 16, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v88, v1, s23
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v1, 2, v73
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v5, 32, v5
	v_mad_u64_u32 v[40:41], null, s19, 9, v[33:34]
	v_mad_u64_u32 v[41:42], null, s19, 10, v[33:34]
	v_mad_u64_u32 v[42:43], null, s19, 11, v[33:34]
	v_mad_u64_u32 v[43:44], null, s19, 12, v[33:34]
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v81, 0, v51
	v_mad_u64_u32 v[44:45], null, s19, 13, v[33:34]
	v_or_b32_e32 v2, 0x380, v0
	v_or_b32_e32 v4, 0x780, v0
	v_lshrrev_b32_e32 v3, 1, v3
	v_mul_lo_u32 v89, v6, s23
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v6, 28, v7
	v_add3_u32 v1, 0, v1, v5
	v_cndmask_b32_e64 v5, 0, 1, s29
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v7, 1, v73
	v_mad_u64_u32 v[45:46], null, s19, 14, v[33:34]
	v_mad_u64_u32 v[46:47], null, s19, 15, v[33:34]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s19, v33
	v_lshl_add_u32 v82, s18, 2, v34
	v_lshl_add_u32 v83, s18, 3, v34
	.loc	1 1123 43                       ; ragged.py:1123:43
	s_mul_i32 s34, s12, s22
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s35, s12, s23
	s_mov_b32 s12, s4
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v84, s19, v33
	v_lshl_add_u32 v85, s19, 1, v33
	v_lshl_add_u32 v86, s19, 2, v33
	v_lshl_add_u32 v87, s19, 3, v33
	v_cmp_ne_u32_e64 s4, 1, v5
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v90, 0, v0
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v91, 0, v2
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v92, 0, v4
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v93, v81, v3
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v94, v1, v6
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v95, 0, v7
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v47, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s28, s28, -1
	s_mov_b32 s33, 0
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_lshr_b32 s5, s28, 4
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	s_mov_b32 s6, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s6, s33, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v17, v88, s33, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s6, s19
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v18, v89, s33, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v33, s6, 1
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s7, s33, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s6, s7, 4
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lg_u32 s33, s5
	s_mov_b32 s33, s7
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v31, v110, v17 :: v_dual_lshlrev_b32 v18, 16, v19
	v_mul_f32_e32 v30, v111, v17
	v_mul_f32_e32 v106, v106, v17
	v_mul_f32_e32 v108, v108, v17
	v_mul_f32_e32 v32, v109, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v94, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v109, v14, v29
	v_mul_f32_e32 v110, v13, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[25:28], v95 offset:272
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v112, v11, v29
	v_mul_f32_e32 v9, v9, v29
	v_mul_f32_e32 v111, v12, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[11:14], v95 offset:256
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v10, v10, v29
	v_mul_f32_e32 v96, v96, v17
	v_mul_f32_e32 v97, v97, v17
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v100, v100, v17
	v_mul_f32_e32 v101, v101, v17
	v_mul_f32_e32 v98, v98, v17
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v7, v7, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[21:24], v95 offset:16
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v4, v4, v29
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v3, v3, v29 :: v_dual_fmac_f32 v48, v2, v27
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v64, v96, v28
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v102, v102, v17 :: v_dual_fmac_f32 v65, v97, v27
	v_mul_f32_e32 v103, v103, v17
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v55, v8, v11
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v99, v99, v17 :: v_dual_fmac_f32 v66, v98, v26
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v70, v102, v12
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v104, v104, v17 :: v_dual_fmac_f32 v71, v103, v11
	v_mul_f32_e32 v105, v105, v17
	v_mul_f32_e32 v107, v107, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[17:20], v95
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v16, v16, v29 :: v_dual_fmac_f32 v49, v3, v26
	v_mul_f32_e32 v15, v15, v29
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v75, v106, v22 :: v_dual_fmac_f32 v72, v104, v24
	v_fmac_f32_e32 v74, v105, v23
	v_fmac_f32_e32 v76, v107, v21
	v_fmac_f32_e32 v67, v99, v25
	v_fmac_f32_e32 v57, v10, v23
	v_dual_fmac_f32 v53, v6, v13 :: v_dual_fmac_f32 v52, v5, v14
	v_fmac_f32_e32 v54, v7, v12
	v_dual_fmac_f32 v50, v4, v25 :: v_dual_fmac_f32 v47, v1, v28
	v_fmac_f32_e32 v58, v112, v22
	v_dual_fmac_f32 v56, v9, v24 :: v_dual_fmac_f32 v59, v111, v21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v78, v30, v17
	v_dual_fmac_f32 v80, v31, v18 :: v_dual_fmac_f32 v77, v108, v20
	v_fmac_f32_e32 v79, v32, v19
	v_dual_fmac_f32 v63, v16, v17 :: v_dual_fmac_f32 v60, v110, v20
	v_dual_fmac_f32 v62, v15, v18 :: v_dual_fmac_f32 v61, v109, v19
	v_dual_fmac_f32 v68, v100, v14 :: v_dual_fmac_f32 v69, v101, v13
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_add_i32 s6, s6, s34
	s_mov_b32 s7, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1130 46 is_stmt 1             ; ragged.py:1130:46
	s_add_i32 s36, s6, s7
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s22, s14
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_mul_i32 s37, s36, s18
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_mul_i32 s36, s36, s19
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s37, s37, s27
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v96, s36, v33
	v_add_nc_u32_e32 v97, s36, v84
	v_add_nc_u32_e32 v98, s36, v85
	v_add_nc_u32_e32 v99, s36, v36
	v_add_nc_u32_e32 v100, s36, v86
	v_add_nc_u32_e32 v101, s36, v37
	v_add_nc_u32_e32 v102, s36, v38
	v_add_nc_u32_e32 v103, s36, v39
	v_add_nc_u32_e32 v104, s36, v87
	v_add_nc_u32_e32 v105, s36, v40
	v_add_nc_u32_e32 v106, s36, v41
	v_add_nc_u32_e32 v107, s36, v42
	v_add_nc_u32_e32 v108, s36, v43
	v_add_nc_u32_e32 v109, s36, v44
	v_add_nc_u32_e32 v110, s36, v45
	v_add_nc_u32_e32 v111, s36, v46
	v_add_nc_u32_e32 v112, s37, v34
	v_add_nc_u32_e32 v113, s37, v82
	v_add_nc_u32_e32 v114, s37, v83
	v_add_nc_u32_e32 v115, s37, v35
	.loc	1 1131 38 is_stmt 0             ; ragged.py:1131:38
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	s_mov_b32 s23, s15
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	v_cndmask_b32_e64 v112, 0x80000000, v112, s1
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0xf
	buffer_load_u8 v96, v96, s[20:23], 0 offen
	buffer_load_u8 v97, v97, s[20:23], 0 offen
	buffer_load_u8 v98, v98, s[20:23], 0 offen
	buffer_load_u8 v99, v99, s[20:23], 0 offen
	buffer_load_u8 v100, v100, s[20:23], 0 offen
	buffer_load_u8 v101, v101, s[20:23], 0 offen
	buffer_load_u8 v102, v102, s[20:23], 0 offen
	buffer_load_u8 v103, v103, s[20:23], 0 offen
	buffer_load_u8 v104, v104, s[20:23], 0 offen
	buffer_load_u8 v105, v105, s[20:23], 0 offen
	buffer_load_u8 v106, v106, s[20:23], 0 offen
	buffer_load_u8 v107, v107, s[20:23], 0 offen
	buffer_load_u8 v108, v108, s[20:23], 0 offen
	buffer_load_u8 v109, v109, s[20:23], 0 offen
	buffer_load_u8 v110, v110, s[20:23], 0 offen
	buffer_load_u8 v111, v111, s[20:23], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0x3
	buffer_load_u8 v112, v112, s[12:15], 0 offen
	buffer_load_u8 v113, v113, s[12:15], 0 offen
	buffer_load_u8 v114, v114, s[12:15], 0 offen
	buffer_load_u8 v115, v115, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s22, s7, 16
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s7, 0
	s_mov_b32 s7, s22
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(3)
	ds_store_b8 v90, v112
	s_waitcnt vmcnt(2)
	ds_store_b8 v90, v113 offset:128
	s_waitcnt vmcnt(1)
	ds_store_b8 v90, v114 offset:256
	s_waitcnt vmcnt(0)
	ds_store_b8 v90, v115 offset:384
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v112, v81 offset:160
	ds_load_u8 v113, v81 offset:128
	ds_load_u8 v114, v81 offset:240
	ds_load_u8 v115, v81 offset:208
	ds_load_u8 v116, v81 offset:176
	ds_load_u8 v117, v81 offset:144
	ds_load_u8 v118, v81 offset:224
	ds_load_u8 v119, v81 offset:192
	ds_load_u8 v120, v81 offset:96
	ds_load_u8 v121, v81 offset:64
	ds_load_u8 v122, v81 offset:112
	ds_load_u8 v123, v81 offset:80
	ds_load_u8 v124, v81 offset:48
	ds_load_u8 v125, v81 offset:32
	ds_load_u8 v126, v81
	ds_load_u8 v127, v81 offset:16
	ds_load_u8 v128, v81 offset:352
	ds_load_u8 v129, v81 offset:320
	ds_load_u8 v130, v81 offset:288
	ds_load_u8 v131, v81 offset:256
	ds_load_u8 v132, v81 offset:368
	ds_load_u8 v133, v81 offset:336
	ds_load_u8 v134, v81 offset:304
	ds_load_u8 v135, v81 offset:272
	ds_load_u8 v136, v81 offset:480
	ds_load_u8 v137, v81 offset:448
	ds_load_u8 v138, v81 offset:416
	ds_load_u8 v139, v81 offset:384
	ds_load_u8 v140, v81 offset:496
	ds_load_u8 v141, v81 offset:464
	ds_load_u8 v142, v81 offset:432
	ds_load_u8 v143, v81 offset:400
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v90, v96
	ds_store_b8 v90, v97 offset:128
	ds_store_b8 v90, v98 offset:256
	ds_store_b8 v90, v99 offset:384
	ds_store_b8 v90, v100 offset:512
	ds_store_b8 v90, v101 offset:640
	ds_store_b8 v90, v102 offset:768
	ds_store_b8 v90, v104 offset:1024
	ds_store_b8 v90, v105 offset:1152
	ds_store_b8 v90, v106 offset:1280
	ds_store_b8 v90, v107 offset:1408
	ds_store_b8 v90, v108 offset:1536
	ds_store_b8 v90, v109 offset:1664
	ds_store_b8 v91, v103
	ds_store_b8 v90, v110 offset:1792
	ds_store_b8 v92, v111
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v96, v93 offset:640
	ds_load_u8 v97, v93 offset:512
	ds_load_u8 v98, v93 offset:896
	ds_load_u8 v99, v93 offset:768
	ds_load_u8 v100, v93 offset:128
	ds_load_u8 v101, v93
	ds_load_u8 v107, v93 offset:1664
	ds_load_u8 v111, v93 offset:1152
	v_perm_b32 v102, v113, v112, 0xc0c0004
	v_perm_b32 v104, v119, v118, 0xc0c0004
	v_perm_b32 v106, v121, v120, 0xc0c0004
	v_perm_b32 v108, v126, v125, 0xc0c0004
	ds_load_u8 v119, v93 offset:1408
	ds_load_u8 v121, v93 offset:1280
	ds_load_u8 v113, v93 offset:1024
	ds_load_u8 v103, v93 offset:384
	ds_load_u8 v105, v93 offset:256
	v_perm_b32 v120, v129, v128, 0xc0c0004
	v_perm_b32 v118, v131, v130, 0xc0c0004
	v_perm_b32 v112, v137, v136, 0xc0c0004
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v110, v97, v96, 0xc0c0004
	ds_load_u8 v96, v93 offset:1920
	ds_load_u8 v97, v93 offset:1792
	ds_load_u8 v109, v93 offset:1536
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v93 offset:960
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v115, v123, v122, 0xc0c0004
	v_perm_b32 v117, v127, v124, 0xc0c0004
	v_perm_b32 v122, v143, v142, 0xc0c0004
	v_perm_b32 v123, v141, v140, 0xc0c0004
	v_perm_b32 v124, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v111, v113, v111, 0xc0c0004
	v_perm_b32 v113, v121, v119, 0xc0c0004
	v_perm_b32 v127, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v125, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	ds_load_u8 v109, v93 offset:576
	ds_load_u8 v96, v93 offset:832
	ds_load_u8 v97, v93 offset:448
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v121, v96, v99, 0xc0c0004
	ds_load_u8 v96, v93 offset:320
	ds_load_u8 v119, v93 offset:192
	v_perm_b32 v101, v105, v103, 0xc0c0004
	ds_load_u8 v103, v93 offset:704
	ds_load_u8 v99, v93 offset:1728
	v_perm_b32 v105, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v126, v96, v97, 0xc0c0004
	ds_load_u8 v96, v93 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v109, v103, 0xc0c0004
	ds_load_u8 v103, v93 offset:64
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v128, v96, v99, 0xc0c0004
	ds_load_u8 v96, v93 offset:1984
	ds_load_u8 v97, v93 offset:1856
	v_lshl_or_b32 v99, v98, 16, v110
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v119, v103, v119, 0xc0c0004
	v_lshl_or_b32 v98, v101, 16, v100
	v_lshl_or_b32 v101, v112, 16, v105
	v_lshl_or_b32 v105, v121, 16, v109
	v_lshl_or_b32 v109, v114, 16, v116
	v_lshl_or_b32 v100, v120, 16, v118
	v_lshl_or_b32 v103, v125, 16, v107
	v_lshl_or_b32 v110, v127, 16, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v97, v96, 0xc0c0004
	ds_load_u8 v96, v93 offset:1216
	ds_load_u8 v97, v93 offset:1088
	v_lshl_or_b32 v107, v129, 16, v128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v97, v96, 0xc0c0004
	ds_load_u8 v96, v93 offset:1472
	ds_load_u8 v97, v93 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v97, v96, 0xc0c0004
	v_lshl_or_b32 v97, v104, 16, v102
	v_lshl_or_b32 v96, v106, 16, v108
	v_lshl_or_b32 v104, v126, 16, v119
	v_lshl_or_b32 v108, v115, 16, v117
	v_lshl_or_b32 v102, v113, 16, v111
	v_lshl_or_b32 v106, v131, 16, v130
	v_lshl_or_b32 v111, v123, 16, v122
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[96:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[108:109], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[100:101], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[110:111], v[25:32] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v111, v1
	v_cvt_f32_i32_e32 v110, v2
	v_cvt_f32_i32_e32 v109, v3
	v_cvt_f32_i32_e32 v108, v4
	v_cvt_f32_i32_e32 v107, v5
	v_cvt_f32_i32_e32 v106, v6
	v_cvt_f32_i32_e32 v105, v7
	v_cvt_f32_i32_e32 v104, v8
	v_cvt_f32_i32_e32 v103, v9
	v_cvt_f32_i32_e32 v102, v10
	v_cvt_f32_i32_e32 v101, v11
	v_cvt_f32_i32_e32 v100, v12
	v_cvt_f32_i32_e32 v99, v13
	v_cvt_f32_i32_e32 v98, v14
	v_cvt_f32_i32_e32 v97, v15
	v_cvt_f32_i32_e32 v96, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge38
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v10, 1, v73
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v21, v78, 16, 1
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	s_mul_i32 s3, s26, s19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v22, v79, 16, 1
	v_bfe_u32 v23, v77, 16, 1
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_or_b32_e32 v1, 0x47, v10
	v_or_b32_e32 v2, 0x46, v10
	v_or_b32_e32 v4, 0x44, v10
	v_or_b32_e32 v5, 0x43, v10
	v_or_b32_e32 v6, 0x42, v10
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v8, s16, v1
	v_or_b32_e32 v9, s16, v2
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v3, 0x45, v10
	v_or_b32_e32 v7, 0x41, v10
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s16, v4
	v_or_b32_e32 v13, s16, v5
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v8
	v_cmp_gt_i32_e64 s0, s19, v9
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v9, s16, v6
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v8, 64, v10
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v11, s16, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s19, v12
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s16, v7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s19, v13
	v_cmp_gt_i32_e64 s6, s19, v9
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s16, v8
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v9, 7, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v11
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v11, 6, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s19, v12
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v12, 5, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s19, v13
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v15, s16, v9
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v13, 4, v10
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v16, s16, v11
	v_or_b32_e32 v17, s16, v12
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v14, 3, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s19, v15
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v15, s16, v13
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s19, v16
	v_cmp_gt_i32_e64 s11, s19, v17
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v18, s16, v14
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v16, 2, v10
	v_or_b32_e32 v17, 1, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s19, v15
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v15, s19, v51
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s19, v18
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v18, s16, v16
	v_or_b32_e32 v19, s16, v17
	v_or_b32_e32 v20, s16, v10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v22, v79, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v79, v79
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s19, v18
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v18, s3, s16, v15
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s19, v19
	v_cmp_gt_i32_e64 s16, s19, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v19, v78, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v78, v78
	v_bfe_u32 v20, v80, 16, 1
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_lshl_add_u32 v15, s19, 4, v18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v23, v77, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v77, v77
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	v_add3_u32 v20, v80, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v80, v80
	v_bfe_u32 v24, v75, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s18
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v74, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v76, 16, 1
	v_cmp_o_f32_e64 s3, v76, v76
	v_add3_u32 v24, v75, v24, 0x7fff
	v_cmp_o_f32_e64 s18, v75, v75
	v_bfe_u32 v25, v72, 16, 1
	v_add3_u32 v20, v76, v20, 0x7fff
	v_add3_u32 v23, v74, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_bfe_u32 v26, v70, 16, 1
	v_add3_u32 v25, v72, v25, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_cndmask_b16 v20.h, 0x7fff, v24.h, s18
	v_bfe_u32 v24, v71, 16, 1
	v_cmp_o_f32_e64 s3, v72, v72
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cmp_o_f32_e64 s18, v71, v71
	v_add3_u32 v26, v70, v26, 0x7fff
	v_add3_u32 v24, v71, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v70, v70
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v69, 16, 1
	v_bfe_u32 v27, v68, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s18
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s19
	v_bfe_u32 v26, v67, 16, 1
	v_add3_u32 v25, v69, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v69, v69
	v_add3_u32 v27, v68, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v68, v68
	v_bfe_u32 v28, v66, 16, 1
	v_add3_u32 v26, v67, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v67, v67
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s18
	v_bfe_u32 v27, v65, 16, 1
	v_bfe_u32 v29, v64, 16, 1
	v_add3_u32 v28, v66, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s19
	v_add3_u32 v27, v65, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v65, v65
	v_add3_u32 v29, v64, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v64, v64
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s3
	v_bfe_u32 v28, v63, 16, 1
	v_bfe_u32 v30, v62, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s18
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v61, 16, 1
	v_add3_u32 v28, v63, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v63, v63
	v_add3_u32 v30, v62, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v62, v62
	v_bfe_u32 v31, v60, 16, 1
	v_add3_u32 v29, v61, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v61, v61
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s18
	v_bfe_u32 v30, v59, 16, 1
	v_bfe_u32 v32, v58, 16, 1
	v_add3_u32 v31, v60, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v60, v60
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s19
	v_add3_u32 v30, v59, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v59, v59
	v_add3_u32 v32, v58, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v58, v58
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v57, 16, 1
	v_bfe_u32 v33, v56, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s18
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s19
	v_bfe_u32 v32, v55, 16, 1
	v_add3_u32 v31, v57, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v57, v57
	v_add3_u32 v33, v56, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v56, v56
	v_add3_u32 v32, v55, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v55, v55
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s3
	v_bfe_u32 v35, v52, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_bfe_u32 v33, v53, 16, 1
	v_bfe_u32 v34, v54, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cmp_o_f32_e64 s18, v53, v53
	v_add3_u32 v35, v52, v35, 0x7fff
	v_add3_u32 v33, v53, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v52, v52
	v_bfe_u32 v36, v50, 16, 1
	v_add3_u32 v34, v54, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v54, v54
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s18
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s19
	v_add3_u32 v35, v50, v36, 0x7fff
	v_bfe_u32 v36, v48, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	v_bfe_u32 v34, v49, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_bfe_u32 v37, v47, 16, 1
	v_add3_u32 v36, v48, v36, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v48, v48
	v_add3_u32 v34, v49, v34, 0x7fff
	v_add3_u32 v37, v47, v37, 0x7fff
	v_cmp_o_f32_e64 s20, v47, v47
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s19
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_lshl_u32 v18, v18, v10, 1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b32_e32 v36, 0x5410
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s20
	v_cndmask_b32_e64 v35, v20, v19, s3
	v_cndmask_b32_e64 v19, v19, v20, s3
	v_cndmask_b32_e64 v20, v23, v22, s3
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v26, v24, s3
	v_cndmask_b32_e64 v24, v24, v26, s3
	v_cndmask_b32_e64 v26, v27, v25, s3
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v25, v25, v27, s3
	v_cndmask_b32_e64 v27, v30, v28, s3
	v_cndmask_b32_e64 v28, v28, v30, s3
	v_add_nc_u32_e32 v51, 4, v18
	v_cndmask_b32_e64 v30, 0x1054, v36, s3
	v_cndmask_b32_e64 v36, 0x3276, v37, s3
	v_cmp_o_f32_e64 s18, v49, v49
	v_cndmask_b32_e64 v37, v31, v29, s3
	v_cndmask_b32_e64 v29, v29, v31, s3
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v36, v36, 8, v36
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s18
	s_mov_b32 s18, 0x76543210
	v_add_lshl_u32 v1, v15, v1, 1
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v36, 0x760076, v36
	v_cndmask_b32_e64 v31, v34, v32, s3
	v_cndmask_b32_e64 v32, v32, v34, s3
	v_cndmask_b32_e64 v34, v0, v33, s3
	v_lshl_or_b32 v30, v30, 4, v30
	v_cndmask_b32_e64 v0, v33, v0, s3
	v_permlanex16_b32 v19, v19, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v33, v36, 4, v36
	v_add_nc_u32_e32 v50, 2, v18
	v_and_b32_e32 v30, 0x5040504, v30
	v_mov_b16_e32 v21.h, 0
	v_permlanex16_b32 v22, v22, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v29, v29, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v19, v35, v30
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s17, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v19, v19, v35, v33
	v_cndmask_b32_e64 v52, 0x80000000, v18, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v35, v22, v20, v30
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v20, v22, v20, v33
	v_perm_b32 v22, v24, v23, v30
	v_perm_b32 v23, v24, v23, v33
	v_perm_b32 v24, v25, v26, v30
	v_perm_b32 v25, v25, v26, v33
	v_perm_b32 v26, v28, v27, v30
	v_perm_b32 v27, v28, v27, v33
	v_perm_b32 v28, v29, v37, v30
	v_perm_b32 v29, v29, v37, v33
	v_perm_b32 v37, v32, v31, v30
	v_perm_b32 v31, v32, v31, v33
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	buffer_store_b16 v36, v52, s[24:27], 0 offen
	v_add_nc_u32_e32 v36, 6, v18
	v_mov_b16_e32 v21.l, v19.h
	s_clause 0x1
	buffer_store_b16 v32, v50, s[24:27], 0 offen
	buffer_store_b16 v19, v51, s[24:27], 0 offen
	v_add_nc_u32_e32 v19, 8, v18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v32, 0x80000000, v36, s3
	v_add_nc_u32_e32 v36, 10, v18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_nc_u32_e32 v50, 12, v18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v30, v0, v34, v30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v0, v0, v34, v33
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	s_clause 0x1
	buffer_store_b16 v21, v32, s[24:27], 0 offen
	buffer_store_b16 v35, v19, s[24:27], 0 offen
	v_add_nc_u32_e32 v19, 14, v18
	v_mov_b16_e32 v33.l, v20.h
	s_clause 0x1
	buffer_store_b16 v34, v36, s[24:27], 0 offen
	buffer_store_b16 v20, v50, s[24:27], 0 offen
	v_add_nc_u32_e32 v20, 0x80, v18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v38.h, v21.h
	v_mov_b16_e32 v39.h, v21.h
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v41.h, v21.h
	v_mov_b16_e32 v42.h, v21.h
	v_mov_b16_e32 v43.h, v21.h
	v_mov_b16_e32 v44.h, v21.h
	v_mov_b16_e32 v45.h, v21.h
	v_mov_b16_e32 v46.h, v21.h
	v_mov_b16_e32 v47.h, v21.h
	v_mov_b16_e32 v48.h, v21.h
	v_mov_b16_e32 v49.h, v21.h
	v_add_nc_u32_e32 v21, 0x82, v18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_nc_u32_e32 v32, 0x84, v18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v33, v19, s[24:27], 0 offen
	buffer_store_b16 v22, v20, s[24:27], 0 offen
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	v_add_nc_u32_e32 v19, 0x86, v18
	v_add_nc_u32_e32 v20, 0x88, v18
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v39, v21, s[24:27], 0 offen
	buffer_store_b16 v23, v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v21, 0x8a, v18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_nc_u32_e32 v22, 0x8c, v18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_nc_u32_e32 v18, 0x8e, v18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v10, v15, v10, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v40.l, v25.h
	v_mov_b16_e32 v41.l, v24.h
	v_add_lshl_u32 v17, v15, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_add_lshl_u32 v16, v15, v16, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x5
	buffer_store_b16 v38, v19, s[24:27], 0 offen
	buffer_store_b16 v24, v20, s[24:27], 0 offen
	buffer_store_b16 v41, v21, s[24:27], 0 offen
	buffer_store_b16 v25, v22, s[24:27], 0 offen
	buffer_store_b16 v40, v18, s[24:27], 0 offen
	buffer_store_b16 v26, v10, s[24:27], 0 offen
	v_add_lshl_u32 v10, v15, v14, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v15, v13, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v12, v15, v12, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v11, v15, v11, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v15, v9, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v8, v15, v8, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v7, v15, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v6, v15, v6, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v5, v15, v5, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v15, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v15, v3, 1
	v_add_lshl_u32 v2, v15, v2, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v42.l, v27.h
	v_mov_b16_e32 v43.l, v26.h
	v_mov_b16_e32 v44.l, v29.h
	v_mov_b16_e32 v45.l, v28.h
	v_mov_b16_e32 v46.l, v31.h
	v_mov_b16_e32 v47.l, v37.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s2, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v49.l, v30.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v43, v17, s[24:27], 0 offen
	buffer_store_b16 v27, v16, s[24:27], 0 offen
	buffer_store_b16 v42, v10, s[24:27], 0 offen
	buffer_store_b16 v28, v13, s[24:27], 0 offen
	buffer_store_b16 v45, v12, s[24:27], 0 offen
	buffer_store_b16 v29, v11, s[24:27], 0 offen
	buffer_store_b16 v44, v9, s[24:27], 0 offen
	buffer_store_b16 v37, v8, s[24:27], 0 offen
	buffer_store_b16 v47, v7, s[24:27], 0 offen
	buffer_store_b16 v31, v6, s[24:27], 0 offen
	buffer_store_b16 v46, v5, s[24:27], 0 offen
	buffer_store_b16 v30, v4, s[24:27], 0 offen
	buffer_store_b16 v49, v3, s[24:27], 0 offen
	buffer_store_b16 v0, v2, s[24:27], 0 offen
	buffer_store_b16 v48, v1, s[24:27], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 144
		.amdhsa_next_free_sgpr 38
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
		.amdhsa_inst_pref_size 57
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 144
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7220
; TotalNumSgprs: 40
; NumVgprs: 144
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 144
; Occupancy: 10
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
      - .offset:         60
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     144
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
