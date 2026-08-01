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
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_dual_mov_b32 v141, v0 :: v_dual_mov_b32 v206, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v141
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s5, s35, s4
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
	s_sub_i32 s75, s17, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
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
	s_load_b64 s[68:69], s[8:9], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s8, s10, s4
	s_addc_u32 s9, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[8:9], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s2
	v_add_nc_u32_e32 v0, s68, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s68, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow677
	s_load_b128 s[64:67], s[0:1], 0x40
	v_lshrrev_b32_e32 v158, 7, v141
	v_dual_mov_b32 v213, 0 :: v_dual_and_b32 v142, 15, v141
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v144, 0x7f, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v60, 14, v158
	v_or_b32_e32 v59, 12, v158
	v_or_b32_e32 v54, 10, v158
	v_or_b32_e32 v53, 8, v158
	v_or_b32_e32 v52, 6, v158
	v_or_b32_e32 v51, 4, v158
	v_or_b32_e32 v151, 2, v158
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v153, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v152, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s76, s2, s3
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s33, s[0:1], 0x58
	s_load_b32 s20, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s68, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s0
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v10, s68, v142
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
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[72:73], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[70:71], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[70:71], v[8:9]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s1, s2
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s2, s74, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s3, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s2, s33
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v8, 0xf0, v141
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v9, 5, v141
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v2, 16, v10
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s35, s3, s18
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v3, 32, v10
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v4, 48, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s3, s34, s18
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v11, 2, v8
	s_lshl_b32 s4, s3, 1
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v12, 1, v141
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v9, 32, v9
	s_or_b32 s4, s4, 1
	v_mul_lo_u32 v4, s34, v4
	v_mul_lo_u32 v3, s34, v3
	v_mul_lo_u32 v2, s34, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s5, s6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s4, s74, s4
	s_lshl_b32 s5, s17, 8
	s_mul_i32 s3, s3, s74
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v14, 28, v12
	v_add3_u32 v15, 0, v11, v9
	v_add3_u32 v9, s4, s5, v141
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v12, 1, v158
	s_lshl_b32 s3, s3, 1
	v_mul_lo_u32 v10, s34, v10
	v_add3_u32 v11, s3, s5, v141
	s_lshl_b32 s3, s7, 8
	s_mul_i32 s4, s33, s18
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v13, 6, v141
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v9, s3, v9
	v_lshl_add_u32 v16, s4, 1, v12
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v41, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_or_b32_e32 v17, 12, v13
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v4, off offset:152
	scratch_store_b32 off, v3, off offset:156
	scratch_store_b32 off, v0, off offset:284
	scratch_store_b32 off, v142, off offset:248
	scratch_store_b32 off, v2, off offset:160
	scratch_store_b32 off, v17, off offset:148
	scratch_store_b32 off, v13, off offset:140
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshlrev_b32_e32 v0, 1, v144
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v2, 1, v10
	scratch_store_b32 off, v144, off offset:252 ; 4-byte Folded Spill
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v144, 1, v9
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v9, 29, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v2, off offset:164 ; 4-byte Folded Spill
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v3, 25, v16
	v_mul_lo_u32 v2, s74, v9
	v_subrev_nc_u32_e32 v11, s3, v11
	v_or_b32_e32 v4, 8, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v3, s74, v3
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v18, 13, v16
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v166, 1, v11
	v_mad_u64_u32 v[9:10], null, v17, s20, v[1:2]
	v_mad_u64_u32 v[10:11], null, s20, v13, v[1:2]
	v_add3_u32 v2, v2, s5, v0
	v_or_b32_e32 v13, 4, v13
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v209, 0
	v_mov_b32_e32 v150, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[11:12], null, s20, v4, v[1:2]
	v_mad_u64_u32 v[12:13], null, s20, v13, v[1:2]
	v_add3_u32 v1, v3, s5, v0
	v_subrev_nc_u32_e32 v2, s3, v2
	v_add_nc_u32_e32 v3, 21, v16
	v_mul_lo_u32 v13, s74, v60
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v4, 17, v16
	v_subrev_nc_u32_e32 v1, s3, v1
	v_add_nc_u32_e32 v2, 1, v2
	v_mul_lo_u32 v3, s74, v3
	v_mov_b32_e32 v130, 0
	v_mul_lo_u32 v17, s74, v59
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:168
	scratch_store_b32 off, v151, off offset:256
	v_dual_mov_b32 v215, 0 :: v_dual_lshlrev_b32 v2, 1, v13
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s74, v18
	v_mul_lo_u32 v4, s74, v4
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v83, 0
	v_mul_lo_u32 v13, s74, v54
	v_mov_b32_e32 v132, 0
	v_add3_u32 v1, v1, s5, v0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v165, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v161, s75, 8, v0
	v_or_b32_e32 v6, 0x300, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v1, s3, v1
	v_or_b32_e32 v7, 0x3f0, v141
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v19, 0, v141
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:200
	scratch_store_b32 off, v52, off offset:264
	v_mul_lo_u32 v1, s74, v52
	v_mul_lo_u32 v18, s74, v53
	v_mov_b32_e32 v134, 0
	v_lshrrev_b32_e32 v5, 1, v141
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v162, 0, v142
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v8, 1, v8
	v_lshlrev_b32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:172
	scratch_store_b32 off, v54, off offset:272
	v_add3_u32 v2, v3, s5, v0
	v_add3_u32 v3, v4, s5, v0
	v_lshlrev_b32_e32 v4, 1, v17
	v_add_nc_u32_e32 v17, 5, v16
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s3, v2
	v_subrev_nc_u32_e32 v3, s3, v3
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v87, 0
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v5, 0x70, v5
	v_add_nc_u32_e32 v2, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:180
	scratch_store_b32 off, v51, off offset:260
	v_add_nc_u32_e32 v4, 9, v16
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v2, off offset:184 ; 4-byte Folded Spill
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v2, 1, v13
	v_mul_lo_u32 v4, s74, v4
	scratch_store_b32 off, v3, off offset:192 ; 4-byte Folded Spill
	v_mov_b32_e32 v117, 0
	v_lshlrev_b32_e32 v13, 1, v18
	v_mov_b32_e32 v125, 0
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s16, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s46, s20, 4
	s_mov_b32 s17, s16
	v_add3_u32 v3, v4, s5, v0
	v_mul_lo_u32 v4, s74, v16
	v_mul_lo_u32 v16, s74, v158
	v_mov_b32_e32 v149, 0
	s_mov_b32 s18, s16
	v_subrev_nc_u32_e32 v3, s3, v3
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	v_add_nc_u32_e32 v1, 1, v3
	scratch_store_b32 off, v2, off offset:188 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s74, v17
	v_mov_b32_e32 v212, 0
	s_mov_b32 s23, s16
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v190, v162, v5
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v192, 0, v8
	v_mov_b32_e32 v214, 0
	v_add3_u32 v2, v2, s5, v0
	s_add_i32 s5, s5, s74
	v_mov_b32_e32 v252, 0
	v_add3_u32 v0, s5, v4, v0
	v_mul_lo_u32 v4, s74, v151
	v_subrev_nc_u32_e32 v2, s3, v2
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v189, v19, v141
	v_mov_b32_e32 v216, 0
	v_subrev_nc_u32_e32 v0, s3, v0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v121, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v16
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v109, 0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:236
	scratch_store_b32 off, v141, off offset:244
	scratch_store_b32 off, v19, off offset:144
	v_add_nc_u32_e32 v0, v15, v14
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v53, off offset:268
	scratch_store_b32 off, v13, off offset:196
	scratch_store_b32 off, v158, off offset:136
	v_mul_lo_u32 v13, s74, v51
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v73, 0
	v_lshlrev_b32_e32 v1, 1, v13
	scratch_store_b32 off, v59, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v251, 0
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 1, v2
	scratch_store_b32 off, v60, off offset:280 ; 4-byte Folded Spill
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v1, 1, v4
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v45, 0
	scratch_store_b32 off, v1, off offset:220 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v222, 0
	v_mov_b32_e32 v226, 0
	v_mov_b32_e32 v224, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v208, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v2, s17
	v_mov_b32_e32 v4, s19
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_add_u32 s44, s35, s74
	s_and_b32 s41, s15, 0xffff
	s_lshl_b32 s45, s74, 2
	s_lshl_b32 s47, s74, 5
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s10
	s_mov_b32 s29, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s40, s14
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s15, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_clause 0x19                           ; 104-byte Folded Spill
	scratch_store_b32 off, v206, off offset:104
	scratch_store_b32 off, v157, off offset:100
	scratch_store_b32 off, v42, off offset:96
	scratch_store_b32 off, v72, off offset:92
	scratch_store_b32 off, v102, off offset:88
	scratch_store_b32 off, v43, off offset:84
	scratch_store_b32 off, v44, off offset:80
	scratch_store_b32 off, v48, off offset:76
	scratch_store_b32 off, v78, off offset:72
	scratch_store_b32 off, v93, off offset:68
	scratch_store_b32 off, v41, off offset:64
	scratch_store_b32 off, v50, off offset:60
	scratch_store_b32 off, v57, off offset:56
	scratch_store_b32 off, v83, off offset:52
	scratch_store_b32 off, v94, off offset:48
	scratch_store_b32 off, v117, off offset:44
	scratch_store_b32 off, v55, off offset:40
	scratch_store_b32 off, v98, off offset:36
	scratch_store_b32 off, v58, off offset:32
	scratch_store_b32 off, v96, off offset:28
	scratch_store_b32 off, v56, off offset:24
	scratch_store_b32 off, v97, off offset:20
	scratch_store_b32 off, v46, off offset:16
	scratch_store_b32 off, v45, off offset:12
	scratch_store_b32 off, v49, off offset:8
	scratch_store_b32 off, v47, off offset:4
	v_dual_mov_b32 v72, v203 :: v_dual_add_nc_u32 v21, s68, v9
	v_add_nc_u32_e32 v23, s68, v11
	v_add_nc_u32_e32 v22, s68, v12
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v12, s46, v12
	s_add_i32 s34, s34, -1
	v_mov_b32_e32 v203, v143
	scratch_load_b32 v20, off, off offset:172 ; 4-byte Folded Reload
	v_mov_b32_e32 v143, v119
	v_dual_mov_b32 v119, v134 :: v_dual_mov_b32 v134, v104
	v_mov_b32_e32 v104, v91
	v_dual_mov_b32 v91, v63 :: v_dual_mov_b32 v96, v218
	v_mov_b32_e32 v97, v212
	v_add_nc_u32_e32 v9, s46, v9
	v_add_nc_u32_e32 v11, s46, v11
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s11, s33, v0
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add3_u32 v194, v20, s16, v161
	s_and_b32 s11, s76, s11
	v_cndmask_b32_e64 v21, 0x80000000, v21, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v20, s35, v194
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s15, v0
	v_add_nc_u32_e32 v13, 4, v0
	v_cmp_gt_i32_e64 s13, s33, v0
	v_add_nc_u32_e32 v0, 8, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s12, s33, v13
	scratch_load_b32 v13, off, off offset:220 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s14, s33, v0
	v_add_nc_u32_e32 v0, s15, v158
	s_and_b32 s13, s76, s13
	s_and_b32 s11, s76, s12
	s_add_i32 s15, s15, 16
	v_cndmask_b32_e64 v22, 0x80000000, v22, s11
	v_cmp_gt_i32_e64 s10, s33, v0
	s_and_b32 s11, s76, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v23, 0x80000000, v23, s11
	s_waitcnt vmcnt(0)
	v_add3_u32 v199, v13, s16, v161
	v_add_nc_u32_e32 v13, 2, v0
	v_add_nc_u32_e32 v14, s35, v199
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s7, s33, v13
	scratch_load_b32 v13, off, off offset:212 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v14, 0x80000000, v14, s7
	s_waitcnt vmcnt(0)
	v_add3_u32 v198, v13, s16, v161
	v_add_nc_u32_e32 v13, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v15, s35, v198
	v_cmp_gt_i32_e64 s8, s33, v13
	scratch_load_b32 v13, off, off offset:204 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v15, 0x80000000, v15, s8
	s_waitcnt vmcnt(0)
	v_add3_u32 v197, v13, s16, v161
	v_add_nc_u32_e32 v13, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v16, s35, v197
	v_cmp_gt_i32_e64 s9, s33, v13
	scratch_load_b32 v13, off, off offset:196 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v16, 0x80000000, v16, s9
	s_waitcnt vmcnt(0)
	v_add3_u32 v196, v13, s16, v161
	v_add_nc_u32_e32 v13, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v17, s35, v196
	v_cmp_gt_i32_e64 s6, s33, v13
	scratch_load_b32 v13, off, off offset:188 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	s_waitcnt vmcnt(0)
	v_add3_u32 v195, v13, s16, v161
	v_add_nc_u32_e32 v13, 10, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v18, s35, v195
	v_cmp_gt_i32_e64 s3, s33, v13
	scratch_load_b32 v13, off, off offset:180 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	s_waitcnt vmcnt(0)
	v_add3_u32 v193, v13, s16, v161
	v_add_nc_u32_e32 v13, 12, v0
	v_add_nc_u32_e32 v0, 14, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v19, s35, v193
	v_cmp_gt_i32_e64 s4, s33, v13
	scratch_load_b32 v13, off, off offset:228 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s5, s33, v0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	s_waitcnt vmcnt(0)
	v_add3_u32 v200, v13, s16, v161
	v_add_nc_u32_e32 v13, s35, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v13, s10
	v_add_nc_u32_e32 v13, s68, v10
	v_add_nc_u32_e32 v10, s46, v10
	v_cndmask_b32_e64 v13, 0x80000000, v13, s13
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0x7
	buffer_load_u16 v31, v0, s[28:31], 0 offen
	buffer_load_u16 v32, v14, s[28:31], 0 offen
	buffer_load_u16 v33, v15, s[28:31], 0 offen
	buffer_load_u16 v34, v16, s[28:31], 0 offen
	buffer_load_u16 v35, v17, s[28:31], 0 offen
	buffer_load_u16 v36, v18, s[28:31], 0 offen
	buffer_load_u16 v37, v19, s[28:31], 0 offen
	buffer_load_u16 v38, v20, s[28:31], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v0, v13, s[24:27], 0 offen
	buffer_load_u8 v13, v21, s[24:27], 0 offen
	buffer_load_u8 v14, v22, s[24:27], 0 offen
	buffer_load_u8 v15, v23, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v16, v0
	ds_store_b8 v16, v14 offset:256
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v13
	ds_store_b8 v16, v15 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v162 offset:320
	ds_load_u8 v13, v162 offset:256
	ds_load_u8 v17, v162 offset:336
	ds_load_u8 v18, v162 offset:272
	ds_load_u8 v221, v162 offset:352
	ds_load_u8 v223, v162 offset:288
	ds_load_u8 v227, v162 offset:368
	ds_load_u8 v228, v162 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v0, 0xc0c0004
	ds_load_u8 v14, v162 offset:448
	ds_load_u8 v15, v162 offset:384
	ds_load_u8 v0, v162 offset:464
	ds_load_u8 v19, v162 offset:400
	ds_load_u8 v225, v162 offset:480
	ds_load_u8 v232, v162 offset:416
	ds_load_u8 v229, v162 offset:496
	ds_load_u8 v230, v162 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v162 offset:64
	ds_load_u8 v16, v162
	ds_load_u8 v20, v162 offset:80
	ds_load_u8 v236, v162 offset:96
	ds_load_u8 v231, v162 offset:112
	ds_load_u8 v23, v162 offset:16
	ds_load_u8 v245, v162 offset:32
	ds_load_u8 v233, v162 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v18, v0, 16, v17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v162 offset:192
	ds_load_u8 v21, v162 offset:128
	ds_load_u8 v30, v162 offset:208
	ds_load_u8 v160, v162 offset:144
	ds_load_u8 v246, v162 offset:224
	ds_load_u8 v247, v162 offset:160
	ds_load_u8 v234, v162 offset:240
	ds_load_u8 v235, v162 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v23, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v21, v16, 0xc0c0004
	scratch_load_b32 v21, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v237, v21
	ds_load_u8 v238, v162 offset:944
	ds_load_u8 v42, v162 offset:832
	ds_load_u8 v43, v162 offset:768
	ds_load_u8 v168, v162 offset:848
	ds_load_u8 v169, v162 offset:784
	ds_load_u8 v25, v162 offset:864
	ds_load_u8 v26, v162 offset:800
	ds_load_u8 v243, v162 offset:880
	ds_load_u8 v244, v162 offset:816
	ds_load_u8 v44, v162 offset:704
	ds_load_u8 v45, v162 offset:640
	ds_load_u8 v170, v162 offset:720
	ds_load_u8 v171, v162 offset:656
	ds_load_u8 v27, v162 offset:736
	ds_load_u8 v28, v162 offset:672
	ds_load_u8 v248, v162 offset:752
	ds_load_u8 v249, v162 offset:688
	ds_load_u8 v46, v162 offset:576
	ds_load_u8 v47, v162 offset:512
	ds_load_u8 v172, v162 offset:592
	ds_load_u8 v173, v162 offset:528
	ds_load_u8 v21, v162 offset:608
	ds_load_u8 v29, v162 offset:544
	ds_load_u8 v254, v162 offset:624
	ds_load_u8 v255, v162 offset:560
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v162 offset:960
	ds_load_u8 v16, v162 offset:896
	ds_load_u8 v164, v162 offset:976
	ds_load_u8 v167, v162 offset:912
	ds_load_u8 v22, v162 offset:992
	ds_load_u8 v24, v162 offset:928
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v189, v31
	ds_store_b16 v189, v32 offset:512
	ds_store_b16 v189, v33 offset:1024
	ds_store_b16 v189, v34 offset:1536
	ds_store_b16 v189, v35 offset:2048
	ds_store_b16 v189, v36 offset:2560
	ds_store_b16 v189, v37 offset:3072
	ds_store_b16 v189, v38 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v31, v190 offset:1280
	ds_load_u8 v32, v190 offset:1024
	ds_load_u8 v49, v190 offset:1920
	ds_load_u8 v50, v190 offset:1664
	ds_load_u8 v51, v190 offset:1408
	ds_load_u8 v52, v190 offset:1152
	ds_load_u8 v63, v190 offset:2176
	v_perm_b32 v20, v160, v30, 0xc0c0004
	v_perm_b32 v0, v169, v168, 0xc0c0004
	v_perm_b32 v30, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v17, v20, 16, v19
	v_perm_b32 v23, v173, v172, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v21, v29, v21, 0xc0c0004
	v_perm_b32 v19, v167, v164, 0xc0c0004
	v_mov_b32_e32 v164, v165
	v_perm_b32 v22, v24, v22, 0xc0c0004
	v_mov_b32_e32 v165, v147
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v190 offset:1792
	ds_load_u8 v33, v190 offset:1536
	v_lshl_or_b32 v20, v19, 16, v0
	v_lshl_or_b32 v19, v30, 16, v23
	v_perm_b32 v23, v232, v225, 0xc0c0004
	v_mov_b32_e32 v147, v131
	v_mov_b32_e32 v131, v108
	v_mov_b32_e32 v108, v92
	v_mov_b32_e32 v92, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v190 offset:256
	ds_load_u8 v34, v190
	ds_load_u8 v53, v190 offset:896
	ds_load_u8 v54, v190 offset:640
	ds_load_u8 v55, v190 offset:384
	ds_load_u8 v56, v190 offset:128
	v_lshl_or_b32 v41, v32, 16, v31
	v_perm_b32 v31, v43, v42, 0xc0c0004
	v_perm_b32 v32, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v16, v15, 16, v31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:768
	ds_load_u8 v35, v190 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v34, 16, v33
	v_perm_b32 v33, v45, v44, 0xc0c0004
	v_lshl_or_b32 v15, v33, 16, v32
	ds_load_u8 v31, v190 offset:3328
	ds_load_u8 v32, v190 offset:3072
	ds_load_u8 v42, v190 offset:3968
	ds_load_u8 v43, v190 offset:3712
	ds_load_u8 v44, v190 offset:3456
	ds_load_u8 v45, v190 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v190 offset:3840
	ds_load_u8 v33, v190 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v190 offset:2304
	ds_load_u8 v34, v190 offset:2048
	ds_load_u8 v46, v190 offset:2944
	ds_load_u8 v57, v190 offset:2688
	ds_load_u8 v58, v190 offset:2432
	v_lshl_or_b32 v48, v32, 16, v31
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:2816
	ds_load_u8 v35, v190 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[31:38], v[40:41], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[47:48], v[15:16], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v31
	v_cvt_f32_i32_e32 v141, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v207, v33
	v_cvt_f32_i32_e32 v206, v34
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v31, v52, v51, 0xc0c0004
	v_perm_b32 v32, v50, v49, 0xc0c0004
	v_perm_b32 v33, v56, v55, 0xc0c0004
	v_perm_b32 v34, v54, v53, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v83, v35
	v_cvt_f32_i32_e32 v148, v36
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v50, v32, 16, v31
	v_perm_b32 v31, v45, v44, 0xc0c0004
	v_lshl_or_b32 v49, v34, 16, v33
	v_perm_b32 v32, v43, v42, 0xc0c0004
	v_perm_b32 v33, v63, v58, 0xc0c0004
	v_perm_b32 v34, v57, v46, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v93, v37
	v_cvt_f32_i32_e32 v201, v38
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v52, v32, 16, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[31:38], v[49:50], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[51:52], v[15:16], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v94, v31
	v_cvt_f32_i32_e32 v31, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v32
	scratch_store_b32 off, v31, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v31, v37
	scratch_store_b32 off, v31, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v31, v38
	scratch_store_b32 off, v31, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v31, v33
	scratch_store_b32 off, v31, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v31, v34
	scratch_store_b32 off, v31, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v31, v35
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v31, off offset:120 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[30:37], v[40:41], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[47:48], v[19:20], v[30:37] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v253, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v151, v31
	v_cvt_f32_i32_e32 v158, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v157, v33
	v_cvt_f32_i32_e32 v242, v34
	v_cvt_f32_i32_e32 v241, v35
	v_cvt_f32_i32_e32 v240, v36
	v_cvt_f32_i32_e32 v239, v37
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[30:37], v[49:50], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[51:52], v[19:20], v[30:37] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v78, v30
	v_cvt_f32_i32_e32 v220, v31
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v30, v245, v236, 0xc0c0004
	v_perm_b32 v31, v247, v246, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v223, v221, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v98, v35
	v_cvt_f32_i32_e32 v117, v36
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v167, v31, 16, v30
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v219, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v168, v23, 16, v0
	v_perm_b32 v0, v26, v25, 0xc0c0004
	v_perm_b32 v23, v28, v27, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v218, v33
	v_cvt_f32_i32_e32 v212, v34
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[29:36], v[40:41], v[167:168], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v22, 16, v0
	v_lshl_or_b32 v43, v23, 16, v21
	v_perm_b32 v0, v228, v227, 0xc0c0004
	v_perm_b32 v23, v230, v229, 0xc0c0004
	v_perm_b32 v27, v233, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[29:36], v[47:48], v[43:44], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v23, 16, v0
	v_perm_b32 v0, v255, v254, 0xc0c0004
	v_perm_b32 v23, v249, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v21, v29
	v_cvt_f32_i32_e32 v29, v31
	v_cvt_f32_i32_e32 v28, v32
	v_cvt_f32_i32_e32 v26, v33
	v_cvt_f32_i32_e32 v25, v34
	v_cvt_f32_i32_e32 v24, v35
	v_cvt_f32_i32_e32 v22, v36
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[49:50], v[167:168], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[51:52], v[43:44], v[31:38] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v236, v31
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v31, v235, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v225, v36
	v_cvt_f32_i32_e32 v223, v37
	v_cvt_f32_i32_e32 v221, v38
	v_cvt_f32_i32_e32 v247, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v45, v31, 16, v27
	v_perm_b32 v27, v244, v243, 0xc0c0004
	v_perm_b32 v31, v238, v237, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v246, v33
	v_cvt_f32_i32_e32 v245, v34
	v_cvt_f32_i32_e32 v232, v35
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v243, v23, 16, v0
	v_lshl_or_b32 v244, v31, 16, v27
	v_wmma_i32_16x16x16_iu4 v[31:38], v[40:41], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v27, s44, v198
	v_add_nc_u32_e32 v23, s44, v199
	v_add_nc_u32_e32 v0, s44, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[47:48], v[243:244], v[31:38] neg_lo:[1,1,0]
	v_cndmask_b32_e64 v27, 0x80000000, v27, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0x80000000, v23, s7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v178, v31
	v_cvt_f32_i32_e32 v177, v32
	v_cvt_f32_i32_e32 v176, v33
	v_cvt_f32_i32_e32 v175, v34
	v_cvt_f32_i32_e32 v172, v35
	v_cvt_f32_i32_e32 v171, v36
	v_cvt_f32_i32_e32 v170, v37
	v_cvt_f32_i32_e32 v169, v38
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[49:50], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[51:52], v[243:244], v[31:38] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v235, v32
	scratch_load_b32 v32, off, off offset:224 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v231, v31
	v_add_nc_u32_e32 v31, s44, v197
	v_cvt_f32_i32_e32 v234, v33
	v_cvt_f32_i32_e32 v233, v34
	scratch_load_b32 v34, off, off offset:192 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v230, v35
	v_cndmask_b32_e64 v31, 0x80000000, v31, s9
	v_cvt_f32_i32_e32 v229, v36
	v_cvt_f32_i32_e32 v228, v37
	v_cvt_f32_i32_e32 v227, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v32, s16, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v32, 0x80000000, v32, s10
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v32, v32, s[28:31], 0 offen
	buffer_load_u8 v31, v31, s[28:31], 0 offen
	buffer_load_u8 v27, v27, s[28:31], 0 offen
	buffer_load_u8 v23, v23, s[28:31], 0 offen
	buffer_load_u8 v33, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v34, s16, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s6
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v32.l
	scratch_load_b32 v32, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v0.l, v33.l, v0.l
	v_add_nc_u32_e32 v33, s44, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s16, v32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s7
	buffer_load_u8 v32, v32, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.h, 8, v32.l
	v_add_nc_u32_e32 v32, s44, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v0.h, v23.l, v0.h
	scratch_load_b32 v23, off, off offset:208 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s16, v23
	v_cndmask_b32_e64 v23, 0x80000000, v23, s8
	buffer_load_u8 v23, v23, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v23.l, 8, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v23.l, v27.l, v23.l
	scratch_load_b32 v27, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s16, v27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s9
	buffer_load_u8 v27, v27, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v23.h, 8, v27.l
	v_add_nc_u32_e32 v27, s44, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v23.h, v31.l, v23.h
	v_add_nc_u32_e32 v31, s44, v195
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	s_clause 0x4
	buffer_load_u8 v34, v34, s[28:31], 0 offen
	buffer_load_u8 v33, v33, s[28:31], 0 offen
	buffer_load_u8 v32, v32, s[28:31], 0 offen
	buffer_load_u8 v31, v31, s[28:31], 0 offen
	buffer_load_u8 v35, v27, s[28:31], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v27.l, 8, v34.l
	scratch_load_b32 v34, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v27.l, v35.l, v27.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	buffer_load_u8 v34, v34, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v27.h, 8, v34.l
	v_or_b16 v27.h, v31.l, v27.h
	scratch_load_b32 v31, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s4
	buffer_load_u8 v31, v31, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v31.l, 8, v31.l
	v_or_b16 v31.l, v32.l, v31.l
	scratch_load_b32 v32, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s16, v32
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s16, s16, s47
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v32, v32, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v31.h, 8, v32.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v31.h, v33.l, v31.h
	ds_store_b16 v189, v0
	ds_store_b16_d16_hi v189, v0 offset:512
	ds_store_b16 v189, v23 offset:1024
	ds_store_b16_d16_hi v189, v23 offset:1536
	ds_store_b16 v189, v27 offset:2048
	ds_store_b16_d16_hi v189, v27 offset:2560
	ds_store_b16 v189, v31 offset:3072
	ds_store_b16_d16_hi v189, v31 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v190 offset:1280
	ds_load_u8 v23, v190 offset:1024
	ds_load_u8 v27, v190 offset:1920
	ds_load_u8 v42, v190 offset:1664
	ds_load_u8 v47, v190 offset:1408
	ds_load_u8 v48, v190 offset:1152
	ds_load_u8 v66, v190 offset:2176
	scratch_load_b32 v160, off, off         ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v23, v0, 0xc0c0004
	ds_load_u8 v23, v190 offset:1792
	ds_load_u8 v31, v190 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v31, v23, 0xc0c0004
	ds_load_u8 v31, v190 offset:256
	ds_load_u8 v32, v190
	ds_load_u8 v49, v190 offset:896
	ds_load_u8 v50, v190 offset:640
	ds_load_u8 v51, v190 offset:384
	ds_load_u8 v52, v190 offset:128
	v_lshl_or_b32 v41, v23, 16, v0
	ds_load_u8 v0, v190 offset:3328
	ds_load_u8 v23, v190 offset:3072
	ds_load_u8 v53, v190 offset:3968
	ds_load_u8 v54, v190 offset:3712
	ds_load_u8 v55, v190 offset:3456
	ds_load_u8 v56, v190 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v190 offset:768
	ds_load_u8 v33, v190 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v23, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v32, 16, v31
	ds_load_u8 v23, v190 offset:3840
	ds_load_u8 v31, v190 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v31, v23, 0xc0c0004
	ds_load_u8 v31, v190 offset:2304
	ds_load_u8 v32, v190 offset:2048
	ds_load_u8 v57, v190 offset:2944
	ds_load_u8 v58, v190 offset:2688
	ds_load_u8 v65, v190 offset:2432
	v_lshl_or_b32 v249, v23, 16, v0
	v_perm_b32 v0, v48, v47, 0xc0c0004
	v_perm_b32 v23, v42, v27, 0xc0c0004
	v_perm_b32 v27, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v64, v23, 16, v0
	v_perm_b32 v0, v56, v55, 0xc0c0004
	v_perm_b32 v23, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v190 offset:2816
	ds_load_u8 v33, v190 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v248, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[40:41], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[248:249], v[15:16], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v39, v31
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v31, v50, v49, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v163, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v188, v33
	v_cvt_f32_i32_e32 v187, v34
	v_cvt_f32_i32_e32 v182, v35
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v63, v31, 16, v27
	v_perm_b32 v27, v66, v65, 0xc0c0004
	v_perm_b32 v31, v58, v57, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v36
	v_cvt_f32_i32_e32 v180, v37
	v_cvt_f32_i32_e32 v179, v38
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v66, v23, 16, v0
	v_lshl_or_b32 v65, v31, 16, v27
	v_wmma_i32_16x16x16_iu4 v[31:38], v[63:64], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[51:58], v[40:41], v[167:168], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[65:66], v[15:16], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[51:58], v[248:249], v[43:44], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v174, v31
	v_cvt_f32_i32_e32 v13, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v14, v37
	v_cvt_f32_i32_e32 v15, v38
	v_cvt_f32_i32_e32 v197, v32
	v_cvt_f32_i32_e32 v196, v33
	v_cvt_f32_i32_e32 v193, v34
	v_cvt_f32_i32_e32 v16, v35
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[31:38], v[40:41], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v50, v54
	v_cvt_f32_i32_e32 v191, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[31:38], v[248:249], v[19:20], v[31:38] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v49, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v48, v32
	v_cvt_f32_i32_e32 v47, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v34
	v_cvt_f32_i32_e32 v186, v35
	v_cvt_f32_i32_e32 v185, v36
	v_cvt_f32_i32_e32 v184, v37
	v_cvt_f32_i32_e32 v183, v38
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[31:38], v[63:64], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[65:66], v[19:20], v[31:38] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v199, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v36
	v_cvt_f32_i32_e32 v18, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v38
	v_cvt_f32_i32_e32 v238, v32
	v_cvt_f32_i32_e32 v237, v33
	v_cvt_f32_i32_e32 v38, v51
	v_cvt_f32_i32_e32 v37, v52
	v_cvt_f32_i32_e32 v36, v53
	v_cvt_f32_i32_e32 v33, v55
	v_cvt_f32_i32_e32 v32, v56
	v_cvt_f32_i32_e32 v31, v57
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[63:64], v[167:168], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v200, v34
	v_cvt_f32_i32_e32 v20, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[65:66], v[43:44], v[51:58] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v254, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v27, v56
	v_cvt_f32_i32_e32 v194, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v195, v58
	v_cvt_f32_i32_e32 v0, v52
	v_cvt_f32_i32_e32 v23, v53
	v_cvt_f32_i32_e32 v255, v54
	v_cvt_f32_i32_e32 v198, v55
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[40:41], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[248:249], v[243:244], v[51:58] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v43, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v52
	v_cvt_f32_i32_e32 v59, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v54
	v_cvt_f32_i32_e32 v41, v55
	v_cvt_f32_i32_e32 v40, v56
	v_cvt_f32_i32_e32 v35, v57
	v_cvt_f32_i32_e32 v34, v58
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[63:64], v[45:46], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:164
	scratch_load_b32 v46, off, off offset:160
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[65:66], v[243:244], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v65, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v51, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v168, v52
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v52, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v243, v56
	v_cvt_f32_i32_e32 v244, v57
	v_cvt_f32_i32_e32 v248, v58
	v_cvt_f32_i32_e32 v167, v53
	v_cvt_f32_i32_e32 v205, v54
	v_cvt_f32_i32_e32 v249, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v45, s17, v45
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s17, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s17, v51
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s17, v52
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s17, s17, 2
	s_cmp_lg_u32 s34, 0
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	s_clause 0x3
	buffer_load_u16 v45, v45, s[36:39], 0 offen
	buffer_load_u16 v46, v46, s[36:39], 0 offen
	buffer_load_u16 v63, v51, s[36:39], 0 offen
	buffer_load_u16 v64, v52, s[36:39], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v51, v166, s[40:43], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v66, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v166, s45, v166
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v173, 16, v45
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v173, v142
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v192
	ds_load_b128 v[55:58], v192 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v159, v45, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v173, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v45, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v173, v207
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v45, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v173, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v45, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v45, 16, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v45, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v46, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v45, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v115, v46, v52 :: v_dual_mul_f32 v46, v45, v158
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v206, off, off offset:104
	scratch_load_b32 v158, off, off offset:136
	v_fmac_f32_e32 v123, v46, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v45, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v46, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v46, 16, v63
	v_mov_b32_e32 v63, v91
	v_dual_mov_b32 v91, v104 :: v_dual_mov_b32 v104, v134
	v_dual_mov_b32 v134, v119 :: v_dual_mul_f32 v21, v46, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v46, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v46, v26
	v_mul_f32_e32 v24, v46, v24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v250, v21, v51 :: v_dual_mul_f32 v21, v46, v30
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v164, v22, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v63, v26, v55 :: v_dual_fmac_f32 v160, v24, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v24, v46, v198 :: v_dual_fmac_f32 v251, v21, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v46, v29
	scratch_store_b32 off, v160, off        ; 4-byte Folded Spill
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v99, v21, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v46, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v252, v21, v54 :: v_dual_lshlrev_b32 v21, 16, v64
	v_dual_mov_b32 v64, v92 :: v_dual_mul_f32 v25, v46, v25
	v_mov_b32_e32 v92, v108
	v_mov_b32_e32 v108, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v21, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v222, v28, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v21, v177
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v28, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v21, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v226, v28, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v28, v21, v175 :: v_dual_mov_b32 v119, v143
	v_mov_b32_e32 v143, v203
	v_mov_b32_e32 v203, v72
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v224, v28, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v28, v173, v83 :: v_dual_mov_b32 v131, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v125, v28, v55 :: v_dual_mul_f32 v28, v173, v148
	v_dual_fmac_f32 v129, v28, v56 :: v_dual_mul_f32 v28, v173, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v28, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v173, v201
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v28, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v45, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v28, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v45, v241
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v28, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v45, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v89, v28, v57 :: v_dual_mul_f32 v28, v45, v239
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v172
	v_mov_b32_e32 v147, v165
	v_dual_mov_b32 v165, v164 :: v_dual_fmac_f32 v64, v25, v56
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v28, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v214, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v22, v21, v171 :: v_dual_mul_f32 v25, v243, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v26, v244, v21 :: v_dual_fmac_f32 v215, v22, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v169
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v216, v22, v58
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[51:54], v192 offset:512
	ds_load_b128 v[55:58], v192 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v94, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v153, v22, v51 :: v_dual_mul_f32 v22, v173, v102
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v157, off, off offset:100
	scratch_load_b32 v72, off, off offset:92
	scratch_load_b32 v102, off, off offset:88
	v_fmac_f32_e32 v124, v22, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v22, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v173, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v22, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v22, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v173, v22
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v22, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v78, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v145, v22, v51 :: v_dual_mul_f32 v22, v45, v220
	v_dual_fmac_f32 v79, v22, v52 :: v_dual_mul_f32 v22, v45, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v22, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v45, v218
	v_dual_mov_b32 v218, v96 :: v_dual_fmac_f32 v81, v22, v54
	v_mul_f32_e32 v22, v236, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v22, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v46, v247
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v217, v22, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v46, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v22, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v46, v245
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v22, v54 :: v_dual_mul_f32 v22, v231, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v22, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v235
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v157, v22, v52 :: v_dual_mul_f32 v22, v21, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v211, v22, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v233
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v213, v22, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v22, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v173, v22
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v22, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v22, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v22, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v22, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v147, v22, v58 :: v_dual_mul_f32 v22, v45, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v98, v45
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v143, v22, v56 :: v_dual_mul_f32 v22, v117, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v22, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v45
	v_dual_mov_b32 v212, v97 :: v_dual_fmac_f32 v139, v22, v58
	v_mul_f32_e32 v22, v46, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v210, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v225, v46
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v22, v56 :: v_dual_mul_f32 v22, v223, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v221, v46
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v22, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v206, v22, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v229, v21
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v131, v22, v56 :: v_dual_mul_f32 v22, v228, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v22, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v227, v21
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v127, v22, v58
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v22, v144, s[40:43], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v144, s45, v144
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v66, v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v192
	ds_load_b128 v[55:58], v192 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v173, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v22, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v173, v163
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v22, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v173, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v121, v22, v53 :: v_dual_mul_f32 v22, v173, v187
	v_fmac_f32_e32 v118, v22, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v45, v49
	scratch_load_b32 v49, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v109, v22, v51 :: v_dual_mul_f32 v22, v45, v48
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v48, off, off offset:76
	scratch_load_b32 v78, off, off offset:72
	scratch_load_b32 v93, off, off offset:68
	v_fmac_f32_e32 v108, v22, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v45, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v95, v22, v53 :: v_dual_mul_f32 v22, v45, v42
	scratch_load_b32 v42, off, off offset:96 ; 4-byte Folded Reload
	v_fmac_f32_e32 v107, v22, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v22, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v73, v22, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v72, v22, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v50
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v50, off, off offset:60
	scratch_load_b32 v83, off, off offset:52
	scratch_load_b32 v94, off, off offset:48
	scratch_load_b32 v117, off, off offset:44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v71, v22, v54 :: v_dual_mul_f32 v22, v21, v43
	scratch_load_b32 v43, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v50, v22, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v21, v44
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:80
	scratch_load_b32 v47, off, off offset:4
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v47, v22, v52 :: v_dual_mul_f32 v22, v21, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v22, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v21, v60
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v49, v22, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v173, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v117, v22, v55 :: v_dual_mul_f32 v22, v173, v181
	v_fmac_f32_e32 v116, v22, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v173, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v22, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v173, v179
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v111, v22, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v45, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v102, v22, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v45, v185
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v101, v22, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v45, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v87, v22, v57 :: v_dual_mul_f32 v22, v45, v183
	v_fmac_f32_e32 v94, v22, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v22, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v22, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v83, v22, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v46, v191
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v78, v22, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v21, v41
	scratch_load_b32 v41, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v22, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v21, v40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:40
	scratch_load_b32 v96, off, off offset:28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v218, v22, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v21, v35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:24
	scratch_load_b32 v97, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v212, v22, v57
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:56
	scratch_load_b32 v98, off, off offset:36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v21, v34
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[28:31], v192 offset:512
	ds_load_b128 v[32:35], v192 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v209, v22, v58
	scratch_load_b32 v58, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v174, v173
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v138, v25, v33
	v_fmac_f32_e32 v120, v26, v34
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v41, v22, v28 :: v_dual_mul_f32 v22, v173, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v103, v22, v29 :: v_dual_mul_f32 v22, v173, v196
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v57, v0, v29 :: v_dual_fmac_f32 v98, v22, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v173, v193
	v_dual_mul_f32 v0, v46, v23 :: v_dual_mul_f32 v23, v195, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v22, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v199, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v56, v0, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v69, v23, v35 :: v_dual_fmac_f32 v42, v22, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v22, v45, v238 :: v_dual_fmac_f32 v55, v0, v31
	v_mul_f32_e32 v0, v65, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v22, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v22, v45, v237 :: v_dual_fmac_f32 v61, v0, v28
	v_mul_f32_e32 v0, v21, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v82, v22, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v45, v200
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v62, v0, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v21, v167
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v22, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v254, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v67, v0, v30 :: v_dual_mul_f32 v0, v21, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v22, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v194, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v0, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v173
	v_mul_f32_e32 v13, v14, v173
	v_dual_mul_f32 v14, v15, v173 :: v_dual_mul_f32 v15, v173, v16
	v_mul_f32_e32 v16, v17, v45
	v_mul_f32_e32 v17, v18, v45
	v_dual_mul_f32 v18, v19, v45 :: v_dual_mul_f32 v19, v45, v20
	scratch_load_b32 v45, off, off offset:12 ; 4-byte Folded Reload
	v_mul_f32_e32 v20, v27, v46
	scratch_load_b32 v46, off, off offset:16 ; 4-byte Folded Reload
	v_mul_f32_e32 v27, v248, v21
	v_mul_f32_e32 v21, v21, v249
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v97, v15, v32 :: v_dual_fmac_f32 v204, v0, v33
	v_dual_fmac_f32 v203, v13, v34 :: v_dual_fmac_f32 v202, v14, v35
	v_dual_fmac_f32 v155, v16, v33 :: v_dual_fmac_f32 v154, v17, v34
	v_dual_fmac_f32 v76, v18, v35 :: v_dual_fmac_f32 v43, v20, v33
	v_fmac_f32_e32 v44, v22, v34
	v_dual_fmac_f32 v208, v21, v32 :: v_dual_fmac_f32 v137, v27, v35
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v45, v24, v32
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v46, v19, v32
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v5, off, off offset:284
	scratch_load_b32 v141, off, off offset:244
	scratch_load_b32 v142, off, off offset:248
	scratch_load_b32 v144, off, off offset:252
	scratch_load_b32 v151, off, off offset:256
	scratch_load_b32 v51, off, off offset:260
	scratch_load_b32 v52, off, off offset:264
	scratch_load_b32 v53, off, off offset:268
	scratch_load_b32 v54, off, off offset:272
	scratch_load_b32 v59, off, off offset:276
	scratch_load_b32 v60, off, off offset:280
	v_mov_b32_e32 v148, v159
