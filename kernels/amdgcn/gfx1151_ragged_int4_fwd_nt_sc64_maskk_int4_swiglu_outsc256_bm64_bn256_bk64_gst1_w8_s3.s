	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v189, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v26, 0x7f, v189
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s35, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s43, s7, 31
	s_sub_i32 s7, s8, s9
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s7, s6
	s_cmp_ge_u32 s7, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s7, s6
	s_load_b64 s[6:7], s[0:1], 0x38
	s_cselect_b32 s3, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s44, s3, s43
	s_sub_i32 s79, s44, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	s_mov_b32 s8, 0
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s10, s4
	s_addc_u32 s3, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v8, 0x7f, v189
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow627
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[2:3], 0x0
	s_load_b64 s[76:77], s[6:7], 0x0
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v191, 0x80, v189
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v190, 15, v189
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v191
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v189
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s33, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v36, 0 :: v_dual_and_b32 v25, 0xe0, v189
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s72, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s73, 0, s0
	v_add_co_u32 v14, s0, s72, v190
	v_add_co_u32 v2, vcc_lo, v0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s73, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[0:1]
	v_dual_mov_b32 v218, 0 :: v_dual_lshlrev_b32 v1, 1, v189
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s36, s6, s4
	s_addc_u32 s37, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[76:77], v[10:11]
	v_dual_mov_b32 v213, 0 :: v_dual_and_b32 v10, 0xf0, v189
	v_dual_mov_b32 v210, 0 :: v_dual_lshlrev_b32 v11, 5, v189
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[6:7]
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v7, 24, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[16:17]
	v_cmp_le_i64_e64 s8, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[76:77], v[16:17]
	v_cmp_gt_i64_e64 s20, s[76:77], v[14:15]
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v15, 2, v10
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v11, 32, v11
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v16, s72, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[8:9]
	v_cndmask_b32_e64 v6, 0x88, 0, s2
	v_lshl_or_b32 v9, v190, 5, v7
	v_add3_u32 v11, 0, v15, v11
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v15, 8, v16
	v_mul_lo_u32 v17, v16, s33
	v_xor_b32_e32 v6, v6, v26
	v_lshl_or_b32 v14, v25, 4, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v15, v15, s33
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v9, off offset:260
	scratch_store_b32 off, v189, off offset:584
	scratch_store_b32 off, v6, off offset:256
	scratch_store_b32 off, v14, off offset:264
	scratch_store_b32 off, v17, off offset:268
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v17, 16, v16
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	scratch_store_b32 off, v15, off offset:272 ; 4-byte Folded Spill
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[76:77], v[18:19]
	v_mul_lo_u32 v15, v17, s33
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v18, 24, v16
	scratch_store_b32 off, v190, off offset:588 ; 4-byte Folded Spill
	v_mov_b32_e32 v208, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s41, s4, s16
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s4, s[36:37], 0x0
	v_mov_b32_e32 v115, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v15, off offset:276 ; 4-byte Folded Spill
	v_mul_lo_u32 v15, v18, s33
	scratch_store_b32 off, v191, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v18, 40, v16
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v19, 48, v16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[2:3]
	v_cmp_le_i64_e64 s11, s[74:75], v[22:23]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	scratch_store_b32 off, v15, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v15, 32, v16
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v16, 56, v16
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[76:77], v[22:23]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[4:5]
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v15, v15, s33
	scratch_store_b32 off, v26, off offset:596 ; 4-byte Folded Spill
	v_cmp_le_i64_e64 s10, s[74:75], v[20:21]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[4:5]
	v_cmp_gt_i64_e64 s22, s[76:77], v[20:21]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s42, s5, s17
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v0, s72, v190
	scratch_store_b32 off, v15, off offset:284 ; 4-byte Folded Spill
	v_mul_lo_u32 v15, v18, s33
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s34, s4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s38, s0, s13
	s_and_b32 s40, s3, s15
	s_and_b32 s0, s9, s21
	s_and_b32 s3, s11, s23
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s9, s5, 1
	s_mul_i32 s5, s5, s78
	scratch_store_b32 off, v15, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v15, v19, s33
	s_lshl_b32 s11, s4, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s39, s1, s14
	s_and_b32 s1, s10, s22
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s10, s44, 8
	s_lshl_b32 s5, s5, 1
	s_or_b32 s11, s11, 1
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v4, 32, v0
	scratch_store_b32 off, v15, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v15, v16, s33
	s_or_b32 s9, s9, 1
	v_mul_lo_u32 v4, s34, v4
	s_mul_i32 s9, s78, s9
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v5, 48, v0
	v_add3_u32 v17, s9, s10, v189
	s_lshl_b32 s9, s43, 8
	scratch_store_b32 off, v15, off offset:296 ; 4-byte Folded Spill
	v_add3_u32 v15, s5, s10, v189
	s_mul_i32 s5, s78, s11
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v3, 16, v0
	v_add3_u32 v16, s5, s10, v24
	v_mul_lo_u32 v0, s34, v0
	v_mul_lo_u32 v5, s34, v5
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v148, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v16, s9, v16
	v_mov_b32_e32 v111, 0
	v_subrev_nc_u32_e32 v15, s9, v15
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v147, 1, v0
	v_mov_b32_e32 v40, 0
	v_add_nc_u32_e32 v4, 0xf8, v16
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v144, 1, v5
	v_add_nc_u32_e32 v5, 0xf0, v16
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v35, 1, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v0, s33, v4
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v15, 0xe8, v16
	v_mul_lo_u32 v3, s34, v3
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v4, 0xd0, v16
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v5
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v5, 0xc8, v16
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v149, 1, v3
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v3, 0xd8, v16
	v_mov_b32_e32 v195, 0
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v15
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v15, 0xc0, v16
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v66, 0
	s_mul_i32 s4, s78, s4
	v_xor_b32_e32 v7, 8, v9
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0xe0, v16
	v_mov_b32_e32 v130, 0
	s_lshl_b32 s4, s4, 1
	v_xor_b32_e32 v8, 16, v9
	v_xor_b32_e32 v9, 24, v9
	v_mul_lo_u32 v0, s33, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[12:13]
	v_mov_b32_e32 v63, 0
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[12:13]
	v_xor_b32_e32 v12, 8, v14
	v_xor_b32_e32 v13, 16, v14
	v_xor_b32_e32 v14, 24, v14
	v_xor_b32_e32 v6, 0x110, v6
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v3
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v3, 0xb0, v16
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v1, 28, v1
	v_dual_mov_b32 v209, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_subrev_nc_u32_e32 v17, s9, v17
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v4
	v_add_nc_u32_e32 v4, 0xa8, v16
	v_mov_b32_e32 v200, 0
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v2, 31, v189
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v21, 1, v17
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v214, 0, v6
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v5
	v_add_nc_u32_e32 v5, 0xa0, v16
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v222, 0, v10
	v_mov_b32_e32 v75, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v198, 0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v15
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v15, 0x98, v16
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v196, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, 0xb8, v16
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v56, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s33, v0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v89, 0
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v3
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v3, 0x88, v16
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v73, 0
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v4
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v4, 0x80, v16
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v41, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s35, vcc_lo, s12
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v5
	v_add_nc_u32_e32 v5, 0x78, v16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s18
	v_mov_b32_e32 v102, 0
	s_and_b32 s7, s7, s19
	s_and_b32 vcc_lo, s8, s20
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s19, 0x31027000
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v15
	v_add_nc_u32_e32 v15, 0x70, v16
	v_mov_b32_e32 v205, 0
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	s_mov_b32 s8, 0
	s_and_b32 s29, s29, 0xffff
	v_mov_b32_e32 v103, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0x90, v16
	v_mov_b32_e32 v100, 0
	s_and_b32 s31, s31, 0xffff
	s_lshl_b32 s36, s78, 2
	s_mov_b32 s11, s8
	v_mul_lo_u32 v0, s33, v0
	v_mov_b32_e32 v84, 0
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	v_mov_b32_e32 v96, 0
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s16, s24
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v3
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v3, 0x60, v16
	s_mov_b32 s17, s25
	s_mov_b32 s20, s26
	v_mov_b32_e32 v123, 0
	s_mov_b32 s21, s27
	s_mov_b32 s22, s18
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v4
	v_add_nc_u32_e32 v4, 0x58, v16
	s_mov_b32 s23, s19
	s_mov_b32 s24, s28
	s_mov_b32 s25, s29
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s28, s30
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v5
	v_add_nc_u32_e32 v5, 0x50, v16
	s_mov_b32 s29, s31
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v64, 0
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v15
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v15, 0x48, v16
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v128, 0
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v0, 0x68, v16
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_mov_b32_e32 v58, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s33, v0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v199, 0
	v_mov_b32_e32 v94, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v93, 0
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v3
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v3, 56, v16
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v204, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s33, v3
	v_mov_b32_e32 v197, 0
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v4
	v_add_nc_u32_e32 v4, 48, v16
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v101, 0
	v_mov_b32_e32 v80, 0
	scratch_store_b32 off, v3, off offset:396 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v4
	v_add_nc_u32_e32 v4, 24, v16
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v5
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v5, 40, v16
	v_mul_lo_u32 v4, s33, v4
	v_mov_b32_e32 v99, 0
	scratch_store_b32 off, v3, off offset:400 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v5, 16, v16
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v15
	v_add_nc_u32_e32 v15, 8, v16
	scratch_store_b32 off, v4, off offset:412 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s33, v5
	v_mov_b32_e32 v88, 0
	scratch_store_b32 off, v3, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 32, v16
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v85, 0
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v0, 64, v16
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v95, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s33, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:408
	scratch_store_b32 off, v0, off offset:392
	v_add3_u32 v0, s4, s10, v24
	s_mov_b32 s10, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v0, s9, v0
	s_mov_b32 s9, s8
	v_add_nc_u32_e32 v3, 0xf8, v0
	v_add_nc_u32_e32 v5, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v4, off offset:416 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s33, v15
	v_add_nc_u32_e32 v15, 0xd8, v0
	scratch_store_b32 off, v3, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v4, off offset:420 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s33, v16
	v_add_nc_u32_e32 v16, 0xd0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:432
	scratch_store_b32 off, v4, off offset:424
	v_add_nc_u32_e32 v4, 0xe8, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s33, v4
	v_add_nc_u32_e32 v4, 0xc0, v0
	scratch_store_b32 off, v3, off offset:436 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v5, 0xb8, v0
	scratch_store_b32 off, v3, off offset:440 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v15
	v_add_nc_u32_e32 v15, 0xb0, v0
	scratch_store_b32 off, v3, off offset:444 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v16
	v_add_nc_u32_e32 v16, 0xa8, v0
	scratch_store_b32 off, v3, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0xc8, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v4
	v_add_nc_u32_e32 v4, 0x98, v0
	scratch_store_b32 off, v3, off offset:456 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v5, 0x90, v0
	scratch_store_b32 off, v3, off offset:460 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v15
	v_add_nc_u32_e32 v15, 0x88, v0
	scratch_store_b32 off, v3, off offset:464 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v16
	v_add_nc_u32_e32 v16, 0x80, v0
	scratch_store_b32 off, v3, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0xa0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v3, off offset:472 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v4
	v_add_nc_u32_e32 v4, 0x70, v0
	scratch_store_b32 off, v3, off offset:476 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v5, 0x68, v0
	scratch_store_b32 off, v3, off offset:480 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v15
	v_add_nc_u32_e32 v15, 0x60, v0
	scratch_store_b32 off, v3, off offset:484 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v16
	v_add_nc_u32_e32 v16, 0x58, v0
	scratch_store_b32 off, v3, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0x78, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v3, off offset:492 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v4
	v_add_nc_u32_e32 v4, 0x48, v0
	scratch_store_b32 off, v3, off offset:496 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v5, 64, v0
	scratch_store_b32 off, v3, off offset:500 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v15
	v_add_nc_u32_e32 v15, 56, v0
	scratch_store_b32 off, v3, off offset:504 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v16
	v_add_nc_u32_e32 v16, 48, v0
	scratch_store_b32 off, v3, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0x50, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v3, off offset:512 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v4
	v_add_nc_u32_e32 v4, 32, v0
	scratch_store_b32 off, v3, off offset:516 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v5, 24, v0
	scratch_store_b32 off, v3, off offset:520 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v15
	v_add_nc_u32_e32 v15, 16, v0
	scratch_store_b32 off, v3, off offset:524 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v16
	v_add_nc_u32_e32 v16, 8, v0
	scratch_store_b32 off, v3, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 40, v0
	v_mul_lo_u32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v3, s33, v3
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v3, off offset:532 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v4
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:560
	scratch_store_b32 off, v3, off offset:536
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v0, 0, v9
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	scratch_store_b32 off, v3, off offset:540 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v15
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	scratch_store_b32 off, v3, off offset:544 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v16
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:576
	scratch_store_b32 off, v3, off offset:548
	v_add_nc_u32_e32 v0, v11, v1
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:268
	scratch_load_b32 v34, off, off offset:272
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v102, off offset:252
	scratch_store_b32 off, v35, off offset:248
	scratch_store_b32 off, v21, off offset:244
	scratch_store_b32 off, v217, off offset:240
	scratch_store_b32 off, v216, off offset:236
	scratch_store_b32 off, v37, off offset:232
	scratch_store_b32 off, v215, off offset:228
	scratch_store_b32 off, v213, off offset:224
	scratch_store_b32 off, v212, off offset:220
	scratch_store_b32 off, v211, off offset:216
	scratch_store_b32 off, v38, off offset:212
	scratch_store_b32 off, v210, off offset:208
	scratch_store_b32 off, v104, off offset:204
	scratch_store_b32 off, v76, off offset:200
	scratch_store_b32 off, v105, off offset:196
	scratch_store_b32 off, v77, off offset:192
	scratch_store_b32 off, v52, off offset:188
	scratch_store_b32 off, v93, off offset:184
	scratch_store_b32 off, v120, off offset:180
	scratch_store_b32 off, v207, off offset:176
	scratch_store_b32 off, v78, off offset:172
	scratch_store_b32 off, v198, off offset:168
	scratch_store_b32 off, v205, off offset:164
	scratch_store_b32 off, v121, off offset:160
	scratch_store_b32 off, v97, off offset:156
	scratch_store_b32 off, v96, off offset:152
	scratch_store_b32 off, v54, off offset:148
	scratch_store_b32 off, v55, off offset:144
	scratch_store_b32 off, v123, off offset:140
	scratch_store_b32 off, v221, off offset:136
	scratch_store_b32 off, v47, off offset:132
	scratch_store_b32 off, v36, off offset:128
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v196, off offset:124
	scratch_store_b32 off, v53, off offset:120
	scratch_store_b32 off, v39, off offset:116
	scratch_store_b32 off, v51, off offset:112
	scratch_store_b32 off, v94, off offset:108
	scratch_store_b32 off, v206, off offset:104
	scratch_store_b32 off, v48, off offset:100
	scratch_store_b32 off, v46, off offset:96
	scratch_store_b32 off, v49, off offset:92
	scratch_store_b32 off, v50, off offset:88
	scratch_store_b32 off, v45, off offset:84
	scratch_store_b32 off, v41, off offset:80
	scratch_store_b32 off, v42, off offset:76
	scratch_store_b32 off, v44, off offset:72
	scratch_store_b32 off, v85, off offset:68
	scratch_store_b32 off, v84, off offset:64
	scratch_store_b32 off, v83, off offset:60
	scratch_store_b32 off, v82, off offset:56
	scratch_store_b32 off, v43, off offset:52
	scratch_store_b32 off, v79, off offset:48
	scratch_store_b32 off, v109, off offset:44
	scratch_store_b32 off, v88, off offset:40
	scratch_store_b32 off, v80, off offset:36
	scratch_store_b32 off, v65, off offset:32
	scratch_store_b32 off, v194, off offset:28
	scratch_store_b32 off, v81, off offset:24
	scratch_store_b32 off, v40, off offset:20
	scratch_store_b32 off, v204, off offset:16
	scratch_store_b32 off, v66, off offset:12
	scratch_store_b32 off, v69, off offset:8
	scratch_store_b32 off, v68, off offset:4
	scratch_store_b32 off, v67, off
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v35, off, off offset:276
	scratch_load_b32 v36, off, off offset:280
	scratch_load_b32 v37, off, off offset:284
	scratch_load_b32 v38, off, off offset:288
	scratch_load_b32 v39, off, off offset:292
	scratch_load_b32 v40, off, off offset:296
	scratch_load_b32 v25, off, off offset:456
	scratch_load_b32 v26, off, off offset:452
	scratch_load_b32 v27, off, off offset:448
	scratch_load_b32 v28, off, off offset:444
	scratch_load_b32 v29, off, off offset:440
	scratch_load_b32 v30, off, off offset:436
	scratch_load_b32 v31, off, off offset:432
	scratch_load_b32 v32, off, off offset:428
	scratch_load_b32 v0, off, off offset:552
	scratch_load_b32 v1, off, off offset:548
	scratch_load_b32 v3, off, off offset:544
	scratch_load_b32 v4, off, off offset:540
	scratch_load_b32 v5, off, off offset:536
	scratch_load_b32 v6, off, off offset:532
	scratch_load_b32 v7, off, off offset:528
	scratch_load_b32 v8, off, off offset:524
	scratch_load_b32 v9, off, off offset:520
	scratch_load_b32 v10, off, off offset:516
	scratch_load_b32 v11, off, off offset:512
	scratch_load_b32 v12, off, off offset:508
	scratch_load_b32 v13, off, off offset:504
	scratch_load_b32 v14, off, off offset:500
	scratch_load_b32 v15, off, off offset:496
	scratch_load_b32 v16, off, off offset:492
	scratch_load_b32 v17, off, off offset:488
	scratch_load_b32 v18, off, off offset:484
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v19, off, off offset:480
	scratch_load_b32 v20, off, off offset:476
	scratch_load_b32 v21, off, off offset:472
	scratch_load_b32 v22, off, off offset:468
	scratch_load_b32 v23, off, off offset:464
	scratch_load_b32 v24, off, off offset:460
	v_cmp_gt_i32_e64 s4, s33, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s34, s34, -1
	v_dual_mov_b32 v98, v137 :: v_dual_mov_b32 v137, v135
	v_mov_b32_e32 v135, v132
	s_and_b32 s5, s35, s4
	v_dual_mov_b32 v207, v92 :: v_dual_mov_b32 v92, v63
	v_dual_mov_b32 v123, v122 :: v_dual_mov_b32 v122, v115
	v_mov_b32_e32 v115, v200
	v_mov_b32_e32 v221, v201
	v_dual_mov_b32 v132, v129 :: v_dual_mov_b32 v129, v126
	v_dual_mov_b32 v126, v59 :: v_dual_mov_b32 v145, v86
	v_dual_mov_b32 v86, v125 :: v_dual_mov_b32 v125, v203
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	v_dual_mov_b32 v157, s15 :: v_dual_mov_b32 v96, v195
	v_dual_mov_b32 v97, v95 :: v_dual_mov_b32 v104, v74
	v_dual_mov_b32 v87, v70 :: v_dual_mov_b32 v120, v103
	v_mov_b32_e32 v103, v89
	v_mov_b32_e32 v89, v71
	v_dual_mov_b32 v65, v72 :: v_dual_mov_b32 v146, v209
	v_mov_b32_e32 v209, v110
	v_dual_mov_b32 v110, v90 :: v_dual_mov_b32 v95, v56
	v_mov_b32_e32 v143, v218
	v_dual_mov_b32 v105, v64 :: v_dual_mov_b32 v102, v101
	v_mov_b32_e32 v101, v75
	v_dual_mov_b32 v93, v73 :: v_dual_mov_b32 v142, v199
	v_mov_b32_e32 v94, v202
	v_dual_mov_b32 v90, v57 :: v_dual_mov_b32 v155, s13
	v_dual_mov_b32 v154, s12 :: v_dual_mov_b32 v153, s11
	v_dual_mov_b32 v152, s10 :: v_dual_mov_b32 v151, s9
	v_mov_b32_e32 v150, s8
	v_dual_mov_b32 v156, s14 :: v_dual_mov_b32 v121, v91
	v_dual_mov_b32 v88, v124 :: v_dual_mov_b32 v91, v62
	v_dual_mov_b32 v124, v111 :: v_dual_mov_b32 v111, v136
	v_dual_mov_b32 v136, v133 :: v_dual_mov_b32 v133, v130
	v_mov_b32_e32 v130, v127
	v_mov_b32_e32 v109, v119
	v_mov_b32_e32 v119, v58
	v_mov_b32_e32 v127, v60
	s_waitcnt vmcnt(39)
	v_add_nc_u32_e32 v33, v33, v2
	s_waitcnt vmcnt(38)
	v_add_nc_u32_e32 v34, v34, v2
	s_waitcnt vmcnt(37)
	v_add_nc_u32_e32 v35, v35, v2
	s_waitcnt vmcnt(36)
	v_add_nc_u32_e32 v36, v36, v2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	s_and_b32 s5, s38, s4
	s_waitcnt vmcnt(35)
	v_add_nc_u32_e32 v37, v37, v2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	s_waitcnt vmcnt(31)
	v_add_nc_u32_e32 v25, v25, v2
	s_and_b32 s5, s39, s4
	v_add_nc_u32_e32 v38, v38, v2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s5
	s_and_b32 s5, s40, s4
	v_add_nc_u32_e32 v39, v39, v2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s5
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v32, v32, v2
	s_and_b32 s5, s41, s4
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v0, v0, v2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s5
	s_and_b32 s5, s42, s4
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v1, v1, v2
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v3, v3, v2
	v_add_nc_u32_e32 v26, v26, v2
	v_add_nc_u32_e32 v27, v27, v2
	v_add_nc_u32_e32 v28, v28, v2
	v_add_nc_u32_e32 v29, v29, v2
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v11, v11, v2
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v12, v12, v2
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v13, v13, v2
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v14, v14, v2
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v15, v15, v2
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v16, v16, v2
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v17, v17, v2
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v18, v18, v2
	v_add_nc_u32_e32 v40, v40, v2
	v_add_nc_u32_e32 v4, v4, v2
	v_add_nc_u32_e32 v5, v5, v2
	v_add_nc_u32_e32 v6, v6, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, v23, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, v24, v2
	v_add_nc_u32_e32 v7, v7, v2
	v_add_nc_u32_e32 v8, v8, v2
	v_add_nc_u32_e32 v9, v9, v2
	v_add_nc_u32_e32 v10, v10, v2
	v_add_nc_u32_e32 v19, v19, v2
	v_add_nc_u32_e32 v20, v20, v2
	v_add_nc_u32_e32 v21, v21, v2
	v_add_nc_u32_e32 v22, v22, v2
	v_add_nc_u32_e32 v30, v30, v2
	v_add_nc_u32_e32 v31, v31, v2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s5
	s_and_b32 s5, s6, s4
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v39, 0x80000000, v39, s5
	s_and_b32 s5, s7, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_cndmask_b32_e64 v25, 0x80000000, v25, s4
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	v_cndmask_b32_e64 v27, 0x80000000, v27, s4
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	v_cndmask_b32_e64 v29, 0x80000000, v29, s4
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	v_cndmask_b32_e64 v31, 0x80000000, v31, s4
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v33, v33, s[16:19], 0 offen
	buffer_load_u8 v35, v35, s[16:19], 0 offen
	buffer_load_u8 v37, v37, s[16:19], 0 offen
	buffer_load_u8 v39, v39, s[16:19], 0 offen
	buffer_load_u8 v40, v40, s[16:19], 0 offen
	buffer_load_u8 v38, v38, s[16:19], 0 offen
	buffer_load_u8 v36, v36, s[16:19], 0 offen
	buffer_load_u8 v34, v34, s[16:19], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v41, v3, s[20:23], 0 offen
	buffer_load_u8 v42, v5, s[20:23], 0 offen
	buffer_load_u8 v43, v7, s[20:23], 0 offen
	buffer_load_u8 v44, v9, s[20:23], 0 offen
	buffer_load_u8 v11, v11, s[20:23], 0 offen
	buffer_load_u8 v13, v13, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v45, v19, s[20:23], 0 offen
	buffer_load_u8 v46, v21, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	buffer_load_u8 v25, v25, s[20:23], 0 offen
	buffer_load_u8 v27, v27, s[20:23], 0 offen
	buffer_load_u8 v29, v29, s[20:23], 0 offen
	buffer_load_u8 v47, v31, s[20:23], 0 offen
	buffer_load_u8 v48, v8, s[20:23], 0 offen
	buffer_load_u8 v49, v6, s[20:23], 0 offen
	buffer_load_u8 v50, v4, s[20:23], 0 offen
	buffer_load_u8 v1, v1, s[20:23], 0 offen
	buffer_load_u8 v16, v16, s[20:23], 0 offen
	buffer_load_u8 v14, v14, s[20:23], 0 offen
	buffer_load_u8 v12, v12, s[20:23], 0 offen
	buffer_load_u8 v51, v10, s[20:23], 0 offen
	buffer_load_u8 v24, v24, s[20:23], 0 offen
	buffer_load_u8 v52, v22, s[20:23], 0 offen
	buffer_load_u8 v53, v20, s[20:23], 0 offen
	buffer_load_u8 v18, v18, s[20:23], 0 offen
	buffer_load_u8 v54, v32, s[20:23], 0 offen
	buffer_load_u8 v55, v30, s[20:23], 0 offen
	buffer_load_u8 v28, v28, s[20:23], 0 offen
	buffer_load_u8 v26, v26, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s34, 0
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, 0, v3
	ds_store_b8 v56, v33
	ds_store_b8 v56, v35 offset:512
	ds_store_b8 v56, v37 offset:1024
	ds_store_b8 v56, v39 offset:1536
	ds_store_b8 v214, v34
	ds_store_b8 v214, v36 offset:512
	ds_store_b8 v214, v38 offset:1024
	ds_store_b8 v214, v40 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:260
	scratch_load_b32 v34, off, off offset:564
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[210:213], v34 offset1:1
	ds_load_2addr_stride64_b64 v[66:69], v34 offset0:2 offset1:3
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_2addr_stride64_b64 v[30:33], v3 offset1:1
	ds_load_2addr_stride64_b64 v[138:141], v3 offset0:2 offset1:3
	scratch_load_b32 v3, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[7:10], v3 offset1:1
	ds_load_2addr_stride64_b64 v[19:22], v3 offset0:2 offset1:3
	scratch_load_b32 v3, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[215:218], v3 offset1:1
	ds_load_2addr_stride64_b64 v[3:6], v3 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v56, v0
	ds_store_b8 v56, v41 offset:512
	ds_store_b8 v56, v42 offset:1024
	ds_store_b8 v56, v43 offset:1536
	ds_store_b8 v56, v44 offset:2048
	ds_store_b8 v56, v11 offset:2560
	ds_store_b8 v56, v13 offset:3072
	ds_store_b8 v56, v15 offset:3584
	ds_store_b8 v56, v17 offset:4096
	ds_store_b8 v56, v45 offset:4608
	ds_store_b8 v56, v46 offset:5120
	ds_store_b8 v56, v23 offset:5632
	ds_store_b8 v56, v25 offset:6144
	ds_store_b8 v56, v27 offset:6656
	ds_store_b8 v56, v29 offset:7168
	ds_store_b8 v56, v47 offset:7680
	ds_store_b8 v214, v1
	ds_store_b8 v214, v50 offset:512
	ds_store_b8 v214, v49 offset:1024
	ds_store_b8 v214, v48 offset:1536
	ds_store_b8 v214, v51 offset:2048
	ds_store_b8 v214, v12 offset:2560
	ds_store_b8 v214, v14 offset:3072
	ds_store_b8 v214, v16 offset:3584
	ds_store_b8 v214, v18 offset:4096
	ds_store_b8 v214, v53 offset:4608
	ds_store_b8 v214, v52 offset:5120
	ds_store_b8 v214, v24 offset:5632
	ds_store_b8 v214, v26 offset:6144
	ds_store_b8 v214, v28 offset:6656
	ds_store_b8 v214, v55 offset:7168
	ds_store_b8 v214, v54 offset:7680
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v0, off, off offset:424
	scratch_load_b32 v1, off, off offset:420
	scratch_load_b32 v11, off, off offset:416
	scratch_load_b32 v12, off, off offset:412
	scratch_load_b32 v13, off, off offset:408
	scratch_load_b32 v14, off, off offset:404
	scratch_load_b32 v15, off, off offset:400
	scratch_load_b32 v16, off, off offset:396
	scratch_load_b32 v17, off, off offset:392
	scratch_load_b32 v18, off, off offset:388
	scratch_load_b32 v23, off, off offset:384
	scratch_load_b32 v24, off, off offset:380
	scratch_load_b32 v25, off, off offset:376
	scratch_load_b32 v26, off, off offset:372
	scratch_load_b32 v27, off, off offset:368
	scratch_load_b32 v28, off, off offset:364
	scratch_load_b32 v29, off, off offset:360
	scratch_load_b32 v34, off, off offset:356
	scratch_load_b32 v35, off, off offset:352
	scratch_load_b32 v36, off, off offset:348
	scratch_load_b32 v37, off, off offset:344
	scratch_load_b32 v38, off, off offset:340
	scratch_load_b32 v39, off, off offset:336
	scratch_load_b32 v40, off, off offset:332
	scratch_load_b32 v41, off, off offset:328
	scratch_load_b32 v42, off, off offset:324
	scratch_load_b32 v43, off, off offset:320
	scratch_load_b32 v44, off, off offset:316
	scratch_load_b32 v45, off, off offset:312
	scratch_load_b32 v46, off, off offset:308
	scratch_load_b32 v47, off, off offset:304
	scratch_load_b32 v48, off, off offset:300
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v166, off, off offset:568
	scratch_load_b32 v255, off, off offset:572
	scratch_load_b32 v64, off, off offset:576
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v0, v0, v2
	s_waitcnt vmcnt(33)
	v_add_nc_u32_e32 v1, v1, v2
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v11, v11, v2
	s_waitcnt vmcnt(31)
	v_add_nc_u32_e32 v12, v12, v2
	s_waitcnt vmcnt(30)
	v_add_nc_u32_e32 v13, v13, v2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v15, v15, v2
	s_waitcnt vmcnt(27)
	v_add_nc_u32_e32 v16, v16, v2
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v17, v17, v2
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v18, v18, v2
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v23, v23, v2
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v24, v24, v2
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v25, v25, v2
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v26, v26, v2
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v27, v27, v2
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v28, v28, v2
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v29, v29, v2
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v34, v34, v2
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v35, v35, v2
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v36, v36, v2
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v37, v37, v2
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v38, v38, v2
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v39, v39, v2
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v40, v40, v2
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v41, v41, v2
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v42, v42, v2
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v43, v43, v2
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v44, v44, v2
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v45, v45, v2
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v46, v46, v2
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v47, v47, v2
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v48, v48, v2
	v_add_nc_u32_e32 v14, v14, v2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_cndmask_b32_e64 v25, 0x80000000, v25, s4
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	v_cndmask_b32_e64 v27, 0x80000000, v27, s4
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	v_cndmask_b32_e64 v29, 0x80000000, v29, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	v_cndmask_b32_e64 v36, 0x80000000, v36, s4
	v_cndmask_b32_e64 v37, 0x80000000, v37, s4
	v_cndmask_b32_e64 v38, 0x80000000, v38, s4
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	v_cndmask_b32_e64 v45, 0x80000000, v45, s4
	v_cndmask_b32_e64 v46, 0x80000000, v46, s4
	v_cndmask_b32_e64 v47, 0x80000000, v47, s4
	v_cndmask_b32_e64 v48, 0x80000000, v48, s4
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1f
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v49, v11, s[20:23], 0 offen
	buffer_load_u8 v50, v13, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	buffer_load_u8 v25, v25, s[20:23], 0 offen
	buffer_load_u8 v27, v27, s[20:23], 0 offen
	buffer_load_u8 v29, v29, s[20:23], 0 offen
	buffer_load_u8 v35, v35, s[20:23], 0 offen
	buffer_load_u8 v37, v37, s[20:23], 0 offen
	buffer_load_u8 v39, v39, s[20:23], 0 offen
	buffer_load_u8 v41, v41, s[20:23], 0 offen
	buffer_load_u8 v43, v43, s[20:23], 0 offen
	buffer_load_u8 v45, v45, s[20:23], 0 offen
	buffer_load_u8 v47, v47, s[20:23], 0 offen
	buffer_load_u8 v16, v16, s[20:23], 0 offen
	buffer_load_u8 v51, v14, s[20:23], 0 offen
	buffer_load_u8 v52, v12, s[20:23], 0 offen
	buffer_load_u8 v1, v1, s[20:23], 0 offen
	buffer_load_u8 v28, v28, s[20:23], 0 offen
	buffer_load_u8 v26, v26, s[20:23], 0 offen
	buffer_load_u8 v24, v24, s[20:23], 0 offen
	buffer_load_u8 v18, v18, s[20:23], 0 offen
	buffer_load_u8 v40, v40, s[20:23], 0 offen
	buffer_load_u8 v38, v38, s[20:23], 0 offen
	buffer_load_u8 v36, v36, s[20:23], 0 offen
	buffer_load_u8 v34, v34, s[20:23], 0 offen
	buffer_load_u8 v48, v48, s[20:23], 0 offen
	buffer_load_u8 v46, v46, s[20:23], 0 offen
	buffer_load_u8 v44, v44, s[20:23], 0 offen
	buffer_load_u8 v42, v42, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v11, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v2, 32, v2
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(35)
	ds_load_2addr_stride64_b64 v[74:77], v166 offset1:8
	s_waitcnt vmcnt(34)
	ds_load_2addr_stride64_b64 v[70:73], v255 offset1:8
	s_waitcnt vmcnt(33)
	ds_load_2addr_stride64_b64 v[82:85], v64 offset1:8
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, 0, v11
	ds_load_2addr_stride64_b64 v[11:14], v53 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v56, v0
	ds_store_b8 v56, v49 offset:512
	ds_store_b8 v56, v50 offset:1024
	ds_store_b8 v56, v15 offset:1536
	ds_store_b8 v56, v17 offset:2048
	ds_store_b8 v56, v23 offset:2560
	ds_store_b8 v56, v25 offset:3072
	ds_store_b8 v56, v27 offset:3584
	ds_store_b8 v56, v29 offset:4096
	ds_store_b8 v56, v35 offset:4608
	ds_store_b8 v56, v37 offset:5120
	ds_store_b8 v56, v39 offset:5632
	ds_store_b8 v56, v41 offset:6144
	ds_store_b8 v56, v43 offset:6656
	ds_store_b8 v56, v45 offset:7168
	ds_store_b8 v56, v47 offset:7680
	ds_store_b8 v214, v1
	ds_store_b8 v214, v52 offset:512
	ds_store_b8 v214, v51 offset:1024
	ds_store_b8 v214, v16 offset:1536
	ds_store_b8 v214, v18 offset:2048
	ds_store_b8 v214, v24 offset:2560
	ds_store_b8 v214, v26 offset:3072
	ds_store_b8 v214, v28 offset:3584
	ds_store_b8 v214, v34 offset:4096
	ds_store_b8 v214, v36 offset:4608
	ds_store_b8 v214, v38 offset:5120
	ds_store_b8 v214, v40 offset:5632
	ds_store_b8 v214, v42 offset:6144
	ds_store_b8 v214, v44 offset:6656
	ds_store_b8 v214, v46 offset:7168
	ds_store_b8 v214, v48 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[78:81], v53 offset1:8
	v_dual_mov_b32 v0, v192 :: v_dual_mov_b32 v23, v197
	v_dual_mov_b32 v1, v128 :: v_dual_mov_b32 v128, v61
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[158:165], v[11:12], v[30:31], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[13:14], v[30:31], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[11:12], v[32:33], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[13:14], v[32:33], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[247:254], v[11:12], v[138:139], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[13:14], v[138:139], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[11:12], v[140:141], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[13:14], v[140:141], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[74:75], v[7:8], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[76:77], v[7:8], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[74:75], v[9:10], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[76:77], v[9:10], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[247:254], v[74:75], v[19:20], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[76:77], v[19:20], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[74:75], v[21:22], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[76:77], v[21:22], v[183:190] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[74:77], v166 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[191:198], v[78:79], v[30:31], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[80:81], v[30:31], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[11:18], v[78:79], v[32:33], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[80:81], v[32:33], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[78:79], v[138:139], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[80:81], v[138:139], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[78:79], v[140:141], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[80:81], v[140:141], v[150:157] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[247:254], v[70:71], v[3:4], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[72:73], v[3:4], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[70:71], v[5:6], v[175:182] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[191:198], v[74:75], v[7:8], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[76:77], v[7:8], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[11:18], v[74:75], v[9:10], v[11:18] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[76:77], v[9:10], v[24:31] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[7:10], v255 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[32:39], v[74:75], v[19:20], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[76:77], v[19:20], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[74:75], v[21:22], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[76:77], v[21:22], v[56:63] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[183:190], v[72:73], v[5:6], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[72:73], v[217:218], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[72:73], v[215:216], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[84:85], v[66:67], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[70:71], v[215:216], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[84:85], v[68:69], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[84:85], v[212:213], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[84:85], v[210:211], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[70:71], v[217:218], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[82:83], v[210:211], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[247:254], v[82:83], v[66:67], v[247:254] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v84, v242
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[175:182], v[82:83], v[68:69], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[82:83], v[212:213], v[231:238] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v21, v164
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[7:8], v[3:4], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[9:10], v[3:4], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[7:8], v[5:6], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[9:10], v[5:6], v[56:63] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[3:6], v64 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[24:31], v[9:10], v[217:218], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[11:18], v[7:8], v[217:218], v[11:18] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v22, v165
	v_cvt_f32_i32_e32 v72, v233
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[199:206], v[9:10], v[215:216], v[199:206] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v83, v241
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[191:198], v[7:8], v[215:216], v[191:198] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v80, v245
	v_cvt_f32_i32_e32 v79, v244
	v_mov_b32_e32 v218, v143
	v_cvt_f32_i32_e32 v19, v162
	v_cvt_f32_i32_e32 v151, v228
	v_cvt_f32_i32_e32 v150, v229
	v_cvt_f32_i32_e32 v143, v230
	v_cvt_f32_i32_e32 v166, v227
	v_cvt_f32_i32_e32 v70, v231
	v_cvt_f32_i32_e32 v71, v232
	v_cvt_f32_i32_e32 v73, v234
	v_cvt_f32_i32_e32 v74, v235
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[5:6], v[212:213], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[3:4], v[66:67], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[11:18], v[3:4], v[212:213], v[11:18] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[5:6], v[210:211], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[3:4], v[210:211], v[191:198] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v242, v27
	v_cvt_f32_i32_e32 v27, v35
	scratch_load_b32 v35, off, off offset:248 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v165, v11
	v_cvt_f32_i32_e32 v164, v12
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v11, 0x80000000, v147, vcc_lo
	v_cndmask_b32_e64 v12, 0x80000000, v149, s0
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v241, v24
	v_cvt_f32_i32_e32 v24, v32
	v_cvt_f32_i32_e32 v245, v25
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v11, v11, s[24:27], 0 offen
	buffer_load_u16 v32, v12, s[24:27], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v148, s1
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v25, v33
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[5:6], v[66:67], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[3:4], v[68:69], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[5:6], v[68:69], v[56:63] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v33, v12, s[24:27], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v144, s3
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v255, v199
	v_mov_b32_e32 v199, v142
	v_cvt_f32_i32_e32 v244, v26
	v_cvt_f32_i32_e32 v26, v34
	v_cvt_f32_i32_e32 v142, v37
	scratch_load_b32 v37, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v66, v223
	v_cvt_f32_i32_e32 v68, v225
	v_cvt_f32_i32_e32 v75, v236
	v_cvt_f32_i32_e32 v77, v238
	v_cvt_f32_i32_e32 v81, v246
	v_cvt_f32_i32_e32 v162, v247
	v_cvt_f32_i32_e32 v210, v248
	v_cvt_f32_i32_e32 v211, v249
	v_cvt_f32_i32_e32 v212, v250
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v157, v194
	v_cvt_f32_i32_e32 v10, v195
	v_cvt_f32_i32_e32 v8, v196
	v_cvt_f32_i32_e32 v223, v204
	v_cvt_f32_i32_e32 v225, v206
	v_cvt_f32_i32_e32 v236, v201
	v_mov_b32_e32 v201, v221
	v_cvt_f32_i32_e32 v235, v202
	v_mov_b32_e32 v202, v94
	v_cvt_f32_i32_e32 v227, v29
	v_cvt_f32_i32_e32 v228, v30
	v_cvt_f32_i32_e32 v229, v31
	v_cvt_f32_i32_e32 v230, v28
	v_cvt_f32_i32_e32 v3, v36
	scratch_load_b32 v36, off, off offset:128 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v141, v38
	scratch_load_b32 v38, off, off offset:212 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v140, v39
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v39, off, off offset:116
	scratch_load_b32 v194, off, off offset:28
	scratch_load_b32 v204, off, off offset:16
	v_cvt_f32_i32_e32 v246, v40
	scratch_load_b32 v40, off, off offset:20 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v231, v45
	scratch_load_b32 v45, off, off offset:84 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v232, v46
	scratch_load_b32 v46, off, off offset:96 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v233, v47
	scratch_load_b32 v47, off, off offset:132 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v249, v41
	v_cvt_f32_i32_e32 v248, v42
	scratch_load_b32 v42, off, off offset:76 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v247, v43
	scratch_load_b32 v43, off, off offset:52 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v234, v44
	scratch_load_b32 v44, off, off offset:72 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v28, v48
	scratch_load_b32 v48, off, off offset:100 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v29, v49
	scratch_load_b32 v49, off, off offset:92 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v30, v50
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:88
	scratch_load_b32 v41, off, off offset:80
	v_cvt_f32_i32_e32 v31, v51
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:112
	scratch_load_b32 v206, off, off offset:104
	v_cvt_f32_i32_e32 v156, v52
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:188
	scratch_load_b32 v94, off, off offset:108
	v_cvt_f32_i32_e32 v154, v53
	v_cvt_f32_i32_e32 v153, v54
	scratch_load_b32 v54, off, off offset:148 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v152, v55
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:144
	scratch_load_b32 v221, off, off offset:136
	scratch_load_b32 v196, off, off offset:124
	v_cvt_f32_i32_e32 v250, v56
	v_dual_mov_b32 v56, v95 :: v_dual_mov_b32 v95, v97
	scratch_load_b32 v97, off, off offset:156 ; 4-byte Folded Reload
	v_mov_b32_e32 v195, v96
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:152
	scratch_load_b32 v53, off, off offset:120
	v_cvt_f32_i32_e32 v238, v61
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v4, v158
	v_cvt_f32_i32_e32 v5, v159
	v_cvt_f32_i32_e32 v9, v161
	v_cvt_f32_i32_e32 v20, v163
	v_cvt_f32_i32_e32 v82, v240
	v_cvt_f32_i32_e32 v217, v254
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v159, v192
	v_mov_b32_e32 v192, v0
	v_cvt_f32_i32_e32 v158, v193
	v_cvt_f32_i32_e32 v193, v197
	v_mov_b32_e32 v197, v23
	v_cvt_f32_i32_e32 v163, v13
	v_cvt_f32_i32_e32 v161, v14
	v_cvt_f32_i32_e32 v139, v15
	v_cvt_f32_i32_e32 v138, v16
	v_cvt_f32_i32_e32 v23, v17
	v_cvt_f32_i32_e32 v0, v18
	v_cvt_f32_i32_e32 v240, v63
	v_mov_b32_e32 v63, v92
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v215, v252
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v252, v58
	v_mov_b32_e32 v58, v119
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v6, v160
	v_cvt_f32_i32_e32 v85, v243
	v_cvt_f32_i32_e32 v213, v251
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v251, v59
	v_cvt_f32_i32_e32 v243, v60
	v_mov_b32_e32 v60, v127
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v69, v226
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v226, v203
	v_mov_b32_e32 v203, v125
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v216, v253
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v253, v57
	v_mov_b32_e32 v57, v90
	v_mov_b32_e32 v90, v110
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v7, v198
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v78, v239
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v239, v62
	v_dual_mov_b32 v62, v91 :: v_dual_mov_b32 v91, v121
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v76, v237
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v67, v224
	v_mov_b32_e32 v125, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v224, v205
	v_cvt_f32_i32_e32 v237, v200
	v_dual_mov_b32 v200, v115 :: v_dual_mov_b32 v115, v122
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v186, v186
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v34, v12, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(32)
	buffer_load_u16 v12, v35, s[28:31], 0 offen
	v_dual_mov_b32 v61, v128 :: v_dual_mov_b32 v128, v1
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:580 ; 4-byte Folded Reload
	v_mov_b32_e32 v122, v123
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v171, v171
	s_waitcnt vmcnt(33)
	v_dual_mov_b32 v119, v109 :: v_dual_lshlrev_b32 v254, 16, v11
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v187, v187
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v4
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v190, v190
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v191, v191
	v_mov_b32_e32 v86, v145
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v144, 2, v144
	v_add_nc_u32_e32 v148, 2, v148
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v160, 16, v33
	v_dual_mov_b32 v64, v105 :: v_dual_add_nc_u32 v149, 2, v149
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v147, 2, v147
	v_add_nc_u32_e32 v35, s36, v35
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v1, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v222
	ds_load_b128 v[15:18], v222 offset:16
	v_dual_mov_b32 v127, v130 :: v_dual_mov_b32 v130, v133
	v_dual_mov_b32 v133, v136 :: v_dual_mov_b32 v136, v111
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v155, 16, v32
	v_dual_mov_b32 v59, v126 :: v_dual_mov_b32 v126, v129
	v_dual_mov_b32 v129, v132 :: v_dual_mov_b32 v132, v135
	v_mov_b32_e32 v135, v137
	v_dual_mov_b32 v110, v209 :: v_dual_mov_b32 v111, v124
	v_dual_mov_b32 v137, v98 :: v_dual_mov_b32 v92, v207
	v_mov_b32_e32 v124, v88
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v219, v4, v11 :: v_dual_mul_f32 v4, v254, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v201, v4, v12 :: v_dual_mul_f32 v4, v254, v6
	v_fmac_f32_e32 v203, v4, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v209, v146 :: v_dual_fmac_f32 v202, v4, v14
	v_mul_f32_e32 v4, v155, v70
	v_mov_b32_e32 v70, v87
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v4, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v155, v71 :: v_dual_mov_b32 v71, v89
	v_mov_b32_e32 v89, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v4, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v155, v72
	v_dual_mov_b32 v72, v65 :: v_dual_fmac_f32 v137, v4, v13
	v_mul_f32_e32 v4, v155, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v4, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v160, v162 :: v_dual_mov_b32 v73, v93
	v_dual_mov_b32 v103, v120 :: v_dual_lshlrev_b32 v162, 16, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v155, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v4, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v210
	scratch_load_b32 v210, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v4, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v211
	scratch_load_b32 v211, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v53, v4, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v212
	scratch_load_b32 v212, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v4, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v71, v4, v11 :: v_dual_mul_f32 v4, v162, v176
	v_fmac_f32_e32 v72, v4, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v4, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v178
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v73, v4, v14 :: v_dual_mul_f32 v4, v254, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v240, v162
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v4, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v20, v162, v243 :: v_dual_fmac_f32 v91, v4, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v21
	scratch_load_b32 v21, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v4, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v197, v4, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v155, v74
	v_mov_b32_e32 v74, v104
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v4, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v155, v75 :: v_dual_mov_b32 v75, v101
	v_mov_b32_e32 v101, v102
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v102, off, off offset:252
	scratch_load_b32 v104, off, off offset:204
	scratch_load_b32 v105, off, off offset:196
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v4, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v155, v76
	scratch_load_b32 v76, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v4, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v155, v77
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v77, off, off offset:192
	scratch_load_b32 v93, off, off offset:184
	scratch_load_b32 v120, off, off offset:180
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v4, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v213
	scratch_load_b32 v213, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v42, v4, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v215
	scratch_load_b32 v215, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v43, v4, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v216
	scratch_load_b32 v216, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v44, v4, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v217
	scratch_load_b32 v217, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v45, v4, v18 :: v_dual_mul_f32 v4, v162, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v4, v15 :: v_dual_mul_f32 v4, v162, v180
	v_fmac_f32_e32 v62, v4, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v63, v4, v17 :: v_dual_mul_f32 v4, v162, v182
	v_fmac_f32_e32 v221, v4, v18
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[11:14], v222 offset:512
	ds_load_b128 v[15:18], v222 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v66, v254
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v125, v4, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v67
	scratch_load_b32 v67, off, off          ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v77, v4, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v68
	scratch_load_b32 v68, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v4, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v69
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v4, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v78, v155
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v78, off, off offset:172
	scratch_load_b32 v198, off, off offset:168
	scratch_load_b32 v205, off, off offset:164
	scratch_load_b32 v121, off, off offset:160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v4, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v155, v82
	scratch_load_b32 v82, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v4, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v155, v83
	scratch_load_b32 v83, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v59, v4, v13 :: v_dual_mul_f32 v4, v155, v84
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:64
	scratch_load_b32 v69, off, off offset:8
	v_fmac_f32_e32 v60, v4, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v167, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v4, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v168
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v4, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v4, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v4, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v183, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v107, v4, v11 :: v_dual_mul_f32 v4, v162, v184
	v_dual_fmac_f32 v47, v4, v12 :: v_dual_mul_f32 v4, v162, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v4, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v186
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v46, v4, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v254, v166
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v4, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v151, v254
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v4, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v150, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v119, v4, v17 :: v_dual_mul_f32 v4, v143, v254
	v_fmac_f32_e32 v122, v4, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v155, v85
	scratch_load_b32 v85, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v4, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v79, v155
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:48
	scratch_load_b32 v109, off, off offset:44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v208, v4, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v80, v155
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v65, off, off offset:32
	scratch_load_b32 v207, off, off offset:176
	scratch_load_b32 v123, off, off offset:140
	scratch_load_b32 v80, off, off offset:36
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v4, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v81, v155
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:24
	scratch_load_b32 v88, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v4, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v4, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v172, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v4, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v173, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v4, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v174, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v4, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v41, v4, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v188, v162
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v105, v4, v16 :: v_dual_mul_f32 v4, v189, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v4, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v190, v162
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v4, v18
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v4, v21, s[28:31], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v21, s36, v21
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v1, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v222
	ds_load_b128 v[15:18], v222 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v254, v193
	v_mul_f32_e32 v4, v254, v191
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v120, v1, v17 :: v_dual_mul_f32 v1, v254, v7
	v_fmac_f32_e32 v67, v0, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v160, v3 :: v_dual_fmac_f32 v93, v1, v18
	v_mul_f32_e32 v1, v155, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v0, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v160, v142 :: v_dual_fmac_f32 v69, v1, v15
	v_mul_f32_e32 v1, v155, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v123, v0, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v160, v141
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v68, v1, v16 :: v_dual_mul_f32 v1, v155, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v205, v0, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v160, v140
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v66, v1, v17 :: v_dual_mul_f32 v1, v224, v254
	v_fmac_f32_e32 v102, v4, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v4, v254, v159 :: v_dual_fmac_f32 v103, v0, v18
	v_mul_f32_e32 v0, v162, v156
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v101, v4, v12 :: v_dual_mul_f32 v4, v254, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v195, v0, v15 :: v_dual_mul_f32 v0, v162, v154
	v_fmac_f32_e32 v100, v4, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v254, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v40, v0, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v162, v153 :: v_dual_fmac_f32 v99, v4, v14
	v_mul_f32_e32 v4, v155, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v39, v0, v17 :: v_dual_mul_f32 v0, v162, v152
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v17, v238, v162 :: v_dual_fmac_f32 v76, v4, v11
	v_mul_f32_e32 v4, v155, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v0, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v255, v254
	v_dual_mul_f32 v18, v239, v162 :: v_dual_fmac_f32 v75, v4, v12
	v_mul_f32_e32 v4, v155, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v4, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v155, v161
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v64, v4, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v160, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v192, v4, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v160, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v4, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v160, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v4, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v160, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v206, v4, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v162, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v81, v4, v11 :: v_dual_mul_f32 v4, v162, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v229, v155 :: v_dual_fmac_f32 v78, v4, v12
	v_mul_f32_e32 v4, v162, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v12, v155, v230 :: v_dual_fmac_f32 v79, v4, v13
	v_dual_mul_f32 v4, v162, v31 :: v_dual_mul_f32 v13, v231, v160
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v65, v4, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v254, v10
	v_mul_f32_e32 v14, v232, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v200, v4, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v254, v8
	v_mul_f32_e32 v15, v233, v160
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v199, v4, v16
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[3:6], v222 offset:512
	ds_load_b128 v[7:10], v222 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v160, v234
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v36, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v254, v237
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v217, v1, v9 :: v_dual_fmac_f32 v126, v12, v7
	v_fmac_f32_e32 v212, v11, v10
	v_fmac_f32_e32 v80, v16, v7
	v_fmac_f32_e32 v97, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v254, v236
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v38, v13, v8
	v_dual_fmac_f32 v210, v14, v9 :: v_dual_fmac_f32 v209, v15, v10
	v_fmac_f32_e32 v57, v20, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v0, v5 :: v_dual_mul_f32 v0, v254, v235
	v_dual_fmac_f32 v117, v17, v8 :: v_dual_fmac_f32 v116, v18, v9
	v_fmac_f32_e32 v115, v19, v10
	v_dual_fmac_f32 v83, v0, v6 :: v_dual_mul_f32 v0, v241, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v37, v0, v3 :: v_dual_mul_f32 v0, v155, v245
	v_fmac_f32_e32 v129, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v155, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v155, v242
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v127, v0, v6 :: v_dual_mul_f32 v0, v246, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v211, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v160, v249
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v160, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v160, v247
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v250, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v162, v253 :: v_dual_mul_f32 v3, v225, v254
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v54, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v162, v252
	v_mul_f32_e32 v4, v254, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v216, v3, v10 :: v_dual_fmac_f32 v55, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v162, v251
	v_mul_f32_e32 v5, v227, v155
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v84, v4, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v223, v254
	v_dual_mul_f32 v6, v228, v155 :: v_dual_fmac_f32 v215, v5, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v218, v0, v8 :: v_dual_fmac_f32 v213, v6, v9
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v8, off, off offset:596
	scratch_load_b32 v189, off, off offset:584
	scratch_load_b32 v190, off, off offset:588
	scratch_load_b32 v191, off, off offset:592
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v23, 7, v191
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v183, 0xbfb8aa3b, v100 :: v_dual_and_b32 v10, 63, v189
	v_dual_mul_f32 v184, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v151, 0xbfb8aa3b, v80
	v_mul_f32_e32 v20, 0xbfb8aa3b, v115
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v23
	v_or_b32_e32 v5, 60, v23
	v_or_b32_e32 v7, 50, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v181, 0xbfb8aa3b, v199 :: v_dual_mul_f32 v182, 0xbfb8aa3b, v200
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 58, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s1, s72, v5
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_ci_u32_e64 v6, null, s73, 0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_u32 v11, s1, s72, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s72, v10
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v23
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s6, s72, v5
	v_add_co_ci_u32_e64 v6, null, s73, 0, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[11:12]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v11, s10, s72, v7
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v23
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 46, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_co_u32 v5, s14, s72, v5
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v7, 42, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s14
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[11:12]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v11, s18, s72, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s72, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 38, v23
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v187, s22, s72, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v3, 0xbfb8aa3b, v218
	v_dual_mul_f32 v5, 0xbfb8aa3b, v217 :: v_dual_mul_f32 v186, 0xbfb8aa3b, v102
	v_dual_mul_f32 v6, 0xbfb8aa3b, v216 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v5
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v188, null, s73, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[11:12]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v7, 0, 0x42800000, s26
	v_cndmask_b32_e64 v11, 0, 0x42800000, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v180, 0xbfb8aa3b, v120 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v218
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v217
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v216 :: v_dual_mul_f32 v176, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v5, v5
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s27
	v_ldexp_f32 v0, v4, v0
	v_dual_mul_f32 v4, 0xbfb8aa3b, v37 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v74
	v_mul_f32_e32 v12, 0xbfb8aa3b, v212
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v3, v5, v3
	v_mul_f32_e32 v168, 0xbfb8aa3b, v66
	v_ldexp_f32 v5, v7, v6
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v6, v11, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v7, 0xbfb8aa3b, v215
	v_mul_f32_e32 v11, 0xbfb8aa3b, v213
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v12
	v_mul_f32_e32 v164, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v11
	v_cndmask_b32_e64 v15, 0, 0x42800000, s27
	v_mul_f32_e32 v166, 0xbfb8aa3b, v129
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s26
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v9, v9
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v213 :: v_dual_mul_f32 v160, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s26
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s27
	v_ldexp_f32 v4, v9, v4
	v_dual_mul_f32 v9, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v158, 0xbfb8aa3b, v121
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v16
	v_mul_f32_e32 v154, 0xbfb8aa3b, v204
	v_mul_f32_e32 v148, 0xbfb8aa3b, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v7, v11, v7
	v_ldexp_f32 v11, v13, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_mul_f32_e32 v13, 0xbfb8aa3b, v38
	v_ldexp_f32 v12, v15, v14
	v_mul_f32_e32 v15, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v19, 0, 0x42800000, s27
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v15
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v144, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v169, 0xbfb8aa3b, v68 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, s26
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s27
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v210
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s26
	v_mul_f32_e32 v142, 0xbfb8aa3b, v54
	v_exp_f32_e32 v15, v15
	v_dual_mul_f32 v155, 0xbfb8aa3b, v103 :: v_dual_add_f32 v0, 1.0, v0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v145, 0xbfb8aa3b, v40 :: v_dual_add_f32 v6, 1.0, v6
	v_dual_mul_f32 v143, 0xbfb8aa3b, v70 :: v_dual_add_f32 v4, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v9, v14, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v15, v13
	v_ldexp_f32 v15, v19, v18
	v_mul_f32_e32 v18, 0xbfb8aa3b, v116
	v_exp_f32_e32 v17, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v4, v4, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v175, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v178, 0xbfb8aa3b, v97
	v_dual_mul_f32 v177, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v172, 0xbfb8aa3b, v64
	v_dual_mul_f32 v173, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v76
	v_dual_mul_f32 v167, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v170, 0xbfb8aa3b, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v14, v17, v16
	v_dual_mul_f32 v16, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v117
	v_dual_mul_f32 v165, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v156, 0xbfb8aa3b, v205
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v17
	v_dual_mul_f32 v163, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v162, 0xbfb8aa3b, v192
	v_dual_mul_f32 v161, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v150, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v21, 0, 0x42800000, s26
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v20
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v157, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, s26
	v_mul_f32_e32 v153, 0xbfb8aa3b, v88
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s26
	v_exp_f32_e32 v17, v17
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v115 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v20, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, vcc_lo, v36, v0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v21, v21
	v_dual_mul_f32 v159, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v152, 0xbfb8aa3b, v109
	v_ldexp_f32 v16, v17, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v139, 0xbfb8aa3b, v57
	v_ldexp_f32 v18, v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v24, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v19, v21, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v5, v5, v217
	v_fma_f32 v21, -v25, v17, 1.0
	v_div_scale_f32 v32, s27, v217, v5, v217
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v27, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_add_f32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v149, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v146, 0xbfb8aa3b, v195
	v_dual_mul_f32 v147, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v140, 0xbfb8aa3b, v56
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v138, 36, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v24, v27, 1.0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
	s_mov_b32 s71, 0x31027000
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v31, v27
	v_fmac_f32_e32 v17, v21, v17
	v_div_scale_f32 v31, null, v6, v6, v216
	s_mov_b32 s70, 0x7ffffffe
	v_mul_f32_e32 v34, v32, v27
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_dual_mul_f32 v141, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v28, v26, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v31
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[187:188]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v28, v26
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_fmac_f32 v28, v30, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v3, v3, v218
	v_fma_f32 v25, -v25, v28, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v21, v22
	v_div_fmas_f32 v17, v25, v17, v28
	v_rcp_f32_e32 v25, v35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v31, v33, 1.0
	v_div_fixup_f32 v0, v17, v0, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v22, v21, 1.0
	v_fmac_f32_e32 v33, v28, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v125, v125, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v29, v21
	v_div_scale_f32 v29, s26, v218, v3, v218
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v28, s26, v37, v4, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v29, v21
	v_fma_f32 v26, -v22, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_fmac_f32 v30, v26, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v24, v34, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v22, v30, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v34, v26, v27
	v_div_scale_f32 v22, s28, v216, v6, v216
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v25, 1.0
	v_div_fmas_f32 v17, v17, v21, v30
	v_fma_f32 v21, -v24, v34, v32
	v_mul_f32_e32 v24, v22, v33
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, null, v7, v7, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v31, v24, v22
	v_div_scale_f32 v32, null, v11, v11, v213
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v30, v28, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v29, v33
	v_div_fmas_f32 v21, v21, v27, v34
	v_rcp_f32_e32 v27, v26
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v3, v17, v3, v218
	v_fma_f32 v22, -v31, v24, v22
	v_div_fixup_f32 v5, v21, v5, v217
	v_rcp_f32_e32 v21, v32
	v_div_scale_f32 v31, null, v12, v12, v212
	v_fma_f32 v17, -v35, v30, v28
	v_div_fmas_f32 v22, v22, v33, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v26, v27, 1.0
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v36, s26, v212, v12, v212
	v_fmac_f32_e32 v30, v17, v25
	v_fmac_f32_e32 v27, v29, v27
	v_rcp_f32_e32 v29, v31
	v_fma_f32 v34, -v32, v21, 1.0
	v_div_scale_f32 v17, s27, v215, v7, v215
	v_fma_f32 v24, -v35, v30, v28
	v_div_scale_f32 v33, s28, v213, v11, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v21, v34, v21
	v_div_scale_f32 v35, null, v9, v9, v211
	v_fma_f32 v34, -v31, v29, 1.0
	v_div_fmas_f32 v24, v24, v25, v30
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v6, v22, v6, v216
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v119, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v34, v29
	v_div_fixup_f32 v4, v24, v4, v37
	v_rcp_f32_e32 v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v36, v29
	v_mul_f32_e32 v28, v17, v27
	v_fma_f32 v25, -v26, v28, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v35, v34, 1.0
	v_fmac_f32_e32 v28, v25, v27
	v_div_scale_f32 v25, null, v13, v13, v38
	v_mul_f32_e32 v30, v33, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v37, v34
	v_fma_f32 v17, -v26, v28, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v26, v25
	v_div_scale_f32 v37, s29, v211, v9, v211
	v_fma_f32 v22, -v32, v30, v33
	v_div_fmas_f32 v17, v17, v27, v28
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v7, v17, v7, v215
	v_fma_f32 v28, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v28, v26
	v_fmac_f32_e32 v30, v22, v21
	v_fma_f32 v22, -v31, v24, v36
	v_div_scale_f32 v28, null, v14, v14, v210
	v_fma_f32 v27, -v32, v30, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v22, v29
	v_mul_f32_e32 v22, v37, v34
	v_div_fmas_f32 v21, v27, v21, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v31, v24, v36
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v30, -v35, v22, v37
	v_div_scale_f32 v31, s27, v38, v13, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v27, v29, v24
	v_rcp_f32_e32 v27, v28
	v_fmac_f32_e32 v22, v30, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v29, v31, v26
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v12, v24, v12, v212
	v_div_scale_f32 v24, null, v15, v15, v209
	v_fma_f32 v17, -v35, v22, v37
	v_div_fixup_f32 v11, v21, v11, v213
	v_fma_f32 v21, -v25, v29, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v28, v27, 1.0
	v_fmac_f32_e32 v29, v21, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v30, v27
	v_div_scale_f32 v30, null, v16, v16, v86
	v_div_scale_f32 v21, s26, v210, v14, v210
	v_rcp_f32_e32 v32, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v30, v32, 1.0
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, s28, v86, v16, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v35, v33, v32
	v_div_fmas_f32 v17, v17, v34, v22
	v_rcp_f32_e32 v22, v24
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v34, null, v18, v18, v116
	v_div_fixup_f32 v9, v17, v9, v211
	v_fma_f32 v17, -v25, v29, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_fma_f32 v31, -v24, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v17, v17, v26, v29
	v_div_scale_f32 v29, null, v19, v19, v117
	s_mov_b32 vcc_lo, s26
	v_dual_fmac_f32 v22, v31, v22 :: v_dual_mul_f32 v25, v21, v27
	v_div_fixup_f32 v13, v17, v13, v38
	v_rcp_f32_e32 v17, v29
	v_div_scale_f32 v31, s27, v209, v15, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v28, v25, v21
	v_div_scale_f32 v38, null, v20, v20, v115
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v122, v122, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v26, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v29, v17, 1.0
	v_mul_f32_e32 v26, v31, v22
	v_fma_f32 v21, -v28, v25, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v36, v17
	v_fma_f32 v28, -v24, v26, v31
	v_fma_f32 v36, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v21, v21, v27, v25
	v_rcp_f32_e32 v27, v38
	v_fma_f32 v25, -v30, v35, v33
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v37, v36, v37
	v_fmac_f32_e32 v26, v28, v22
	v_div_scale_f32 v28, s26, v117, v19, v117
	v_div_fixup_f32 v14, v21, v14, v210
	v_fmac_f32_e32 v35, v25, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v21, -v24, v26, v31
	v_fma_f32 v31, -v38, v27, 1.0
	v_mul_f32_e32 v24, v28, v17
	v_div_scale_f32 v25, s29, v116, v18, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v21, v21, v22, v26
	v_fmac_f32_e32 v27, v31, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v26, -v29, v24, v28
	v_fma_f32 v22, -v30, v35, v33
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v15, v21, v15, v209
	v_div_scale_f32 v31, s27, v115, v20, v115
	v_fmac_f32_e32 v24, v26, v17
	v_div_fmas_f32 v22, v22, v32, v35
	s_mov_b32 vcc_lo, s26
	v_mul_f32_e32 v30, v25, v37
	v_mul_f32_e32 v32, v31, v27
	v_fma_f32 v21, -v29, v24, v28
	v_div_fixup_f32 v16, v22, v16, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v118, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v38, v32, v31
	v_div_fmas_f32 v17, v21, v17, v24
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, s28
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v22, v27
	v_div_fixup_f32 v17, v17, v19, v117
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v208, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v34, v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v105, v105, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v26, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s26
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v34, v30, v25
	v_fma_f32 v25, -v38, v32, v31
	v_div_fmas_f32 v21, v21, v37, v30
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v27, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v21, v18, v116
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v114, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v25, v20, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v113, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v113, v111, v13
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v101
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v112, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v6, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v124, v124, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v24, v22
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v100
	v_exp_f32_e32 v3, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v108, v15
	v_mul_f32_e32 v108, v104, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v21
	v_ldexp_f32 v5, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_add_f32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v4, null, v0, v0, v102
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v26
	v_ldexp_f32 v7, v11, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v5, v5, v99
	v_rcp_f32_e32 v20, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	v_add_f32_e32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v11, v13
	v_div_scale_f32 v19, s27, v99, v5, v99
	v_div_scale_f32 v9, null, v3, v3, v101
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v4, v20, 1.0
	v_rcp_f32_e32 v12, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v13, v11, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v110, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v6, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v110, v107, v16 :: v_dual_mul_f32 v107, v106, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v7, v7, v100
	v_fmac_f32_e32 v11, v17, v11
	v_div_scale_f32 v6, vcc_lo, v102, v0, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v17, v18
	v_fma_f32 v15, -v9, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v12, v15, v12
	v_div_scale_f32 v15, s26, v101, v3, v101
	v_fma_f32 v21, -v18, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v21, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v14, v6, v20 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v4, v14, v6
	v_fmac_f32_e32 v14, v16, v20
	v_mul_f32_e32 v16, v15, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v4, -v4, v14, v6
	v_fma_f32 v6, -v9, v16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v4, v20, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v6, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v19, v11
	v_div_fixup_f32 v0, v4, v0, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v200
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v9, v16, v15
	v_div_scale_f32 v15, s28, v100, v7, v100
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v13, v20, v19
	v_div_fmas_f32 v4, v4, v12, v16
	v_mul_f32_e32 v12, v15, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v9, v11
	v_div_fixup_f32 v3, v4, v3, v101
	v_fma_f32 v9, -v18, v12, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v6, v14, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v13, v20, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v12, v9, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v15, -v18, v12, v15
	v_div_fmas_f32 v11, v13, v11, v20
	v_div_scale_f32 v19, null, v6, v6, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v9, v9, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v19
	v_div_fixup_f32 v5, v11, v5, v99
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v201, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v13, v14
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v12, v15, v17, v12
	v_fma_f32 v14, -v19, v20, 1.0
	v_div_scale_f32 v15, null, v9, v9, v199
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v14, v20
	v_div_scale_f32 v14, vcc_lo, v200, v6, v200
	v_rcp_f32_e32 v17, v15
	v_div_scale_f32 v21, null, v13, v13, v120
	v_mul_f32_e32 v22, v14, v20
	v_div_fixup_f32 v4, v12, v7, v100
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v202, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v7, v21
	v_div_scale_f32 v5, s26, v199, v9, v199
	v_fma_f32 v11, -v19, v22, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v203, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v18, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v15, v17, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v98, v219, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v11, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v165
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v12, v17
	v_fma_f32 v11, -v21, v7, 1.0
	v_fma_f32 v4, -v19, v22, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v14, null, v3, v3, v93
	v_dual_mul_f32 v12, v5, v17 :: v_dual_fmac_f32 v7, v11, v7
	v_div_scale_f32 v11, s27, v120, v13, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v4, v4, v20, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v18, -v15, v12, v5
	v_mul_f32_e32 v19, v11, v7
	v_div_fixup_f32 v0, v4, v6, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v12, v18, v17
	v_fma_f32 v4, -v21, v19, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v14, v16, 1.0
	v_fma_f32 v5, -v15, v12, v5
	v_fmac_f32_e32 v19, v4, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v4, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v6, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v5, v17, v12
	v_div_scale_f32 v18, s28, v93, v3, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v4, v4, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v9, v199
	v_fma_f32 v11, -v21, v19, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_mul_f32 v91, v91, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v12, v18, v16
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v15, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v4, v4, v97
	v_fma_f32 v17, -v14, v12, v18
	v_div_fmas_f32 v7, v11, v7, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v11, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v83 :: v_dual_fmac_f32 v12, v17, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v7, v7, v13, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v173
	v_exp_f32_e32 v13, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v14, v12, v18
	v_div_scale_f32 v14, null, v6, v6, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v22, v11, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v16, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v12, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v15, v11
	v_div_scale_f32 v15, s26, v97, v4, v97
	v_div_fixup_f32 v3, v9, v3, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v13, v20
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v17, v15, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v14, v12, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v197, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v22, v17, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v12, v18, v12
	v_div_scale_f32 v18, s27, v85, v6, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v13, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v13, v18, v12
	v_div_scale_f32 v19, null, v3, v3, v83
	v_fma_f32 v7, -v22, v17, v15
	v_fma_f32 v15, -v14, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v5, v19
	v_div_fmas_f32 v7, v7, v11, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v13, v15, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v16, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v7, v4, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v14, v13, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v7, v7, v12, v13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s28
	v_cndmask_b32_e64 v13, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v7, v6, v85
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v90, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v19, v5, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v0, v0, v84
	v_fmac_f32_e32 v5, v9, v5
	v_div_scale_f32 v9, s26, v83, v3, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v64 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v17, v9, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v19, v17, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v11, v14, 1.0
	v_fmac_f32_e32 v17, v7, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v18, v14
	v_div_scale_f32 v18, s27, v84, v0, v84
	v_fma_f32 v9, -v19, v17, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v15, v18, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v9, v5, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v19, -v11, v15, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v13, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v5, v3, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v7, v7, v76
	v_fmac_f32_e32 v15, v19, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v95, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v13
	v_fma_f32 v9, -v11, v15, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s28
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v14, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v19, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, vcc_lo, v76, v7, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v13, v20, 1.0
	v_div_fixup_f32 v0, v9, v0, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v96, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v22, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v82, v0
	v_mul_f32_e32 v82, v77, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v14, v14, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v17, v15, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v9, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, s27, v64, v14, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v13, v17, v15
	v_rcp_f32_e32 v22, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v12, v12, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v0, v20
	v_div_scale_f32 v6, null, v3, v3, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v18, v21
	v_fma_f32 v4, -v13, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v4, v4, v20, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v21, v18, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v4, v4, v7, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v16, v18
	v_div_scale_f32 v16, s26, v75, v12, v75
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, s26, v74, v3, v74
	v_mul_f32_e32 v5, v16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v21, v5, v16
	v_fmac_f32_e32 v5, v0, v18
	v_fma_f32 v0, -v19, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v21, v5, v16
	v_fmac_f32_e32 v22, v0, v22
	v_rcp_f32_e32 v0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v5, v9, v18, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v7, v11, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v5, v12, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v6, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v19, v7, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v75, v135, v5 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v9, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v7, v15, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v12, v12, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v13, v17, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v19, v7, v11
	v_fma_f32 v20, -v6, v13, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v9, v16, v9
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v13, v20, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v6, v13, v17
	v_div_fmas_f32 v7, v11, v22, v7
	v_div_scale_f32 v17, null, v9, v9, v68
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v6, v0, v13
	v_rcp_f32_e32 v13, v17
	v_div_fixup_f32 v7, v7, v14, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v18, v15
	v_exp_f32_e32 v6, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v3, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v74, v134, v4 :: v_dual_add_f32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v77, v137, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v17, v13, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v3, null, v11, v11, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v6, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v13, v18, v13
	v_div_scale_f32 v18, s26, v68, v9, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v6, v3
	v_mul_f32_e32 v5, v18, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v19, null, v12, v12, v69
	v_rcp_f32_e32 v16, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v19, v16, 1.0
	v_fmac_f32_e32 v16, v15, v16
	v_div_scale_f32 v15, vcc_lo, v69, v12, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v15, v16
	v_fma_f32 v20, -v19, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v20, v16
	v_fma_f32 v4, -v19, v14, v15
	v_fma_f32 v15, -v17, v5, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v136, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v3, v6, 1.0
	v_div_scale_f32 v19, s27, v66, v11, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v15, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v6, v7, v6 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v129
	v_div_fmas_f32 v4, v4, v16, v14
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v15, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v12, v69
	v_fma_f32 v12, -v17, v5, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v5, v12, v13, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s29
	v_ldexp_f32 v14, v15, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v9, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v20, null, v0, v0, v67
	v_div_scale_f32 v18, s28, v67, v0, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v7, v20
	v_fma_f32 v21, -v20, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v21, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v12, v18, v7 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v128
	v_mul_f32_e32 v16, v19, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v3, v16, v19
	v_fmac_f32_e32 v16, v17, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v20, v12, v18
	v_fma_f32 v3, -v3, v16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v12, v17, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v14, v14, v129
	v_div_fmas_f32 v3, v3, v6, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v16, v19
	v_fma_f32 v18, -v20, v12, v18
	v_div_fixup_f32 v3, v3, v11, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v130, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v17, v13
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v18, v7, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v19, v16, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v126
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v7, v0, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v67, v131, v5 :: v_dual_fmac_f32 v16, v13, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, vcc_lo, v129, v14, v129
	v_div_scale_f32 v21, null, v6, v6, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v22, v13, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v133, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v7, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v132, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v19, v22, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v9, v16
	v_fma_f32 v9, -v21, v7, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v19, v22, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v7, v9, v7
	v_div_scale_f32 v9, s27, v127, v6, v127
	v_div_fmas_f32 v5, v5, v16, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v0, v0, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v19, v9, v7
	v_div_fixup_f32 v4, v5, v14, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v16, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v21, v19, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v192
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v58, v4 :: v_dual_fmac_f32 v19, v5, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v12, v12, v128
	v_div_scale_f32 v3, s26, v128, v12, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v18, v15
	v_fma_f32 v14, -v13, v16, 1.0
	v_fma_f32 v9, -v21, v19, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v16, v14, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v5, v5, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v15, v18, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_fmac_f32 v18, v11, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v5, v5, v192
	v_mul_f32_e32 v11, v3, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v11, v3
	v_fmac_f32_e32 v11, v17, v18
	v_div_scale_f32 v17, s28, v126, v0, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v15, v11, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fmas_f32 v3, v3, v18, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v94
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v11, v17, v16
	v_div_fixup_f32 v3, v3, v12, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v18, -v13, v11, v17
	v_div_fmas_f32 v7, v9, v7, v19
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v206
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v59, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v18, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v15, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v14, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v21
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v7, v6, v127
	v_fma_f32 v7, -v13, v11, v17
	v_div_scale_f32 v13, null, v9, v9, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v22, v14, 1.0
	v_div_fmas_f32 v7, v7, v16, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v11, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v12, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, s26, v192, v5, v192
	v_div_fixup_f32 v0, v7, v0, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v17, v15, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v60, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v13, v11, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v61, v0 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v207
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v22, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v11, v18, v11
	v_div_scale_f32 v18, s27, v94, v9, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v12, v14
	v_div_scale_f32 v19, null, v0, v0, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v12, v18, v11
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v6, -v22, v17, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v3, v19
	v_fma_f32 v15, -v13, v12, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v16, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v6, v6, v14, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v12, v15, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v6, v5, v192
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v13, v12, v18
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v7, -v19, v3, 1.0
	v_div_scale_f32 v13, null, v4, v4, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v6, v6, v11, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v3, v7, v3
	v_div_scale_f32 v7, s26, v206, v0, v206
	v_rcp_f32_e32 v14, v13
	v_div_fixup_f32 v6, v6, v9, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v17, v7, v3
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v123
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v51, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v19, v17, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v13, v14, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s28
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v9, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v18, v14
	v_div_scale_f32 v18, s27, v207, v4, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v16, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v19, v17, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v15, v18, v14 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v205
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v13, v15, v18
	v_div_fmas_f32 v3, v7, v3, v17
	v_div_scale_f32 v12, null, v9, v9, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v19, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v12
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v13, v15, v18
	v_div_fixup_f32 v0, v3, v0, v206
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v50, v50, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v14, v15
	v_div_scale_f32 v15, vcc_lo, v121, v9, v121
	v_fma_f32 v22, -v12, v20, 1.0
	v_div_scale_f32 v21, null, v11, v11, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v7, v4, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v22, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v18, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v19, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v52, v0
	v_mul_f32_e32 v53, v53, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v17, v15, v20 :: v_dual_add_f32 v14, 1.0, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v7, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v12, v17, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v21, v18, 1.0
	v_div_scale_f32 v19, null, v14, v14, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v17, v3, v20 :: v_dual_fmac_f32 v18, v16, v18
	v_div_scale_f32 v16, s26, v123, v11, v123
	v_rcp_f32_e32 v22, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v12, v17, v15
	v_div_scale_f32 v12, s27, v205, v14, v205
	v_div_fmas_f32 v5, v5, v20, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v9, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v13, v15, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v4, v16, v18 :: v_dual_add_f32 v13, 1.0, v13
	v_fma_f32 v3, -v21, v4, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v20, null, v13, v13, v204
	v_fmac_f32_e32 v4, v3, v18
	v_fma_f32 v3, -v19, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v21, v4, v16
	v_rcp_f32_e32 v21, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v3, v22
	v_div_fmas_f32 v4, v7, v18, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v0, v0, v103
	v_mul_f32_e32 v7, v12, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v4, v4, v11, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v3, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v19, v7, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v43, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v7, v11, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v6, v3, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v151
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v109
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v19, v7, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v3, v9, v3
	v_div_scale_f32 v9, s26, v103, v0, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v11, v9, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v17, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v6, v11, v9
	v_fmac_f32_e32 v11, v19, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v7, v12, v22, v7
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v18, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v20, v21, 1.0
	v_fma_f32 v6, -v6, v11, v9
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v7, v14, v205
	v_fmac_f32_e32 v21, v15, v21
	v_div_scale_f32 v15, s27, v204, v13, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v3, v6, v3, v11
	v_div_scale_f32 v17, null, v9, v9, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v11, v15, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v3, v0, v103
	v_rcp_f32_e32 v18, v17
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v44, v7 :: v_dual_mul_f32 v45, v45, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v16, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v20, v11, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v11, v16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v20, v11, v15
	v_div_fmas_f32 v11, v15, v21, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v11, v13, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v19, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v149
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v220, v11 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v3, s26, v88, v9, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v3, v18
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v6, null, v12, v12, v109
	v_fma_f32 v4, -v17, v19, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v14, v6
	v_fmac_f32_e32 v19, v4, v18
	v_div_scale_f32 v16, null, v0, v0, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v17, v19, v3
	v_rcp_f32_e32 v20, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v7, -v6, v14, 1.0
	v_div_fmas_f32 v3, v3, v18, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v3, v9, v88
	v_fma_f32 v13, -v16, v20, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v35, v194, v3 :: v_dual_fmac_f32 v20, v13, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, s27, v80, v0, v80
	v_fmac_f32_e32 v14, v7, v14
	v_div_scale_f32 v7, s28, v109, v12, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v17, v13, v20 :: v_dual_mul_f32 v42, v42, v5
	v_mul_f32_e32 v5, v7, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v16, v17, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v6, v5, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v17, v18, v20
	v_fmac_f32_e32 v5, v4, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v16, v17, v13
	v_fma_f32 v6, -v6, v5, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v24
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v4, v4, v15
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v6, v14, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v147
	v_exp_f32_e32 v14, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v6, v7, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v12, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v13, v20, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v4, v4, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v14, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v13, v0, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v16, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v19
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v198, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v6, v6, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v21
	v_fma_f32 v15, -v7, v16, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v13, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v89, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v15, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v14, null, v9, v9, v65
	v_div_scale_f32 v15, vcc_lo, v81, v4, v81
	v_fma_f32 v19, -v21, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v0, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_mul_f32 v12, v15, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, s27, v65, v9, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v19, v17
	v_div_scale_f32 v19, s26, v78, v6, v78
	v_fma_f32 v5, -v7, v12, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v14, v0, 1.0
	v_dual_mul_f32 v13, v19, v17 :: v_dual_fmac_f32 v12, v5, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v21, v13, v19
	v_fmac_f32_e32 v0, v18, v0
	v_div_scale_f32 v18, null, v3, v3, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v7, v12, v15
	v_fmac_f32_e32 v13, v5, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v5, v11, v0
	v_rcp_f32_e32 v15, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v7, v16, v12
	v_fma_f32 v12, -v21, v13, v19
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v16, -v14, v5, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v7, v4, v81
	v_div_fmas_f32 v12, v12, v17, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v18, v15, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v71, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v12, v6, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v13, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, s26, v79, v3, v79
	v_fmac_f32_e32 v5, v16, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v14, v5, v11
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v39
	v_exp_f32_e32 v19, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v72, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v14, v13, v15
	v_div_fmas_f32 v0, v11, v0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v17, v19, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v16, v16, v195
	v_fma_f32 v5, -v18, v14, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v9, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v14, v5, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v11, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v5, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v73, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v18, v14, v13
	v_div_scale_f32 v13, null, v7, v7, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v21, v13
	v_div_fmas_f32 v9, v9, v15, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v11, v11, v39
	v_fma_f32 v19, -v20, v5, 1.0
	v_div_fixup_f32 v3, v9, v3, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v18, v14
	v_div_scale_f32 v15, vcc_lo, v195, v16, v195
	v_fmac_f32_e32 v5, v19, v5
	v_fma_f32 v19, -v13, v21, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v29, v196, v3 :: v_dual_mul_f32 v22, v15, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v9, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v14, v18, 1.0
	v_fmac_f32_e32 v21, v19, v21
	v_div_scale_f32 v19, s26, v40, v7, v40
	v_fma_f32 v0, -v20, v22, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v12, v18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v4, 1.0, v6 :: v_dual_mul_f32 v3, v19, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, s27, v39, v11, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v0, v5
	v_fma_f32 v0, -v13, v3, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v20, v22, v15
	v_dual_fmac_f32 v3, v0, v21 :: v_dual_mul_f32 v0, v9, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v6, v5, v22
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v6, -v13, v3, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v12, -v14, v0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, s28
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v16, v195
	v_div_fmas_f32 v3, v6, v21, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v141
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v3, v7, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v12, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	v_exp_f32_e32 v13, v13
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v14, v0, v9
	v_div_scale_f32 v12, null, v4, v4, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v14, v12
	v_div_fmas_f32 v0, v9, v18, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v17
	v_cndmask_b32_e64 v18, 0, 0x42800000, s26
	v_ldexp_f32 v6, v13, v6
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v11, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v12, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v9, v15
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v56
	v_exp_f32_e32 v9, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, vcc_lo, v70, v4, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v9, v9, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v21, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v13, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v7, v7, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v6, v6, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v21, v19
	v_div_scale_f32 v30, null, v9, v9, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v18, v11
	v_div_scale_f32 v17, null, v13, v13, v56
	v_rcp_f32_e32 v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v24, v17
	v_fma_f32 v31, -v19, v21, 1.0
	v_fma_f32 v22, -v11, v18, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v31, v21
	v_div_scale_f32 v31, s27, v55, v7, v55
	v_fmac_f32_e32 v18, v22, v18
	v_div_scale_f32 v22, s26, v54, v6, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v31, v21
	v_mul_f32_e32 v20, v15, v14
	v_fma_f32 v38, -v30, v32, 1.0
	v_fma_f32 v25, -v12, v20, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v25, v14
	v_fma_f32 v25, -v17, v24, 1.0
	v_mul_f32_e32 v33, v22, v18
	v_fma_f32 v12, -v12, v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, s28, v56, v13, v56
	v_fma_f32 v15, -v11, v33, v22
	v_fmac_f32_e32 v32, v38, v32
	v_div_scale_f32 v38, s29, v57, v9, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v25, v24
	v_div_fmas_f32 v12, v12, v14, v20
	v_dual_fmac_f32 v33, v15, v18 :: v_dual_mul_f32 v20, v38, v32
	v_fma_f32 v14, -v19, v39, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v17, v40, v25
	v_div_fixup_f32 v4, v12, v4, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v11, v33, v22
	v_fma_f32 v12, -v30, v20, v38
	v_dual_fmac_f32 v39, v14, v21 :: v_dual_fmac_f32 v40, v15, v24
	s_mov_b32 vcc_lo, s26
	s_mov_b32 s26, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v12, v32
	v_fma_f32 v14, -v19, v39, v31
	v_fma_f32 v12, -v17, v40, v25
	v_div_fmas_f32 v11, v11, v18, v33
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v15, -v30, v20, v38
	v_div_fmas_f32 v14, v14, v21, v39
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v63, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v12, v12, v24, v40
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v6, v11, v6, v54
	v_div_fmas_f32 v15, v15, v32, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v221, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v14, v7, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v62, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v12, v13, v56
	v_div_fixup_f32 v0, v15, v9, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v25, v49, v5 :: v_dual_mul_f32 v22, v47, v6
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, |v82|, |v83|, |v84|
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v46, v3 :: v_dual_mul_f32 v16, v41, v0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v98|, |v99|
	v_max3_f32 v3, |v100|, |v90|, |v91|
	v_max3_f32 v6, |v85|, |v124|, |v119|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v48, v4
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v92|, |v93|, |v125|
	v_max_f32_e64 v7, |v74|, |v75|
	v_max3_f32 v9, |v76|, |v66|, |v67|
	v_max3_f32 v11, |v58|, |v59|, |v60|
	v_max3_f32 v12, |v61|, |v117|, |v116|
	v_max3_f32 v0, v0, |v101|, v3
	v_max3_f32 v3, v5, v6, |v122|
	v_max3_f32 v5, |v68|, |v69|, |v118|
	v_max3_f32 v6, v7, |v77|, v9
	v_max3_f32 v7, v11, v12, |v115|
	v_max_f32_e64 v9, |v50|, |v51|
	v_max3_f32 v11, |v52|, |v42|, |v43|
	v_max3_f32 v12, |v34|, |v35|, |v36|
	v_max3_f32 v13, |v37|, |v113|, |v112|
	v_max3_f32 v0, v0, v4, v3
	v_max3_f32 v4, v6, v5, v7
	v_max3_f32 v3, |v44|, |v45|, |v114|
	v_max3_f32 v5, v9, |v53|, v11
	v_max3_f32 v6, v12, v13, |v111|
	v_max_f32_e64 v7, |v26|, |v27|
	v_max3_f32 v9, |v28|, |v25|, |v24|
	v_max3_f32 v11, |v22|, |v19|, |v17|
	v_max3_f32 v12, |v16|, |v105|, |v107|
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v13, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v3, v6
	v_max3_f32 v3, |v21|, |v20|, |v110|
	v_max3_f32 v6, v7, |v29|, v9
	v_max3_f32 v7, v11, v12, |v108|
	v_max_f32_e32 v9, v13, v13
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v4, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v5, s26, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v14, 4, v189
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v3, v7
	v_max_f32_e32 v3, v0, v9
	v_dual_max_f32 v11, v11, v11 :: v_dual_and_b32 v0, 3, v189
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v9, 4, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v7, v6, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	v_dual_max_f32 v4, v4, v11 :: v_dual_lshlrev_b32 v13, 5, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v11, v0, 9, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_and_b32 v18, 8, v189
	v_dual_max_f32 v5, v5, v12 :: v_dual_and_b32 v12, 0x60, v189
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v11, v9, 2, v11
	v_and_or_b32 v15, 0x680, v14, v13
	v_lshlrev_b32_e32 v32, 1, v191
	v_lshrrev_b32_e32 v33, 3, v191
	v_xor_b32_e32 v13, v13, v12
	v_lshl_add_u32 v11, v18, 4, v11
	v_xor_b32_e32 v15, v15, v12
	v_lshl_add_u32 v38, v9, 6, 0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v7
