	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[52:53], s[0:1], 0x5c
	v_dual_mov_b32 v192, v0 :: v_dual_mov_b32 v211, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v192
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s53, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_mov_b32 s6, 0
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s17, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s53, s17, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s53, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s4
	s_addc_u32 s9, s9, s5
	s_load_b64 s[34:35], s[8:9], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s8, s10, s4
	s_addc_u32 s9, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[50:51], s[8:9], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[48:49], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s52, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s2
	v_add_nc_u32_e32 v0, s34, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[50:51], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[48:49], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow677
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v200, 0 :: v_dual_and_b32 v193, 15, v192
	v_dual_mov_b32 v233, 0 :: v_dual_and_b32 v194, 0xf0, v192
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v52, 0x80, v192
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v146, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s54, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s55, s[0:1], 0x58
	s_load_b32 s20, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s34, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v10, 5, v192
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s2, s4
	s_addc_u32 s1, s3, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[18:19], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[50:51], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[48:49], v[2:3]
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v2, s34, v193
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[50:51], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[48:49], v[4:5]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v3, 16, v2
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v4, 32, v2
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v5, 48, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s3, s33, 1
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_dual_mov_b32 v203, 0 :: v_dual_lshlrev_b32 v0, 1, v192
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[50:51], v[6:7]
	v_cmp_le_i64_e64 s2, s[50:51], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[48:49], v[6:7]
	v_cmp_gt_i64_e64 s6, s[48:49], v[8:9]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v18, 7, v52
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s3, s55
	v_dual_mov_b32 v148, 0 :: v_dual_lshlrev_b32 v9, 2, v194
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v10, 32, v10
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s56, s3, s18
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s3, s52, s18
	v_mul_lo_u32 v5, s52, v5
	v_mul_lo_u32 v4, s52, v4
	v_mul_lo_u32 v3, s52, v3
	v_mul_lo_u32 v2, s52, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s4, s3, 1
	s_mul_i32 s3, s3, s33
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v14, 0xfe, v0
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v0, 28, v0
	v_add3_u32 v15, 0, v9, v10
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v10, 1, v18
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s5, s17, 8
	s_lshl_b32 s3, s3, 1
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v13, 6, v192
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v12, s3, s5, v192
	s_mul_i32 s3, s55, s18
	s_or_b32 s4, s4, 1
	v_lshl_add_u32 v17, s3, 1, v10
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v5, 1, v5
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v0, v15, v0
	s_mul_i32 s4, s33, s4
	v_or_b32_e32 v20, 12, v13
	v_add3_u32 v11, s4, s5, v192
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:152
	scratch_store_b32 off, v3, off offset:156
	scratch_store_b32 off, v2, off offset:160
	v_mul_lo_u32 v2, s33, v17
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v5, off offset:148
	scratch_store_b32 off, v20, off offset:144
	scratch_store_b32 off, v13, off offset:136
	scratch_store_b32 off, v18, off offset:132
	scratch_store_b32 off, v0, off
	s_lshl_b32 s4, s7, 8
	s_add_i32 s3, s5, s33
	v_subrev_nc_u32_e32 v9, s4, v12
	v_subrev_nc_u32_e32 v11, s4, v11
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v3, 29, v17
	v_or_b32_e32 v4, 8, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v160, 1, v9
	v_mad_u64_u32 v[9:10], null, v20, s20, v[1:2]
	v_dual_mov_b32 v206, 0 :: v_dual_lshlrev_b32 v151, 1, v11
	v_mad_u64_u32 v[10:11], null, s20, v13, v[1:2]
	v_add3_u32 v2, s3, v2, v14
	v_mul_lo_u32 v3, s33, v3
	v_or_b32_e32 v5, 4, v13
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v146, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[11:12], null, s20, v4, v[1:2]
	v_add_nc_u32_e32 v4, 25, v17
	v_subrev_nc_u32_e32 v2, s4, v2
	v_add3_u32 v3, v3, s5, v14
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v142, 0
	v_mul_lo_u32 v4, s33, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[12:13], null, s20, v5, v[1:2]
	v_mul_lo_u32 v1, s33, v18
	v_add_nc_u32_e32 v2, 1, v2
	v_subrev_nc_u32_e32 v3, s4, v3
	v_or_b32_e32 v5, 14, v18
	v_mov_b32_e32 v47, 0
	v_add3_u32 v4, v4, s5, v14
	v_mov_b32_e32 v45, 0
	v_add_nc_u32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 21, v17
	v_subrev_nc_u32_e32 v4, s4, v4
	v_or_b32_e32 v13, 10, v18
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_mov_b32_e32 v140, 0
	v_mul_lo_u32 v1, s33, v2
	v_or_b32_e32 v2, 12, v18
	v_add_nc_u32_e32 v4, 1, v4
	scratch_store_b32 off, v3, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v5
	v_add_nc_u32_e32 v5, 17, v17
	v_mul_lo_u32 v2, s33, v2
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v207, 0
	v_add3_u32 v1, v1, s5, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v5, s33, v5
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_mov_b32_e32 v134, 0
	v_lshlrev_b32_e32 v2, 1, v2
	v_subrev_nc_u32_e32 v1, s4, v1
	v_mov_b32_e32 v61, 0
	scratch_store_b32 off, v3, off offset:176 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v13
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, 1, v1
	scratch_store_b32 off, v4, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v13, 13, v17
	v_mov_b32_e32 v56, 0
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	scratch_store_b32 off, v2, off offset:184 ; 4-byte Folded Spill
	v_add3_u32 v2, v5, s5, v14
	v_mul_lo_u32 v4, s33, v13
	v_or_b32_e32 v13, 4, v18
	v_mov_b32_e32 v78, 0
	v_or_b32_e32 v5, 8, v18
	v_subrev_nc_u32_e32 v2, s4, v2
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v153, s53, 8, v14
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v13, s33, v13
	v_or_b32_e32 v7, 0x300, v192
	v_add3_u32 v4, v4, s5, v14
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v1, 9, v17
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mov_b32_e32 v58, 0
	v_lshrrev_b32_e32 v6, 1, v192
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v1, s33, v1
	v_or_b32_e32 v8, 0x3f0, v192
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v108, 0
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v156, 0, v193
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_add3_u32 v1, v1, s5, v14
	v_mov_b32_e32 v86, 0
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v19, 0, v192
	v_mov_b32_e32 v196, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v1, s4, v1
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v16, 1, v194
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s16, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s59, s20, 4
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:192
	scratch_store_b32 off, v193, off offset:244
	v_add_nc_u32_e32 v3, 5, v17
	v_or_b32_e32 v17, 2, v18
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:196
	scratch_store_b32 off, v194, off offset:248
	v_mul_lo_u32 v2, s33, v3
	v_mul_lo_u32 v3, s33, v5
	v_or_b32_e32 v5, 6, v18
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	v_mul_lo_u32 v5, s33, v5
	v_add3_u32 v2, v2, s5, v14
	v_mul_lo_u32 v14, s33, v17
	v_lshlrev_b32_e32 v3, 1, v3
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	v_subrev_nc_u32_e32 v2, s4, v2
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v184, v156, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:200
	scratch_store_b32 off, v52, off offset:252
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v3, 1, v4
	scratch_store_b32 off, v1, off offset:220 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v14
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v183, v19, v192
	scratch_store_b32 off, v3, off offset:204 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v5
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v186, 0, v16
	scratch_store_b32 off, v3, off offset:208 ; 4-byte Folded Spill
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v104, 0
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:232
	scratch_store_b32 off, v192, off offset:240
	scratch_store_b32 off, v19, off offset:140
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v5, s20
	v_mov_b32_e32 v7, s22
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	s_add_u32 s57, s56, s33
	s_and_b32 s45, s15, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s58, s33, 2
	s_lshl_b32 s60, s33, 5
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s36, s10
	s_mov_b32 s37, s11
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s40, s12
	s_mov_b32 s41, s13
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s44, s14
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s15, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	s_clause 0x1c                           ; 116-byte Folded Spill
	scratch_store_b32 off, v81, off offset:116
	scratch_store_b32 off, v209, off offset:112
	scratch_store_b32 off, v210, off offset:108
	scratch_store_b32 off, v67, off offset:104
	scratch_store_b32 off, v41, off offset:100
	scratch_store_b32 off, v147, off offset:96
	scratch_store_b32 off, v66, off offset:92
	scratch_store_b32 off, v150, off offset:88
	scratch_store_b32 off, v149, off offset:84
	scratch_store_b32 off, v42, off offset:80
	scratch_store_b32 off, v43, off offset:76
	scratch_store_b32 off, v211, off offset:72
	scratch_store_b32 off, v40, off offset:68
	scratch_store_b32 off, v46, off offset:64
	scratch_store_b32 off, v47, off offset:60
	scratch_store_b32 off, v53, off offset:56
	scratch_store_b32 off, v97, off offset:52
	scratch_store_b32 off, v75, off offset:48
	scratch_store_b32 off, v108, off offset:44
	scratch_store_b32 off, v44, off offset:40
	scratch_store_b32 off, v73, off offset:36
	scratch_store_b32 off, v48, off offset:32
	scratch_store_b32 off, v90, off offset:28
	scratch_store_b32 off, v49, off offset:24
	scratch_store_b32 off, v91, off offset:20
	scratch_store_b32 off, v50, off offset:16
	scratch_store_b32 off, v79, off offset:12
	scratch_store_b32 off, v45, off offset:8
	scratch_store_b32 off, v74, off offset:4
	v_dual_mov_b32 v204, v148 :: v_dual_add_nc_u32 v21, s34, v9
	v_dual_mov_b32 v148, v113 :: v_dual_add_nc_u32 v23, s34, v11
	v_mov_b32_e32 v144, v55
	v_dual_mov_b32 v135, v137 :: v_dual_add_nc_u32 v22, s34, v12
	v_mov_b32_e32 v137, v84
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v9, s59, v9
	v_add_nc_u32_e32 v11, s59, v11
	s_add_i32 s52, s52, -1
	v_mov_b32_e32 v91, v201
	v_mov_b32_e32 v67, v233
	v_dual_mov_b32 v113, v57 :: v_dual_mov_b32 v108, v68
	scratch_load_b32 v20, off, off offset:176 ; 4-byte Folded Reload
	v_dual_mov_b32 v55, v119 :: v_dual_mov_b32 v74, v54
	v_mov_b32_e32 v119, v96
	v_mov_b32_e32 v96, v56
	v_dual_mov_b32 v84, v51 :: v_dual_mov_b32 v149, v133
	v_mov_b32_e32 v133, v99
	v_mov_b32_e32 v99, v87
	v_dual_mov_b32 v87, v58 :: v_dual_add_nc_u32 v12, s59, v12
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s11, s55, v0
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	s_and_b32 s11, s54, s11
	v_cndmask_b32_e64 v21, 0x80000000, v21, s11
	s_waitcnt vmcnt(1)
	v_add3_u32 v188, v20, s16, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v20, s56, v188
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s15, v0
	v_add_nc_u32_e32 v13, 4, v0
	v_cmp_gt_i32_e64 s13, s55, v0
	v_add_nc_u32_e32 v0, 8, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s12, s55, v13
	scratch_load_b32 v13, off, off offset:224 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s14, s55, v0
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	s_and_b32 s13, s54, s13
	s_and_b32 s11, s54, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v22, 0x80000000, v22, s11
	s_and_b32 s11, s54, s14
	v_cndmask_b32_e64 v23, 0x80000000, v23, s11
	s_waitcnt vmcnt(1)
	v_add3_u32 v193, v13, s16, v153
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s15, v0
	s_add_i32 s15, s15, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v14, s56, v193
	v_add_nc_u32_e32 v13, 2, v0
	v_cmp_gt_i32_e64 s10, s55, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s7, s55, v13
	scratch_load_b32 v13, off, off offset:216 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v14, 0x80000000, v14, s7
	s_waitcnt vmcnt(0)
	v_add3_u32 v192, v13, s16, v153
	v_add_nc_u32_e32 v13, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v15, s56, v192
	v_cmp_gt_i32_e64 s8, s55, v13
	scratch_load_b32 v13, off, off offset:208 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v15, 0x80000000, v15, s8
	s_waitcnt vmcnt(0)
	v_add3_u32 v191, v13, s16, v153
	v_add_nc_u32_e32 v13, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v16, s56, v191
	v_cmp_gt_i32_e64 s9, s55, v13
	scratch_load_b32 v13, off, off offset:200 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v16, 0x80000000, v16, s9
	s_waitcnt vmcnt(0)
	v_add3_u32 v190, v13, s16, v153
	v_add_nc_u32_e32 v13, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v17, s56, v190
	v_cmp_gt_i32_e64 s6, s55, v13
	scratch_load_b32 v13, off, off offset:192 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	s_waitcnt vmcnt(0)
	v_add3_u32 v189, v13, s16, v153
	v_add_nc_u32_e32 v13, 10, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v18, s56, v189
	v_cmp_gt_i32_e64 s3, s55, v13
	scratch_load_b32 v13, off, off offset:184 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	s_waitcnt vmcnt(0)
	v_add3_u32 v187, v13, s16, v153
	v_add_nc_u32_e32 v13, 12, v0
	v_add_nc_u32_e32 v0, 14, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v19, s56, v187
	v_cmp_gt_i32_e64 s4, s55, v13
	scratch_load_b32 v13, off, off offset:168 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s5, s55, v0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	s_waitcnt vmcnt(0)
	v_add3_u32 v194, v13, s16, v153
	v_add_nc_u32_e32 v13, s56, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v13, s10
	v_add_nc_u32_e32 v13, s34, v10
	v_add_nc_u32_e32 v10, s59, v10
	v_cndmask_b32_e64 v13, 0x80000000, v13, s13
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0x7
	buffer_load_u16 v24, v0, s[36:39], 0 offen
	buffer_load_u16 v25, v14, s[36:39], 0 offen
	buffer_load_u16 v26, v15, s[36:39], 0 offen
	buffer_load_u16 v27, v16, s[36:39], 0 offen
	buffer_load_u16 v28, v17, s[36:39], 0 offen
	buffer_load_u16 v29, v18, s[36:39], 0 offen
	buffer_load_u16 v30, v19, s[36:39], 0 offen
	buffer_load_u16 v31, v20, s[36:39], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v0, v13, s[28:31], 0 offen
	buffer_load_u8 v13, v21, s[28:31], 0 offen
	buffer_load_u8 v14, v22, s[28:31], 0 offen
	buffer_load_u8 v15, v23, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v16, v0
	ds_store_b8 v16, v14 offset:256
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v13
	ds_store_b8 v16, v15 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v156 offset:320
	ds_load_u8 v13, v156 offset:256
	ds_load_u8 v17, v156 offset:336
	ds_load_u8 v18, v156 offset:272
	ds_load_u8 v215, v156 offset:352
	ds_load_u8 v217, v156 offset:288
	ds_load_u8 v221, v156 offset:368
	ds_load_u8 v222, v156 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v0, 0xc0c0004
	ds_load_u8 v14, v156 offset:448
	ds_load_u8 v15, v156 offset:384
	ds_load_u8 v0, v156 offset:464
	ds_load_u8 v19, v156 offset:400
	ds_load_u8 v219, v156 offset:480
	ds_load_u8 v226, v156 offset:416
	ds_load_u8 v223, v156 offset:496
	ds_load_u8 v224, v156 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v156 offset:64
	ds_load_u8 v16, v156
	ds_load_u8 v20, v156 offset:80
	ds_load_u8 v230, v156 offset:96
	ds_load_u8 v225, v156 offset:112
	ds_load_u8 v152, v156 offset:16
	ds_load_u8 v239, v156 offset:32
	ds_load_u8 v227, v156 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v18, v0, 16, v17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v156 offset:192
	ds_load_u8 v21, v156 offset:128
	ds_load_u8 v154, v156 offset:208
	ds_load_u8 v155, v156 offset:144
	ds_load_u8 v240, v156 offset:224
	ds_load_u8 v241, v156 offset:160
	ds_load_u8 v228, v156 offset:240
	ds_load_u8 v229, v156 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v152, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v21, v16, 0xc0c0004
	scratch_load_b32 v21, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v231, v21
	ds_load_u8 v232, v156 offset:944
	ds_load_u8 v23, v156 offset:832
	ds_load_u8 v33, v156 offset:768
	ds_load_u8 v162, v156 offset:848
	ds_load_u8 v163, v156 offset:784
	ds_load_u8 v252, v156 offset:864
	ds_load_u8 v253, v156 offset:800
	ds_load_u8 v237, v156 offset:880
	ds_load_u8 v238, v156 offset:816
	ds_load_u8 v34, v156 offset:704
	ds_load_u8 v35, v156 offset:640
	ds_load_u8 v164, v156 offset:720
	ds_load_u8 v165, v156 offset:656
	ds_load_u8 v254, v156 offset:736
	ds_load_u8 v255, v156 offset:672
	ds_load_u8 v242, v156 offset:752
	ds_load_u8 v243, v156 offset:688
	ds_load_u8 v36, v156 offset:576
	ds_load_u8 v37, v156 offset:512
	ds_load_u8 v166, v156 offset:592
	ds_load_u8 v167, v156 offset:528
	ds_load_u8 v21, v156 offset:608
	ds_load_u8 v22, v156 offset:544
	ds_load_u8 v248, v156 offset:624
	ds_load_u8 v249, v156 offset:560
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v156 offset:960
	ds_load_u8 v16, v156 offset:896
	ds_load_u8 v158, v156 offset:976
	ds_load_u8 v161, v156 offset:912
	ds_load_u8 v250, v156 offset:992
	ds_load_u8 v251, v156 offset:928
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v183, v24
	ds_store_b16 v183, v25 offset:512
	ds_store_b16 v183, v26 offset:1024
	ds_store_b16 v183, v27 offset:1536
	ds_store_b16 v183, v28 offset:2048
	ds_store_b16 v183, v29 offset:2560
	ds_store_b16 v183, v30 offset:3072
	ds_store_b16 v183, v31 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v24, v184 offset:1280
	ds_load_u8 v25, v184 offset:1024
	ds_load_u8 v38, v184 offset:1920
	ds_load_u8 v39, v184 offset:1664
	ds_load_u8 v40, v184 offset:1408
	ds_load_u8 v41, v184 offset:1152
	v_perm_b32 v23, v33, v23, 0xc0c0004
	v_perm_b32 v20, v155, v154, 0xc0c0004
	v_perm_b32 v0, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v17, v20, 16, v19
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v19, v161, v158, 0xc0c0004
	v_perm_b32 v22, v255, v254, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v184 offset:1792
	ds_load_u8 v26, v184 offset:1536
	v_lshl_or_b32 v20, v19, 16, v0
	v_perm_b32 v0, v217, v215, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v184 offset:256
	ds_load_u8 v27, v184
	ds_load_u8 v42, v184 offset:896
	ds_load_u8 v43, v184 offset:640
	ds_load_u8 v44, v184 offset:384
	ds_load_u8 v45, v184 offset:128
	v_lshl_or_b32 v32, v25, 16, v24
	v_perm_b32 v24, v37, v36, 0xc0c0004
	v_perm_b32 v25, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v25, 16, v24
	ds_load_u8 v23, v184 offset:3328
	ds_load_u8 v24, v184 offset:3072
	ds_load_u8 v35, v184 offset:3968
	ds_load_u8 v36, v184 offset:3712
	ds_load_u8 v37, v184 offset:3456
	ds_load_u8 v46, v184 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v184 offset:768
	ds_load_u8 v28, v184 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v184 offset:3840
	ds_load_u8 v25, v184 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v27, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v184 offset:2304
	ds_load_u8 v26, v184 offset:2048
	ds_load_u8 v47, v184 offset:2944
	ds_load_u8 v48, v184 offset:2688
	ds_load_u8 v49, v184 offset:2432
	ds_load_u8 v50, v184 offset:2176
	v_lshl_or_b32 v34, v24, 16, v23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v184 offset:2816
	ds_load_u8 v27, v184 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[23:30], v[31:32], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[23:30], v[33:34], v[15:16], v[23:30] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v159, v24
	v_cvt_f32_i32_e32 v150, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v147, v26
	v_cvt_f32_i32_e32 v210, v27
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v24, v41, v40, 0xc0c0004
	v_perm_b32 v25, v39, v38, 0xc0c0004
	v_perm_b32 v26, v45, v44, 0xc0c0004
	v_perm_b32 v27, v43, v42, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v209, v28
	v_cvt_f32_i32_e32 v53, v29
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v25, v25, 16, v24
	v_perm_b32 v28, v50, v49, 0xc0c0004
	v_lshl_or_b32 v24, v27, 16, v26
	v_perm_b32 v26, v46, v37, 0xc0c0004
	v_perm_b32 v27, v36, v35, 0xc0c0004
	v_perm_b32 v29, v48, v47, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v66, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[168:175], v[24:25], v[13:14], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v27, v27, 16, v26
	v_lshl_or_b32 v26, v29, 16, v28
	v_perm_b32 v29, v165, v164, 0xc0c0004
	v_perm_b32 v30, v241, v240, 0xc0c0004
	v_lshl_or_b32 v36, v22, 16, v21
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[168:175], v[26:27], v[15:16], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v28, v173
	v_cvt_f32_i32_e32 v73, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v97, v172
	v_cvt_f32_i32_e32 v201, v169
	v_cvt_f32_i32_e32 v68, v170
	scratch_store_b32 off, v28, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v28, v174
	v_cvt_f32_i32_e32 v81, v171
	scratch_store_b32 off, v28, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v28, v175
	scratch_store_b32 off, v28, off offset:120 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v28, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[161:168], v[31:32], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v29, 16, v28
	v_perm_b32 v28, v226, v219, 0xc0c0004
	v_perm_b32 v29, v239, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[161:168], v[33:34], v[19:20], v[161:168] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v155, v28, 16, v0
	v_lshl_or_b32 v154, v30, 16, v29
	v_perm_b32 v0, v253, v252, 0xc0c0004
	v_perm_b32 v28, v251, v250, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v247, v161
	v_cvt_f32_i32_e32 v246, v162
	v_cvt_f32_i32_e32 v245, v163
	v_cvt_f32_i32_e32 v244, v164
	v_cvt_f32_i32_e32 v236, v165
	v_cvt_f32_i32_e32 v235, v166
	v_cvt_f32_i32_e32 v234, v167
	v_cvt_f32_i32_e32 v233, v168
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[161:168], v[24:25], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v28, 16, v0
	v_perm_b32 v0, v222, v221, 0xc0c0004
	v_perm_b32 v28, v224, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[26:27], v[19:20], v[161:168] neg_lo:[1,1,0]
	v_perm_b32 v29, v227, v225, 0xc0c0004
	v_perm_b32 v30, v229, v228, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v211, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v166
	v_cvt_f32_i32_e32 v79, v167
	v_cvt_f32_i32_e32 v90, v168
	v_cvt_f32_i32_e32 v214, v162
	v_cvt_f32_i32_e32 v213, v163
	v_cvt_f32_i32_e32 v212, v164
	v_cvt_f32_i32_e32 v54, v165
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[161:168], v[31:32], v[154:155], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[33:34], v[36:37], v[161:168] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v21, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v22, v162
	v_cvt_f32_i32_e32 v255, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v254, v164
	v_cvt_f32_i32_e32 v253, v165
	v_cvt_f32_i32_e32 v252, v166
	v_cvt_f32_i32_e32 v251, v167
	v_cvt_f32_i32_e32 v250, v168
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[161:168], v[24:25], v[154:155], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[26:27], v[36:37], v[161:168] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v161
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v241, v162
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v162, v28, 16, v0
	v_lshl_or_b32 v161, v30, 16, v29
	v_perm_b32 v0, v249, v248, 0xc0c0004
	v_perm_b32 v28, v243, v242, 0xc0c0004
	v_perm_b32 v29, v238, v237, 0xc0c0004
	v_perm_b32 v30, v232, v231, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[172:179], v[31:32], v[161:162], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v242, v28, 16, v0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v219, v166
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v243, v30, 16, v29
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v240, v163
	v_cvt_f32_i32_e32 v239, v164
	v_cvt_f32_i32_e32 v226, v165
	scratch_load_b32 v29, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[172:179], v[33:34], v[242:243], v[172:179] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v0, s57, v194
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v215, v168
	v_cvt_f32_i32_e32 v217, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v171, v173
	v_cvt_f32_i32_e32 v170, v174
	v_cvt_f32_i32_e32 v169, v175
	v_cvt_f32_i32_e32 v166, v176
	v_cvt_f32_i32_e32 v165, v177
	v_cvt_f32_i32_e32 v164, v178
	v_cvt_f32_i32_e32 v163, v179
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[173:180], v[24:25], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v25, s57, v192
	v_add_nc_u32_e32 v24, s57, v193
	v_cndmask_b32_e64 v0, 0x80000000, v0, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[173:180], v[26:27], v[242:243], v[173:180] neg_lo:[1,1,0]
	scratch_load_b32 v27, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v26, s57, v191
	v_cndmask_b32_e64 v25, 0x80000000, v25, s8
	v_cndmask_b32_e64 v24, 0x80000000, v24, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v225, v173
	v_cvt_f32_i32_e32 v223, v178
	v_cndmask_b32_e64 v26, 0x80000000, v26, s9
	v_cvt_f32_i32_e32 v222, v179
	v_cvt_f32_i32_e32 v221, v180
	v_cvt_f32_i32_e32 v229, v174
	v_cvt_f32_i32_e32 v228, v175
	v_cvt_f32_i32_e32 v227, v176
	v_cvt_f32_i32_e32 v224, v177
	v_cvt_f32_i32_e32 v172, v172
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v29, s16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v29, 0x80000000, v29, s6
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s16, v27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s10
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v27, v27, s[36:39], 0 offen
	buffer_load_u8 v26, v26, s[36:39], 0 offen
	buffer_load_u8 v25, v25, s[36:39], 0 offen
	buffer_load_u8 v24, v24, s[36:39], 0 offen
	buffer_load_u8 v28, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v27.l
	scratch_load_b32 v27, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v0.l, v28.l, v0.l
	v_add_nc_u32_e32 v28, s57, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s16, v27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s7
	buffer_load_u8 v27, v27, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.h, 8, v27.l
	v_add_nc_u32_e32 v27, s57, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v0.h, v24.l, v0.h
	scratch_load_b32 v24, off, off offset:212 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v27, 0x80000000, v27, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s16, v24
	v_cndmask_b32_e64 v24, 0x80000000, v24, s8
	buffer_load_u8 v24, v24, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v24.l, 8, v24.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v24.l, v25.l, v24.l
	scratch_load_b32 v25, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s16, v25
	v_cndmask_b32_e64 v25, 0x80000000, v25, s9
	buffer_load_u8 v25, v25, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v24.h, 8, v25.l
	v_add_nc_u32_e32 v25, s57, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v24.h, v26.l, v24.h
	v_add_nc_u32_e32 v26, s57, v189
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	s_clause 0x4
	buffer_load_u8 v29, v29, s[36:39], 0 offen
	buffer_load_u8 v28, v28, s[36:39], 0 offen
	buffer_load_u8 v27, v27, s[36:39], 0 offen
	buffer_load_u8 v26, v26, s[36:39], 0 offen
	buffer_load_u8 v30, v25, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v25.l, 8, v29.l
	scratch_load_b32 v29, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v25.l, v30.l, v25.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v29, 0x80000000, v29, s3
	buffer_load_u8 v29, v29, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v25.h, 8, v29.l
	v_or_b16 v25.h, v26.l, v25.h
	scratch_load_b32 v26, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	buffer_load_u8 v26, v26, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v26.l, 8, v26.l
	v_or_b16 v26.l, v27.l, v26.l
	scratch_load_b32 v27, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s16, v27
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s16, s16, s60
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v27, v27, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v26.h, 8, v27.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v26.h, v28.l, v26.h
	ds_store_b16 v183, v0
	ds_store_b16_d16_hi v183, v0 offset:512
	ds_store_b16 v183, v24 offset:1024
	ds_store_b16_d16_hi v183, v24 offset:1536
	ds_store_b16 v183, v25 offset:2048
	ds_store_b16_d16_hi v183, v25 offset:2560
	ds_store_b16 v183, v26 offset:3072
	ds_store_b16_d16_hi v183, v26 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v184 offset:1280
	ds_load_u8 v24, v184 offset:1024
	ds_load_u8 v25, v184 offset:1920
	ds_load_u8 v26, v184 offset:1664
	ds_load_u8 v27, v184 offset:1408
	ds_load_u8 v28, v184 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v24, v0, 0xc0c0004
	ds_load_u8 v24, v184 offset:1792
	ds_load_u8 v29, v184 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v29, v24, 0xc0c0004
	ds_load_u8 v29, v184 offset:256
	ds_load_u8 v30, v184
	ds_load_u8 v31, v184 offset:896
	ds_load_u8 v34, v184 offset:640
	ds_load_u8 v35, v184 offset:384
	ds_load_u8 v38, v184 offset:128
	v_lshl_or_b32 v33, v24, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v184 offset:768
	ds_load_u8 v32, v184 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v32, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v30, 16, v29
	ds_load_u8 v0, v184 offset:3328
	ds_load_u8 v24, v184 offset:3072
	ds_load_u8 v29, v184 offset:3968
	ds_load_u8 v30, v184 offset:3712
	ds_load_u8 v39, v184 offset:3456
	ds_load_u8 v40, v184 offset:3200
	v_wmma_i32_16x16x16_iu4 v[173:180], v[32:33], v[13:14], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v24, v0, 0xc0c0004
	ds_load_u8 v24, v184 offset:3840
	ds_load_u8 v41, v184 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v41, v24, 0xc0c0004
	ds_load_u8 v41, v184 offset:2304
	ds_load_u8 v42, v184 offset:2048
	ds_load_u8 v43, v184 offset:2944
	ds_load_u8 v44, v184 offset:2688
	ds_load_u8 v45, v184 offset:2432
	ds_load_u8 v46, v184 offset:2176
	v_lshl_or_b32 v57, v24, 16, v0
	v_perm_b32 v0, v28, v27, 0xc0c0004
	v_perm_b32 v24, v26, v25, 0xc0c0004
	v_perm_b32 v25, v38, v35, 0xc0c0004
	v_perm_b32 v26, v34, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v59, v24, 16, v0
	v_perm_b32 v0, v40, v39, 0xc0c0004
	v_lshl_or_b32 v58, v26, 16, v25
	v_perm_b32 v24, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v184 offset:2816
	ds_load_u8 v47, v184 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v44, v43, 0xc0c0004
	v_lshl_or_b32 v39, v24, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[24:31], v[58:59], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[38:39], v[15:16], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v168, v24
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v47, v42, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v13, v29
	v_cvt_f32_i32_e32 v14, v30
	v_cvt_f32_i32_e32 v192, v25
	v_cvt_f32_i32_e32 v191, v26
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v56, v42, 16, v41
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v187, v27
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[44:51], v[32:33], v[154:155], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[173:180], v[56:57], v[15:16], v[173:180] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v15, v31
	v_cvt_f32_i32_e32 v16, v28
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[24:31], v[32:33], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v52, v173
	v_cvt_f32_i32_e32 v157, v174
	v_cvt_f32_i32_e32 v182, v175
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[24:31], v[56:57], v[19:20], v[24:31] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v176
	v_cvt_f32_i32_e32 v176, v177
	v_cvt_f32_i32_e32 v175, v178
	v_cvt_f32_i32_e32 v174, v179
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v42, v24
	v_cvt_f32_i32_e32 v41, v25
	v_cvt_f32_i32_e32 v40, v26
	v_cvt_f32_i32_e32 v35, v27
	v_cvt_f32_i32_e32 v180, v28
	v_cvt_f32_i32_e32 v179, v29
	v_cvt_f32_i32_e32 v178, v30
	v_cvt_f32_i32_e32 v177, v31
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[24:31], v[58:59], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[56:57], v[36:37], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[38:39], v[19:20], v[24:31] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v43, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v185, v51
	v_cvt_f32_i32_e32 v194, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v29
	v_cvt_f32_i32_e32 v18, v30
	v_cvt_f32_i32_e32 v237, v25
	v_cvt_f32_i32_e32 v232, v26
	v_cvt_f32_i32_e32 v20, v28
	v_cvt_f32_i32_e32 v30, v44
	v_cvt_f32_i32_e32 v29, v45
	v_cvt_f32_i32_e32 v28, v46
	v_cvt_f32_i32_e32 v26, v48
	v_cvt_f32_i32_e32 v25, v49
	v_cvt_f32_i32_e32 v24, v50
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[44:51], v[58:59], v[154:155], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v19, v31
	v_cvt_f32_i32_e32 v231, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[44:51], v[38:39], v[36:37], v[44:51] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v249, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v188, v49
	v_cvt_f32_i32_e32 v189, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v190, v51
	v_cvt_f32_i32_e32 v0, v45
	v_cvt_f32_i32_e32 v158, v46
	v_cvt_f32_i32_e32 v152, v47
	v_cvt_f32_i32_e32 v193, v48
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[44:51], v[32:33], v[161:162], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[56:57], v[242:243], v[44:51] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v31, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v36, v45
	v_cvt_f32_i32_e32 v37, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v47
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v32, v50
	v_cvt_f32_i32_e32 v27, v51
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[44:51], v[58:59], v[161:162], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[38:39], v[242:243], v[44:51] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:160
	scratch_load_b32 v39, off, off offset:156
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v155, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v44, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v162, v45
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v45, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v238, v49
	v_cvt_f32_i32_e32 v242, v50
	v_cvt_f32_i32_e32 v243, v51
	v_cvt_f32_i32_e32 v161, v46
	v_cvt_f32_i32_e32 v154, v47
	v_cvt_f32_i32_e32 v248, v48
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v38, s17, v38
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s17, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s17, v44
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s17, v45
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s17, s17, 2
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s52, 0
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	s_clause 0x3
	buffer_load_u16 v38, v38, s[40:43], 0 offen
	buffer_load_u16 v39, v39, s[40:43], 0 offen
	buffer_load_u16 v57, v44, s[40:43], 0 offen
	buffer_load_u16 v58, v45, s[40:43], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v44, v160, s[44:47], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v59, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v160, s58, v160
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v167, 16, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v23, v167, v23 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v59, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1226 17                       ; ragged.py:1226:17
	scratch_load_b32 v38, off, off          ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[44:47], v186
	ds_load_b128 v[48:51], v186 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_fmac_f32_e32 v38, v23, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v23, v167, v159
	scratch_store_b32 off, v38, off         ; 4-byte Folded Spill
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v38, 16, v39
	v_lshlrev_b32_e32 v39, 16, v57
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v220, v23, v45 :: v_dual_lshlrev_b32 v57, 16, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v23, v167, v150
	v_mov_b32_e32 v58, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, v39, v21
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v23, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v23, v167, v147 :: v_dual_fmac_f32 v218, v21, v44
	v_mul_f32_e32 v21, v39, v22
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v23, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v23, v38, v247 :: v_dual_fmac_f32 v92, v21, v45
	v_mul_f32_e32 v21, v39, v255
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v23, v44 :: v_dual_mul_f32 v23, v38, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v21, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v39, v254
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v23, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v23, v38, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v21, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v21, v57, v172 :: v_dual_fmac_f32 v126, v23, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v216, v21, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v21, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v21, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v169
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v70, v21, v47 :: v_dual_mul_f32 v21, v167, v210
	scratch_load_b32 v210, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v128, v21, v48 :: v_dual_mul_f32 v21, v167, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v21, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v167, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v21, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v167, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v130, v21, v51 :: v_dual_mul_f32 v21, v38, v236
	v_dual_fmac_f32 v80, v21, v48 :: v_dual_mul_f32 v21, v38, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v102, v21, v49 :: v_dual_mul_f32 v21, v38, v234
	v_fmac_f32_e32 v103, v21, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v38, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v21, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v39, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v21, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v39, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v21, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v39, v251
	v_dual_mul_f32 v23, v38, v244 :: v_dual_fmac_f32 v58, v21, v50
	v_mul_f32_e32 v21, v39, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v23, v47
	v_fmac_f32_e32 v197, v21, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v207, v21, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v165
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v21, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v62, v21, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v21, v57, v163 :: v_dual_mul_f32 v0, v39, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v63, v21, v51
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[44:47], v186 offset:512
	ds_load_b128 v[48:51], v186 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v73, v167
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v146, v21, v44 :: v_dual_mul_f32 v21, v167, v201
	v_fmac_f32_e32 v117, v21, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v167, v68
	v_mov_b32_e32 v87, v99
	v_mov_b32_e32 v99, v133
	v_dual_mov_b32 v133, v149 :: v_dual_mov_b32 v68, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v120, v21, v46 :: v_dual_mul_f32 v21, v167, v81
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:116
	scratch_load_b32 v209, off, off offset:112
	v_dual_fmac_f32 v98, v21, v47 :: v_dual_mul_f32 v21, v211, v38
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v66, off, off offset:92
	scratch_load_b32 v150, off, off offset:88
	scratch_load_b32 v149, off, off offset:84
	scratch_load_b32 v211, off, off offset:72
	v_fmac_f32_e32 v141, v21, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v38, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v201, v91 :: v_dual_fmac_f32 v72, v21, v45
	v_mul_f32_e32 v21, v38, v213
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v21, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v38, v212
	v_mov_b32_e32 v233, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:104
	scratch_load_b32 v147, off, off offset:96
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v21, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v230, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v136, v21, v44 :: v_dual_mul_f32 v21, v39, v241
	v_fmac_f32_e32 v205, v21, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v39, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v21, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v39, v239
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v208, v21, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v225, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v21, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v229
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v199, v21, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v233, v21, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v227
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v200, v21, v47 :: v_dual_mul_f32 v21, v167, v97
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v21, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v21, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v167
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v21, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v21, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v21, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v21, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v167
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v142, v21, v51 :: v_dual_mul_f32 v21, v38, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v54, v74 :: v_dual_fmac_f32 v101, v21, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v75, v38
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v140, v21, v49 :: v_dual_mul_f32 v21, v79, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v21, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v90, v38
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v138, v21, v51 :: v_dual_mul_f32 v21, v39, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v76, v21, v48 :: v_dual_mul_f32 v21, v219, v39
	v_fmac_f32_e32 v134, v21, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v217, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v21, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v215, v39
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v127, v21, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v57, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v211, v21, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v223, v57
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v21, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v222, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v21, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v221, v57
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v21, v51
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v21, v151, s[44:47], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v151, s58, v151
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v59, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v186
	ds_load_b128 v[48:51], v186 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v167, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v21, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v167, v157
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v112, v21, v45 :: v_dual_mul_f32 v21, v167, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v106, v21, v46 :: v_dual_mul_f32 v21, v167, v181
	v_fmac_f32_e32 v107, v21, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v38, v42
	scratch_load_b32 v42, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v116, v21, v44 :: v_dual_mul_f32 v21, v38, v41
	scratch_load_b32 v41, off, off offset:100 ; 4-byte Folded Reload
	v_fmac_f32_e32 v111, v21, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v38, v40
	scratch_load_b32 v40, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v21, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v88, v21, v47 :: v_dual_mul_f32 v21, v39, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v243, v57 :: v_dual_fmac_f32 v67, v21, v44
	v_mul_f32_e32 v21, v39, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v29, v168, v167 :: v_dual_fmac_f32 v66, v21, v45
	v_mul_f32_e32 v21, v39, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v64, v21, v46 :: v_dual_mul_f32 v21, v39, v43
	scratch_load_b32 v43, off, off offset:76 ; 4-byte Folded Reload
	v_fmac_f32_e32 v65, v21, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v31
	v_mul_f32_e32 v31, v57, v248
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v202, v21, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:40
	scratch_load_b32 v73, off, off offset:36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v201, v21, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:8
	scratch_load_b32 v74, off, off offset:4
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v198, v21, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v56
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:64
	scratch_load_b32 v75, off, off offset:48
	scratch_load_b32 v108, off, off offset:44
	v_mov_b32_e32 v56, v96
	v_mov_b32_e32 v96, v119
	v_mov_b32_e32 v119, v55
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v209, v21, v47
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v47, off, off offset:60
	scratch_load_b32 v53, off, off offset:56
	scratch_load_b32 v97, off, off offset:52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v167, v176
	v_mov_b32_e32 v55, v144
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v105, v21, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v167, v175
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v104, v21, v49 :: v_dual_mul_f32 v21, v167, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v96, v21, v50 :: v_dual_mul_f32 v21, v167, v173
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v97, v21, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v38, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v108, v21, v48 :: v_dual_mul_f32 v21, v38, v179
	v_fmac_f32_e32 v83, v21, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v38, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v82, v21, v50 :: v_dual_mul_f32 v21, v38, v177
	v_fmac_f32_e32 v81, v21, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v39, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v87, v21, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v39, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v86, v21, v49 :: v_dual_mul_f32 v21, v39, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v56, v21, v50 :: v_dual_mul_f32 v21, v39, v185
	v_fmac_f32_e32 v53, v21, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v47, v21, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:32
	scratch_load_b32 v90, off, off offset:28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v46, v21, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:24
	scratch_load_b32 v91, off, off offset:20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v45, v21, v50
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:16
	scratch_load_b32 v79, off, off offset:12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v57, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v44, v21, v51
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[21:24], v186 offset:512
	ds_load_b128 v[25:28], v186 offset:528
	v_dual_mov_b32 v51, v84 :: v_dual_mov_b32 v84, v137
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v137, v135 :: v_dual_fmac_f32 v40, v29, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v167, v192
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v51, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v158
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v149, v31, v25
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v91, v29, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v167, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v90, v29, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v167, v187
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v50, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v39, v152
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v84, v29, v24 :: v_dual_mul_f32 v29, v194, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v49, v0, v24 :: v_dual_mul_f32 v0, v155, v57
	v_fmac_f32_e32 v41, v29, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v38, v237
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v55, v0, v21 :: v_dual_mul_f32 v0, v57, v162
	v_fmac_f32_e32 v75, v29, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v29, v38, v232 :: v_dual_fmac_f32 v210, v0, v22
	v_mul_f32_e32 v0, v57, v161
	v_mul_f32_e32 v22, v190, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v29, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v38, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v147, v0, v23 :: v_dual_mul_f32 v0, v57, v154
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v23, v39, v193 :: v_dual_fmac_f32 v54, v22, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v73, v29, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v29, v249, v39 :: v_dual_fmac_f32 v150, v0, v24
	v_mul_f32_e32 v0, v13, v167
	v_mul_f32_e32 v13, v14, v167
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v14, v15, v167 :: v_dual_fmac_f32 v137, v29, v21
	v_dual_mul_f32 v15, v167, v16 :: v_dual_mul_f32 v16, v17, v38
	v_mul_f32_e32 v17, v18, v38
	v_dual_mul_f32 v18, v19, v38 :: v_dual_mul_f32 v19, v38, v20
	v_mul_f32_e32 v20, v188, v39
	v_dual_mul_f32 v21, v189, v39 :: v_dual_mul_f32 v24, v238, v57
	v_mul_f32_e32 v29, v242, v57
	v_mov_b32_e32 v57, v113
	v_mov_b32_e32 v113, v148
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v148, v204 :: v_dual_fmac_f32 v79, v15, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v60, v0, v26 :: v_dual_fmac_f32 v203, v13, v27
	v_dual_fmac_f32 v196, v14, v28 :: v_dual_fmac_f32 v57, v19, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v195, v16, v26 :: v_dual_fmac_f32 v148, v17, v27
	v_fmac_f32_e32 v206, v18, v28
	v_fmac_f32_e32 v48, v23, v25
	v_dual_fmac_f32 v42, v20, v26 :: v_dual_fmac_f32 v43, v21, v27
	v_dual_fmac_f32 v119, v24, v26 :: v_dual_fmac_f32 v68, v29, v27
	v_fmac_f32_e32 v113, v30, v28
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v3, off, off offset:256
	scratch_load_b32 v192, off, off offset:240
	scratch_load_b32 v193, off, off offset:244
	scratch_load_b32 v194, off, off offset:248
	scratch_load_b32 v52, off, off offset:252
	scratch_load_b32 v135, off, off
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v40 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v107
	v_dual_mul_f32 v2, 0xbfb8aa3b, v196 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v79
	v_mul_f32_e32 v188, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v60 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v203
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_dual_mul_f32 v14, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v83
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v187, 0xbfb8aa3b, v90 :: v_dual_fmac_f32 v6, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v13, v6
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v1, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v203
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v10, v10
	v_mul_f32_e32 v170, 0xbfb8aa3b, v65
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v9, v13, v9
	v_mul_f32_e32 v13, 0xbfb8aa3b, v41
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_dual_mul_f32 v18, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v165, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v148
	v_ldexp_f32 v10, v10, v2
	v_ldexp_f32 v0, v1, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v11, v12, v11
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v195
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v41
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v148
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v12, v12
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v184, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v176, 0xbfb8aa3b, v75
	v_exp_f32_e32 v21, v21
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v195
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v12, v12, v1
	v_dual_mul_f32 v1, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v156, 0xbfb8aa3b, v198
	v_ldexp_f32 v14, v15, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v17, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_dual_mul_f32 v22, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v157, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v13, v13, v2
	v_mul_f32_e32 v171, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v42
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v16, v16
	v_dual_mul_f32 v8, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v172, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v112
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v16, v16, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v55
	v_ldexp_f32 v18, v19, v18
	v_ldexp_f32 v19, v21, v20
	v_exp_f32_e32 v17, v17
	v_mul_f32_e32 v155, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_mul_f32_e32 v20, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v9, v9, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v119
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v12, v12, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, s1, v203, v10, v203
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v154, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v119
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v55
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v113
	v_exp_f32_e32 v2, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, vcc_lo, v40, v9, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v191, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v105
	v_ldexp_f32 v21, v23, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v2, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v149
	v_exp_f32_e32 v27, v20
	v_mul_f32_e32 v2, 0xbfb8aa3b, v150
	v_ldexp_f32 v23, v25, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v26, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v152, 0xbfb8aa3b, v210
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v29, v24, v29 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v147
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v27, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v10, v10, v203
	v_mul_f32_e32 v32, v30, v29
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v190, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v26, v32, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v186, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v111
	v_dual_mul_f32 v182, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v34, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v25, v24, 1.0
	v_fma_f32 v35, -v27, v31, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v180, 0xbfb8aa3b, v108 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v26, v32, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v35, v31
	v_div_scale_f32 v35, null, v11, v11, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v178, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v29, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v37, v35
	v_mul_f32_e32 v38, v36, v31
	v_rcp_f32_e32 v29, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v174, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v26, v9, v40
	v_div_scale_f32 v26, s2, v196, v11, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v167, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v35, v37, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v163, 0xbfb8aa3b, v50 :: v_dual_mul_f32 v164, 0xbfb8aa3b, v51
	v_dual_mul_f32 v161, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v162, 0xbfb8aa3b, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v37, v32, v37 :: v_dual_fmac_f32 v24, v33, v24
	v_div_scale_f32 v33, s0, v60, v0, v60
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v32, s0, v41, v12, v41
	v_dual_mul_f32 v34, v33, v24 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v201
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v160, 0xbfb8aa3b, v202
	v_dual_mul_f32 v158, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v153, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v34, v33
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v30, v24
	v_fma_f32 v30, -v27, v38, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v34, v33
	v_fmac_f32_e32 v38, v30, v31
	v_fma_f32 v30, -v39, v29, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v25, v24, v34
	v_fma_f32 v25, -v27, v38, v36
	v_mul_f32_e32 v27, v26, v37
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, null, v13, v13, v195
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v35, v27, v26
	v_div_fmas_f32 v25, v25, v31, v38
	v_rcp_f32_e32 v31, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v14, v14, v148
	v_fmac_f32_e32 v27, v33, v37
	v_mul_f32_e32 v34, v32, v29
	v_div_fixup_f32 v10, v25, v10, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v25, v36
	v_div_fixup_f32 v0, v24, v0, v60
	v_fma_f32 v26, -v35, v27, v26
	v_fma_f32 v33, -v30, v31, 1.0
	v_div_scale_f32 v35, null, v15, v15, v206
	v_fma_f32 v24, -v39, v34, v32
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v33, v31
	v_rcp_f32_e32 v33, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v36, v25, 1.0
	v_fmac_f32_e32 v34, v24, v29
	v_div_scale_f32 v24, s1, v195, v13, v195
	v_div_fmas_f32 v26, v26, v37, v27
	v_fmac_f32_e32 v25, v38, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v39, v34, v32
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v37, s2, v148, v14, v148
	v_fma_f32 v38, -v35, v33, 1.0
	v_mul_f32_e32 v32, v24, v31
	v_div_fmas_f32 v27, v27, v29, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v34, v37, v25
	v_div_scale_f32 v40, s0, v206, v15, v206
	v_fmac_f32_e32 v33, v38, v33
	v_fma_f32 v29, -v30, v32, v24
	v_div_scale_f32 v39, null, v16, v16, v137
	v_div_fixup_f32 v11, v26, v11, v196
	v_div_fixup_f32 v12, v27, v12, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v29, v31
	v_div_scale_f32 v29, null, v17, v17, v42
	v_fma_f32 v26, -v36, v34, v37
	v_mul_f32_e32 v27, v40, v33
	v_fma_f32 v24, -v30, v32, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v30, v29
	v_rcp_f32_e32 v38, v39
	v_fmac_f32_e32 v34, v26, v25
	v_fma_f32 v26, -v35, v27, v40
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v24, v24, v31, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v36, v34, v37
	v_fmac_f32_e32 v27, v26, v33
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v29, v30, 1.0
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v25, v31, v25, v34
	v_fma_f32 v31, -v35, v27, v40
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, null, v18, v18, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v31, v33, v27
	v_div_scale_f32 v35, s1, v42, v17, v42
	v_rcp_f32_e32 v31, v32
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s3, v137, v16, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v35, v30
	v_div_fixup_f32 v13, v24, v13, v195
	v_div_fixup_f32 v24, v25, v14, v148
	v_mul_f32_e32 v26, v41, v38
	v_div_fixup_f32 v25, v27, v15, v206
	v_div_scale_f32 v27, null, v19, v19, v54
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v39, v26, v41
	v_fma_f32 v15, -v29, v33, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v34, v38
	v_fma_f32 v34, -v32, v31, 1.0
	v_fmac_f32_e32 v33, v15, v30
	v_div_scale_f32 v15, s0, v43, v18, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v39, v26, v41
	v_fmac_f32_e32 v31, v34, v31
	v_div_scale_f32 v34, null, v28, v28, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v14, v14, v38, v26
	v_rcp_f32_e32 v26, v27
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v14, v16, v137
	v_fma_f32 v14, -v29, v33, v35
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v27, v26, 1.0
	v_div_fmas_f32 v14, v14, v30, v33
	v_div_scale_f32 v33, s1, v54, v19, v54
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v26, v29, v26
	v_div_fixup_f32 v38, v14, v17, v42
	v_div_scale_f32 v29, null, v21, v21, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v34, v35, 1.0
	v_dual_mul_f32 v17, v33, v26 :: v_dual_mul_f32 v16, v15, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v14, v29
	v_div_scale_f32 v42, null, v23, v23, v113
	v_fmac_f32_e32 v35, v37, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v32, v16, v15
	v_div_scale_f32 v37, null, v22, v22, v68
	v_fmac_f32_e32 v16, v30, v31
	v_div_scale_f32 v30, s2, v55, v28, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v40, -v29, v14, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v32, v16, v15
	v_fma_f32 v32, -v27, v17, v33
	v_dual_mul_f32 v39, v30, v35 :: v_dual_fmac_f32 v14, v40, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v31, v16
	v_rcp_f32_e32 v31, v42
	v_fmac_f32_e32 v17, v32, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v16, -v34, v39, v30
	v_div_scale_f32 v32, s0, v119, v21, v119
	v_fma_f32 v40, -v37, v41, 1.0
	v_div_fixup_f32 v43, v15, v18, v43
	v_fma_f32 v15, -v27, v17, v33
	v_fmac_f32_e32 v39, v16, v35
	v_mul_f32_e32 v16, v32, v14
	v_fmac_f32_e32 v41, v40, v41
	v_div_scale_f32 v18, s3, v68, v22, v68
	v_fma_f32 v27, -v42, v31, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v15, v15, v26, v17
	v_fma_f32 v17, -v34, v39, v30
	v_fma_f32 v26, -v29, v16, v32
	v_dual_mul_f32 v30, v18, v41 :: v_dual_fmac_f32 v31, v27, v31
	v_div_scale_f32 v27, s1, v113, v23, v113
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v33, v15, v19, v54
	v_div_fmas_f32 v17, v17, v35, v39
	v_fmac_f32_e32 v16, v26, v14
	v_fma_f32 v15, -v37, v30, v18
	v_mul_f32_e32 v19, v27, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v17, v28, v55
	v_fma_f32 v8, -v29, v16, v32
	v_fmac_f32_e32 v30, v15, v41
	v_fma_f32 v15, -v42, v19, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v14, v16
	v_fma_f32 v14, -v37, v30, v18
	v_fmac_f32_e32 v19, v15, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v145, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v14, v14, v41, v30
	v_fma_f32 v15, -v42, v19, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v21, v8, v21, v119
	v_div_fixup_f32 v22, v14, v22, v68
	v_div_fmas_f32 v7, v15, v31, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v146, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v7, v23, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v16, v17
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v14
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v14, v140, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v139, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v15, v141, v12 :: v_dual_mul_f32 v12, v138, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, vcc_lo, v115, v0, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v9, v127, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v27, v28, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v142, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v4, v122, v21 :: v_dual_mul_f32 v11, v136, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v29, v29, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v33, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v32, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v121, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v24, v24, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v34, v33, 1.0
	v_dual_fmac_f32 v28, v7, v28 :: v_dual_mul_f32 v7, v129, v26
	v_div_scale_f32 v26, s0, v112, v24, v112
	v_fmac_f32_e32 v33, v32, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v35, v30, v28
	v_div_scale_f32 v32, null, v21, v21, v106
	v_fma_f32 v37, -v25, v31, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v27, v35, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v143, v10 :: v_dual_fmac_f32 v31, v37, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v36, v28
	v_fma_f32 v22, -v27, v35, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v26, v31
	v_div_scale_f32 v30, s1, v107, v29, v107
	v_div_fmas_f32 v22, v22, v28, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v25, v27, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v134, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v118, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v35, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v30, v33
	v_div_fixup_f32 v0, v22, v0, v115
	v_div_scale_f32 v35, s2, v106, v21, v106
	v_fma_f32 v25, -v25, v27, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v32, v28, 1.0
	v_fma_f32 v22, -v34, v36, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v23, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v22, v33
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v31, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v133, v43 :: v_dual_mul_f32 v27, v35, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v34, v36, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v25, v24, v112
	v_fma_f32 v31, -v32, v27, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v23, v26, v23
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v113, v220, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v31, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v23, v23, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v30, v30, v33, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v30, v29, v107
	v_div_scale_f32 v38, null, v22, v22, v105
	v_fma_f32 v29, -v32, v27, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v114, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v29, v28, v27
	v_div_scale_f32 v29, s0, v105, v22, v105
	v_rcp_f32_e32 v28, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v27, v21, v106
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v38, v26, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v123, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v32, v26
	v_fma_f32 v34, -v31, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v21, v21, v96
	v_dual_mul_f32 v33, v29, v26 :: v_dual_fmac_f32 v28, v34, v28
	v_div_scale_f32 v34, s1, v104, v23, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v24, v35
	v_fma_f32 v30, -v38, v33, v29
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v30, v26
	v_mul_f32_e32 v30, v34, v28
	v_fma_f32 v25, -v38, v33, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v31, v30, v34
	v_div_fmas_f32 v25, v25, v26, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v35, v24, 1.0
	v_fmac_f32_e32 v30, v29, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v25, v22, v105
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, s0, v96, v21, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v31, v30, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v26, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v27, v32, v27
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v25, v25, v28, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v30, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v25, v23, v104
	v_fma_f32 v25, -v35, v33, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v185
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v105, v131, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v33, v25, v24 :: v_dual_mul_f32 v104, v128, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v33, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v32, v31
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v24, v26, v24, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v112, v135, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v27 :: v_dual_add_f32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v24, v21, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v132, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v27
	v_fma_f32 v34, -v27, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v34, v29
	v_div_scale_f32 v34, s1, v97, v0, v97
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v31, v34, v29
	v_fma_f32 v35, -v27, v31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v35, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v27, v31, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v29, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v35, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, vcc_lo, v91, v25, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v0, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v90
	v_exp_f32_e32 v26, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v29, v29, v84
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v130, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v21, v26, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s1, v84, v29, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v30, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v25, v25, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v30
	v_div_scale_f32 v23, null, v21, v21, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v37, null, v28, v28, v90
	v_rcp_f32_e32 v34, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v30, v36, 1.0
	v_fmac_f32_e32 v36, v38, v36
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v37, v34, 1.0
	v_mul_f32_e32 v33, v31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v30, v33, v31
	v_fmac_f32_e32 v33, v0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v30, v33, v31
	v_div_fmas_f32 v22, v22, v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v25, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v32, v34
	v_div_scale_f32 v32, s0, v90, v28, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v116
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v24, v32, v34
	v_div_scale_f32 v33, s0, v79, v21, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v117, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v37, v24, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v0, v34
	v_fma_f32 v0, -v35, v38, 1.0
	v_fma_f32 v26, -v37, v24, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v0, v38
	v_rcp_f32_e32 v0, v23
	v_div_fmas_f32 v24, v26, v34, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v27, v38
	v_div_fixup_f32 v24, v24, v28, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v31
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v23, v0, 1.0
	v_fma_f32 v31, -v35, v25, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v97, v120, v24 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v26, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	v_ldexp_f32 v28, v28, v30
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v25, v31, v38 :: v_dual_mul_f32 v30, v33, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v35, v25, v27
	v_fma_f32 v36, -v23, v30, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v28, v28, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	v_exp_f32_e32 v34, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v23, v30, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v33, null, v26, v26, v111
	v_div_fmas_f32 v25, v27, v38, v25
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v34, v31
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v35, v32, 1.0
	v_div_fmas_f32 v0, v23, v0, v30
	v_rcp_f32_e32 v30, v33
	v_div_fixup_f32 v25, v25, v29, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v31, v32
	v_div_scale_f32 v31, vcc_lo, v116, v28, v116
	v_div_fixup_f32 v0, v0, v21, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v31, v32
	v_fma_f32 v34, -v33, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v99, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v23, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v27, v27, v88
	v_fma_f32 v36, -v35, v29, v31
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, s0, v111, v26, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v21
	v_fmac_f32_e32 v29, v36, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v34, v30
	v_fma_f32 v22, -v35, v29, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v36, null, v0, v0, v89
	v_fma_f32 v31, -v33, v24, v34
	v_div_scale_f32 v35, s1, v88, v27, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v22, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v31, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v98, v98, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v21, v23, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v25, v23
	v_rcp_f32_e32 v25, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v36, v25, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v31, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v28, v116
	v_fma_f32 v28, -v33, v24, v34
	v_div_scale_f32 v34, s2, v89, v0, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v28, v30, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v28, v34, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v26, v111
	v_mul_f32_e32 v32, v35, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v21, v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v33, v23
	v_fma_f32 v33, -v36, v28, v34
	v_fma_f32 v21, -v21, v32, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v33, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v29, v29, v108
	v_div_fmas_f32 v21, v21, v23, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v35
	v_fma_f32 v34, -v36, v28, v34
	v_div_fixup_f32 v21, v21, v27, v88
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v110, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v33, v30
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v34, v25, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v35, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v36, 0xbfb8aa3b, v81 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v31, null, v28, v28, v83
	v_fmac_f32_e32 v32, v30, v32
	v_div_scale_f32 v30, vcc_lo, v108, v29, v108
	v_div_scale_f32 v37, null, v23, v23, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v31
	v_mul_f32_e32 v38, v30, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v124, v24
	v_mul_f32_e32 v91, v126, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v38, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v125, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, s0, v83, v28, v83
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v31, v34, 1.0
	v_fmac_f32_e32 v38, v26, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v36, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v37, v25, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v27, v34
	v_fma_f32 v24, -v35, v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v25, v26, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, s1, v82, v23, v82
	v_div_fmas_f32 v24, v24, v32, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v21, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v35, v26, v25
	v_div_scale_f32 v30, null, v0, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v31, v27, v21
	v_div_fixup_f32 v22, v24, v29, v108
	v_fma_f32 v24, -v37, v35, v26
	v_rcp_f32_e32 v32, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v75
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v33, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, s2, v81, v0, v81
	v_fma_f32 v21, -v31, v27, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v30, v32, 1.0
	v_fma_f32 v26, -v37, v35, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v74
	v_ldexp_f32 v24, v24, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v29, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v34, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v33, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_div_scale_f32 v38, null, v24, v24, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v30, v27, v33
	v_div_fmas_f32 v25, v26, v25, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v34, v32
	v_div_fixup_f32 v23, v25, v23, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v30, v27, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v103, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v26, v26, v74
	v_fma_f32 v31, -v38, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v25, v32, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v29, v31, v29
	v_div_fixup_f32 v21, v21, v28, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, s0, v75, v24, v75
	v_div_fixup_f32 v0, v25, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v31, v29
	v_fma_f32 v34, -v30, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v83, v109, v0 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, s1, v74, v26, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v38, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v102, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v0, v0, v73
	v_dual_fmac_f32 v33, v28, v29 :: v_dual_mul_f32 v28, v34, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v21, v35
	v_fma_f32 v23, -v38, v33, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v31, -v30, v28, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v32, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v29, v33
	v_fmac_f32_e32 v28, v31, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v24, v75
	v_fma_f32 v24, -v30, v28, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v72, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v26, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v80, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v21, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v22, v22, v57
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, s0, v73, v0, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v25, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v33, v25
	v_fma_f32 v34, -v29, v30, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v28, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v26, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, s1, v57, v22, v57
	v_fma_f32 v25, -v35, v33, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_add_f32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v34, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v26, v26, v67
	v_fma_f32 v35, -v29, v31, v34
	v_div_scale_f32 v37, null, v27, v27, v66
	v_div_fmas_f32 v21, v25, v21, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v28
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v29, v31, v34
	v_rcp_f32_e32 v34, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v30, v31
	v_div_scale_f32 v31, vcc_lo, v67, v26, v67
	v_fma_f32 v38, -v28, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v25, v22, v57
	v_fma_f32 v32, -v37, v34, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v38, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v101, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v32, v34
	v_div_scale_f32 v32, s0, v66, v27, v66
	v_mul_f32_e32 v33, v31, v36
	v_div_fixup_f32 v0, v21, v0, v73
	v_div_scale_f32 v35, null, v30, v30, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v32, v34
	v_fma_f32 v21, -v28, v33, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v100, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v25, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v95, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v21, v36
	v_fma_f32 v21, -v37, v22, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v28, v33, v31
	v_fmac_f32_e32 v22, v21, v34
	v_div_scale_f32 v28, s1, v65, v30, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v35, v38, 1.0
	v_div_fmas_f32 v23, v23, v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v37, v22, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v21, v38
	v_div_fixup_f32 v23, v23, v26, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v22, v25, v34, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v28, v38
	v_div_fixup_f32 v22, v22, v27, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v27, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v35, v25, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v24, null, v0, v0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, s0, v64, v0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v21, v24
	v_fmac_f32_e32 v25, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v27, v27, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v35, v25, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v24, v21, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v35, null, v27, v27, v87
	v_fmac_f32_e32 v21, v26, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v33, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v26
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v24, v29, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v36, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v34, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v24, v29, v33
	v_div_scale_f32 v33, null, v26, v26, v86
	v_div_fmas_f32 v25, v28, v38, v25
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v24, v21, v29
	v_rcp_f32_e32 v29, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v34, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v35, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v31, v32
	v_div_scale_f32 v31, vcc_lo, v87, v27, v87
	v_fma_f32 v34, -v33, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v34, v29
	v_div_fixup_f32 v25, v25, v30, v65
	v_dual_mul_f32 v30, v31, v32 :: v_dual_mul_f32 v65, v92, v22
	v_div_fixup_f32 v0, v21, v0, v64
	v_div_scale_f32 v21, null, v28, v28, v56
	v_div_scale_f32 v34, s0, v86, v26, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v94, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v24, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v21
	v_fma_f32 v36, -v35, v30, v31
	v_mul_f32_e32 v22, v34, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v93, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v218, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v36, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v36, null, v0, v0, v53
	v_fma_f32 v25, -v21, v24, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v35, v30, v31
	v_fma_f32 v31, -v33, v22, v34
	v_div_scale_f32 v35, s1, v56, v28, v56
	v_fmac_f32_e32 v24, v25, v24
	v_rcp_f32_e32 v25, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v22, v31, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v32, v30
	v_mul_f32_e32 v32, v35, v24
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v27, v87
	v_fma_f32 v27, -v33, v22, v34
	v_fma_f32 v37, -v36, v25, 1.0
	v_fma_f32 v33, -v21, v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, s2, v53, v0, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v37, v25
	v_div_fmas_f32 v22, v27, v29, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v32, v33, v24 :: v_dual_mul_f32 v27, v34, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v30, v31, v30
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v36, v27, v34
	v_fma_f32 v21, -v21, v32, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v27, v33, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v30, v30, v51
	v_div_fmas_f32 v21, v21, v24, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v35
	v_fma_f32 v34, -v36, v27, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v33, v29
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v34, v25, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v35, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v53
	v_div_scale_f32 v31, null, v27, v27, v50
	v_fmac_f32_e32 v32, v29, v32
	v_div_scale_f32 v29, vcc_lo, v51, v30, v51
	v_div_scale_f32 v37, null, v24, v24, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v197, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v29, v32
	v_div_fixup_f32 v22, v22, v26, v86
	v_rcp_f32_e32 v25, v37
	v_rcp_f32_e32 v34, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v38, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v57, v85, v22 :: v_dual_fmac_f32 v38, v26, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v37, v25, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v36, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v35, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, s1, v49, v24, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v22, v32, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v26, v25
	v_div_fixup_f32 v21, v21, v28, v56
	v_fma_f32 v28, -v31, v34, 1.0
	v_div_scale_f32 v29, null, v0, v0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v58, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v28, v34
	v_div_scale_f32 v21, s0, v50, v27, v50
	v_rcp_f32_e32 v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v78, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v21, v34
	v_fma_f32 v23, -v37, v35, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v202
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v30, v51
	v_fma_f32 v33, -v31, v28, v21
	v_fmac_f32_e32 v35, v23, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v29, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v33, v34
	v_div_scale_f32 v33, s2, v48, v0, v48
	v_fmac_f32_e32 v32, v30, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v31, v28, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v23, v23, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v37, v35, v26
	v_div_fmas_f32 v21, v21, v34, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v201
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v28, v33, v32 :: v_dual_add_f32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v21, v21, v27, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v29, v28, v33
	v_div_scale_f32 v38, null, v23, v23, v202
	v_div_fmas_f32 v25, v26, v25, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v209 :: v_dual_fmac_f32 v28, v34, v32
	v_ldexp_f32 v26, v31, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v38
	v_div_fixup_f32 v24, v25, v24, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v25, -v29, v28, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v50, v208, v24 :: v_dual_mul_f32 v49, v77, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v32, v28
	v_div_scale_f32 v29, null, v26, v26, v201
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v38, v30, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v28, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, s0, v202, v23, v202
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v51, v76, v0 :: v_dual_add_f32 v0, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v31, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v29, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v0, v0, v209
	v_fma_f32 v27, -v38, v33, v31
	v_fmac_f32_e32 v28, v34, v28
	v_div_scale_f32 v34, s1, v201, v26, v201
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v27, v30
	v_rcp_f32_e32 v21, v35
	v_mul_f32_e32 v27, v34, v28
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v205, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v38, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v29, v27, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v32, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v30, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v27, v31, v28 :: v_dual_add_f32 v22, 1.0, v25
	v_fma_f32 v25, -v35, v21, 1.0
	v_div_fixup_f32 v23, v24, v23, v202
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v24, -v29, v27, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v22, v22, v198
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, s0, v209, v0, v209
	v_rcp_f32_e32 v30, v29
	v_div_fmas_f32 v24, v24, v28, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v25, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v26, v201
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v33, v25
	v_fma_f32 v34, -v29, v30, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v153
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v26, v21
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, s1, v198, v22, v198
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v31
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v33, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v31, v34, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v28, v27
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v29, v31, v34
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v28, null, v26, v26, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v28
	v_div_fmas_f32 v21, v25, v21, v33
	v_div_scale_f32 v37, null, v27, v27, v46
	v_fma_f32 v25, -v29, v31, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v37
	v_div_fixup_f32 v0, v21, v0, v209
	v_div_fmas_f32 v25, v25, v30, v31
	v_fma_f32 v38, -v28, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v32
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, vcc_lo, v47, v26, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v37, v34, 1.0
	v_div_fixup_f32 v22, v25, v22, v198
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v31, v36
	v_div_scale_f32 v35, null, v30, v30, v45
	v_fmac_f32_e32 v34, v32, v34
	v_div_scale_f32 v32, s0, v46, v27, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v71, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v28, v33, v31
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v32, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v70, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v33, v21, v36 :: v_dual_mul_f32 v40, v216, v23
	v_fma_f32 v21, -v37, v22, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v25, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v69, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v28, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v21, v34
	v_fma_f32 v21, -v35, v38, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v36, v33
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v24, -v37, v22, v32
	v_fmac_f32_e32 v38, v21, v38
	v_div_scale_f32 v21, s1, v45, v30, v45
	v_div_scale_f32 v25, null, v0, v0, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v24, v34, v22
	v_mul_f32_e32 v24, v21, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v25
	v_div_fixup_f32 v23, v23, v26, v47
	v_fma_f32 v20, -v35, v24, v21
	v_div_fixup_f32 v22, v22, v27, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v20, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v25, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	v_exp_f32_e32 v1, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v35, v24, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v150
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v2, v28
	v_div_scale_f32 v33, s0, v44, v0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v149
	v_ldexp_f32 v20, v20, v29
	v_exp_f32_e32 v29, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v1, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v38, v24
	v_mul_f32_e32 v24, v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v30, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v32, -v25, v24, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v20, v20, v210
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v24, v32, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v26, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v27
	v_div_scale_f32 v26, null, v1, v1, v147
	v_fma_f32 v25, -v25, v24, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v29, v29, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v26
	v_div_fmas_f32 v24, v25, v28, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v25, null, v2, v2, v149
	v_rcp_f32_e32 v37, v31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v27, v30, 1.0
	v_div_scale_f32 v28, vcc_lo, v210, v20, v210
	v_rcp_f32_e32 v38, v25
	v_div_fixup_f32 v0, v24, v0, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v30, v32, v30
	v_fma_f32 v32, -v26, v36, 1.0
	v_div_scale_f32 v46, s2, v149, v2, v149
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v31, v37, 1.0
	v_mul_f32_e32 v39, v28, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s0, v147, v1, v147
	v_fma_f32 v33, -v25, v38, 1.0
	v_fmac_f32_e32 v37, v24, v37
	v_div_scale_f32 v24, s1, v150, v29, v150
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v63, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v27, v39, v28
	v_mul_f32_e32 v44, v32, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_mul_f32 v45, v24, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v62, v21 :: v_dual_fmac_f32 v39, v0, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v26, v44, v32
	v_mul_f32_e32 v47, v46, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v21, -v31, v45, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v61, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v27, v39, v28
	v_fmac_f32_e32 v44, v0, v36
	v_fma_f32 v0, -v25, v47, v46
	v_fmac_f32_e32 v45, v21, v37
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v27, |v64|, |v65|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v22, v30, v39
	v_fma_f32 v22, -v26, v44, v32
	v_fmac_f32_e32 v47, v0, v38
	v_fma_f32 v0, -v31, v45, v24
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v32, v207, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v22, v36, v44
	v_fma_f32 v24, -v25, v47, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v21, v20, v210
	v_div_fmas_f32 v0, v0, v37, v45
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v22, v1, v147
	v_div_fmas_f32 v24, v24, v38, v47
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v21, |v112|, |v113|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v29, v150
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v114|, |v104|, |v105|
	v_max3_f32 v23, |v96|, |v97|, |v98|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v24, v2, v149
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v99|, |v18|, |v16|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v200, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v106|, |v107|, |v19|
	v_max3_f32 v25, |v72|, |v73|, |v74|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v211, v2
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v21, |v115|, v22
	v_max3_f32 v21, v23, v24, |v17|
	v_max_f32_e64 v22, |v88|, |v89|
	v_max3_f32 v23, |v90|, |v80|, |v81|
	v_max3_f32 v26, |v75|, |v14|, |v13|
	v_max3_f32 v30, |v66|, |v56|, |v57|
	v_max3_f32 v31, |v48|, |v49|, |v50|
	v_max3_f32 v36, |v51|, |v10|, |v8|
	v_max3_f32 v24, |v82|, |v83|, |v15|
	v_max3_f32 v22, v22, |v91|, v23
	v_max3_f32 v23, v25, v26, |v12|
	v_max3_f32 v25, |v58|, |v59|, |v11|
	v_max3_f32 v26, v27, |v67|, v30
	v_max3_f32 v27, v31, v36, |v9|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v233, v1 :: v_dual_mul_f32 v31, v199, v20
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v2, v0, v21
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v1, v22, v24, v23
	v_max3_f32 v2, v26, v25, v27
	v_max_f32_e64 v20, |v40|, |v41|
	v_max3_f32 v21, |v42|, |v32|, |v33|
	v_max3_f32 v23, |v31|, |v30|, |v29|
	v_max3_f32 v24, |v28|, |v4|, |v5|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v25, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v34|, |v35|, |v7|
	v_max3_f32 v20, v20, |v43|, v21
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v26, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v23, v24, |v6|
	v_max_f32_e32 v24, v25, v25
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 0x60, v192
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v26, v26
	v_max3_f32 v23, v20, v22, v23
	v_max_f32_e32 v20, v0, v24
	v_dual_max_f32 v21, v21, v21 :: v_dual_and_b32 v0, 3, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v22, v2, v25
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v192
	v_lshlrev_b32_e32 v26, 4, v192
	v_lshl_add_u32 v25, v0, 9, 0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v21, v1, v21 :: v_dual_lshlrev_b32 v24, 5, v0
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 8, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v37, v2, 2, v25
	v_and_or_b32 v26, 0x680, v26, v24
	v_lshlrev_b32_e32 v25, 1, v52
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v38, v24, v27
	v_lshl_add_u32 v37, v36, 4, v37
	v_lshrrev_b32_e32 v39, 3, v52
	v_xor_b32_e32 v26, v26, v27
	v_lshl_add_u32 v44, v2, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v23, v1
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v37, v25, v38
	v_lshlrev_b32_e32 v36, 3, v36
	v_lshl_add_u32 v0, v0, 4, 0
	v_add3_u32 v26, v44, v39, v26
	ds_store_b128 v1, v[20:23]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v20 :: v_dual_mov_b32 v26, v21
	v_dual_mov_b32 v37, v22 :: v_dual_max_f32 v20, v20, v20
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v38, v23, v23
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v23, v23, v23
	v_dual_max_f32 v1, v20, v1 :: v_dual_max_f32 v20, v21, v26
	v_dual_max_f32 v21, v22, v22 :: v_dual_max_f32 v22, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v26, v1 :: v_dual_mov_b32 v37, v20
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v21, v21, v22 :: v_dual_max_f32 v22, v38, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v23, v21 :: v_dual_mov_b32 v38, v22
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v26 :: v_dual_max_f32 v26, v20, v37
	v_dual_max_f32 v20, v23, v23 :: v_dual_max_f32 v23, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v37, v1 :: v_dual_mov_b32 v38, v26
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v39, v21, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v23, v22, v23
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v22, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v44, v23
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v20, v37, v37 :: v_dual_max_f32 v21, v38, v38
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v37, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v20, v1, v20 :: v_dual_max_f32 v21, v26, v21
	v_dual_max_f32 v1, v22, v22 :: v_dual_add_nc_u32 v38, 0, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v26, v44, v44
	v_dual_max_f32 v22, v39, v1 :: v_dual_lshlrev_b32 v1, 5, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v23, v23, v26
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v38, v37, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v0, v0, v1, v36
	ds_store_b128 v2, v[20:23]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v0
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v23, 4, v194
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v36, v36
	v_max_f32_e32 v20, v38, v38
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 32, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	v_max_f32_e32 v38, 0x2b8cbccc, v20
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v37, 0x2b8cbccc, v37
	v_max_f32_e32 v39, 0x2b8cbccc, v39
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v44, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v45, null, 0x40e00000, 0x40e00000, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v26, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v20, s0, s34, v36
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[48:49], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v52, null, 0x40e00000, 0x40e00000, v37
	v_fma_f32 v21, -v22, v26, 1.0
	v_div_scale_f32 v53, null, 0x40e00000, 0x40e00000, v39
	v_div_scale_f32 v54, s7, v37, 0x40e00000, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v26, v21, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v21, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[50:51], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v26
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[50:51], v[20:21]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v60, s8, v39, 0x40e00000, v39
	v_fma_f32 v0, -v22, v36, v44
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, s6, v38, 0x40e00000, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s34, v1
	v_add_co_ci_u32_e64 v1, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v22, -v22, v36, v44
	v_rcp_f32_e32 v44, v52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[48:49], v[20:21]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[50:51], v[0:1]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[48:49], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v22, v22, v26, v36
	v_mul_f32_e32 v26, v47, v46
	v_rcp_f32_e32 v36, v53
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v22, 0x40e00000, v2
	v_fma_f32 v20, -v52, v44, 1.0
	v_fma_f32 v21, -v45, v26, v47
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v44, v20, v44
	v_fma_f32 v20, -v53, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v26, v21, v46
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v2.h
	v_mov_b16_e32 v21.h, v22.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v55, v54, v44
	v_fmac_f32_e32 v36, v20, v36
	v_fma_f32 v0, -v45, v26, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v21, -v52, v55, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v60, v36
	v_div_fmas_f32 v26, v0, v46, v26
	s_mov_b32 vcc_lo, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v55, v21, v44
	v_fma_f32 v2, -v53, v45, v60
	v_div_fixup_f32 v26, v26, 0x40e00000, v38
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s34, v23
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v21, 0xffff0000, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v38, -v52, v55, v54
	v_fmac_f32_e32 v45, v2, v36
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v26.h
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v21, v21, v112
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v38, v44, v55
	v_fma_f32 v44, -v53, v45, v60
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v38, v46
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[50:51], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v37
	v_div_fmas_f32 v36, v44, v36, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v44, null, v21, v21, v113
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v37, 1, v22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[48:49], v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v36, v36, 0x40e00000, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v47, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v46, v38, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v39.l, v2.h
	v_mov_b16_e32 v39.h, v22.h
	v_add3_u32 v1, v26, v37, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v52, null, v21, v21, v115
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, vcc_lo, v112, v21, v112
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v44, v47, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v36.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v37, v45, v38
	v_div_scale_f32 v53, null, v21, v21, v114
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v47, v39, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v46, v37, v45
	v_rcp_f32_e32 v39, v52
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v22, 1, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v54, s8, v113, v21, v113
	v_fmac_f32_e32 v37, v0, v38
	v_rcp_f32_e32 v0, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v36, v22, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v22, v54, v47
	v_div_scale_f32 v62, null, v21, v21, v104
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v52, v39, 1.0
	v_fma_f32 v45, -v46, v37, v45
	v_fma_f32 v46, -v44, v22, v54
	v_div_scale_f32 v63, null, v21, v21, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v39, v55, v39
	v_div_scale_f32 v55, s9, v115, v21, v115
	v_fma_f32 v61, -v53, v0, 1.0
	v_fmac_f32_e32 v22, v46, v47
	v_rcp_f32_e32 v46, v62
	v_div_fmas_f32 v37, v45, v38, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v55, v39 :: v_dual_fmac_f32 v0, v61, v0
	v_div_scale_f32 v61, s10, v114, v21, v114
	v_rcp_f32_e32 v68, v63
	v_fma_f32 v38, -v44, v22, v54
	v_fma_f32 v44, -v52, v45, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v54, v61, v0
	v_fma_f32 v69, -v62, v46, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v79, null, v21, v21, v98
	v_div_fmas_f32 v22, v38, v47, v22
	v_fmac_f32_e32 v45, v44, v39
	v_fma_f32 v44, -v53, v54, v61
	v_fmac_f32_e32 v46, v69, v46
	v_fma_f32 v69, -v63, v68, 1.0
	v_div_scale_f32 v47, s8, v104, v21, v104
	v_div_fixup_f32 v38, v22, v21, v113
	v_fma_f32 v22, -v52, v45, v55
	v_fmac_f32_e32 v54, v44, v0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, null, v21, v21, v106
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v52, v47, v46
	v_div_scale_f32 v55, s11, v105, v21, v105
	v_div_fmas_f32 v22, v22, v39, v45
	v_fma_f32 v39, -v53, v54, v61
	v_div_scale_f32 v61, null, v21, v21, v107
	v_rcp_f32_e32 v53, v69
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v44, -v62, v52, v47
	v_mul_f32_e32 v45, v55, v68
	v_div_fmas_f32 v0, v39, v0, v54
	v_rcp_f32_e32 v54, v61
	v_div_fixup_f32 v39, v22, v21, v115
	v_fmac_f32_e32 v52, v44, v46
	v_fma_f32 v70, -v63, v45, v55
	v_div_fixup_f32 v44, v0, v21, v114
	v_fma_f32 v71, -v69, v53, 1.0
	v_div_scale_f32 v22, s9, v106, v21, v106
	v_fma_f32 v0, -v62, v52, v47
	v_fmac_f32_e32 v45, v70, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v61, v54, 1.0
	v_div_scale_f32 v62, null, v21, v21, v19
	v_fmac_f32_e32 v53, v71, v53
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v54, v47, v54
	v_div_fmas_f32 v0, v0, v46, v52
	v_fma_f32 v46, -v63, v45, v55
	v_rcp_f32_e32 v55, v62
	v_div_scale_f32 v47, s8, v107, v21, v107
	v_mul_f32_e32 v52, v22, v53
	v_div_scale_f32 v63, null, v21, v21, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v70, v47, v54
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, null, v21, v21, v17
	v_div_fmas_f32 v46, v46, v68, v45
	v_fma_f32 v68, -v69, v52, v22
	v_fma_f32 v71, -v62, v55, 1.0
	v_rcp_f32_e32 v76, v63
	v_div_fixup_f32 v45, v0, v21, v104
	v_fma_f32 v0, -v61, v70, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v52, v68, v53 :: v_dual_fmac_f32 v55, v71, v55
	v_div_scale_f32 v68, s10, v19, v21, v19
	v_div_scale_f32 v71, null, v21, v21, v97
	v_fmac_f32_e32 v70, v0, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v69, v52, v22
	v_fma_f32 v77, -v63, v76, 1.0
	v_mul_f32_e32 v0, v68, v55
	v_rcp_f32_e32 v69, v71
	v_fma_f32 v47, -v61, v70, v47
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v76, v77, v76
	v_div_fmas_f32 v22, v22, v53, v52
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v77, s11, v96, v21, v96
	v_fma_f32 v52, -v62, v0, v68
	v_div_fmas_f32 v54, v47, v54, v70
	v_rcp_f32_e32 v70, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v53, v77, v76
	v_fma_f32 v61, -v71, v69, 1.0
	v_fmac_f32_e32 v0, v52, v55
	v_div_fixup_f32 v47, v22, v21, v106
	v_div_fixup_f32 v52, v54, v21, v107
	v_fma_f32 v84, -v63, v53, v77
	v_fmac_f32_e32 v69, v61, v69
	v_div_scale_f32 v61, s8, v97, v21, v97
	v_fma_f32 v22, -v62, v0, v68
	v_fma_f32 v62, -v79, v70, 1.0
	v_div_scale_f32 v68, null, v21, v21, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v53, v84, v76 :: v_dual_mul_f32 v54, v61, v69
	v_fmac_f32_e32 v70, v62, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v62, v68
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v86, v85
	v_div_fmas_f32 v0, v22, v55, v0
	v_fma_f32 v22, -v63, v53, v77
	v_fma_f32 v55, -v71, v54, v61
	v_div_scale_f32 v77, null, v21, v21, v18
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v63, s9, v98, v21, v98
	v_div_fmas_f32 v22, v22, v76, v53
	v_fmac_f32_e32 v54, v55, v69
	v_rcp_f32_e32 v76, v77
	v_fma_f32 v84, -v68, v62, 1.0
	v_mul_f32_e32 v55, v63, v70
	v_div_fixup_f32 v19, v0, v21, v19
	v_fma_f32 v0, -v71, v54, v61
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v62, v84, v62
	v_div_scale_f32 v84, null, v21, v21, v16
	v_div_fixup_f32 v53, v22, v21, v96
	v_fma_f32 v22, -v79, v55, v63
	v_div_scale_f32 v61, s10, v99, v21, v99
	v_fma_f32 v71, -v77, v76, 1.0
	v_div_fmas_f32 v0, v0, v69, v54
	v_rcp_f32_e32 v69, v84
	v_fmac_f32_e32 v55, v22, v70
	v_mul_f32_e32 v22, v61, v62
	v_fmac_f32_e32 v76, v71, v76
	v_div_scale_f32 v71, s8, v18, v21, v18
	v_div_fixup_f32 v54, v0, v21, v97
	v_fma_f32 v0, -v79, v55, v63
	v_fma_f32 v63, -v68, v22, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v71, v76
	v_fma_f32 v87, -v84, v69, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v70, v55
	v_fmac_f32_e32 v22, v63, v62
	v_fma_f32 v63, -v77, v79, v71
	v_fmac_f32_e32 v69, v87, v69
	v_fma_f32 v87, -v85, v86, 1.0
	v_div_scale_f32 v70, s9, v16, v21, v16
	v_div_fixup_f32 v55, v0, v21, v98
	v_fma_f32 v0, -v68, v22, v61
	v_fmac_f32_e32 v79, v63, v76
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, null, v78, v78, v88
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v63, v70, v69
	v_div_scale_f32 v68, s11, v17, v21, v17
	v_div_fmas_f32 v0, v0, v62, v22
	v_fma_f32 v22, -v77, v79, v71
	v_rcp_f32_e32 v62, v87
	v_div_scale_f32 v77, null, v78, v78, v89
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v61, -v84, v63, v70
	v_mul_f32_e32 v71, v68, v86
	v_div_fmas_f32 v22, v22, v76, v79
	v_rcp_f32_e32 v76, v77
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v63, v61, v69
	v_fma_f32 v79, -v85, v71, v68
	v_fma_f32 v92, -v87, v62, 1.0
	v_div_fixup_f32 v61, v0, v21, v99
	v_div_fixup_f32 v18, v22, v21, v18
	v_fma_f32 v0, -v84, v63, v70
	v_fmac_f32_e32 v71, v79, v86
	v_fmac_f32_e32 v62, v92, v62
	v_div_scale_f32 v22, s8, v88, v78, v88
	v_fma_f32 v70, -v77, v76, 1.0
	v_div_scale_f32 v79, null, v78, v78, v91
	v_div_fmas_f32 v0, v0, v69, v63
	v_fma_f32 v63, -v85, v71, v68
	v_mul_f32_e32 v68, v22, v62
	v_fmac_f32_e32 v76, v70, v76
	v_rcp_f32_e32 v69, v79
	v_div_scale_f32 v70, s9, v89, v78, v89
	v_div_scale_f32 v84, null, v78, v78, v90
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v85, v70, v76
	v_div_fmas_f32 v63, v63, v86, v71
	v_fma_f32 v71, -v87, v68, v22
	v_rcp_f32_e32 v92, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v79, v69, 1.0
	v_div_fixup_f32 v16, v0, v21, v16
	v_fma_f32 v0, -v77, v85, v70
	v_fmac_f32_e32 v68, v71, v62
	v_div_scale_f32 v71, null, v78, v78, v80
	v_div_fixup_f32 v37, v37, v21, v112
	v_div_fixup_f32 v46, v46, v21, v105
	v_div_fixup_f32 v17, v63, v21, v17
	v_fmac_f32_e32 v69, v86, v69
	v_div_scale_f32 v21, s10, v91, v78, v91
	v_fma_f32 v63, -v84, v92, 1.0
	v_fma_f32 v22, -v87, v68, v22
	v_fmac_f32_e32 v85, v0, v76
	v_rcp_f32_e32 v86, v71
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v21, v69
	v_fmac_f32_e32 v92, v63, v92
	v_div_scale_f32 v87, s11, v90, v78, v90
	v_div_fmas_f32 v22, v22, v62, v68
	v_fma_f32 v62, -v77, v85, v70
	v_div_scale_f32 v77, null, v78, v78, v81
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v63, -v79, v0, v21
	v_mul_f32_e32 v68, v87, v92
	v_fma_f32 v70, -v71, v86, 1.0
	v_div_fmas_f32 v76, v62, v76, v85
	v_rcp_f32_e32 v85, v77
	v_fmac_f32_e32 v0, v63, v69
	v_fma_f32 v93, -v84, v68, v87
	v_fmac_f32_e32 v86, v70, v86
	v_div_scale_f32 v70, s8, v80, v78, v80
	v_div_fixup_f32 v62, v22, v78, v88
	v_div_fixup_f32 v63, v76, v78, v89
	v_fma_f32 v21, -v79, v0, v21
	v_fmac_f32_e32 v68, v93, v92
	v_mul_f32_e32 v22, v70, v86
	v_fma_f32 v76, -v77, v85, 1.0
	v_div_scale_f32 v79, null, v78, v78, v82
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v21, v69, v0
	v_fma_f32 v21, -v84, v68, v87
	v_fma_f32 v69, -v71, v22, v70
	v_fmac_f32_e32 v85, v76, v85
	v_rcp_f32_e32 v76, v79
	v_div_scale_f32 v87, null, v78, v78, v83
	v_div_scale_f32 v84, s9, v81, v78, v81
	v_fmac_f32_e32 v22, v69, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v88, v87
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v84, v85
	v_div_fmas_f32 v21, v21, v92, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v79, v76, 1.0
	v_div_fixup_f32 v68, v0, v78, v91
	v_fma_f32 v0, -v71, v22, v70
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v69, v21, v78, v90
	v_fma_f32 v21, -v77, v89, v84
	v_fmac_f32_e32 v76, v92, v76
	v_div_scale_f32 v90, s10, v82, v78, v82
	v_fma_f32 v70, -v87, v88, 1.0
	v_div_fmas_f32 v0, v0, v86, v22
	v_div_scale_f32 v92, null, v78, v78, v72
	v_fmac_f32_e32 v89, v21, v85
	v_mul_f32_e32 v21, v90, v76
	v_fmac_f32_e32 v88, v70, v88
	v_div_scale_f32 v86, s8, v83, v78, v83
	v_div_fixup_f32 v70, v0, v78, v80
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v0, -v77, v89, v84
	v_fma_f32 v71, -v79, v21, v90
	v_mul_f32_e32 v77, v86, v88
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v85, v89
	v_fmac_f32_e32 v21, v71, v76
	v_fma_f32 v85, -v87, v77, v86
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v89, -v92, v80, 1.0
	v_div_fixup_f32 v71, v0, v78, v81
	v_fma_f32 v0, -v79, v21, v90
	v_fmac_f32_e32 v77, v85, v88
	v_div_scale_f32 v81, s11, v72, v78, v72
	v_fmac_f32_e32 v80, v89, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v76, v21
	v_fma_f32 v21, -v87, v77, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v81, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v21, v21, v88, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v92, v87, v81
	v_fmac_f32_e32 v87, v90, v80
	v_div_scale_f32 v91, null, v78, v78, v15
	v_div_scale_f32 v85, null, v78, v78, v73
	v_div_scale_f32 v89, null, v78, v78, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v22, v91
	v_rcp_f32_e32 v86, v85
	v_div_fixup_f32 v77, v21, v78, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v88, v89
	v_div_scale_f32 v83, null, v78, v78, v75
	v_div_scale_f32 v21, s8, v73, v78, v73
	v_fma_f32 v84, -v91, v22, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v93, -v85, v86, 1.0
	v_fmac_f32_e32 v22, v84, v22
	v_div_scale_f32 v84, s9, v15, v78, v15
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v60, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v86, v93, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v84, v22
	v_fma_f32 v76, -v91, v79, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v76, v22
	v_div_fixup_f32 v76, v0, v78, v82
	v_fma_f32 v82, -v89, v88, 1.0
	v_fma_f32 v0, -v91, v79, v84
	v_div_scale_f32 v84, null, v78, v78, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s9, v74, v78, v74
	v_div_fmas_f32 v0, v0, v22, v79
	v_fma_f32 v22, -v92, v87, v81
	v_rcp_f32_e32 v81, v83
	v_mul_f32_e32 v79, v21, v86
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v36, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v22, v22, v80, v87
	v_mul_f32_e32 v87, v82, v88
	v_fma_f32 v80, -v85, v79, v21
	v_div_fixup_f32 v15, v0, v78, v15
	v_rcp_f32_e32 v91, v84
	v_div_fixup_f32 v72, v22, v78, v72
	v_fma_f32 v90, -v83, v81, 1.0
	v_fmac_f32_e32 v79, v80, v86
	v_fma_f32 v0, -v89, v87, v82
	v_div_scale_f32 v22, s10, v75, v78, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v80, null, v78, v78, v13
	v_fma_f32 v21, -v85, v79, v21
	v_dual_fmac_f32 v87, v0, v88 :: v_dual_mul_f32 v0, v22, v81
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v85, v80
	v_div_fmas_f32 v21, v21, v86, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v89, v87, v82
	v_fma_f32 v82, -v83, v0, v22
	v_div_scale_f32 v92, null, v78, v78, v12
	v_fma_f32 v90, -v84, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v0, v82, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v92
	v_fma_f32 v89, -v80, v85, 1.0
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v14, v78, v14
	v_div_fmas_f32 v79, v79, v88, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v88, s8, v13, v78, v13
	v_mul_f32_e32 v86, v90, v91
	v_div_fixup_f32 v73, v21, v78, v73
	v_div_fixup_f32 v74, v79, v78, v74
	v_fma_f32 v21, -v83, v0, v22
	v_fma_f32 v79, -v92, v82, 1.0
	v_div_scale_f32 v83, null, v60, v60, v64
	v_fma_f32 v87, -v84, v86, v90
	v_mul_f32_e32 v22, v88, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v79, v82
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v87, v91
	v_div_fmas_f32 v0, v21, v81, v0
	v_fma_f32 v81, -v80, v22, v88
	v_div_scale_f32 v87, null, v60, v60, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v84, v86, v90
	v_div_scale_f32 v84, s9, v12, v78, v12
	v_fmac_f32_e32 v22, v81, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v87
	v_fma_f32 v89, -v83, v79, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v75, v0, v78, v75
	v_div_fmas_f32 v21, v21, v91, v86
	v_mul_f32_e32 v86, v84, v82
	v_fma_f32 v0, -v80, v22, v88
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v60, v60, v67
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v14, v21, v78, v14
	v_fma_f32 v21, -v92, v86, v84
	v_div_scale_f32 v80, s10, v64, v60, v64
	v_fma_f32 v88, -v87, v81, 1.0
	v_div_fmas_f32 v0, v0, v85, v22
	v_rcp_f32_e32 v22, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v21, v82 :: v_dual_mul_f32 v21, v80, v79
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v85, s8, v65, v60, v65
	v_div_scale_f32 v88, null, v60, v60, v66
	v_div_fixup_f32 v13, v0, v78, v13
	v_fma_f32 v0, -v92, v86, v84
	v_fma_f32 v84, -v83, v21, v80
	v_mul_f32_e32 v90, v85, v81
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v22, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v21, v84, v79
	v_div_fmas_f32 v0, v0, v82, v86
	v_fma_f32 v82, -v87, v90, v85
	v_fmac_f32_e32 v22, v92, v22
	v_div_scale_f32 v84, s9, v67, v60, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v0, v78, v12
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v0, -v83, v21, v80
	v_fmac_f32_e32 v90, v82, v81
	v_mul_f32_e32 v78, v84, v22
	v_div_scale_f32 v82, null, v60, v60, v56
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v80, s11, v66, v60, v66
	v_div_fmas_f32 v0, v0, v79, v21
	v_fma_f32 v79, -v89, v78, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v60, v60, v57
	v_fma_f32 v21, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v85, v80, v91 :: v_dual_fmac_f32 v78, v79, v22
	v_rcp_f32_e32 v79, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v64, v0, v60, v64
	v_div_fmas_f32 v21, v21, v81, v90
	v_fma_f32 v81, -v88, v85, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v82, v83, 1.0
	v_fma_f32 v0, -v89, v78, v84
	v_div_scale_f32 v84, null, v60, v60, v58
	v_div_fixup_f32 v65, v21, v60, v65
	v_fmac_f32_e32 v85, v81, v91
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v81, s8, v56, v60, v56
	v_fma_f32 v21, -v86, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, s9, v57, v60, v57
	v_div_fmas_f32 v0, v0, v22, v78
	v_fma_f32 v22, -v88, v85, v80
	v_mul_f32_e32 v78, v81, v83
	v_fmac_f32_e32 v79, v21, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v88, null, v60, v60, v59
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v87, v79
	v_div_fmas_f32 v22, v22, v91, v85
	v_fma_f32 v85, -v82, v78, v81
	v_rcp_f32_e32 v91, v88
	v_div_fixup_f32 v21, v0, v60, v67
	v_fma_f32 v0, -v86, v89, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v84, v80, 1.0
	v_fmac_f32_e32 v78, v85, v83
	v_div_fixup_f32 v22, v22, v60, v66
	v_div_scale_f32 v66, s10, v58, v60, v58
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v67, null, v60, v60, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v88, v91, 1.0
	v_fma_f32 v81, -v82, v78, v81
	v_fmac_f32_e32 v89, v0, v79
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v82, v66, v80
	v_rcp_f32_e32 v90, v67
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v85, s11, v59, v60, v59
	v_div_fmas_f32 v0, v81, v83, v78
	v_fma_f32 v78, -v86, v89, v87
	v_div_scale_f32 v87, null, v60, v60, v48
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v84, v82, v66
	v_mul_f32_e32 v83, v85, v91
	v_div_fmas_f32 v78, v78, v79, v89
	v_rcp_f32_e32 v79, v87
	v_fma_f32 v86, -v67, v90, 1.0
	v_fmac_f32_e32 v82, v81, v80
	v_fma_f32 v81, -v88, v83, v85
	v_div_fixup_f32 v0, v0, v60, v56
	v_div_fixup_f32 v56, v78, v60, v57
	v_fmac_f32_e32 v90, v86, v90
	v_div_scale_f32 v86, s8, v11, v60, v11
	v_fmac_f32_e32 v83, v81, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v87, v79, 1.0
	v_div_scale_f32 v81, null, v60, v60, v49
	v_fma_f32 v57, -v84, v82, v66
	v_mul_f32_e32 v66, v86, v90
	v_fmac_f32_e32 v79, v78, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v81
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s9, v48, v60, v48
	v_div_fmas_f32 v57, v57, v80, v82
	v_fma_f32 v80, -v88, v83, v85
	v_fma_f32 v82, -v67, v66, v86
	v_div_scale_f32 v85, null, v60, v60, v50
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v81, v78, 1.0
	v_div_fmas_f32 v80, v80, v91, v83
	v_fmac_f32_e32 v66, v82, v90
	v_rcp_f32_e32 v82, v85
	v_mul_f32_e32 v83, v84, v79
	v_div_fixup_f32 v57, v57, v60, v58
	v_div_fixup_f32 v58, v80, v60, v59
	v_fma_f32 v59, -v67, v66, v86
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v67, -v87, v83, v84
	v_div_scale_f32 v80, s10, v49, v60, v49
	v_div_scale_f32 v88, null, v60, v60, v51
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v59, v59, v90, v66
	v_dual_fmac_f32 v83, v67, v79 :: v_dual_mul_f32 v66, v80, v78
	v_rcp_f32_e32 v67, v88
	v_div_scale_f32 v89, null, v60, v60, v10
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s8, v50, v60, v50
	v_div_fixup_f32 v11, v59, v60, v11
	v_fma_f32 v59, -v87, v83, v84
	v_fma_f32 v84, -v81, v66, v80
	v_rcp_f32_e32 v90, v89
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v91, -v88, v67, 1.0
	v_div_fmas_f32 v59, v59, v79, v83
	v_fmac_f32_e32 v66, v84, v78
	v_div_scale_f32 v83, s9, v51, v60, v51
	v_fma_f32 v79, -v85, v87, v86
	v_fmac_f32_e32 v67, v91, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v89, v90, 1.0
	v_div_fixup_f32 v48, v59, v60, v48
	v_fma_f32 v59, -v81, v66, v80
	v_div_scale_f32 v81, null, v60, v60, v8
	v_fmac_f32_e32 v87, v79, v82
	v_dual_mul_f32 v79, v83, v67 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v80, s11, v10, v60, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v81
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v59, v78, v66
	v_fma_f32 v66, -v85, v87, v86
	v_fma_f32 v78, -v88, v79, v83
	v_mul_f32_e32 v85, v80, v90
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v86, null, v60, v60, v9
	v_div_fmas_f32 v66, v66, v82, v87
	v_fmac_f32_e32 v79, v78, v67
	v_fma_f32 v82, -v89, v85, v80
	v_fma_f32 v87, -v81, v84, 1.0
	v_rcp_f32_e32 v78, v86
	v_div_fixup_f32 v49, v59, v60, v49
	v_div_fixup_f32 v50, v66, v60, v50
	v_fma_f32 v59, -v88, v79, v83
	v_dual_fmac_f32 v85, v82, v90 :: v_dual_fmac_f32 v84, v87, v84
	v_div_scale_f32 v66, s8, v8, v60, v8
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v36, v36, v41
	v_div_fmas_f32 v59, v59, v67, v79
	v_fma_f32 v67, -v89, v85, v80
	v_mul_f32_e32 v79, v66, v84
	v_div_scale_f32 v80, null, v36, v36, v40
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v82, -v86, v78, 1.0
	v_div_fmas_f32 v67, v67, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v81, v79, v66
	v_div_fixup_f32 v51, v59, v60, v51
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, s9, v9, v60, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v85, v84
	v_div_fixup_f32 v10, v67, v60, v10
	v_rcp_f32_e32 v67, v88
	v_mul_f32_e32 v87, v82, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v66, -v81, v79, v66
	v_div_scale_f32 v81, null, v36, v36, v43
	v_fma_f32 v59, -v86, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v88, v67, 1.0
	v_fmac_f32_e32 v87, v59, v78
	v_div_fmas_f32 v66, v66, v84, v79
	v_div_scale_f32 v59, s10, v40, v36, v40
	v_fmac_f32_e32 v67, v89, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v86, v87, v82
	v_div_scale_f32 v84, s8, v41, v36, v41
	v_fma_f32 v86, -v81, v85, 1.0
	v_div_scale_f32 v90, null, v36, v36, v42
	v_mul_f32_e32 v82, v59, v83
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, s11, v43, v36, v43
	v_mul_f32_e32 v91, v84, v67
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v87
	v_mul_f32_e32 v87, v86, v85
	v_fma_f32 v89, -v80, v82, v59
	v_fma_f32 v79, -v88, v91, v84
	v_div_fixup_f32 v8, v66, v60, v8
	v_div_fixup_f32 v9, v78, v60, v9
	v_fma_f32 v60, -v81, v87, v86
	v_div_scale_f32 v78, null, v36, v36, v32
	v_fmac_f32_e32 v82, v89, v83
	v_fmac_f32_e32 v91, v79, v67
	v_fma_f32 v66, -v90, v92, 1.0
	v_fmac_f32_e32 v87, v60, v85
	v_rcp_f32_e32 v60, v78
	v_fma_f32 v59, -v80, v82, v59
	v_fma_f32 v79, -v88, v91, v84
	v_fmac_f32_e32 v92, v66, v92
	v_div_scale_f32 v66, s9, v42, v36, v42
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v59, v83, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v80, v66, v92
	v_div_fmas_f32 v67, v79, v67, v91
	v_fma_f32 v79, -v81, v87, v86
	v_div_scale_f32 v81, null, v36, v36, v33
	v_fma_f32 v82, -v78, v60, 1.0
	v_fma_f32 v84, -v90, v80, v66
	v_div_fixup_f32 v40, v59, v36, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v60, v82, v60
	v_div_scale_f32 v82, s8, v32, v36, v32
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v87
	v_div_fixup_f32 v41, v67, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v59, v82, v60
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v67, -v81, v83, 1.0
	v_fma_f32 v66, -v90, v80, v66
	v_div_fixup_f32 v43, v79, v36, v43
	v_fma_f32 v84, -v78, v59, v82
	v_div_scale_f32 v79, null, v36, v36, v34
	v_fmac_f32_e32 v83, v67, v83
	v_div_scale_f32 v67, s10, v33, v36, v33
	v_div_fmas_f32 v66, v66, v92, v80
	v_fmac_f32_e32 v59, v84, v60
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v67, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v42, v66, v36, v42
	v_fma_f32 v66, -v78, v59, v82
	v_div_scale_f32 v84, null, v36, v36, v35
	v_fma_f32 v78, -v81, v80, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v66, v60, v59
	v_div_scale_f32 v60, null, v36, v36, v7
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v60
	v_div_scale_f32 v66, s8, v34, v36, v34
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v36, v36, v31
	v_div_fixup_f32 v32, v59, v36, v32
	v_fma_f32 v67, -v81, v80, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v60, v78, 1.0
	v_mul_f32_e32 v81, v66, v85
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v59, v86
	v_div_scale_f32 v59, s9, v35, v36, v35
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v36, v36, v30
	v_div_fmas_f32 v67, v67, v83, v80
	v_fma_f32 v80, -v79, v81, v66
	v_mul_f32_e32 v83, v59, v86
	v_div_scale_f32 v89, s10, v7, v36, v7
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v59
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v31, v36, v31
	v_div_fixup_f32 v33, v67, v36, v33
	v_fma_f32 v66, -v79, v81, v66
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v67, -v60, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v59, -v84, v83, v59
	v_fmac_f32_e32 v92, v67, v78
	v_fma_f32 v67, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s8, v30, v36, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v60, v92, v89
	v_fmac_f32_e32 v79, v67, v88
	v_div_fmas_f32 v66, v66, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v67, v80, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, null, v36, v36, v29
	v_div_fmas_f32 v59, v59, v86, v83
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v34, v66, v36, v34
	v_div_fmas_f32 v60, v60, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v67, v80
	v_rcp_f32_e32 v83, v81
	v_div_fixup_f32 v35, v59, v36, v35
	v_div_fixup_f32 v7, v60, v36, v7
	v_div_scale_f32 v60, null, v36, v36, v28
	v_fmac_f32_e32 v67, v82, v91
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, null, v36, v36, v6
	v_div_fmas_f32 v78, v78, v88, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v87, v67, v80
	v_fma_f32 v66, -v81, v83, 1.0
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v31, v78, v36, v31
	v_div_fmas_f32 v59, v59, v91, v67
	v_rcp_f32_e32 v67, v60
	v_fmac_f32_e32 v83, v66, v83
	v_div_scale_f32 v66, null, v36, v36, v4
	v_div_scale_f32 v78, null, v36, v36, v5
	v_div_scale_f32 v79, vcc_lo, v29, v36, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v66
	v_rcp_f32_e32 v82, v78
	v_div_fixup_f32 v30, v59, v36, v30
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v59, -v60, v67, 1.0
	v_mul_f32_e32 v84, v79, v83
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v59, v67
	v_div_scale_f32 v59, s8, v28, v36, v28
	v_fma_f32 v86, -v66, v80, 1.0
	v_fma_f32 v89, -v78, v82, 1.0
	v_fma_f32 v88, -v81, v84, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v59, v67
	v_dual_fmac_f32 v87, v91, v87 :: v_dual_fmac_f32 v80, v86, v80
	v_div_scale_f32 v86, s9, v4, v36, v4
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s10, v5, v36, v5
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v88, -v60, v90, v59
	v_div_scale_f32 v91, s11, v6, v36, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v86, v80 :: v_dual_mul_f32 v93, v89, v82
	v_fmac_f32_e32 v90, v88, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v81, -v66, v92, v86
	v_fma_f32 v88, -v78, v93, v89
	v_fma_f32 v59, -v60, v90, v59
	v_fma_f32 v60, -v85, v94, v91
	v_div_fmas_f32 v79, v79, v83, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v80 :: v_dual_fmac_f32 v93, v88, v82
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v94, v60, v87
	v_div_fmas_f32 v59, v59, v67, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v66, -v66, v92, v86
	v_fma_f32 v60, -v78, v93, v89
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v67, -v85, v94, v91
	v_div_fixup_f32 v29, v79, v36, v29
	v_div_fmas_f32 v66, v66, v80, v92
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v28, v59, v36, v28
	v_div_fmas_f32 v60, v60, v82, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v4, v66, v36, v4
	v_div_fmas_f32 v67, v67, v87, v94
	s_mov_b32 s8, 0xc1000000
	v_div_fixup_f32 v5, v60, v36, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v62
	v_rndne_f32_e32 v62, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v67, v36, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v52
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v61
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v61, v68
	v_rndne_f32_e32 v63, v70
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v79, v11
	v_cvt_i32_f32_e32 v80, v48
	v_cvt_i32_f32_e32 v84, v10
	v_and_b32_e32 v10, 15, v46
	v_and_b32_e32 v11, 15, v47
	v_and_b32_e32 v46, 15, v21
	v_and_b32_e32 v47, 15, v22
	v_and_b32_e32 v48, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v192
	v_and_b32_e32 v21, 16, v192
	v_lshlrev_b32_e32 v22, 4, v193
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v71
	v_rndne_f32_e32 v68, v77
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v70, v73
	v_rndne_f32_e32 v71, v74
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_cvt_i32_f32_e32 v87, v40
	v_and_b32_e32 v40, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v21
	v_xor_b32_e32 v22, v22, v27
	v_lshlrev_b32_e32 v27, 6, v192
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v88, v41
	v_cvt_i32_f32_e32 v89, v43
	v_cvt_i32_f32_e32 v90, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v24, 0x1b00, v27, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v81, v49
	v_cvt_i32_f32_e32 v82, v50
	v_cvt_i32_f32_e32 v95, v7
	v_cvt_i32_f32_e32 v96, v31
	v_cvt_i32_f32_e32 v97, v30
	v_cvt_i32_f32_e32 v98, v29
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v8
	v_cvt_i32_f32_e32 v86, v9
	v_cvt_i32_f32_e32 v91, v32
	v_cvt_i32_f32_e32 v99, v28
	v_cvt_i32_f32_e32 v100, v4
	v_cvt_i32_f32_e32 v101, v5
	v_cvt_i32_f32_e32 v102, v6
	v_and_b32_e32 v4, 15, v36
	v_and_b32_e32 v5, 15, v37
	v_and_b32_e32 v6, 15, v38
	v_and_b32_e32 v7, 15, v39
	v_and_b32_e32 v8, 15, v44
	v_and_b32_e32 v9, 15, v45
	v_and_b32_e32 v28, 15, v59
	v_and_b32_e32 v29, 15, v60
	v_and_b32_e32 v30, 15, v61
	v_and_b32_e32 v31, 15, v62
	v_and_b32_e32 v32, 15, v63
	v_and_b32_e32 v44, 15, v64
	v_and_b32_e32 v45, 15, v65
	v_and_b32_e32 v60, 15, v87
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v63, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v22, v25
	v_xad_u32 v22, v24, v194, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v78, v12
	v_cvt_i32_f32_e32 v94, v35
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v13, 15, v52
	v_and_b32_e32 v14, 15, v53
	v_and_b32_e32 v15, 15, v54
	v_and_b32_e32 v16, 15, v55
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v35, 15, v68
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v37, 15, v69
	v_and_b32_e32 v38, 15, v70
	v_and_b32_e32 v39, 15, v71
	v_and_b32_e32 v52, 15, v79
	v_and_b32_e32 v53, 15, v80
	v_and_b32_e32 v54, 15, v81
	v_and_b32_e32 v55, 15, v82
	v_and_b32_e32 v68, 15, v95
	v_and_b32_e32 v69, 15, v96
	v_and_b32_e32 v70, 15, v97
	v_and_b32_e32 v71, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v22
	ds_load_b128 v[12:15], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v22
	ds_load_b128 v[36:39], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v22
	ds_load_b128 v[52:55], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v22
	ds_load_b128 v[68:71], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v22
	ds_load_b128 v[16:19], v22 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v92, v33
	v_cvt_i32_f32_e32 v93, v34
	v_and_b32_e32 v33, 15, v66
	v_and_b32_e32 v34, 15, v67
	v_cvt_i32_f32_e32 v83, v51
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v49, 15, v56
	v_and_b32_e32 v50, 15, v57
	v_and_b32_e32 v51, 15, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v22
	ds_load_b128 v[40:43], v22 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v83
	v_and_b32_e32 v57, 15, v84
	v_and_b32_e32 v58, 15, v85
	v_and_b32_e32 v59, 15, v86
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v66, 15, v93
	v_and_b32_e32 v67, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v22
	ds_load_b128 v[56:59], v22 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v99
	v_and_b32_e32 v73, 15, v100
	v_and_b32_e32 v74, 15, v101
	v_and_b32_e32 v75, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v29, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v193
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v22
	ds_load_b128 v[72:75], v22 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s53, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s8, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v36, 4, v27
	v_lshl_or_b32 v18, v37, 4, v28
	v_lshl_or_b32 v24, v40, 4, v31
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v27, v42, 4, v33
	v_lshl_or_b32 v28, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v39, 4, v30
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v24.l
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s24
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v23, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v23.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v192
	v_lshrrev_b32_e32 v5, 2, v21
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[8:11], 0 offen
	buffer_store_b64 v[10:11], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v5, v4, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v192
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s53, 1
	s_and_b32 vcc_lo, vcc_lo, s54
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 264
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
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 264
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29928
; TotalNumSgprs: 63
; NumVgprs: 256
; ScratchSize: 264
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 63
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 264
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 66
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