.LBB0_7:                                ; %Flow678
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v158
	v_or_b32_e32 v2, 60, v158
	v_or_b32_e32 v4, 58, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v200, 0xbfb8aa3b, v116
	v_mul_f32_e32 v194, 0xbfb8aa3b, v97
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s0
	v_add_co_u32 v2, s1, s68, v2
	v_add_co_ci_u32_e64 v3, null, s69, 0, s1
	v_add_co_u32 v7, s1, s68, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v158
	v_or_b32_e32 v4, 52, v158
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s5, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s5
	v_add_co_u32 v2, s5, s68, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[7:8]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 50, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s9, s68, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s9
	v_add_co_u32 v7, s9, s68, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[70:71], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s69, 0, s9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 46, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[70:71], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s13, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s13
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 44, v158
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s13, s68, v3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 42, v158
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s13
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[72:73], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s17, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v8, null, s69, 0, s17
	v_add_co_u32 v1, s17, s68, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v122
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[70:71], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[72:73], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v202
	v_mul_f32_e32 v195, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v12, 0xbfb8aa3b, v203
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v12
	v_mul_f32_e32 v191, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v16, 0, 0x42800000, s22
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v14, 0, 0x42800000, s21
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s21
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v202
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v203
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s22
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v0, v11, v0
	v_exp_f32_e32 v14, v14
	v_mul_f32_e32 v11, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v190, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v76
	v_mul_f32_e32 v187, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_mul_f32_e32 v11, 0xbfb8aa3b, v155
	v_ldexp_f32 v12, v12, v4
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v13, v14, v13
	v_ldexp_f32 v14, v16, v15
	v_mul_f32_e32 v16, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_mul_f32_e32 v192, 0xbfb8aa3b, v108
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v16
	v_cndmask_b32_e64 v20, 0, 0x42800000, s22
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v189, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v18, 0, 0x42800000, s21
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v58
	v_exp_f32_e32 v15, v15
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v154 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v71
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s22
	v_ldexp_f32 v15, v15, v4
	v_dual_mul_f32 v4, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v74
	v_dual_mul_f32 v182, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v69
	v_mul_f32_e32 v171, 0xbfb8aa3b, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v11, v16, v11
	v_ldexp_f32 v16, v18, v17
	v_ldexp_f32 v17, v20, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_dual_mul_f32 v18, 0xbfb8aa3b, v43 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v57
	v_mul_f32_e32 v20, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v21
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v20
	v_mul_f32_e32 v188, 0xbfb8aa3b, v101
	v_cndmask_b32_e64 v24, 0, 0x42800000, s22
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v75
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, s21
	v_mul_f32_e32 v167, 0xbfb8aa3b, v49
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v163, 0xbfb8aa3b, v212
	v_exp_f32_e32 v19, v19
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v43
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s22
	v_ldexp_f32 v19, v19, v4
	v_dual_mul_f32 v4, 0xbfb8aa3b, v61 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v68
	v_dual_mul_f32 v174, 0xbfb8aa3b, v78 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v20, v18
	v_ldexp_f32 v20, v22, v21
	v_ldexp_f32 v21, v24, v23
	v_mul_f32_e32 v22, 0xbfb8aa3b, v138
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v23, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v0, v0, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v22
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s21
	v_cndmask_b32_e64 v26, 0, 0x42800000, s21
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v176, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v166, 0xbfb8aa3b, v48 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v120
	v_cndmask_b32_e64 v28, 0, 0x42800000, s21
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, vcc_lo, v41, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s22, v203, v13, v203
	.loc	1 1232 32                       ; ragged.py:1232:32
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_and_b32 v6, 0x80, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	v_dual_mul_f32 v168, 0xbfb8aa3b, v47 :: v_dual_add_f32 v17, 1.0, v17
	v_dual_mul_f32 v162, 0xbfb8aa3b, v209 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v23, v25, v23
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v15, v15, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v164, 0xbfb8aa3b, v218 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v25, v28, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v13, v13, v203
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v201, 0xbfb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v12, v12, v204
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v26, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v29, v30, 1.0
	v_rcp_f32_e32 v32, v28
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[70:71], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[72:73], v[7:8]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v7, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v118
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v26, v30
	v_rcp_f32_e32 v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v61
	v_dual_mul_f32 v198, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v199, 0xbfb8aa3b, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v31, v30
	v_fma_f32 v36, -v28, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v22
	v_dual_mul_f32 v196, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v109
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v29, v33, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v27, v26, 1.0
	v_fmac_f32_e32 v32, v36, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v160, 0xbfb8aa3b, v67
	v_dual_mul_f32 v186, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v34, v26
	v_div_scale_f32 v34, s21, v204, v12, v204
	v_fmac_f32_e32 v33, v35, v30
	v_mul_f32_e32 v39, v37, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v34, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v184, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v29, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v180, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v27, v35, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v208
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v30, v33
	v_rcp_f32_e32 v30, v40
	s_mov_b32 vcc_lo, s21
	v_fmac_f32_e32 v35, v31, v26
	v_fma_f32 v31, -v28, v39, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v178, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v31, v32
	v_div_scale_f32 v36, null, v14, v14, v202
	v_fma_f32 v27, -v27, v35, v34
	v_div_scale_f32 v29, s23, v202, v14, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v36
	v_fma_f32 v31, -v40, v30, 1.0
	v_div_fmas_f32 v26, v27, v26, v35
	v_fma_f32 v27, -v28, v39, v37
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v172, 0xbfb8aa3b, v56 :: v_dual_mul_f32 v161, 0xbfb8aa3b, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, null, v11, v11, v155
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v36, v38, 1.0
	v_div_fmas_f32 v27, v27, v32, v39
	v_div_fixup_f32 v12, v26, v12, v204
	v_rcp_f32_e32 v32, v31
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v38, v33, v38
	v_div_scale_f32 v33, s21, v42, v15, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v13, v27, v13, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v28, v29, v38
	v_dual_mul_f32 v35, v33, v30 :: v_dual_mul_f32 v170, 0xbfb8aa3b, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v205, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v16, v16, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v36, v28, v29
	v_fma_f32 v26, -v40, v35, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v37
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v34, v38
	v_fma_f32 v34, -v31, v32, 1.0
	v_fmac_f32_e32 v35, v26, v30
	v_div_scale_f32 v26, s22, v155, v11, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v36, v28, v29
	v_div_scale_f32 v36, null, v17, v17, v76
	v_fmac_f32_e32 v32, v34, v32
	v_fma_f32 v39, -v37, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v29, v38, v28
	v_rcp_f32_e32 v34, v36
	v_fma_f32 v29, -v40, v35, v33
	v_div_scale_f32 v38, s23, v154, v16, v154
	v_fmac_f32_e32 v27, v39, v27
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v30, v35
	v_div_scale_f32 v41, s21, v76, v17, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v36, v34, 1.0
	v_mul_f32_e32 v35, v38, v27
	v_div_fixup_f32 v14, v28, v14, v202
	v_div_fixup_f32 v15, v29, v15, v42
	v_div_scale_f32 v40, null, v19, v19, v75
	v_fmac_f32_e32 v34, v39, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v37, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v40
	s_mov_b32 vcc_lo, s22
	v_mul_f32_e32 v29, v41, v34
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[70:71], v[1:2]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v28, v27
	v_fma_f32 v28, -v36, v29, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v40, v39, 1.0
	v_fmac_f32_e32 v29, v28, v34
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_mul_f32 v33, v26, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, s24, v75, v19, v75
	v_fma_f32 v30, -v31, v33, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v42, v39
	v_fmac_f32_e32 v33, v30, v32
	v_div_scale_f32 v30, null, v18, v18, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v31, v33, v26
	v_rcp_f32_e32 v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v32, v33
	v_fma_f32 v32, -v37, v35, v38
	s_mov_b32 vcc_lo, s23
	v_div_fixup_f32 v11, v26, v11, v155
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v30, v31, 1.0
	v_div_fmas_f32 v27, v32, v27, v35
	v_fma_f32 v32, -v36, v29, v41
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v35, -v40, v28, v42
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, null, v20, v20, v44
	v_div_scale_f32 v36, s22, v43, v18, v43
	v_div_fmas_f32 v29, v32, v34, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v32, v33
	v_fmac_f32_e32 v28, v35, v39
	v_mul_f32_e32 v34, v36, v31
	v_div_fixup_f32 v16, v27, v16, v154
	v_div_fixup_f32 v26, v29, v17, v76
	v_div_scale_f32 v29, null, v21, v21, v69
	v_fma_f32 v17, -v40, v28, v42
	v_fma_f32 v27, -v30, v34, v36
	s_mov_b32 vcc_lo, s24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v33, v32, 1.0
	v_div_fmas_f32 v17, v17, v39, v28
	v_rcp_f32_e32 v28, v29
	v_fmac_f32_e32 v34, v27, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, null, v22, v22, v61
	v_div_scale_f32 v27, s21, v44, v20, v44
	v_div_fixup_f32 v37, v17, v19, v75
	v_fma_f32 v17, -v30, v34, v36
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v19, v27, v32
	v_fma_f32 v30, -v29, v28, 1.0
	s_mov_b32 vcc_lo, s22
	v_div_fmas_f32 v17, v17, v31, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v33, v19, v27
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, null, v24, v24, v138
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v35, v36, 1.0
	v_div_scale_f32 v34, s22, v69, v21, v69
	v_fmac_f32_e32 v19, v31, v32
	v_div_fixup_f32 v39, v17, v18, v43
	v_rcp_f32_e32 v17, v30
	v_fmac_f32_e32 v36, v38, v36
	v_div_scale_f32 v38, null, v23, v23, v120
	v_mul_f32_e32 v18, v34, v28
	v_div_scale_f32 v31, s23, v61, v22, v61
	v_fma_f32 v27, -v33, v19, v27
	v_div_scale_f32 v43, null, v25, v25, v137
	v_rcp_f32_e32 v42, v38
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v33, -v29, v18, v34
	v_mul_f32_e32 v40, v31, v36
	v_div_fmas_f32 v19, v27, v32, v19
	v_rcp_f32_e32 v32, v43
	v_fma_f32 v41, -v30, v17, 1.0
	v_fmac_f32_e32 v18, v33, v28
	v_fma_f32 v27, -v35, v40, v31
	v_div_scale_f32 v33, s21, v138, v24, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v17, v41, v17
	v_fma_f32 v41, -v38, v42, 1.0
	v_div_fixup_f32 v44, v19, v20, v44
	v_fma_f32 v19, -v29, v18, v34
	v_fmac_f32_e32 v40, v27, v36
	v_fma_f32 v29, -v43, v32, 1.0
	v_mul_f32_e32 v20, v33, v17
	v_fmac_f32_e32 v42, v41, v42
	v_div_scale_f32 v27, s24, v120, v23, v120
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v32, v29, v32
	v_div_fmas_f32 v18, v19, v28, v18
	v_fma_f32 v19, -v35, v40, v31
	v_div_scale_f32 v29, s22, v137, v25, v137
	v_fma_f32 v28, -v30, v20, v33
	v_mul_f32_e32 v31, v27, v42
	s_mov_b32 vcc_lo, s23
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v34, v29, v32
	v_div_fmas_f32 v19, v19, v36, v40
	v_fmac_f32_e32 v20, v28, v17
	v_fma_f32 v28, -v38, v31, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v18, v21, v69
	v_div_fixup_f32 v22, v19, v22, v61
	v_fma_f32 v19, -v43, v34, v29
	v_fma_f32 v18, -v30, v20, v33
	v_fmac_f32_e32 v31, v28, v42
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v19, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v18, v17, v20
	v_fma_f32 v17, -v38, v31, v27
	s_mov_b32 vcc_lo, s24
	v_fma_f32 v20, -v43, v34, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v126
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v42, v31
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v20, v32, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v10, v24, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v9, v25, v137
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v138, v153, v0
	v_mul_f32_e32 v137, v152, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v8, v28
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s21
	v_ldexp_f32 v0, v20, v18
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v118
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v17, v23, v120
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v17, v143, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v145, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v8, v27
	v_exp_f32_e32 v8, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v25
	v_div_scale_f32 v33, vcc_lo, v126, v0, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v121
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v7, v8, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v134, v22
	v_mul_f32_e32 v15, v139, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v29, v29, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v25, v28, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v26
	v_div_scale_f32 v35, s21, v122, v29, v122
	v_fmac_f32_e32 v28, v8, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v130, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v201
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v147, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v30, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v33, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v136, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v26, v31, 1.0
	v_div_scale_f32 v36, s22, v118, v32, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v25, v34, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_fmac_f32 v31, v7, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v131, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v30, v28
	v_div_scale_f32 v30, null, v22, v22, v121
	v_mul_f32_e32 v23, v35, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v150, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v34, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v135, v39
	v_mul_f32_e32 v11, v132, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v26, v23, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v127, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v28, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s21
	v_fmac_f32_e32 v23, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v126
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v119, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v32, v32, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v26, v23, v35
	v_div_scale_f32 v35, s23, v121, v22, v121
	v_rcp_f32_e32 v27, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v25, v31, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v148, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v29, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v21, v27, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v33, v28
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v27, v24, v27
	v_rcp_f32_e32 v24, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v120, v146, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v36, v27
	v_fma_f32 v26, -v21, v34, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v30, v24, 1.0
	v_fmac_f32_e32 v34, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v37, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s24
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v21, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v25, v35, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v116
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v28, v28, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v21, v21, v27, v34
	v_fma_f32 v26, -v30, v25, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v32, v118
	v_fmac_f32_e32 v25, v26, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v140, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v30, v25, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v26, v26, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v30, v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v27, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v36, v34, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v24, v22, v121
	v_div_scale_f32 v30, null, v25, v25, v116
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v27, v34
	v_div_scale_f32 v27, vcc_lo, v117, v28, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v30
	v_div_scale_f32 v37, null, v26, v26, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v38, v27, v34 :: v_dual_mul_f32 v121, v133, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v35, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v122, v149, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v36, v38, v27
	v_div_scale_f32 v22, s21, v116, v25, v116
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v30, v33, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v38, v29, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v37, v24, 1.0
	v_fmac_f32_e32 v33, v32, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v36, v38, v27
	v_div_scale_f32 v31, null, v21, v21, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v29, v24
	v_div_scale_f32 v29, s22, v114, v26, v114
	v_div_fmas_f32 v23, v23, v34, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v22, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v29, v24
	v_rcp_f32_e32 v32, v31
	v_div_fixup_f32 v0, v23, v28, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v30, v27, v22
	v_fma_f32 v23, -v37, v35, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v103 :: v_dual_fmac_f32 v27, v34, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v23, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v31, v32, 1.0
	v_div_scale_f32 v34, s23, v111, v21, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v30, v27, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v28, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v29, -v37, v35, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v22, v33, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	v_ldexp_f32 v23, v23, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v34, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v25, v116
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v33, -v31, v27, v34
	v_div_fmas_f32 v24, v29, v24, v35
	v_div_scale_f32 v38, null, v23, v23, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v30, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v33, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v38
	v_div_fixup_f32 v24, v24, v26, v114
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v31, v27, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v113, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v25, v25, v98
	v_div_fmas_f32 v26, v26, v32, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v38, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v26, v21, v111
	v_fmac_f32_e32 v29, v31, v29
	v_div_scale_f32 v31, s21, v103, v23, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v28, v28, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v112, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v31, v29
	v_fma_f32 v34, -v30, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v97 :: v_dual_add_f32 v21, 1.0, v28
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v38, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v34, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, s22, v98, v25, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v28, v29
	v_div_scale_f32 v35, null, v21, v21, v96
	s_mov_b32 vcc_lo, s21
	v_mul_f32_e32 v28, v34, v27
	v_fma_f32 v24, -v38, v33, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v129, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v22, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v30, v28, v34
	v_div_fmas_f32 v24, v24, v29, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v125, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v31, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v23, v24, v23, v103
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v22, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v30, v28, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v124, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v0, v0, v97
	v_fmac_f32_e32 v22, v26, v22
	v_div_scale_f32 v26, s21, v96, v21, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v109
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_mul_f32_e32 v33, v26, v22
	v_div_fmas_f32 v24, v24, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, s23
	v_exp_f32_e32 v32, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v29, v30, 1.0
	v_div_fixup_f32 v24, v24, v25, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v33, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, s22, v97, v0, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v25, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v31, v34, v30 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v33, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v29, v31, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v27, v28, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v28, null, v25, v25, v109
	v_fmac_f32_e32 v31, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v26, v22, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v36, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v29, v31, v34
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s23
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v30, v31
	v_div_scale_f32 v31, vcc_lo, v109, v25, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v28, v36, 1.0
	v_div_scale_f32 v37, null, v27, v27, v108
	v_div_fixup_f32 v0, v26, v0, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v38, v36
	v_rcp_f32_e32 v34, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v106, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v22, v21, v96
	v_mul_f32_e32 v33, v31, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v185
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v105, v105, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v28, v33, v31
	v_fma_f32 v32, -v37, v34, 1.0
	v_div_scale_f32 v35, null, v30, v30, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v26, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v0, v36
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v28, v33, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v24, null, v21, v21, v95
	v_div_fmas_f32 v23, v23, v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v25, v109
	v_fmac_f32_e32 v34, v32, v34
	v_div_scale_f32 v32, s21, v108, v27, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v22, v32, v34
	v_div_scale_f32 v33, s21, v95, v21, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v37, v22, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v22, v0, v34
	v_fma_f32 v0, -v35, v38, 1.0
	v_fma_f32 v26, -v37, v22, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v0, v38
	v_rcp_f32_e32 v0, v24
	v_div_fmas_f32 v22, v26, v34, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v27, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v24, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v115, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v26, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v101
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	v_ldexp_f32 v27, v27, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v33, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v24, v29, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v87 :: v_dual_fmac_f32 v29, v36, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, s22, v107, v30, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v34, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v24, v29, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v25, v28, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v35, v25, v28
	v_div_scale_f32 v33, null, v26, v26, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v35, v25, v28
	v_div_scale_f32 v35, null, v27, v27, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v32, v35
	v_div_fmas_f32 v25, v28, v38, v25
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v34, v31
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v30, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v35, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v128, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v24, v0, v29
	v_rcp_f32_e32 v29, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v31, v32
	v_div_scale_f32 v31, vcc_lo, v102, v27, v102
	v_div_fixup_f32 v0, v0, v21, v95
	v_div_scale_f32 v21, null, v28, v28, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v30, v31, v32 :: v_dual_mul_f32 v95, v110, v23
	v_fma_f32 v34, -v33, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v98, v123, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v24, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v21
	v_fma_f32 v36, -v35, v30, v31
	v_fmac_f32_e32 v29, v34, v29
	v_div_scale_f32 v34, s21, v101, v26, v101
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v36, v32
	v_mul_f32_e32 v22, v34, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v21, v24, 1.0
	v_div_scale_f32 v36, null, v0, v0, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v35, v30, v31
	v_fma_f32 v31, -v33, v22, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v25, v24
	v_rcp_f32_e32 v25, v36
	v_div_scale_f32 v35, s22, v87, v28, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v22, v31, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v32, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v35, v24
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v36, v25, 1.0
	v_div_fixup_f32 v23, v23, v27, v102
	v_fma_f32 v27, -v33, v22, v34
	v_div_scale_f32 v34, s23, v94, v0, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v37, v25
	v_fma_f32 v33, -v21, v32, v35
	v_div_fmas_f32 v22, v27, v29, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v27, v34, v25 :: v_dual_fmac_f32 v32, v33, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s24
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v30, v31, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v36, v27, v34
	v_fma_f32 v21, -v21, v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_fmac_f32 v27, v33, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v30, v30, v93
	v_div_fmas_f32 v21, v21, v24, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v36, v27, v34
	v_rcp_f32_e32 v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v38
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v29, v33, v29
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fixup_f32 v21, v21, v28, v87
	v_div_fmas_f32 v25, v34, v25, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v26, v101
	v_fma_f32 v29, -v35, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v31
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v27, v27, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v29, v32
	v_div_scale_f32 v29, vcc_lo, v93, v30, v93
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v88, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v29, v32
	v_div_fixup_f32 v0, v25, v0, v94
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v89, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, s21, v82, v27, v82
	v_fma_f32 v26, -v35, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v90, v90, v0 :: v_dual_mul_f32 v87, v100, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v31, v34, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v36, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v26, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v28, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v35, v38, v29
	v_mul_f32_e32 v28, v21, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, v0, v0, v46
	v_div_fmas_f32 v22, v22, v32, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v31, v28, v21
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v22, v22, v30, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v33, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v79, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v24, v24, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v31, v28, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v25, v37
	v_fma_f32 v30, -v29, v32, 1.0
	v_div_scale_f32 v33, s23, v46, v0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v30, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v37, v25, 1.0
	v_div_fmas_f32 v21, v21, v34, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v33, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, s22, v58, v24, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v29, v28, v33
	v_div_fixup_f32 v21, v21, v27, v82
	v_mul_f32_e32 v35, v26, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v34, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v80, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v37, v35, v26
	v_fmac_f32_e32 v35, v23, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v37, v35, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v23, v23, v36
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v26, v25, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v25, v24, v58
	v_div_scale_f32 v38, null, v23, v23, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v29, v28, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v26, v26, v73
	v_div_fmas_f32 v25, v25, v32, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_ldexp_f32 v27, v27, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v29
	v_div_fixup_f32 v0, v25, v0, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v38, v30, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v92, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, s21, v74, v23, v74
	v_fma_f32 v34, -v29, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v27 :: v_dual_mul_f32 v33, v31, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s21
	v_fmac_f32_e32 v28, v34, v28
	v_div_scale_f32 v34, s22, v73, v26, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v38, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v0, v0, v71
	v_fmac_f32_e32 v33, v27, v30
	v_mul_f32_e32 v27, v34, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v21, v35
	v_fma_f32 v24, -v38, v33, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v31, -v29, v27, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v32, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v30, v33
	v_dual_fmac_f32 v27, v31, v28 :: v_dual_add_f32 v22, 1.0, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v21, 1.0
	v_div_fixup_f32 v23, v24, v23, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v24, -v29, v27, v34
	v_div_scale_f32 v29, null, v22, v22, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, s21, v71, v0, v71
	v_rcp_f32_e32 v30, v29
	v_div_fmas_f32 v24, v24, v28, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v28, 0, 0x42800000, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v25, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v26, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v33, v25
	v_fma_f32 v34, -v29, v30, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v174
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v26, v21
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, s22, v72, v22, v72
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
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v29, v31, v34
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v28, null, v26, v26, v91
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
	v_div_scale_f32 v37, null, v27, v27, v86
	v_fma_f32 v25, -v29, v31, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v34, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v30, v31
	v_fma_f32 v38, -v28, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v32
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, vcc_lo, v91, v26, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v36, v38, v36
	v_div_fixup_f32 v22, v25, v22, v72
	v_fma_f32 v32, -v37, v34, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_mul_f32 v33, v31, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v21, v0, v71
	v_fmac_f32_e32 v34, v32, v34
	v_div_scale_f32 v32, s21, v86, v27, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v35, null, v30, v30, v83
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v99, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v28, v33, v31
	v_mul_f32_e32 v22, v32, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v252, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v25, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v21, v36
	v_fma_f32 v21, -v37, v22, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v72, v251, v24 :: v_dual_mul_f32 v71, v250, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v28, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v22, v21, v34
	v_fma_f32 v21, -v35, v38, 1.0
	v_div_scale_f32 v28, s22, v83, v30, v83
	v_div_scale_f32 v24, null, v0, v0, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v21, v38
	v_div_fmas_f32 v23, v23, v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v24
	v_fma_f32 v25, -v37, v22, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v23, v23, v26, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s21
	v_div_fmas_f32 v22, v25, v34, v22
	v_mul_f32_e32 v25, v28, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v26, -v24, v21, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v27, v86
	v_fma_f32 v27, -v35, v25, v28
	v_fmac_f32_e32 v21, v26, v21
	v_div_scale_f32 v26, s21, v78, v0, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v27, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v26, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v35, v25, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v24, v27, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v56
	v_ldexp_f32 v29, v31, v29
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v35, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v36, null, v29, v29, v57
	v_div_fmas_f32 v25, v28, v38, v25
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v24, v21, v27
	v_rcp_f32_e32 v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v33, v32
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v63, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v21, v0, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v39
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v34, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v165, v0
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v36, v37, 1.0
	v_div_scale_f32 v33, null, v26, v26, v56
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v31, v37
	v_div_scale_f32 v31, s22, v57, v29, v57
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v21, v32, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_rcp_f32_e32 v34, v33
	v_mul_f32_e32 v27, v31, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v36, v27, v31
	v_fma_f32 v35, -v33, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v27, v32, v37 :: v_dual_fmac_f32 v34, v35, v34
	v_fma_f32 v31, -v36, v27, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v31, v37, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v29, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v28, v28, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v30, v83
	v_rcp_f32_e32 v30, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v65, v0, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, s21, v56, v26, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v24, v30, 1.0
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v32, null, v0, v0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v21, v34
	v_fmac_f32_e32 v30, v25, v30
	v_div_scale_f32 v25, s23, v55, v28, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v32
	v_fma_f32 v22, -v33, v35, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v23, v25, v30
	v_fmac_f32_e32 v35, v22, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v24, v23, v25
	v_fma_f32 v29, -v32, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v33, v35, v21
	v_fmac_f32_e32 v23, v22, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v29, v36
	v_div_scale_f32 v29, s22, v45, v0, v45
	v_fma_f32 v24, -v24, v23, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v34, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v29, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v34, -v32, v33, v29
	v_div_fmas_f32 v23, v24, v30, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v25, v38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v32, v33, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v24, v24, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v23, v23, v28, v55
	v_div_fmas_f32 v29, v29, v36, v33
	v_rcp_f32_e32 v33, v37
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v31
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v25, v32, 1.0
	v_div_fixup_f32 v0, v29, v0, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v85, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v26, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v31, v32
	v_div_scale_f32 v31, vcc_lo, v50, v22, v50
	v_fma_f32 v35, -v37, v33, 1.0
	v_div_scale_f32 v30, null, v26, v26, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v28, v31, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v210, v0 :: v_dual_fmac_f32 v33, v35, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s21, v47, v24, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v0, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v84, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v29, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v25, v28, v31
	v_mul_f32_e32 v29, v35, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v217, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s22, v49, v26, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v23, v32
	v_fma_f32 v23, -v37, v29, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v30, v0, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v28, v31
	v_dual_fmac_f32 v29, v23, v33 :: v_dual_fmac_f32 v0, v34, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v34, null, v21, v21, v48
	v_div_fmas_f32 v25, v25, v32, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v28, -v37, v29, v35
	s_mov_b32 vcc_lo, s21
	v_mul_f32_e32 v23, v27, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v34
	v_div_fmas_f32 v28, v28, v33, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v30, v23, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v156
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s23
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v161
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v32, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v34, v31, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v218
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v30, v23, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v31, v29, v31 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v212
	v_div_scale_f32 v29, s21, v48, v21, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v27, v0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v38
	v_ldexp_f32 v32, v32, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v26, v49
	v_mul_f32_e32 v30, v29, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v35, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v224, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v34, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v32, v32, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v23, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v25, v22, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v36
	v_fma_f32 v26, -v34, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v25, v25, v218
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v209
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v31, v30
	v_rcp_f32_e32 v37, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v36, v23, 1.0
	v_div_scale_f32 v31, vcc_lo, v156, v32, v156
	v_div_fixup_f32 v21, v26, v21, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v35, v23
	v_div_fixup_f32 v24, v28, v24, v47
	v_div_scale_f32 v30, null, v27, v27, v212
	v_fma_f32 v35, -v29, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v31, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v226, v21
	v_mul_f32_e32 v48, v77, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v30
	v_fmac_f32_e32 v37, v35, v37
	v_div_scale_f32 v35, s21, v218, v25, v218
	v_fma_f32 v0, -v36, v38, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v26, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v222, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v21, v35, v37
	v_div_scale_f32 v26, s22, v212, v27, v212
	v_fmac_f32_e32 v38, v0, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v29, v21, v35
	v_fma_f32 v28, -v30, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v36, v38, v31
	v_fmac_f32_e32 v21, v0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v28, v34
	v_div_fmas_f32 v23, v24, v23, v38
	s_mov_b32 vcc_lo, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v29, v21, v35
	v_mul_f32_e32 v0, v26, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v4
	v_cndmask_b32_e64 v29, 0, 0x42800000, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v24, v37, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v30, v0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v25, v218
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v28, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	v_exp_f32_e32 v29, v29
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v30, v0, v26
	v_div_scale_f32 v28, null, v22, v22, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v4, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, s21
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v29, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v26, v34, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v4, v31
	v_exp_f32_e32 v25, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v27, v212
	v_div_scale_f32 v31, vcc_lo, v209, v22, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v24, v24, v62
	v_fma_f32 v34, -v28, v30, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, null, v4, v4, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v25, v25, v208
	v_fma_f32 v37, -v27, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, s21, v62, v24, v62
	v_div_fixup_f32 v23, v23, v32, v156
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v32, 4, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v37, v33
	v_fma_f32 v44, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v44, v42
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, s24, v208, v25, v208
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v31, v30
	v_fma_f32 v41, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v28, v35, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, s22, v67, v4, v67
	v_div_scale_f32 v26, null, v29, v29, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v39, v30
	v_mul_f32_e32 v45, v41, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v26
	v_fma_f32 v28, -v28, v35, v31
	v_fma_f32 v31, -v27, v43, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v28, v28, v30, v35
	v_fma_f32 v30, -v34, v45, v41
	v_mul_f32_e32 v35, v44, v42
	v_fma_f32 v39, -v26, v38, 1.0
	v_fmac_f32_e32 v43, v31, v33
	v_div_fixup_f32 v22, v28, v22, v209
	v_fmac_f32_e32 v45, v30, v36
	v_fma_f32 v28, -v40, v35, v44
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, s23, v68, v29, v68
	v_fma_f32 v27, -v27, v43, v37
	v_fma_f32 v30, -v34, v45, v41
	v_fmac_f32_e32 v35, v28, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v46, v39, v38
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v70, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v33, v43
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v31, -v26, v46, v39
	v_div_fmas_f32 v28, v30, v36, v45
	v_fma_f32 v30, -v40, v35, v44
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v215, v21 :: v_dual_lshlrev_b32 v33, 1, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v31, v38
	v_div_fixup_f32 v4, v28, v4, v67
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, |v58|, |v13|, |v11|
	s_mov_b32 s21, 0x76543210
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v31, 0x60, v141
.Ltmp9:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v26, v46, v39
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v36, v211, v4
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v121|, |v111|, |v112|
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v39, 3, v6
.Ltmp12:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s68, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v38, v46
	s_mov_b32 vcc_lo, s24
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v38, v214, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v30, v42, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v216, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v27, v24, v62
	v_div_fixup_f32 v21, v26, v29, v68
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v106|, |v137|, |v19|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v30, v25, v208
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v24, |v95|, |v96|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v157, v22
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v103|, |v104|, |v105|
	v_max3_f32 v25, |v97|, |v87|, |v88|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v206, v0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v119|, |v120|
	v_max3_f32 v26, |v79|, |v80|, |v81|
	v_max3_f32 v27, |v82|, |v17|, |v16|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v213, v21
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, |v113|, |v114|, |v138|
	v_max3_f32 v0, v0, |v122|, v4
	v_max3_f32 v4, v22, v23, |v20|
	v_max3_f32 v22, |v89|, |v90|, |v18|
	v_max3_f32 v23, v24, |v98|, v25
	v_max3_f32 v24, v26, v27, |v15|
	v_max_f32_e64 v25, |v71|, |v72|
	v_max3_f32 v26, |v73|, |v63|, |v64|
	v_max3_f32 v27, |v55|, |v56|, |v57|
	v_max3_f32 v0, v0, v21, v4
	v_max3_f32 v22, v23, v22, v24
	v_max3_f32 v4, |v65|, |v66|, |v14|
	v_max3_f32 v21, v25, |v74|, v26
	v_max3_f32 v23, v27, v28, |v12|
	v_max_f32_e64 v24, |v47|, |v48|
	v_max3_f32 v25, |v49|, |v38|, |v40|
	v_max3_f32 v26, |v37|, |v36|, |v34|
	v_max3_f32 v27, |v35|, |v7|, |v8|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v0, s21, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v21, v4, v23
	v_max3_f32 v24, v24, |v50|, v25
	v_max3_f32 v21, |v41|, |v42|, |v10|
	v_max3_f32 v25, v26, v27, |v9|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v22, s21, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v28, v28
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v23, s21, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v29, 3, v141
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v21, v25
	v_max_f32_e32 v27, v27, v27
	v_max_f32_e32 v21, v0, v26
	v_max_f32_e32 v28, v28, v28
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v25, v29, 9, 0
	v_lshlrev_b32_e32 v26, 5, v29
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v22, v27 :: v_dual_and_b32 v27, 4, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v23, v23, v28
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v24, s21, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v28, 8, v141
	v_and_or_b32 v30, 0x680, v32, v26
	v_lshl_add_u32 v25, v27, 2, v25
	v_xor_b32_e32 v26, v26, v31
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v43, v27, 6, 0
	v_xor_b32_e32 v30, v30, v31
	v_lshl_add_u32 v25, v28, 4, v25