.Ltmp20:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v30, s27, s72, v138
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v7, v11, v32, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v13, v38, v33, v15
.Ltmp22:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 34, v23
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s73, 0, s27
.Ltmp23:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v7, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v13
.Ltmp24:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v32, s26, s72, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v7, 32, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v33, null, s73, 0, s26
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 30, v23
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[30:31]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v30, s31, s72, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[32:33]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[32:33]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s73, 0, s31
	v_add_co_u32 v32, s31, s72, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v33, null, s73, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[30:31]
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v11, v4
.Ltmp26:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[30:31]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v6, v6
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 28, v23
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v15, v5 :: v_dual_max_f32 v6, v6, v6
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v7, v3, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v4, v11
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v13, v7 :: v_dual_max_f32 v6, v30, v6
	v_mov_b32_e32 v31, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v15, v15
.Ltmp39:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v31, v31 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v30, v6
.Ltmp41:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v13, v13 :: v_dual_max_f32 v4, v31, v31
	v_max_f32_e32 v5, v5, v15
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v30, v30 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 26, v23
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v7, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v4, v11, v4 :: v_dual_mov_b32 v15, v5
.Ltmp46:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v40.h, 0
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp48:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[32:33]
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[32:33]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v32, 24, v23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[187:188]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v15, v15
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v4
.Ltmp53:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v32, s39, s72, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v33, null, s73, 0, s39
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[32:33]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[32:33]
.Ltmp57:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v11, v30, v30
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v30, s38, s72, v13
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v5 :: v_dual_max_f32 v4, v4, v15
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v11 :: v_dual_lshlrev_b32 v15, 4, v0
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 3, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v18, 0, v191
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v6
.Ltmp62:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s73, 0, s38
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v13
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[30:31]
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v3, v3, v13
	v_max_f32_e32 v11, v11, v11
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v13, 1, v12
	v_lshlrev_b32_e32 v7, 5, v9
	v_add_nc_u32_e32 v9, 0, v15