.Ltmp33:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s22
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v25, v33, v26
	v_add3_u32 v26, v43, v39, v30
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 38, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[72:73], v[3:4]
.Ltmp37:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[21:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v26
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 36, v158
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v25, s21, s68, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v26, null, s69, 0, s21
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 34, v158
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s26, s68, v0
	v_add_co_ci_u32_e64 v1, null, s69, 0, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s26, s68, v2
	v_add_co_ci_u32_e64 v3, null, s69, 0, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[72:73], v[0:1]
.Ltmp39:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v33, 4, v29
.Ltmp40:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[70:71], v[2:3]
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v21
	v_mov_b32_e32 v0, v22
.Ltmp42:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[72:73], v[2:3]
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v21, v21
	v_max_f32_e32 v21, v22, v22
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v29, 0, v6
.Ltmp45:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 32, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[70:71], v[25:26]
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v0, v0, v0
.Ltmp47:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[72:73], v[25:26]
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v24, v24
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
	v_max_f32_e32 v4, v21, v0
.Ltmp51:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s30, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s30
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v25, v4
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v23, v23
.Ltmp54:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[72:73], v[0:1]
.Ltmp55:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v4, v1
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v25, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v25, v25, v25 :: v_dual_mov_b32 v2, v23
	v_dual_max_f32 v23, v24, v24 :: v_dual_mov_b32 v24, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, v1, v25
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v22, v23
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v22, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v24, v24
.Ltmp65:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v24, 30, v158
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v21, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v3, v0 :: v_dual_mov_b32 v21, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v22, v22
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v21, v21
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v21, s33, s68, v24
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v24, v0
.Ltmp73:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v22, null, s69, 0, s33
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v23, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v23, 28, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[70:71], v[21:22]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v26, v3
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v24, v24
.Ltmp79:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v23, s34, s68, v23
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v30
.Ltmp82:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v24, null, s69, 0, s34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v25, v26, v26
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v26, 1, v31
	v_lshlrev_b32_e32 v28, 3, v28
.Ltmp85:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[70:71], v[23:24]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v27
	v_add_nc_u32_e32 v27, 0, v33
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v25
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v25, v29, v26, v28
.Ltmp90:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v26, 26, v158
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[72:73], v[23:24]
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v27, v4, v28
.Ltmp92:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v23, 22, v158
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v25, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
.Ltmp94:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 24, v158
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v25, s34, s68, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v26, null, s69, 0, s34
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[72:73], v[21:22]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v21, s39, s68, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v22, null, s69, 0, s39
	v_add_co_u32 v23, s39, s68, v23
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v158
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v24, null, s69, 0, s39
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[70:71], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[72:73], v[21:22]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v21, s43, s68, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[70:71], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[72:73], v[23:24]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v22, null, s69, 0, s43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v27, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 18, v158
	v_or_b32_e32 v4, 16, v158
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[70:71], v[25:26]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[72:73], v[25:26]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v23, s43, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v24, null, s69, 0, s43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v25, s43, s68, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v26, null, s69, 0, s43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[70:71], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[72:73], v[21:22]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[70:71], v[25:26]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[72:73], v[25:26]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v4, -v28, v0, 1.0
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v21, s49, s68, v60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[70:71], v[23:24]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v4, v0
	v_div_scale_f32 v4, vcc_lo, v27, 0x40e00000, v27
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[72:73], v[23:24]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v25, v4, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v22, null, s69, 0, s49
	v_add_co_u32 v23, s49, s68, v59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v28, v25, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v24, null, s69, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v30, v26
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v25, v29, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[70:71], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[72:73], v[21:22]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v21, s52, s68, v54
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[70:71], v[23:24]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v22, null, s69, 0, s52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[72:73], v[23:24]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v23, 0x2b8cbccc, v1
	v_fma_f32 v1, -v28, v25, v4
	v_max_f32_e32 v3, v3, v3
	v_fma_f32 v4, -v26, v30, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[70:71], v[21:22]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v24, v1, v0, v25
	v_div_scale_f32 v25, null, 0x40e00000, 0x40e00000, v23
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_fmac_f32 v30, v4, v30
	v_div_scale_f32 v4, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v29, v25
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v3
	v_div_fixup_f32 v24, v24, 0x40e00000, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v4, v30
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s54, s68, v53
	v_add_co_ci_u32_e64 v1, null, s69, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v39, v28
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[72:73], v[21:22]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v21, -v26, v27, v4
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v24.h
	v_mov_b16_e32 v22.h, v43.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v44, -v25, v29, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[70:71], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v21, v30
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[72:73], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v21, 1, v22
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v29, v44, v29
	v_div_scale_f32 v22, s59, v23, 0x40e00000, v23
	v_fma_f32 v0, -v28, v39, 1.0
	v_fma_f32 v4, -v26, v27, v4
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v24, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v21, v22, v29
	v_div_scale_f32 v44, s60, v3, 0x40e00000, v3
	v_fmac_f32_e32 v39, v0, v39
	v_div_fmas_f32 v4, v4, v30, v27
	v_fma_f32 v27, -v25, v21, v22
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s57, s68, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s57
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v24, v44, v39
	v_dual_fmac_f32 v21, v27, v29 :: v_dual_and_b32 v62, 0xffff0000, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v30, -v28, v24, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v45, null, v62, v62, v119
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v25, v21, v22
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v24, v30, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v22, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v4, 0x40e00000, v2
	v_div_fmas_f32 v0, v0, v29, v21
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v1, -v28, v24, v44
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v25.h, v43.h
	v_mov_b16_e32 v43.l, v2.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v23
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v23, null, v62, v62, v120
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v39, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v4, -v45, v22, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v21, 1, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v29, v23
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v25.l, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v24, v1, 0x40e00000, v3
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v22, v4, v22
	v_div_scale_f32 v28, vcc_lo, v119, v62, v119
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v24.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v21, v28, v22 :: v_dual_and_b32 v2, 1, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v29, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s59, s68, v51
	v_add_co_ci_u32_e64 v4, null, s69, 0, s59
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v39, 1, v43
	v_add3_u32 v25, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v45, v21, v28
	v_fmac_f32_e32 v29, v27, v29
	v_div_scale_f32 v46, s59, v120, v62, v120
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v24, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v21, v0, v22
	v_div_scale_f32 v52, null, v62, v62, v111
	v_mul_f32_e32 v24, v46, v29
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v28, -v45, v21, v28
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v1
	v_and_b32_e32 v27, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v45, -v23, v24, v46
	v_div_scale_f32 v86, null, v83, v83, v96
	v_div_fmas_f32 v21, v28, v22, v21
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v24, v45, v29
	v_rcp_f32_e32 v45, v52
	v_div_scale_f32 v93, null, v83, v83, v79
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v25.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v60, -v52, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v60, v45
	v_div_scale_f32 v30, null, v62, v62, v122
	v_div_scale_f32 v44, null, v62, v62, v121
	v_div_fixup_f32 v28, v21, v62, v119
	v_rcp_f32_e32 v43, v30
	v_fma_f32 v21, -v23, v24, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v0, v44
	v_div_scale_f32 v53, null, v62, v62, v112
	v_div_scale_f32 v61, null, v62, v62, v113
	v_div_fmas_f32 v21, v21, v29, v24
	v_div_scale_f32 v24, s59, v111, v62, v111
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v30, v43, 1.0
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v51, -v44, v0, 1.0
	v_div_fixup_f32 v29, v21, v62, v120
	v_div_scale_f32 v67, null, v62, v62, v114
	v_fmac_f32_e32 v43, v39, v43
	v_div_scale_f32 v39, s60, v122, v62, v122
	v_fmac_f32_e32 v0, v51, v0
	v_div_scale_f32 v51, s61, v121, v62, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v22, v39, v43
	v_fma_f32 v60, -v53, v54, 1.0
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v51, v0
	v_div_scale_f32 v70, null, v62, v62, v105
	v_fma_f32 v23, -v30, v22, v39
	v_fmac_f32_e32 v54, v60, v54
	v_div_scale_f32 v60, s62, v112, v62, v112
	v_div_scale_f32 v76, null, v62, v62, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v23, v43
	v_fma_f32 v23, -v44, v46, v51
	v_div_scale_f32 v77, null, v62, v62, v19
	v_div_scale_f32 v78, null, v62, v62, v20
	v_fma_f32 v21, -v30, v22, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v46, v23, v0 :: v_dual_mul_f32 v23, v24, v45
	v_div_fmas_f32 v21, v21, v43, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v44, v46, v51
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v30, -v52, v23, v24
	v_rcp_f32_e32 v51, v61
	v_mul_f32_e32 v43, v60, v54
	v_div_fmas_f32 v0, v22, v0, v46
	v_rcp_f32_e32 v22, v67
	v_fmac_f32_e32 v23, v30, v45
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v44, -v53, v43, v60
	v_div_fixup_f32 v39, v0, v62, v121
	v_div_fixup_f32 v30, v21, v62, v122
	v_fma_f32 v0, -v52, v23, v24
	v_fma_f32 v46, -v61, v51, 1.0
	v_fmac_f32_e32 v43, v44, v54
	v_div_scale_f32 v52, null, v62, v62, v138
	v_fma_f32 v24, -v67, v22, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v46, v51
	v_div_scale_f32 v21, s60, v113, v62, v113
	v_div_fmas_f32 v0, v0, v45, v23
	v_fma_f32 v23, -v53, v43, v60
	v_fmac_f32_e32 v22, v24, v22
	v_rcp_f32_e32 v24, v52
	v_div_scale_f32 v53, null, v62, v62, v103
	v_mul_f32_e32 v45, v21, v51
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v46, s59, v114, v62, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v69, v53
	v_div_fmas_f32 v23, v23, v54, v43
	v_fma_f32 v54, -v61, v45, v21
	v_fma_f32 v68, -v52, v24, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v43, v0, v62, v111
	v_div_fixup_f32 v44, v23, v62, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, v54, v51 :: v_dual_fmac_f32 v24, v68, v24
	v_div_scale_f32 v23, s61, v138, v62, v138
	v_fma_f32 v68, -v53, v69, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v61, v45, v21
	v_div_scale_f32 v54, null, v62, v62, v104
	v_fmac_f32_e32 v69, v68, v69
	v_div_scale_f32 v68, s62, v103, v62, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v51, v45
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v61, v54
	v_mul_f32_e32 v51, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v53, v51, v68
	v_dual_fmac_f32 v51, v75, v69 :: v_dual_mul_f32 v60, v46, v22
	v_div_scale_f32 v75, null, v62, v62, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v67, v60, v46
	v_fmac_f32_e32 v60, v0, v22
	v_mul_f32_e32 v0, v23, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v67, v60, v46
	v_fma_f32 v46, -v52, v0, v23
	v_fma_f32 v67, -v54, v61, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v45, v22, v60
	v_rcp_f32_e32 v60, v70
	v_fmac_f32_e32 v0, v46, v24
	v_div_fixup_f32 v45, v21, v62, v113
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v61, v67, v61
	v_div_scale_f32 v67, s59, v104, v62, v104
	v_fma_f32 v21, -v52, v0, v23
	v_div_fixup_f32 v46, v22, v62, v114
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v70, v60, 1.0
	v_div_fmas_f32 v0, v21, v24, v0
	v_fma_f32 v21, -v53, v51, v68
	v_div_scale_f32 v68, s60, v105, v62, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v60, v23, v60
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v23, v75
	v_div_fmas_f32 v21, v21, v69, v51
	v_div_fixup_f32 v51, v0, v62, v138
	v_mul_f32_e32 v69, v68, v60
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v52, v21, v62, v103
	v_fma_f32 v21, -v70, v69, v68
	v_mul_f32_e32 v22, v67, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v75, v23, 1.0
	v_fmac_f32_e32 v69, v21, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v54, v22, v67
	v_dual_fmac_f32 v23, v53, v23 :: v_dual_fmac_f32 v22, v24, v61
	v_rcp_f32_e32 v24, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v54, v22, v67
	v_div_scale_f32 v67, s61, v106, v62, v106
	v_div_fmas_f32 v0, v0, v61, v22
	v_rcp_f32_e32 v22, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v76, v24, 1.0
	v_mul_f32_e32 v21, v67, v23
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v61, s59, v137, v62, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v54, -v75, v21, v67
	v_fma_f32 v84, -v77, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v21, v54, v23 :: v_dual_fmac_f32 v22, v84, v22
	v_fmac_f32_e32 v24, v53, v24
	v_div_fixup_f32 v53, v0, v62, v104
	v_fma_f32 v0, -v70, v69, v68
	v_rcp_f32_e32 v70, v78
	v_div_fmas_f32 v0, v0, v60, v69
	v_div_scale_f32 v69, s60, v19, v62, v19
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v54, v0, v62, v105
	v_fma_f32 v0, -v75, v21, v67
	v_mul_f32_e32 v67, v69, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v78, v70, 1.0
	v_div_scale_f32 v75, s62, v20, v62, v20
	v_div_fmas_f32 v0, v0, v23, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v77, v67, v69
	v_fmac_f32_e32 v70, v84, v70
	v_div_scale_f32 v84, null, v83, v83, v95
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v67, v23, v22
	v_rcp_f32_e32 v23, v86
	v_dual_mul_f32 v68, v61, v24 :: v_dual_mul_f32 v85, v75, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v76, v68, v61
	v_fmac_f32_e32 v68, v60, v24
	v_div_fixup_f32 v60, v0, v62, v106
	v_fma_f32 v0, -v77, v67, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v76, v68, v61
	v_rcp_f32_e32 v76, v84
	v_div_fmas_f32 v21, v21, v24, v68
	v_fma_f32 v24, -v78, v85, v75
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v69, s60, v96, v83, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v61, v21, v62, v137
	v_fma_f32 v68, -v84, v76, 1.0
	v_fmac_f32_e32 v85, v24, v70
	v_fma_f32 v24, -v86, v23, 1.0
	v_div_scale_f32 v21, s59, v95, v83, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v68, v76
	v_div_scale_f32 v68, null, v83, v83, v98
	v_div_fmas_f32 v0, v0, v22, v67
	v_fma_f32 v22, -v78, v85, v75
	v_fmac_f32_e32 v23, v24, v23
	v_rcp_f32_e32 v24, v68
	v_div_scale_f32 v75, null, v83, v83, v97
	v_mul_f32_e32 v67, v21, v76
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v77, v69, v23
	v_div_fmas_f32 v22, v22, v70, v85
	v_rcp_f32_e32 v85, v75
	v_fma_f32 v70, -v84, v67, v21
	v_div_fixup_f32 v19, v0, v62, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v68, v24, 1.0
	v_fma_f32 v0, -v86, v77, v69
	v_div_fixup_f32 v20, v22, v62, v20
	v_fmac_f32_e32 v67, v70, v76
	v_div_scale_f32 v22, s61, v98, v83, v98
	v_dual_fmac_f32 v24, v78, v24 :: v_dual_fmac_f32 v77, v0, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v75, v85, 1.0
	v_fma_f32 v21, -v84, v67, v21
	v_div_scale_f32 v84, s62, v97, v83, v97
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v85, v62, v85
	v_fma_f32 v62, -v86, v77, v69
	v_div_scale_f32 v86, null, v83, v83, v88
	v_div_fmas_f32 v21, v21, v76, v67
	s_mov_b32 vcc_lo, s60
	v_dual_mul_f32 v0, v22, v24 :: v_dual_mul_f32 v69, v84, v85
	v_div_fmas_f32 v23, v62, v23, v77
	v_rcp_f32_e32 v77, v86
	v_div_scale_f32 v70, null, v83, v83, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v68, v0, v22
	v_fma_f32 v91, -v75, v69, v84
	v_div_fixup_f32 v62, v21, v83, v95
	v_rcp_f32_e32 v78, v70
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v0, v67, v24
	v_div_fixup_f32 v67, v23, v83, v96
	v_fmac_f32_e32 v69, v91, v85
	v_fma_f32 v23, -v86, v77, 1.0
	v_div_scale_f32 v91, null, v83, v83, v89
	v_div_scale_f32 v95, null, v83, v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v23, v77
	v_rcp_f32_e32 v23, v91
	v_fma_f32 v76, -v70, v78, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v91, v23, 1.0
	v_fmac_f32_e32 v23, v92, v23
	v_fma_f32 v21, -v68, v0, v22
	v_div_scale_f32 v92, null, v83, v83, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v0, v21, v24, v0
	v_fma_f32 v21, -v75, v69, v84
	v_div_scale_f32 v75, s60, v88, v83, v88
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v78, v76, v78
	v_div_scale_f32 v76, s59, v87, v83, v87
	v_div_fmas_f32 v21, v21, v85, v69
	v_mul_f32_e32 v85, v75, v77
	v_div_scale_f32 v84, null, v83, v83, v90
	v_div_fixup_f32 v68, v0, v83, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v69, v21, v83, v97
	v_fma_f32 v21, -v86, v85, v75
	v_mul_f32_e32 v22, v76, v78
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v21, v77
	v_fma_f32 v24, -v70, v22, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v24, v78
	v_rcp_f32_e32 v24, v84
	v_fma_f32 v0, -v70, v22, v76
	v_div_scale_f32 v76, s61, v89, v83, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v0, v0, v78, v22
	v_rcp_f32_e32 v22, v92
	v_fma_f32 v70, -v84, v24, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, v76, v23
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v78, s59, v90, v83, v90
	v_fmac_f32_e32 v24, v70, v24
	v_div_fixup_f32 v70, v0, v83, v87
	v_fma_f32 v0, -v86, v85, v75
	v_fma_f32 v75, -v91, v21, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v92, v22, 1.0
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v0, v0, v77, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v21, v75, v23 :: v_dual_fmac_f32 v22, v94, v22
	v_div_scale_f32 v85, s60, v18, v83, v18
	v_div_fixup_f32 v75, v0, v83, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v91, v21, v76
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v88, v85, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_scale_f32 v91, s62, v79, v83, v79
	v_div_fmas_f32 v0, v0, v23, v21
	v_fma_f32 v23, -v92, v88, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, null, v83, v83, v80
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v88, v23, v22
	v_rcp_f32_e32 v23, v95
	v_mul_f32_e32 v86, v78, v24
	v_div_fixup_f32 v76, v0, v83, v89
	v_div_scale_f32 v89, null, v83, v83, v17
	v_fma_f32 v0, -v92, v88, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v84, v86, v78
	v_div_scale_f32 v85, null, v83, v83, v82
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v77, v24
	v_fma_f32 v21, -v84, v86, v78
	v_rcp_f32_e32 v84, v94
	v_mul_f32_e32 v78, v91, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v24, v86
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v24, -v93, v78, v91
	v_div_fmas_f32 v0, v0, v22, v88
	v_div_scale_f32 v88, s60, v81, v83, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v94, v84, 1.0
	v_fmac_f32_e32 v78, v24, v87
	v_fma_f32 v24, -v95, v23, 1.0
	v_div_fixup_f32 v77, v21, v83, v90
	v_div_scale_f32 v21, s59, v80, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v84, v86, v84 :: v_dual_fmac_f32 v23, v24, v23
	v_rcp_f32_e32 v24, v85
	v_fma_f32 v22, -v93, v78, v91
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v86, v21, v84
	v_mul_f32_e32 v90, v88, v23
	v_div_fixup_f32 v18, v0, v83, v18
	v_div_fmas_f32 v22, v22, v87, v78
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v87, -v94, v86, v21
	v_fma_f32 v0, -v95, v90, v88
	v_fma_f32 v91, -v85, v24, 1.0
	v_div_fixup_f32 v78, v22, v83, v79
	v_div_scale_f32 v22, s61, v82, v83, v82
	v_fmac_f32_e32 v86, v87, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v91, v24
	v_div_scale_f32 v87, null, v83, v83, v16
	v_fmac_f32_e32 v90, v0, v23
	v_fma_f32 v21, -v94, v86, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v0, v22, v24
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v79, -v89, v92, 1.0
	v_div_scale_f32 v94, null, v83, v83, v15
	v_div_fmas_f32 v21, v21, v84, v86
	v_fma_f32 v84, -v85, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v92, v79, v92
	v_div_scale_f32 v93, s62, v17, v83, v17
	v_fma_f32 v79, -v95, v90, v88
	v_fma_f32 v88, -v87, v91, 1.0
	v_fmac_f32_e32 v0, v84, v24
	v_rcp_f32_e32 v84, v94
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v86, v93, v92
	v_div_fmas_f32 v23, v79, v23, v90
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, s59, v16, v83, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v90, -v89, v86, v93
	v_div_fixup_f32 v79, v21, v83, v80
	v_div_fixup_f32 v80, v23, v83, v81
	v_fma_f32 v21, -v85, v0, v22
	v_mul_f32_e32 v22, v88, v91
	v_fma_f32 v23, -v94, v84, 1.0
	v_div_scale_f32 v85, null, v59, v59, v71
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v86, v90, v92
	v_div_fmas_f32 v0, v21, v24, v0
	v_fma_f32 v24, -v87, v22, v88
	v_fmac_f32_e32 v84, v23, v84
	v_rcp_f32_e32 v23, v85
	v_div_scale_f32 v90, null, v59, v59, v72
	v_fma_f32 v21, -v89, v86, v93
	v_div_scale_f32 v89, s60, v15, v83, v15
	v_fmac_f32_e32 v22, v24, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v24, v90
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v81, v0, v83, v82
	v_div_fmas_f32 v21, v21, v92, v86
	v_mul_f32_e32 v86, v89, v84
	v_fma_f32 v92, -v85, v23, 1.0
	v_fma_f32 v0, -v87, v22, v88
	v_div_scale_f32 v88, null, v59, v59, v74
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v17, v21, v83, v17
	v_fma_f32 v21, -v94, v86, v89
	v_fmac_f32_e32 v23, v92, v23
	v_div_scale_f32 v82, s61, v71, v59, v71
	v_fma_f32 v87, -v90, v24, 1.0
	v_div_fmas_f32 v0, v0, v91, v22
	v_rcp_f32_e32 v22, v88
	v_div_scale_f32 v91, null, v59, v59, v73
	v_dual_fmac_f32 v86, v21, v84 :: v_dual_mul_f32 v21, v82, v23
	v_fmac_f32_e32 v24, v87, v24
	v_div_scale_f32 v87, s59, v72, v59, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v16, v0, v83, v16
	v_fma_f32 v0, -v94, v86, v89
	v_fma_f32 v89, -v85, v21, v82
	v_mul_f32_e32 v92, v87, v24
	v_fma_f32 v94, -v88, v22, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v84, v86
	v_fmac_f32_e32 v21, v89, v23
	v_fma_f32 v84, -v90, v92, v87
	v_fmac_f32_e32 v22, v94, v22
	v_div_scale_f32 v86, s60, v74, v59, v74
	v_fma_f32 v89, -v91, v93, 1.0
	v_div_fixup_f32 v15, v0, v83, v15
	v_fma_f32 v0, -v85, v21, v82
	v_fmac_f32_e32 v92, v84, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v86, v22 :: v_dual_fmac_f32 v93, v89, v93
	v_div_scale_f32 v83, s62, v73, v59, v73
	v_div_scale_f32 v84, null, v59, v59, v63
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v89, null, v59, v59, v64
	v_div_fmas_f32 v0, v0, v23, v21
	v_fma_f32 v21, -v90, v92, v87
	v_fma_f32 v23, -v88, v82, v86
	v_rcp_f32_e32 v85, v84
	v_mul_f32_e32 v87, v83, v93
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v71, v0, v59, v71
	v_div_fmas_f32 v21, v21, v24, v92
	v_fmac_f32_e32 v82, v23, v22
	v_rcp_f32_e32 v23, v89
	v_fma_f32 v24, -v91, v87, v83
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v72, v21, v59, v72
	v_fma_f32 v90, -v84, v85, 1.0
	v_fma_f32 v0, -v88, v82, v86
	v_fmac_f32_e32 v87, v24, v93
	v_div_scale_f32 v86, null, v59, v59, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v24, s59, v63, v59, v63
	v_fma_f32 v21, -v89, v23, 1.0
	v_div_fmas_f32 v0, v0, v22, v82
	v_fma_f32 v22, -v91, v87, v83
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v90, null, v59, v59, v66
	s_mov_b32 vcc_lo, s62
	v_dual_mul_f32 v82, v24, v85 :: v_dual_fmac_f32 v23, v21, v23
	v_div_scale_f32 v88, s60, v64, v59, v64
	v_div_fmas_f32 v22, v22, v93, v87
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v84, v82, v24
	v_mul_f32_e32 v91, v88, v23
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v83, 1.0
	v_div_fixup_f32 v21, v0, v59, v74
	v_div_scale_f32 v74, null, v59, v59, v14
	v_div_fixup_f32 v22, v22, v59, v73
	v_fmac_f32_e32 v82, v87, v85
	v_fma_f32 v0, -v89, v91, v88
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v73, s61, v65, v59, v65
	v_fma_f32 v87, -v90, v93, 1.0
	v_rcp_f32_e32 v92, v74
	v_fma_f32 v24, -v84, v82, v24
	v_fmac_f32_e32 v91, v0, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v84, v73, v83 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, s62, v66, v59, v66
	s_mov_b32 vcc_lo, s59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v24, v85, v82
	v_fma_f32 v24, -v89, v91, v88
	v_fma_f32 v82, -v86, v84, v73
	v_mul_f32_e32 v85, v87, v93
	v_fma_f32 v88, -v74, v92, 1.0
	v_div_scale_f32 v89, null, v59, v59, v55
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v84, v82, v83
	v_div_fmas_f32 v23, v24, v23, v91
	v_rcp_f32_e32 v82, v89
	v_fma_f32 v24, -v90, v85, v87
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v88, s59, v14, v59, v14
	v_div_fixup_f32 v0, v0, v59, v63
	v_div_fixup_f32 v23, v23, v59, v64
	v_fma_f32 v63, -v86, v84, v73
	v_fmac_f32_e32 v85, v24, v93
	v_mul_f32_e32 v64, v88, v92
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v24, -v89, v82, 1.0
	v_div_fmas_f32 v63, v63, v83, v84
	v_fma_f32 v83, -v90, v85, v87
	v_fma_f32 v84, -v74, v64, v88
	v_div_scale_f32 v90, null, v59, v59, v57
	v_fmac_f32_e32 v82, v24, v82
	v_div_scale_f32 v87, s60, v55, v59, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v84, v92
	v_rcp_f32_e32 v84, v90
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v73, null, v59, v59, v56
	v_div_fmas_f32 v83, v83, v93, v85
	v_mul_f32_e32 v85, v87, v82
	v_div_fixup_f32 v24, v63, v59, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v73
	v_fma_f32 v65, -v74, v64, v88
	v_div_fixup_f32 v63, v83, v59, v66
	v_fma_f32 v66, -v89, v85, v87
	v_fma_f32 v83, -v90, v84, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v74, s61, v56, v59, v56
	v_div_fmas_f32 v64, v65, v92, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v85, v66, v82 :: v_dual_fmac_f32 v84, v83, v84
	v_div_scale_f32 v83, s59, v57, v59, v57
	v_fma_f32 v91, -v73, v86, 1.0
	v_div_fixup_f32 v14, v64, v59, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v89, v85, v87
	v_mul_f32_e32 v89, v83, v84
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v88, null, v59, v59, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v64, v64, v82, v85
	v_fma_f32 v82, -v90, v89, v83
	v_fmac_f32_e32 v86, v91, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v88
	v_div_scale_f32 v91, null, v59, v59, v13
	v_fmac_f32_e32 v89, v82, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v74, v86
	v_div_scale_f32 v85, s60, v58, v59, v58
	v_rcp_f32_e32 v92, v91
	v_div_fixup_f32 v55, v64, v59, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v73, v65, v74
	v_fma_f32 v93, -v88, v66, 1.0
	v_div_scale_f32 v82, null, v59, v59, v11
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v65, v87, v86
	v_fmac_f32_e32 v66, v93, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v91, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v73, v65, v74
	v_mul_f32_e32 v73, v85, v66
	v_div_scale_f32 v74, s62, v13, v59, v13
	v_fmac_f32_e32 v92, v87, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v64, v64, v86, v65
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v65, -v90, v89, v83
	v_fma_f32 v83, -v88, v73, v85
	v_mul_f32_e32 v87, v74, v92
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v90, null, v59, v59, v12
	v_div_fmas_f32 v65, v65, v84, v89
	v_fmac_f32_e32 v73, v83, v66
	v_fma_f32 v84, -v91, v87, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v82, v86, 1.0
	v_rcp_f32_e32 v83, v90
	v_div_fixup_f32 v56, v64, v59, v56
	v_div_fixup_f32 v57, v65, v59, v57
	v_fma_f32 v64, -v88, v73, v85
	v_dual_fmac_f32 v87, v84, v92 :: v_dual_fmac_f32 v86, v89, v86
	v_div_scale_f32 v65, s59, v11, v59, v11
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v89, null, v27, v27, v48
	v_div_fmas_f32 v64, v64, v66, v73
	v_fma_f32 v66, -v91, v87, v74
	v_mul_f32_e32 v73, v65, v86
	v_div_scale_f32 v74, null, v27, v27, v47
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_fmas_f32 v66, v66, v92, v87
	v_rcp_f32_e32 v85, v74
	v_fma_f32 v87, -v82, v73, v65
	v_div_fixup_f32 v58, v64, v59, v58
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, s60, v12, v59, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v87, v86
	v_div_fixup_f32 v13, v66, v59, v13
	v_rcp_f32_e32 v66, v89
	v_mul_f32_e32 v88, v84, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v74, v85, 1.0
	v_fma_f32 v65, -v82, v73, v65
	v_div_scale_f32 v82, null, v27, v27, v50
	v_fma_f32 v64, -v90, v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v85
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v87, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v89, v66, 1.0
	v_fmac_f32_e32 v88, v64, v83
	v_div_scale_f32 v64, s61, v47, v27, v47
	v_div_fmas_f32 v65, v65, v86, v73
	v_fmac_f32_e32 v66, v91, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v90, v88, v84
	v_mul_f32_e32 v84, v64, v85
	v_div_scale_f32 v86, s59, v48, v27, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v82, v87, 1.0
	v_div_scale_f32 v92, null, v27, v27, v49
	v_fma_f32 v91, -v74, v84, v64
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s62, v50, v27, v50
	v_mul_f32_e32 v93, v86, v66
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v73, v73, v83, v88
	v_fmac_f32_e32 v84, v91, v85
	v_mul_f32_e32 v88, v90, v87
	v_fma_f32 v83, -v89, v93, v86
	v_div_fixup_f32 v11, v65, v59, v11
	v_div_fixup_f32 v12, v73, v59, v12
	v_fma_f32 v59, -v74, v84, v64
	v_fma_f32 v64, -v82, v88, v90
	v_div_scale_f32 v73, null, v27, v27, v38
	v_fmac_f32_e32 v93, v83, v66
	v_fma_f32 v65, -v92, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v64, v87
	v_rcp_f32_e32 v64, v73
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v74, -v89, v93, v86
	v_fmac_f32_e32 v94, v65, v94
	v_div_scale_f32 v65, s60, v49, v27, v49
	v_div_fmas_f32 v59, v59, v85, v84
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v83, null, v27, v27, v40
	v_div_fmas_f32 v66, v74, v66, v93
	v_fma_f32 v74, -v82, v88, v90
	v_mul_f32_e32 v82, v65, v94
	v_fma_f32 v84, -v73, v64, 1.0
	v_rcp_f32_e32 v85, v83
	v_div_fixup_f32 v47, v59, v27, v47
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v92, v82, v65
	v_fmac_f32_e32 v64, v84, v64
	v_div_scale_f32 v84, s59, v38, v27, v38
	v_div_fmas_f32 v74, v74, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v86, v94
	v_div_fixup_f32 v48, v66, v27, v48
	v_mul_f32_e32 v59, v84, v64
	v_fma_f32 v66, -v83, v85, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v65, -v92, v82, v65
	v_div_fixup_f32 v50, v74, v27, v50
	v_fma_f32 v86, -v73, v59, v84
	v_div_scale_f32 v74, null, v27, v27, v41
	v_fmac_f32_e32 v85, v66, v85
	v_div_scale_f32 v66, s61, v40, v27, v40
	v_div_fmas_f32 v65, v65, v94, v82
	v_fmac_f32_e32 v59, v86, v64
	v_rcp_f32_e32 v87, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v66, v85
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v49, v65, v27, v49
	v_fma_f32 v65, -v73, v59, v84
	v_div_scale_f32 v86, null, v27, v27, v42
	v_fma_f32 v73, -v83, v82, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v65, v64, v59
	v_div_scale_f32 v64, null, v27, v27, v10
	v_fma_f32 v84, -v74, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v73, v85
	v_rcp_f32_e32 v73, v64
	v_div_scale_f32 v65, s59, v41, v27, v41
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v27, v27, v37
	v_div_fixup_f32 v38, v59, v27, v38
	v_fma_f32 v66, -v83, v82, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v64, v73, 1.0
	v_mul_f32_e32 v83, v65, v87
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v88, v59, v88
	v_div_scale_f32 v59, s60, v42, v27, v42
	v_fmac_f32_e32 v73, v89, v73
	v_div_scale_f32 v89, null, v27, v27, v36
	v_div_fmas_f32 v66, v66, v85, v82
	v_fma_f32 v82, -v74, v83, v65
	v_mul_f32_e32 v85, v59, v88
	v_div_scale_f32 v91, s61, v10, v27, v10
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v59
	v_mul_f32_e32 v94, v91, v73
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s62, v37, v27, v37
	v_div_fixup_f32 v40, v66, v27, v40
	v_fma_f32 v65, -v74, v83, v65
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v66, -v64, v94, v91
	v_mul_f32_e32 v74, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v59, -v86, v85, v59
	v_fmac_f32_e32 v94, v66, v73
	v_fma_f32 v66, -v84, v74, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s59, v36, v27, v36
	v_div_fmas_f32 v65, v65, v87, v83
	v_fma_f32 v64, -v64, v94, v91
	v_fmac_f32_e32 v74, v66, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v66, v82, v93
	v_div_scale_f32 v83, null, v27, v27, v34
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v41, v65, v27, v41
	v_div_fmas_f32 v59, v59, v88, v85
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v64, v64, v73, v94
	v_fma_f32 v73, -v84, v74, v92
	v_fma_f32 v84, -v89, v66, v82
	v_div_fixup_f32 v42, v59, v27, v42
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v10, v64, v27, v10
	v_div_fmas_f32 v73, v73, v90, v74
	v_fmac_f32_e32 v66, v84, v93
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v65, -v83, v85, 1.0
	v_div_scale_f32 v64, null, v27, v27, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v89, v66, v82
	v_div_fixup_f32 v37, v73, v27, v37
	v_fmac_f32_e32 v85, v65, v85
	v_div_scale_f32 v65, null, v27, v27, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v59, v93, v66
	v_div_scale_f32 v74, vcc_lo, v34, v27, v34
	v_rcp_f32_e32 v66, v64
	v_rcp_f32_e32 v82, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v36, v59, v27, v36
	v_mul_f32_e32 v86, v74, v85
	v_div_scale_f32 v73, null, v27, v27, v8
	v_div_scale_f32 v87, null, v27, v27, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v86, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v64, v66, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v65, v82, 1.0
	v_rcp_f32_e32 v84, v73
	v_fmac_f32_e32 v86, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v66, v59, v66
	v_div_scale_f32 v59, s59, v35, v27, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v74, -v83, v86, v74
	v_rcp_f32_e32 v89, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v73, v84, 1.0
	v_div_fmas_f32 v74, v74, v85, v86
	s_mov_b32 vcc_lo, s59
	s_mov_b32 s59, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s59, 0x40e00000
	v_med3_f32 v23, v23, s59, 0x40e00000
	v_med3_f32 v16, v16, s59, 0x40e00000
	v_med3_f32 v36, v36, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v34, v74, v27, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s60, v7, v27, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s59, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v59, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v36
	v_and_b32_e32 v36, 15, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v23, 0x2f0, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v65, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s59, 0x40e00000
	v_med3_f32 v22, v22, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v83, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v71
	v_and_b32_e32 v71, 15, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v64, v92, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s61, v8, v27, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v90, v66 :: v_dual_and_b32 v41, 15, v41
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s62, v9, v27, v9
	v_fma_f32 v59, -v64, v92, v59
	v_fma_f32 v65, -v65, v94, v88
	v_mul_f32_e32 v95, v91, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v59, v59, v66, v92
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v90, -v73, v95, v91
	v_div_fmas_f32 v65, v65, v82, v94
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v97, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v90, v84
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v37, 15, v94
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v87, v96, v93
	v_div_fixup_f32 v35, v59, v27, v35
	v_div_fixup_f32 v7, v65, v27, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v64, v89
	v_fma_f32 v64, -v73, v95, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s59, 0x40e00000
	v_med3_f32 v24, v24, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v87, v96, v93
	v_div_fmas_f32 v64, v64, v84, v95
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s59, 0x40e00000
	v_med3_f32 v15, v15, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v89, v96
	v_div_fixup_f32 v8, v64, v27, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v69
	v_rndne_f32_e32 v69, v78
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v66, v27, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v75
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v39
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v66, v66, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v60
	v_rndne_f32_e32 v60, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s59, 0x40e00000
	v_cvt_i32_f32_e32 v78, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v60, v60, s59, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v100, v35
	v_and_b32_e32 v35, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v78, 16, v141
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s59, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v82, v15
	v_cvt_i32_f32_e32 v57, v57
	v_and_b32_e32 v15, 15, v29
	v_and_b32_e32 v29, 15, v0
	v_and_b32_e32 v40, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v141
	v_lshlrev_b32_e32 v24, 8, v78
	v_and_b32_e32 v32, 64, v141
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v70
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v59, v61
	v_rndne_f32_e32 v61, v67
	v_rndne_f32_e32 v67, v76
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s59, 0x40e00000
	v_med3_f32 v47, v47, s59, 0x40e00000
	v_cvt_i32_f32_e32 v102, v8
	v_and_b32_e32 v8, 15, v60
	v_and_b32_e32 v60, 15, v57
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v57, 3, v6
	v_and_or_b32 v0, 0xe000, v0, v24
	v_xor_b32_e32 v23, v23, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s59, 0x40e00000
	v_med3_f32 v30, v30, s59, 0x40e00000
	v_med3_f32 v39, v39, s59, 0x40e00000
	v_med3_f32 v65, v65, s59, 0x40e00000
	v_med3_f32 v38, v38, s59, 0x40e00000
	v_med3_f32 v46, v46, s59, 0x40e00000
	v_med3_f32 v67, v67, s59, 0x40e00000
	v_med3_f32 v18, v18, s59, 0x40e00000
	v_med3_f32 v17, v17, s59, 0x40e00000
	v_med3_f32 v14, v14, s59, 0x40e00000
	v_med3_f32 v49, v49, s59, 0x40e00000
	v_med3_f32 v10, v10, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v68
	v_rndne_f32_e32 v63, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s59, 0x40e00000
	v_med3_f32 v20, v20, s59, 0x40e00000
	v_med3_f32 v64, v64, s59, 0x40e00000
	v_med3_f32 v74, v74, s59, 0x40e00000
	v_med3_f32 v58, v58, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s59, 0x40e00000
	v_med3_f32 v72, v72, s59, 0x40e00000
	v_med3_f32 v48, v48, s59, 0x40e00000
	v_med3_f32 v7, v7, s59, 0x40e00000
	v_med3_f32 v9, v9, s59, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v90, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v57, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s59, 0x40e00000
	v_med3_f32 v19, v19, s59, 0x40e00000
	v_med3_f32 v11, v11, s59, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v93, v38
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v96, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s59, 0x40e00000
	v_med3_f32 v63, v63, s59, 0x40e00000
	v_cvt_i32_f32_e32 v75, v54
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v80, v74
	v_cvt_i32_f32_e32 v86, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v79
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s59, 0x40e00000
	v_med3_f32 v12, v12, s59, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v91, v48
	v_cvt_i32_f32_e32 v101, v7
	v_cvt_i32_f32_e32 v103, v9
	v_and_b32_e32 v7, 15, v27
	v_and_b32_e32 v9, 15, v83
	v_and_b32_e32 v10, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v23, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s59, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v76, v19
	v_cvt_i32_f32_e32 v88, v11
	v_and_b32_e32 v11, 15, v28
	v_and_b32_e32 v19, 15, v30
	v_and_b32_e32 v27, 15, v39
	v_and_b32_e32 v28, 15, v65
	v_and_b32_e32 v30, 15, v93
	v_and_b32_e32 v46, 15, v46
	v_and_b32_e32 v39, 15, v67
	v_and_b32_e32 v47, 15, v18
	v_and_b32_e32 v67, 15, v17
	v_and_b32_e32 v17, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v48, 15, v14
	v_and_b32_e32 v22, 15, v49
	v_and_b32_e32 v49, 15, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v62
	v_cvt_i32_f32_e32 v84, v63
	v_and_b32_e32 v62, 15, v75
	v_and_b32_e32 v74, 15, v20
	v_and_b32_e32 v20, 15, v64
	v_and_b32_e32 v63, 15, v80
	v_and_b32_e32 v64, 15, v86
	v_and_b32_e32 v65, 15, v100
	v_med3_f32 v51, v51, s59, 0x40e00000
	v_med3_f32 v52, v52, s59, 0x40e00000
	v_med3_f32 v53, v53, s59, 0x40e00000
	v_med3_f32 v59, v59, s59, 0x40e00000
	v_med3_f32 v69, v69, s59, 0x40e00000
	v_med3_f32 v70, v70, s59, 0x40e00000
	v_med3_f32 v73, v73, s59, 0x40e00000
	v_med3_f32 v55, v55, s59, 0x40e00000
	v_med3_f32 v56, v56, s59, 0x40e00000
	v_med3_f32 v50, v50, s59, 0x40e00000
	v_cvt_i32_f32_e32 v87, v13
	v_cvt_i32_f32_e32 v89, v12
	v_and_b32_e32 v12, 15, v61
	v_and_b32_e32 v13, 15, v72
	v_and_b32_e32 v14, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v23, v[7:10]
	ds_store_b128 v23, v[27:30] offset:256
	ds_store_b128 v23, v[46:49] offset:2048
	ds_store_b128 v23, v[62:65] offset:2304
	v_xad_u32 v7, v0, 16, 0
	v_lshlrev_b32_e32 v8, 6, v141
	v_lshlrev_b32_e32 v9, 5, v31
	v_cndmask_b32_e64 v6, 0x2010, 0, vcc_lo
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s59, 0x40e00000
	v_med3_f32 v68, v68, s59, 0x40e00000
	v_cvt_i32_f32_e32 v99, v34
	v_and_b32_e32 v34, 15, v43
	v_med3_f32 v45, v45, s59, 0x40e00000
	v_med3_f32 v42, v42, s59, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v79, v70
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v85, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v92, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[11:14]
	ds_store_b128 v7, v[34:37] offset:256
	v_lshlrev_b32_e32 v11, 2, v78
	v_and_or_b32 v8, 0x300, v8, v9
	v_xor_b32_e32 v6, v6, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v95, v42
	v_and_b32_e32 v50, 15, v51
	v_and_b32_e32 v54, 15, v52
	v_and_b32_e32 v58, 15, v53
	v_and_b32_e32 v66, 15, v59
	v_and_b32_e32 v16, 15, v77
	v_and_b32_e32 v51, 15, v69
	v_and_b32_e32 v55, 15, v79
	v_and_b32_e32 v59, 15, v73
	v_and_b32_e32 v52, 15, v85
	v_and_b32_e32 v56, 15, v56
	v_and_b32_e32 v18, 15, v92
	v_and_b32_e32 v53, 15, v97
	v_and_b32_e32 v57, 15, v98
	v_and_b32_e32 v61, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v10, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	v_or3_b32 v23, v6, v8, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v44
	v_and_b32_e32 v70, 15, v76
	v_and_b32_e32 v43, 15, v68
	v_and_b32_e32 v75, 15, v82
	v_and_b32_e32 v68, 15, v87
	v_and_b32_e32 v72, 15, v88
	v_and_b32_e32 v76, 15, v89
	v_and_b32_e32 v69, 15, v101
	v_and_b32_e32 v73, 15, v102
	v_and_b32_e32 v77, 15, v103
	v_and_b32_e32 v42, 15, v45
	v_and_b32_e32 v44, 15, v84
	v_and_b32_e32 v45, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[50:53] offset:2048
	ds_store_b128 v7, v[66:69] offset:2304
	ds_store_b128 v10, v[15:18]
	ds_store_b128 v10, v[38:41] offset:256
	ds_store_b128 v10, v[54:57] offset:2048
	ds_store_b128 v10, v[70:73] offset:2304
	ds_store_b128 v0, v[19:22]
	ds_store_b128 v0, v[42:45] offset:256
	ds_store_b128 v0, v[58:61] offset:2048
	ds_store_b128 v0, v[74:77] offset:2304
	v_xad_u32 v0, 0x4020, v23, 0
	v_add_nc_u32_e32 v18, 0, v23
	v_xad_u32 v22, 0x8040, v23, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v0
	ds_load_b128 v[31:34], v0 offset:128
	ds_load_b128 v[35:38], v0 offset:4096
	ds_load_b128 v[39:42], v0 offset:4224
	v_xad_u32 v0, 0xc060, v23, 0
	ds_load_b128 v[6:9], v18
	ds_load_b128 v[10:13], v18 offset:128
	ds_load_b128 v[14:17], v18 offset:4096
	ds_load_b128 v[18:21], v18 offset:4224
	ds_load_b128 v[43:46], v22
	ds_load_b128 v[47:50], v22 offset:128
	ds_load_b128 v[51:54], v22 offset:4096
	ds_load_b128 v[55:58], v22 offset:4224
	ds_load_b128 v[59:62], v0 offset:4096
	ds_load_b128 v[63:66], v0
	ds_load_b128 v[67:70], v0 offset:128
	ds_load_b128 v[71:74], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v22, s59, s68, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, s69, 0, s59
	v_add_co_u32 v75, s59, s68, v158
	v_add_co_ci_u32_e64 v76, null, s69, 0, s59
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s68, v158
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[70:71], v[75:76]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[72:73], v[75:76]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s75, 7, v144
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v76, v35, 4, v27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v27, 38, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v75, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v44, v52, 4, v44
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v48, v56, 4, v48
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v64, v16, 4, v8
	v_lshl_or_b32 v68, v37, 4, v29
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	v_add_nc_u32_e32 v29, 40, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v65, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[22:23]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v59, 4, v63
	v_lshl_or_b32 v59, v18, 4, v10
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v69, v38, 4, v30
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	v_add_nc_u32_e32 v30, 42, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v63, v39, 4, v31
	v_lshl_or_b32 v60, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	v_add_nc_u32_e32 v31, 44, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v67, v15, 4, v7
	v_lshl_or_b32 v71, v36, 4, v28
	v_lshl_or_b32 v40, v40, 4, v32
	v_lshl_or_b32 v61, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_add_nc_u32_e32 v32, 46, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	v_mad_u64_u32 v[27:28], null, v27, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v33
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v62, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 48, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	v_add_nc_u32_e32 v13, 14, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v34, 50, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	v_add_nc_u32_e32 v35, 52, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v36, 54, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v37, 56, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_add_nc_u32_e32 v18, 24, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v20, 28, v3
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	v_add_nc_u32_e32 v21, 30, v3
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[22:23]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 32, v3
	v_add_nc_u32_e32 v24, 36, v3
	v_add_nc_u32_e32 v38, 58, v3
	v_add_nc_u32_e32 v39, 60, v3
	v_add_nc_u32_e32 v66, 62, v3
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	v_add_nc_u32_e32 v23, 34, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v24, 0x80000000, v3, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v66, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s60
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v75, v24, s[68:71], 0 offen
	buffer_store_b8 v76, v0, s[68:71], 0 offen
	buffer_store_b8 v43, v4, s[68:71], 0 offen
	buffer_store_b8 v51, v6, s[68:71], 0 offen
	buffer_store_b8 v59, v7, s[68:71], 0 offen
	buffer_store_b8 v63, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v26.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v0, s[68:71], 0 offen
	buffer_store_b8 v55, v4, s[68:71], 0 offen
	buffer_store_b8 v67, v6, s[68:71], 0 offen
	buffer_store_b8 v71, v7, s[68:71], 0 offen
	buffer_store_b8 v44, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v0, s[68:71], 0 offen
	buffer_store_b8 v60, v4, s[68:71], 0 offen
	buffer_store_b8 v40, v6, s[68:71], 0 offen
	buffer_store_b8 v48, v7, s[68:71], 0 offen
	buffer_store_b8 v56, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v64, v0, s[68:71], 0 offen
	buffer_store_b8 v68, v4, s[68:71], 0 offen
	buffer_store_b8 v45, v6, s[68:71], 0 offen
	buffer_store_b8 v53, v7, s[68:71], 0 offen
	buffer_store_b8 v61, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v41, v0, s[68:71], 0 offen
	buffer_store_b8 v49, v4, s[68:71], 0 offen
	buffer_store_b8 v57, v6, s[68:71], 0 offen
	buffer_store_b8 v65, v7, s[68:71], 0 offen
	buffer_store_b8 v69, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b8 v46, v0, s[68:71], 0 offen
	buffer_store_b8 v54, v4, s[68:71], 0 offen
	buffer_store_b8 v62, v6, s[68:71], 0 offen
	buffer_store_b8 v42, v7, s[68:71], 0 offen
	buffer_store_b8 v50, v8, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v141
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v142
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v141
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp95:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 292
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
		.amdhsa_next_free_sgpr 77
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 292
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31680
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 292
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 79
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
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
    .private_segment_fixed_size: 292
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 74
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