.Ltmp68:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v12, 5, v12
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v11
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v11, v18, v13, v0
.Ltmp71:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 22, v23
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v9, v7, v0
.Ltmp73:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 18, v23
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v11, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v0
.Ltmp75:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v23
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v38, s39, s72, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v39, null, s73, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v30, s44, s72, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v31, null, s73, 0, s44
	v_add_co_u32 v32, s44, s72, v7
	v_add_co_ci_u32_e64 v33, null, s73, 0, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[30:31]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 12, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[32:33]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[32:33]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v3, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 16, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[38:39]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[38:39]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v30, s48, s72, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s73, 0, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v32, s48, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v33, null, s73, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v38, s48, s72, v7
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v7, 10, v23
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v39, null, s73, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[30:31]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v30, s54, s72, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v9, v3, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 8, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[32:33]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v3, v11, v3
	v_div_scale_f32 v11, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[32:33]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s73, 0, s54
	v_add_co_u32 v32, s54, s72, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v7, v11, v3
	v_rcp_f32_e32 v18, v13
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[30:31]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[32:33]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v30, -v9, v7, v11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[32:33]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v32, 0x2b8cbccc, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[38:39]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v7, v30, v3
	v_fma_f32 v4, -v13, v18, 1.0
	v_max_f32_e32 v30, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v9, -v9, v7, v11
	v_fmac_f32_e32 v18, v4, v18
	v_div_scale_f32 v11, s60, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v33, v6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[38:39]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v31, 6, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v7, v9, v3, v7
	v_mul_f32_e32 v9, v11, v18
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v31
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v7, 0x40e00000, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v6, v33, 1.0
	v_fma_f32 v7, -v13, v9, v11
	v_rcp_f32_e32 v39, v38
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v33, v31, v33
	v_div_scale_f32 v31, s61, v32, 0x40e00000, v32
	v_fmac_f32_e32 v9, v7, v18
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e32 v7.h, v40.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v41, v31, v33
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v38, v39, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v7
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v3, -v13, v9, v11
	v_fma_f32 v7, -v6, v41, v31
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v13, s62, v30, 0x40e00000, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v41, v7, v33
	v_div_fmas_f32 v3, v3, v18, v9
	v_mul_f32_e32 v7, v13, v39
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v9, 0xffff0000, v11
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v6, v41, v31
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v38, v7, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v31, null, v9, v9, v98
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v40.l, v3.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v7, v5, v39
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v31
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v33, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v38, v7, v13
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v41, null, v9, v9, v101
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v7, v13, v39, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v32, null, v9, v9, v99
	v_fma_f32 v18, -v31, v0, 1.0
	v_div_scale_f32 v38, vcc_lo, v98, v9, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v7, v7, 0x40e00000, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v0, v18, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v13, 1, v40
	v_mov_b16_e32 v30.l, v4.h
	v_mov_b16_e32 v30.h, v40.h
	v_mov_b16_e32 v40.l, v7.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v39, v38, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v13, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v47, v41
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v13, 1, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v30, -v32, v33, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v40, 1, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v46, -v31, v39, v38
	v_div_scale_f32 v48, null, v9, v9, v100
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v13, v4, v13, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v30, v33
	v_div_scale_f32 v49, s60, v99, v9, v99
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v7, v40, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v46, v0
	v_rcp_f32_e32 v7, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v49, v33
	v_fma_f32 v46, -v41, v47, 1.0
	v_div_scale_f32 v56, null, v9, v9, v90
	v_fma_f32 v31, -v31, v39, v38
	v_fma_f32 v38, -v32, v40, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s61, v101, v9, v101
	v_fma_f32 v54, -v48, v7, 1.0
	v_div_fmas_f32 v0, v31, v0, v39
	v_rcp_f32_e32 v39, v56
	v_div_scale_f32 v57, null, v9, v9, v91
	v_fmac_f32_e32 v40, v38, v33
	v_mul_f32_e32 v38, v46, v47
	v_fmac_f32_e32 v7, v54, v7
	v_div_scale_f32 v54, s62, v100, v9, v100
	v_rcp_f32_e32 v62, v57
	v_div_fixup_f32 v31, v0, v9, v98
	v_fma_f32 v0, -v32, v40, v49
	v_fma_f32 v32, -v41, v38, v46
	v_mul_f32_e32 v49, v54, v7
	v_fma_f32 v63, -v56, v39, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v33, v40
	v_fmac_f32_e32 v38, v32, v47
	v_fma_f32 v33, -v48, v49, v54
	v_fmac_f32_e32 v39, v63, v39
	v_div_scale_f32 v40, s60, v90, v9, v90
	v_fma_f32 v63, -v57, v62, 1.0
	v_div_fixup_f32 v32, v0, v9, v99
	v_fma_f32 v0, -v41, v38, v46
	v_fmac_f32_e32 v49, v33, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v41, v40, v39 :: v_dual_fmac_f32 v62, v63, v62
	v_div_scale_f32 v46, s63, v91, v9, v91
	v_div_scale_f32 v63, null, v9, v9, v92
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v33, -v48, v49, v54
	v_div_fmas_f32 v0, v0, v47, v38
	v_fma_f32 v38, -v56, v41, v40
	v_rcp_f32_e32 v47, v63
	v_mul_f32_e32 v48, v46, v62
	v_div_scale_f32 v54, null, v9, v9, v93
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v41, v38, v39
	v_div_fmas_f32 v7, v33, v7, v49
	v_rcp_f32_e32 v49, v54
	v_fma_f32 v64, -v57, v48, v46
	v_div_fixup_f32 v33, v0, v9, v101
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v65, -v63, v47, 1.0
	v_fma_f32 v0, -v56, v41, v40
	v_div_scale_f32 v56, null, v9, v9, v125
	v_fmac_f32_e32 v48, v64, v62
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v38, v7, v9, v100
	v_fmac_f32_e32 v47, v65, v47
	v_div_scale_f32 v7, s61, v92, v9, v92
	v_fma_f32 v40, -v54, v49, 1.0
	v_div_fmas_f32 v0, v0, v39, v41
	v_fma_f32 v39, -v57, v48, v46
	v_rcp_f32_e32 v57, v56
	v_mul_f32_e32 v41, v7, v47
	v_fmac_f32_e32 v49, v40, v49
	v_div_scale_f32 v46, s60, v93, v9, v93
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v86, null, v78, v78, v67
	v_div_fmas_f32 v40, v39, v62, v48
	v_fma_f32 v48, -v63, v41, v7
	v_mul_f32_e32 v62, v46, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v65, -v56, v57, 1.0
	v_div_fixup_f32 v39, v0, v9, v90
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v41, v48, v47
	v_fma_f32 v0, -v54, v62, v46
	v_fmac_f32_e32 v57, v65, v57
	v_div_scale_f32 v48, s62, v125, v9, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v63, v41, v7
	v_fmac_f32_e32 v62, v0, v49
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v30, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v0, v48, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v7, v7, v47, v41
	v_fma_f32 v41, -v54, v62, v46
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v46, -v56, v0, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v49, v41, v49, v62
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v0, v46, v57
	v_div_scale_f32 v64, null, v9, v9, v82
	v_div_scale_f32 v65, null, v9, v9, v83
	v_div_scale_f32 v72, null, v9, v9, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v70, v64
	v_rcp_f32_e32 v63, v65
	v_div_fixup_f32 v41, v7, v9, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v62, v72
	v_fma_f32 v7, -v56, v0, v48
	v_div_scale_f32 v56, null, v9, v9, v85
	v_div_fixup_f32 v46, v49, v9, v93
	v_div_scale_f32 v81, null, v9, v9, v122
	v_fma_f32 v71, -v64, v70, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v54, -v65, v63, 1.0
	v_div_fmas_f32 v0, v7, v57, v0
	v_fma_f32 v48, -v72, v62, 1.0
	v_div_fixup_f32 v40, v40, v9, v91
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, s63, v82, v9, v82
	v_fmac_f32_e32 v63, v54, v63
	v_div_scale_f32 v54, s60, v83, v9, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v71, v70
	v_fmac_f32_e32 v62, v48, v62
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v49, v54, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v64, v47, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v65, v49, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v47, v73, v70
	v_div_scale_f32 v73, null, v9, v9, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v57, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v7, -v64, v47, v71
	v_rcp_f32_e32 v64, v56
	v_div_scale_f32 v71, s61, v84, v9, v84
	v_rcp_f32_e32 v57, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v7, v70, v47
	v_div_fixup_f32 v47, v0, v9, v125
	v_mul_f32_e32 v70, v71, v62
	v_fma_f32 v0, -v65, v49, v54
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v48, v7, v9, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v56, v64, 1.0
	v_fma_f32 v7, -v72, v70, v71
	v_div_scale_f32 v65, s62, v85, v9, v85
	v_fma_f32 v54, -v73, v57, 1.0
	v_fmac_f32_e32 v64, v79, v64
	v_div_scale_f32 v79, null, v9, v9, v119
	v_div_fmas_f32 v0, v0, v63, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v70, v7, v62 :: v_dual_mul_f32 v7, v65, v64
	v_rcp_f32_e32 v63, v79
	v_fmac_f32_e32 v57, v54, v57
	v_div_scale_f32 v80, s60, v124, v9, v124
	v_div_fixup_f32 v49, v0, v9, v83
	v_fma_f32 v0, -v72, v70, v71
	v_rcp_f32_e32 v72, v81
	v_fma_f32 v54, -v56, v7, v65
	v_mul_f32_e32 v71, v80, v57
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v79, v63, 1.0
	v_div_fmas_f32 v0, v0, v62, v70
	v_fmac_f32_e32 v7, v54, v64
	v_fma_f32 v62, -v73, v71, v80
	v_div_scale_f32 v70, s61, v119, v9, v119
	v_fmac_f32_e32 v63, v82, v63
	v_fma_f32 v82, -v81, v72, 1.0
	v_div_fixup_f32 v54, v0, v9, v84
	v_fma_f32 v0, -v56, v7, v65
	v_fmac_f32_e32 v71, v62, v57
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v72, v82, v72
	v_div_scale_f32 v82, null, v78, v78, v74
	v_mul_f32_e32 v62, v70, v63
	v_div_scale_f32 v65, s63, v122, v9, v122
	v_div_fmas_f32 v0, v0, v64, v7
	v_fma_f32 v7, -v73, v71, v80
	v_rcp_f32_e32 v64, v82
	v_div_scale_f32 v80, null, v78, v78, v75
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v56, -v79, v62, v70
	v_mul_f32_e32 v73, v65, v72
	v_div_fmas_f32 v7, v7, v57, v71
	v_rcp_f32_e32 v71, v80
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v62, v56, v63
	v_fma_f32 v83, -v81, v73, v65
	v_fma_f32 v84, -v82, v64, 1.0
	v_div_fixup_f32 v56, v0, v9, v85
	v_div_fixup_f32 v57, v7, v9, v124
	v_fma_f32 v0, -v79, v62, v70
	v_fmac_f32_e32 v73, v83, v72
	v_fmac_f32_e32 v64, v84, v64
	v_div_scale_f32 v7, s60, v74, v78, v74
	v_fma_f32 v70, -v80, v71, 1.0
	v_div_scale_f32 v79, null, v78, v78, v77
	v_div_fmas_f32 v0, v0, v63, v62
	v_fma_f32 v62, -v81, v73, v65
	v_mul_f32_e32 v65, v7, v64
	v_fmac_f32_e32 v71, v70, v71
	v_rcp_f32_e32 v70, v79
	v_div_scale_f32 v83, null, v78, v78, v76
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v81, s61, v75, v78, v75
	v_div_fmas_f32 v63, v62, v72, v73
	v_fma_f32 v72, -v82, v65, v7
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v73, v81, v71
	v_fma_f32 v84, -v79, v70, 1.0
	v_div_fixup_f32 v62, v0, v9, v119
	v_fmac_f32_e32 v65, v72, v64
	v_div_scale_f32 v72, null, v78, v78, v66
	v_div_fixup_f32 v63, v63, v9, v122
	v_fma_f32 v0, -v80, v73, v81
	v_fmac_f32_e32 v70, v84, v70
	v_div_scale_f32 v9, s62, v77, v78, v77
	v_fma_f32 v84, -v83, v85, 1.0
	v_fma_f32 v7, -v82, v65, v7
	v_rcp_f32_e32 v82, v72
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v73, v0, v71 :: v_dual_mul_f32 v0, v9, v70
	v_fmac_f32_e32 v85, v84, v85
	v_div_scale_f32 v84, s63, v76, v78, v76
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v7, v7, v64, v65
	v_fma_f32 v64, -v80, v73, v81
	v_fma_f32 v65, -v79, v0, v9
	v_mul_f32_e32 v80, v84, v85
	v_fma_f32 v81, -v72, v82, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v64, v71, v73
	v_fmac_f32_e32 v0, v65, v70
	v_rcp_f32_e32 v73, v86
	v_fma_f32 v87, -v83, v80, v84
	v_fmac_f32_e32 v82, v81, v82
	v_div_scale_f32 v81, s60, v66, v78, v66
	v_div_fixup_f32 v64, v7, v78, v74
	v_fma_f32 v7, -v79, v0, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v80, v87, v85 :: v_dual_mul_f32 v9, v81, v82
	v_div_scale_f32 v74, null, v78, v78, v68
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v65, v71, v78, v75
	v_fma_f32 v71, -v86, v73, 1.0
	v_div_fmas_f32 v0, v7, v70, v0
	v_fma_f32 v7, -v83, v80, v84
	v_fma_f32 v70, -v72, v9, v81
	v_rcp_f32_e32 v75, v74
	v_div_scale_f32 v83, null, v78, v78, v69
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v73, v71, v73
	v_div_scale_f32 v79, s61, v67, v78, v67
	v_div_fmas_f32 v7, v7, v85, v80
	v_fmac_f32_e32 v9, v70, v82
	v_rcp_f32_e32 v80, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v84, v79, v73
	v_fma_f32 v85, -v74, v75, 1.0
	v_div_fixup_f32 v70, v0, v78, v77
	v_fma_f32 v0, -v72, v9, v81
	v_div_scale_f32 v77, null, v78, v78, v118
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v71, v7, v78, v76
	v_fma_f32 v7, -v86, v84, v79
	v_fmac_f32_e32 v75, v85, v75
	v_div_scale_f32 v72, s62, v68, v78, v68
	v_fma_f32 v76, -v83, v80, 1.0
	v_div_fmas_f32 v0, v0, v82, v9
	v_rcp_f32_e32 v9, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v7, v73 :: v_dual_mul_f32 v7, v72, v75
	v_fmac_f32_e32 v80, v76, v80
	v_div_scale_f32 v76, s60, v69, v78, v69
	v_div_scale_f32 v81, null, v78, v78, v58
	v_div_fixup_f32 v66, v0, v78, v66
	v_fma_f32 v0, -v86, v84, v79
	v_fma_f32 v79, -v74, v7, v72
	v_mul_f32_e32 v82, v76, v80
	v_rcp_f32_e32 v85, v81
	v_fma_f32 v86, -v77, v9, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v7, v79, v75
	v_div_fmas_f32 v0, v0, v73, v84
	v_fma_f32 v73, -v83, v82, v76
	v_fmac_f32_e32 v9, v86, v9
	v_div_scale_f32 v79, s61, v118, v78, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v67, v0, v78, v67
	v_fma_f32 v84, -v81, v85, 1.0
	v_fma_f32 v0, -v74, v7, v72
	v_fmac_f32_e32 v82, v73, v80
	v_mul_f32_e32 v72, v79, v9
	v_div_scale_f32 v74, null, v78, v78, v59
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v85, v84, v85
	v_div_scale_f32 v73, s63, v58, v78, v58
	v_div_fmas_f32 v0, v0, v75, v7
	v_fma_f32 v7, -v83, v82, v76
	v_fma_f32 v75, -v77, v72, v79
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v84, null, v78, v78, v60
	v_mul_f32_e32 v83, v73, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v75, v9
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v75, v84
	v_div_fmas_f32 v7, v7, v80, v82
	v_fma_f32 v80, -v81, v83, v73
	v_div_fixup_f32 v68, v0, v78, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v74, v76, 1.0
	v_fma_f32 v0, -v77, v72, v79
	v_div_fixup_f32 v69, v7, v78, v69
	v_fmac_f32_e32 v83, v80, v85
	v_div_scale_f32 v7, s60, v59, v78, v59
	v_fmac_f32_e32 v76, v82, v76
	v_fma_f32 v77, -v84, v75, 1.0
	v_div_scale_f32 v79, null, v78, v78, v61
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v80, s61, v60, v78, v60
	v_div_fmas_f32 v0, v0, v9, v72
	v_fma_f32 v9, -v81, v83, v73
	v_mul_f32_e32 v73, v7, v76
	v_fmac_f32_e32 v75, v77, v75
	v_rcp_f32_e32 v77, v79
	v_div_scale_f32 v81, null, v78, v78, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v74, v73, v7
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v72, v0, v78, v118
	v_rcp_f32_e32 v86, v81
	v_div_fmas_f32 v9, v9, v85, v83
	v_mul_f32_e32 v83, v80, v75
	v_fmac_f32_e32 v73, v82, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v79, v77, 1.0
	v_div_scale_f32 v82, null, v78, v78, v116
	v_div_fixup_f32 v58, v9, v78, v58
	v_fma_f32 v0, -v84, v83, v80
	v_fmac_f32_e32 v77, v85, v77
	v_div_scale_f32 v9, s62, v61, v78, v61
	v_fma_f32 v85, -v81, v86, 1.0
	v_fma_f32 v7, -v74, v73, v7
	v_rcp_f32_e32 v74, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v0, v75 :: v_dual_mul_f32 v0, v9, v77
	v_fmac_f32_e32 v86, v85, v86
	v_div_scale_f32 v85, s63, v117, v78, v117
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v87, null, v78, v78, v115
	v_div_fmas_f32 v7, v7, v76, v73
	v_fma_f32 v73, -v84, v83, v80
	v_fma_f32 v76, -v79, v0, v9
	v_mul_f32_e32 v80, v85, v86
	v_fma_f32 v84, -v82, v74, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v59, v7, v78, v59
	v_div_fmas_f32 v73, v73, v75, v83
	v_fmac_f32_e32 v0, v76, v77
	v_rcp_f32_e32 v75, v87
	v_fma_f32 v76, -v81, v80, v85
	v_fmac_f32_e32 v74, v84, v74
	v_div_scale_f32 v83, s60, v116, v78, v116
	v_fma_f32 v7, -v79, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v76, v86
	v_div_scale_f32 v76, null, v55, v55, v50
	v_mul_f32_e32 v9, v83, v74
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v60, v73, v78, v60
	v_fma_f32 v73, -v87, v75, 1.0
	v_div_fmas_f32 v0, v7, v77, v0
	v_fma_f32 v77, -v82, v9, v83
	v_rcp_f32_e32 v79, v76
	v_div_scale_f32 v84, null, v55, v55, v51
	v_fma_f32 v7, -v81, v80, v85
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v81, s61, v115, v78, v115
	v_fmac_f32_e32 v9, v77, v74
	v_rcp_f32_e32 v77, v84
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v76, v79, 1.0
	v_div_fmas_f32 v7, v7, v86, v80
	v_mul_f32_e32 v80, v81, v75
	v_div_fixup_f32 v61, v0, v78, v61
	v_fma_f32 v0, -v82, v9, v83
	v_fmac_f32_e32 v79, v85, v79
	v_div_fixup_f32 v73, v7, v78, v117
	v_fma_f32 v7, -v87, v80, v81
	v_div_scale_f32 v82, s62, v50, v55, v50
	v_fma_f32 v83, -v84, v77, 1.0
	v_div_scale_f32 v85, null, v55, v55, v53
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v80, v7, v75
	v_div_fmas_f32 v0, v0, v74, v9
	v_mul_f32_e32 v7, v82, v79
	v_fmac_f32_e32 v77, v83, v77
	v_rcp_f32_e32 v9, v85
	v_div_scale_f32 v83, s60, v51, v55, v51
	v_div_scale_f32 v86, null, v55, v55, v52
	v_div_fixup_f32 v74, v0, v78, v116
	v_fma_f32 v0, -v87, v80, v81
	v_fma_f32 v81, -v76, v7, v82
	v_mul_f32_e32 v87, v83, v77
	v_rcp_f32_e32 v88, v86
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v85, v9, 1.0
	v_div_fmas_f32 v0, v0, v75, v80
	v_fmac_f32_e32 v7, v81, v79
	v_fma_f32 v80, -v84, v87, v83
	v_div_scale_f32 v81, s61, v53, v55, v53
	v_fmac_f32_e32 v9, v89, v9
	v_div_fixup_f32 v75, v0, v78, v115
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v86, v88, 1.0
	v_fma_f32 v0, -v76, v7, v82
	v_fmac_f32_e32 v87, v80, v77
	v_div_scale_f32 v80, null, v55, v55, v42
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v76, v81, v9
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v78, s63, v52, v55, v52
	v_div_fmas_f32 v0, v0, v79, v7
	v_fma_f32 v7, -v84, v87, v83
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v84, null, v55, v55, v43
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v79, -v85, v76, v81
	v_mul_f32_e32 v83, v78, v88
	v_div_fmas_f32 v7, v7, v77, v87
	v_rcp_f32_e32 v77, v84
	v_div_fixup_f32 v50, v0, v55, v50
	v_fmac_f32_e32 v76, v79, v9
	v_fma_f32 v79, -v86, v83, v78
	v_fma_f32 v87, -v80, v82, 1.0
	v_div_fixup_f32 v51, v7, v55, v51
	v_div_scale_f32 v7, s60, v42, v55, v42
	v_fma_f32 v0, -v85, v76, v81
	v_fmac_f32_e32 v83, v79, v88
	v_fmac_f32_e32 v82, v87, v82
	v_fma_f32 v79, -v84, v77, 1.0
	v_div_scale_f32 v81, null, v55, v55, v44
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v85, null, v55, v55, v45
	v_div_fmas_f32 v0, v0, v9, v76
	v_fma_f32 v9, -v86, v83, v78
	v_mul_f32_e32 v76, v7, v82
	v_fmac_f32_e32 v77, v79, v77
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v79, s61, v43, v55, v43
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v53, v0, v55, v53
	v_div_fmas_f32 v9, v9, v88, v83
	v_fma_f32 v83, -v80, v76, v7
	v_mul_f32_e32 v86, v79, v77
	v_rcp_f32_e32 v88, v85
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v81, v78, 1.0
	v_fmac_f32_e32 v76, v83, v82
	v_fma_f32 v0, -v84, v86, v79
	v_div_fixup_f32 v52, v9, v55, v52
	v_div_scale_f32 v9, s62, v44, v55, v44
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v83, null, v55, v55, v114
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v85, v88, 1.0
	v_fma_f32 v7, -v80, v76, v7
	v_fmac_f32_e32 v86, v0, v77
	v_mul_f32_e32 v0, v9, v78
	v_rcp_f32_e32 v80, v83
	v_fmac_f32_e32 v88, v87, v88
	v_div_scale_f32 v87, s63, v45, v55, v45
	v_div_fmas_f32 v7, v7, v82, v76
	v_fma_f32 v76, -v84, v86, v79
	v_div_scale_f32 v89, null, v55, v55, v34
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v79, -v81, v0, v9
	v_mul_f32_e32 v82, v87, v88
	v_div_fmas_f32 v76, v76, v77, v86
	v_rcp_f32_e32 v77, v89
	v_fma_f32 v84, -v83, v80, 1.0
	v_fmac_f32_e32 v0, v79, v78
	v_fma_f32 v79, -v85, v82, v87
	v_div_fixup_f32 v43, v76, v55, v43
	v_div_fixup_f32 v42, v7, v55, v42
	v_fmac_f32_e32 v80, v84, v80
	v_div_scale_f32 v84, s60, v114, v55, v114
	v_fmac_f32_e32 v82, v79, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v89, v77, 1.0
	v_div_scale_f32 v79, null, v55, v55, v35
	v_fma_f32 v7, -v81, v0, v9
	v_mul_f32_e32 v9, v84, v80
	v_fmac_f32_e32 v77, v76, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v76, v79
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v81, s61, v34, v55, v34
	v_div_fmas_f32 v0, v7, v78, v0
	v_fma_f32 v7, -v85, v82, v87
	v_fma_f32 v78, -v83, v9, v84
	v_div_scale_f32 v85, null, v55, v55, v36
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v79, v76, 1.0
	v_div_fmas_f32 v7, v7, v88, v82
	v_fmac_f32_e32 v9, v78, v80
	v_rcp_f32_e32 v78, v85
	v_mul_f32_e32 v82, v81, v77
	v_fmac_f32_e32 v76, v86, v76
	v_div_fixup_f32 v7, v7, v55, v45
	v_div_scale_f32 v86, null, v55, v55, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v45, -v89, v82, v81
	v_div_fixup_f32 v0, v0, v55, v44
	v_fma_f32 v44, -v83, v9, v84
	v_div_scale_f32 v83, s62, v35, v55, v35
	v_fma_f32 v84, -v85, v78, 1.0
	v_fmac_f32_e32 v82, v45, v77
	v_rcp_f32_e32 v45, v86
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v9, v44, v80, v9
	v_mul_f32_e32 v44, v83, v76
	v_fmac_f32_e32 v78, v84, v78
	v_div_scale_f32 v80, s60, v36, v55, v36
	v_div_scale_f32 v84, null, v55, v55, v113
	v_fma_f32 v81, -v89, v82, v81
	v_fma_f32 v87, -v79, v44, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v80, v78
	v_rcp_f32_e32 v89, v84
	v_fma_f32 v90, -v86, v45, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v44, v87, v76
	v_div_fmas_f32 v77, v81, v77, v82
	v_fma_f32 v81, -v85, v88, v80
	v_fmac_f32_e32 v45, v90, v45
	v_div_scale_f32 v82, s61, v37, v55, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v34, v77, v55, v34
	v_fma_f32 v87, -v84, v89, 1.0
	v_fma_f32 v77, -v79, v44, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v88, v81, v78 :: v_dual_mul_f32 v79, v82, v45
	v_div_scale_f32 v83, null, v55, v55, v112
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v87, v89
	v_div_scale_f32 v81, s63, v113, v55, v113
	v_div_fmas_f32 v44, v77, v76, v44
	v_fma_f32 v76, -v85, v88, v80
	v_fma_f32 v77, -v86, v79, v82
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v87, null, v55, v55, v111
	v_mul_f32_e32 v85, v81, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v77, v45
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v77, v87
	v_div_fmas_f32 v76, v76, v78, v88
	v_fma_f32 v78, -v84, v85, v81
	v_div_fixup_f32 v35, v44, v55, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v80, 1.0
	v_fma_f32 v44, -v86, v79, v82
	v_div_fixup_f32 v36, v76, v55, v36
	v_fmac_f32_e32 v85, v78, v89
	v_div_scale_f32 v76, s60, v112, v55, v112
	v_fmac_f32_e32 v80, v88, v80
	v_fma_f32 v78, -v87, v77, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v86, null, v30, v30, v27
	v_div_fmas_f32 v44, v44, v45, v79
	v_mul_f32_e32 v79, v76, v80
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, null, v30, v30, v26
	v_fma_f32 v45, -v84, v85, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v83, v79, v76
	v_div_scale_f32 v81, s61, v111, v55, v111
	v_rcp_f32_e32 v82, v78
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v79, v84, v80
	v_div_fmas_f32 v45, v45, v89, v85
	v_mul_f32_e32 v85, v81, v77
	v_rcp_f32_e32 v84, v86
	v_div_fixup_f32 v37, v44, v55, v37
	v_fma_f32 v76, -v83, v79, v76
	v_div_scale_f32 v83, null, v30, v30, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v78, v82, 1.0
	v_div_fixup_f32 v44, v45, v55, v113
	v_fma_f32 v45, -v87, v85, v81
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v90, null, v30, v30, v28
	v_fmac_f32_e32 v82, v88, v82
	v_rcp_f32_e32 v88, v83
	v_fmac_f32_e32 v85, v45, v77
	v_fma_f32 v89, -v86, v84, 1.0
	v_div_scale_f32 v45, s62, v26, v30, v26
	v_div_fmas_f32 v76, v76, v80, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v87, v85, v81
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v81, s60, v27, v30, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v83, v88, 1.0
	v_mul_f32_e32 v80, v45, v82
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v91, v81, v84
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v88, v87, v88
	v_div_scale_f32 v87, s63, v29, v30, v29
	v_fma_f32 v89, -v78, v80, v45
	v_div_fmas_f32 v77, v79, v77, v85
	v_fma_f32 v79, -v86, v91, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v87, v88
	v_div_fixup_f32 v9, v9, v55, v114
	v_fmac_f32_e32 v80, v89, v82
	v_div_fixup_f32 v76, v76, v55, v112
	v_div_fixup_f32 v55, v77, v55, v111
	v_fmac_f32_e32 v91, v79, v84
	v_fma_f32 v77, -v83, v85, v87
	v_div_scale_f32 v79, null, v30, v30, v25
	v_fma_f32 v45, -v78, v80, v45
	v_fma_f32 v78, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v77, v88
	v_rcp_f32_e32 v77, v79
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v45, v45, v82, v80
	v_fma_f32 v80, -v86, v91, v81
	v_fmac_f32_e32 v92, v78, v92
	v_div_scale_f32 v78, s61, v28, v30, v28
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v81, -v83, v85, v87
	v_div_fmas_f32 v80, v80, v84, v91
	v_mul_f32_e32 v82, v78, v92
	v_div_scale_f32 v83, null, v30, v30, v24
	v_fma_f32 v84, -v79, v77, 1.0
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v86, -v90, v82, v78
	v_div_fmas_f32 v81, v81, v88, v85
	v_rcp_f32_e32 v85, v83
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s60, v25, v30, v25
	v_div_fixup_f32 v26, v45, v30, v26
	v_fmac_f32_e32 v82, v86, v92
	v_div_fixup_f32 v27, v80, v30, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v45, v84, v77
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v29, v81, v30, v29
	v_fma_f32 v80, -v83, v85, 1.0
	v_fma_f32 v78, -v90, v82, v78
	v_fma_f32 v86, -v79, v45, v84
	v_div_scale_f32 v81, null, v30, v30, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v80, v85
	v_div_scale_f32 v80, s62, v24, v30, v24
	v_div_fmas_f32 v78, v78, v92, v82
	v_fmac_f32_e32 v45, v86, v77
	v_rcp_f32_e32 v87, v81
	v_mul_f32_e32 v82, v80, v85
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v28, v78, v30, v28
	v_fma_f32 v78, -v79, v45, v84
	v_div_scale_f32 v86, null, v30, v30, v20
	v_fma_f32 v79, -v83, v82, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v45, v78, v77, v45
	v_div_scale_f32 v77, null, v30, v30, v110
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v79, v85
	v_rcp_f32_e32 v79, v77
	v_div_scale_f32 v78, s60, v21, v30, v21
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v30, v30, v22
	v_div_fixup_f32 v25, v45, v30, v25
	v_fma_f32 v80, -v83, v82, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v79, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v88, v45, v88
	v_div_scale_f32 v45, s61, v20, v30, v20
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v30, v30, v19
	v_div_fmas_f32 v80, v80, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_mul_f32_e32 v85, v45, v88
	v_div_scale_f32 v91, s62, v110, v30, v110
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v45
	v_mul_f32_e32 v94, v91, v79
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s63, v22, v30, v22
	v_div_fixup_f32 v24, v80, v30, v24
	v_fma_f32 v78, -v81, v83, v78
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v80, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v45, -v86, v85, v45
	v_fmac_f32_e32 v94, v80, v79
	v_fma_f32 v80, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s60, v19, v30, v19
	v_div_fmas_f32 v78, v78, v87, v83
	v_fma_f32 v77, -v77, v94, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v81, v80, v90 :: v_dual_mul_f32 v80, v82, v93
	v_div_scale_f32 v83, null, v30, v30, v17
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v21, v78, v30, v21
	v_div_fmas_f32 v45, v45, v88, v85
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v77, v77, v79, v94
	v_fma_f32 v79, -v84, v81, v92
	v_fma_f32 v84, -v89, v80, v82
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v20, v45, v30, v20
	v_div_fixup_f32 v45, v77, v30, v110
	v_div_fmas_f32 v79, v79, v90, v81
	v_fmac_f32_e32 v80, v84, v93
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v78, null, v30, v30, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v79, v30, v22
	v_fma_f32 v77, -v89, v80, v82
	v_fma_f32 v79, -v83, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v30, v30, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v77, v77, v93, v80
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v82, vcc_lo, v17, v30, v17
	v_div_scale_f32 v79, null, v30, v30, v105
	v_rcp_f32_e32 v80, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v82, v85
	v_div_fixup_f32 v19, v77, v30, v19
	v_rcp_f32_e32 v84, v79
	v_div_scale_f32 v88, null, v30, v30, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v83, v87, v82
	v_rcp_f32_e32 v86, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v77, -v78, v80, 1.0
	v_fmac_f32_e32 v87, v91, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v79, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v77, v80
	v_fma_f32 v82, -v83, v87, v82
	v_div_scale_f32 v77, s60, v16, v30, v16
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v89, s61, v105, v30, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v85, v87
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v92, -v81, v86, 1.0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v82, v30, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_cvt_i32_f32_e32 v82, v68
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v89, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v100, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v82
	v_and_b32_e32 v82, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v79, v95, v89
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s62, v107, v30, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v94, v90 :: v_dual_fmac_f32 v95, v83, v84
	v_div_scale_f32 v94, s63, v108, v30, v108
	v_mul_f32_e32 v96, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v77, v80
	v_mul_f32_e32 v97, v94, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v78, v93, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v7, v7
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v91, v80
	v_fma_f32 v91, -v81, v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v78, v93, v77
	v_fma_f32 v78, -v88, v97, v94
	v_fmac_f32_e32 v96, v91, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v80, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v97, v78, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v101, v22
	v_and_b32_e32 v22, 15, v93
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v84, v95
	v_fma_f32 v78, -v81, v96, v92
	v_div_fixup_f32 v16, v77, v30, v16
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v77, v79, v30, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v7, v7, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v48
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v84, v60
	v_and_b32_e32 v48, 15, v46
	v_and_b32_e32 v46, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v189
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v97, v94
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v86, v96
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v96, v25
	v_and_b32_e32 v25, 15, v65
	v_and_b32_e32 v65, 15, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v84, 16, v189
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v78, v78, v30, v107
	v_div_fixup_f32 v30, v80, v30, v108
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v56
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v81, v64
	v_cvt_i32_f32_e32 v98, v21
	v_and_b32_e32 v64, 15, v54
	v_and_b32_e32 v21, 15, v50
	v_and_b32_e32 v50, 15, v7
	v_and_b32_e32 v54, 15, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2f0, v14
	v_lshlrev_b32_e32 v9, 8, v84
	v_and_b32_e32 v14, 64, v189
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_and_b32_e32 v68, 15, v80
	v_and_b32_e32 v80, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v63, 3, v191
	v_and_or_b32 v0, 0xe000, v0, v9
	v_xor_b32_e32 v7, v7, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v83, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v63, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v85, v61
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v90, v37
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_cvt_i32_f32_e32 v86, v53
	v_cvt_i32_f32_e32 v87, v52
	v_cvt_i32_f32_e32 v99, v20
	v_cvt_i32_f32_e32 v102, v19
	v_and_b32_e32 v19, 15, v31
	v_and_b32_e32 v52, 15, v47
	v_and_b32_e32 v20, 15, v81
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v55, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v7, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v77, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v29
	v_cvt_i32_f32_e32 v95, v28
	v_cvt_i32_f32_e32 v97, v24
	v_and_b32_e32 v24, 15, v32
	v_and_b32_e32 v28, 15, v33
	v_and_b32_e32 v32, 15, v38
	v_and_b32_e32 v36, 15, v39
	v_and_b32_e32 v60, 15, v49
	v_and_b32_e32 v29, 15, v70
	v_and_b32_e32 v33, 15, v71
	v_and_b32_e32 v37, 15, v66
	v_and_b32_e32 v49, 15, v69
	v_and_b32_e32 v69, 15, v85
	v_and_b32_e32 v38, 15, v42
	v_and_b32_e32 v70, 15, v90
	v_and_b32_e32 v39, 15, v96
	v_and_b32_e32 v71, 15, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[19:22]
	ds_store_b128 v7, v[36:39] offset:256
	ds_store_b128 v7, v[52:55] offset:2048
	ds_store_b128 v7, v[68:71] offset:2304
	v_lshlrev_b32_e32 v7, 6, v189
	v_cndmask_b32_e64 v14, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v88, v34
	v_cvt_i32_f32_e32 v91, v44
	v_cvt_i32_f32_e32 v27, v27
	v_and_b32_e32 v44, 15, v41
	v_and_b32_e32 v41, 15, v67
	v_and_b32_e32 v67, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 2, v84
	v_and_or_b32 v7, 0x300, v7, v12
	v_xor_b32_e32 v12, v14, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v103, v77
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v92, v76
	v_cvt_i32_f32_e32 v104, v78
	v_cvt_i32_f32_e32 v105, v30
	v_and_b32_e32 v56, 15, v79
	v_and_b32_e32 v72, 15, v57
	v_and_b32_e32 v57, 15, v58
	v_and_b32_e32 v61, 15, v59
	v_and_b32_e32 v26, 15, v51
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v27, 15, v27
	v_and_b32_e32 v59, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v9, v0, 16, 0
	v_or3_b32 v7, v12, v7, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v40, 15, v40
	v_and_b32_e32 v73, 15, v73
	v_and_b32_e32 v77, 15, v74
	v_and_b32_e32 v81, 15, v75
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v74, 15, v91
	v_and_b32_e32 v43, 15, v97
	v_and_b32_e32 v75, 15, v103
	v_and_b32_e32 v76, 15, v62
	v_and_b32_e32 v30, 15, v86
	v_and_b32_e32 v62, 15, v35
	v_and_b32_e32 v66, 15, v89
	v_and_b32_e32 v31, 15, v94
	v_and_b32_e32 v63, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v16, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v92
	v_and_b32_e32 v47, 15, v98
	v_and_b32_e32 v79, 15, v104
	v_and_b32_e32 v83, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[24:27]
	ds_store_b128 v9, v[40:43] offset:256
	ds_store_b128 v9, v[56:59] offset:2048
	ds_store_b128 v9, v[72:75] offset:2304
	v_add_nc_u32_e32 v9, 0, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v34, 15, v87
	v_and_b32_e32 v35, 15, v95
	v_and_b32_e32 v51, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v16, v[28:31]
	ds_store_b128 v16, v[44:47] offset:256
	ds_store_b128 v16, v[60:63] offset:2048
	ds_store_b128 v16, v[76:79] offset:2304
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[48:51] offset:256
	ds_store_b128 v0, v[64:67] offset:2048
	ds_store_b128 v0, v[80:83] offset:2304
	v_xad_u32 v0, 0x4020, v7, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v9
	ds_load_b128 v[19:22], v9 offset:128
	ds_load_b128 v[24:27], v9 offset:4096
	ds_load_b128 v[28:31], v9 offset:4224
	v_xad_u32 v9, 0x8040, v7, 0
	ds_load_b128 v[32:35], v0
	ds_load_b128 v[36:39], v0 offset:128
	ds_load_b128 v[40:43], v0 offset:4096
	ds_load_b128 v[44:47], v0 offset:4224
	v_xad_u32 v0, 0xc060, v7, 0
	ds_load_b128 v[48:51], v9
	ds_load_b128 v[52:55], v9 offset:128
	ds_load_b128 v[56:59], v9 offset:4096
	ds_load_b128 v[60:63], v9 offset:4224
	ds_load_b128 v[64:67], v0 offset:4096
	ds_load_b128 v[68:71], v0
	ds_load_b128 v[72:75], v0 offset:128
	ds_load_b128 v[76:79], v0 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v18, 2, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s79, 7, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v13.h
	v_mov_b16_e32 v3.l, v11.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s2, s72, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v81, null, s73, 0, s2
	v_add_co_u32 v82, s2, s72, v23
	v_add_co_ci_u32_e64 v83, null, s73, 0, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s72, v23
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v12, v24, 4, v14
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v48, v56, 4, v48
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v25, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 2, v5
	v_add_nc_u32_e32 v9, 4, v5
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 6, v5
	v_add_nc_u32_e32 v15, 8, v5
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v26, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[80:81]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v80, v40, 4, v32
	v_lshl_or_b32 v64, v28, 4, v19
	v_lshl_or_b32 v44, v44, 4, v36
	v_lshl_or_b32 v52, v60, 4, v52
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v60, v76, 4, v72
	v_lshl_or_b32 v72, v41, 4, v33
	v_lshl_or_b32 v65, v29, 4, v20
	v_lshl_or_b32 v45, v45, 4, v37
	v_lshl_or_b32 v42, v42, 4, v34
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v66, v30, 4, v21
	v_lshl_or_b32 v46, v46, 4, v38
	v_lshl_or_b32 v70, v27, 4, v17
	v_lshl_or_b32 v43, v43, 4, v35
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v67, v31, 4, v22
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 12, v5
	v_add_nc_u32_e32 v18, 14, v5
	v_add_nc_u32_e32 v19, 16, v5
	v_add_nc_u32_e32 v20, 18, v5
	v_add_nc_u32_e32 v21, 20, v5
	v_add_nc_u32_e32 v22, 22, v5
	v_add_nc_u32_e32 v23, 24, v5
	v_add_nc_u32_e32 v24, 26, v5
	v_add_nc_u32_e32 v25, 28, v5
	v_add_nc_u32_e32 v26, 30, v5
	v_add_nc_u32_e32 v27, 32, v5
	v_add_nc_u32_e32 v28, 34, v5
	v_add_nc_u32_e32 v29, 36, v5
	v_add_nc_u32_e32 v30, 38, v5
	v_add_nc_u32_e32 v31, 40, v5
	v_add_nc_u32_e32 v32, 42, v5
	v_add_nc_u32_e32 v33, 44, v5
	v_add_nc_u32_e32 v34, 46, v5
	v_add_nc_u32_e32 v35, 48, v5
	v_add_nc_u32_e32 v36, 50, v5
	v_add_nc_u32_e32 v37, 52, v5
	v_add_nc_u32_e32 v38, 54, v5
	v_add_nc_u32_e32 v39, 56, v5
	v_add_nc_u32_e32 v40, 58, v5
	v_add_nc_u32_e32 v41, 60, v5
	v_add_nc_u32_e32 v71, 62, v5
	v_mad_u64_u32 v[5:6], null, v5, s73, v[0:1]
	v_mad_u64_u32 v[6:7], null, v7, s73, v[0:1]
	v_mad_u64_u32 v[7:8], null, v9, s73, v[0:1]
	v_mad_u64_u32 v[8:9], null, v14, s73, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s73, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s73, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s73, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s73, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s73, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s73, v[0:1]
	v_mad_u64_u32 v[22:23], null, v23, s73, v[0:1]
	v_mad_u64_u32 v[23:24], null, v24, s73, v[0:1]
	v_mad_u64_u32 v[24:25], null, v25, s73, v[0:1]
	v_mad_u64_u32 v[25:26], null, v26, s73, v[0:1]
	v_mad_u64_u32 v[26:27], null, v27, s73, v[0:1]
	v_mad_u64_u32 v[27:28], null, v28, s73, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s73, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s73, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s73, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s73, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s73, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[82:83]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[33:34], null, v34, s73, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s73, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	s_and_b32 s60, s60, s61
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v5, s62
	v_cndmask_b32_e64 v41, 0x80000000, v6, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v71, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v12, v9, s[68:71], 0 offen
	buffer_store_b8 v80, v41, s[68:71], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v0, s[68:71], 0 offen
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v64, v7, s[68:71], 0 offen
	buffer_store_b8 v44, v8, s[68:71], 0 offen
	buffer_store_b8 v52, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v60, v0, s[68:71], 0 offen
	buffer_store_b8 v68, v6, s[68:71], 0 offen
	buffer_store_b8 v72, v7, s[68:71], 0 offen
	buffer_store_b8 v49, v8, s[68:71], 0 offen
	buffer_store_b8 v57, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v65, v0, s[68:71], 0 offen
	buffer_store_b8 v45, v6, s[68:71], 0 offen
	buffer_store_b8 v53, v7, s[68:71], 0 offen
	buffer_store_b8 v61, v8, s[68:71], 0 offen
	buffer_store_b8 v69, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v42, v0, s[68:71], 0 offen
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v7, s[68:71], 0 offen
	buffer_store_b8 v66, v8, s[68:71], 0 offen
	buffer_store_b8 v46, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v0, s[68:71], 0 offen
	buffer_store_b8 v62, v6, s[68:71], 0 offen
	buffer_store_b8 v70, v7, s[68:71], 0 offen
	buffer_store_b8 v43, v8, s[68:71], 0 offen
	buffer_store_b8 v51, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b8 v59, v0, s[68:71], 0 offen
	buffer_store_b8 v67, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v7, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v189
	v_lshrrev_b32_e32 v7, 2, v84
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v5 :: v_dual_lshlrev_b32 v5, 3, v190
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v55, v8, s[68:71], 0 offen
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v8, s72, v10
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v63, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v5
	v_add3_u32 v5, v7, v6, v5
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v8, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v189
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s79, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp76:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 604
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 604
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33416
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 604
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 604
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 150
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
