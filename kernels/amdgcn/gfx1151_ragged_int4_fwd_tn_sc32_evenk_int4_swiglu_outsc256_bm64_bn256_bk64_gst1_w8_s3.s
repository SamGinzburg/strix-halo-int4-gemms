	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[28:29], s[0:1], 0x5c
	v_dual_mov_b32 v140, v0 :: v_dual_mov_b32 v203, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b128 s[12:15], s[0:1], 0x28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v140
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
	s_sub_i32 s5, s29, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s9, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s9
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
	s_xor_b32 s7, s9, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s10, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s3, s6
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s3, s8, s3
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s11, s2, s10
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s75, s11, s10
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s9, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s6, s12, s4
	s_addc_u32 s7, s13, s5
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s14, s4
	s_addc_u32 s7, s15, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[64:65], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s2, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s2
	v_add_nc_u32_e32 v0, s66, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s28, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow675
	s_load_b128 s[68:71], s[0:1], 0x40
	v_lshrrev_b32_e32 v144, 7, v140
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v210, 0 :: v_dual_and_b32 v199, 15, v140
	v_dual_mov_b32 v205, 0 :: v_dual_and_b32 v200, 0x7f, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v56, 14, v144
	v_or_b32_e32 v55, 12, v144
	v_or_b32_e32 v50, 10, v144
	v_or_b32_e32 v49, 8, v144
	v_or_b32_e32 v48, 6, v144
	v_or_b32_e32 v47, 4, v144
	v_or_b32_e32 v202, 2, v144
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v106, 0
	scratch_store_b32 off, v2, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v138, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s21, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s66, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v10, s66, v199
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[8:9], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[72:73], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[64:65], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[64:65], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[8:9]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_and_b32 s0, s1, s3
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s3, s74, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s4, s5
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s3, s20
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s6, s7
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v11, 1, v140
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v12, 5, v140
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v3, 16, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s28, s8
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v4, 32, v10
	s_lshl_b32 s6, s5, 1
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v5, 48, v10
	s_or_b32 s6, s6, 1
	s_lshl_b32 s7, s11, 8
	s_mul_i32 s6, s74, s6
	s_mul_i32 s5, s5, s74
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v9, 0xf0, v140
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v15, 28, v11
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v11, 32, v12
	v_add3_u32 v12, s6, s7, v140
	s_lshl_b32 s5, s5, 1
	v_mul_lo_u32 v5, s28, v5
	v_mul_lo_u32 v4, s28, v4
	v_mul_lo_u32 v3, s28, v3
	v_add3_u32 v16, s5, s7, v140
	s_lshl_b32 s5, s10, 8
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v14, 2, v9
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v17, 1, v9
	v_subrev_nc_u32_e32 v9, s5, v12
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v12, 1, v144
	v_mul_lo_u32 v10, s28, v10
	s_mul_i32 s20, s20, s8
	v_add3_u32 v14, 0, v14, v11
	v_subrev_nc_u32_e32 v11, s5, v16
	v_lshl_add_u32 v16, s20, 1, v12
	v_dual_mov_b32 v148, 0 :: v_dual_lshlrev_b32 v5, 1, v5
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v13, 6, v140
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v82, 1, v9
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v9, 29, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v5, off offset:144
	scratch_store_b32 off, v4, off offset:148
	scratch_store_b32 off, v0, off offset:280
	scratch_store_b32 off, v199, off offset:240
	scratch_store_b32 off, v3, off offset:152
	v_dual_mov_b32 v224, 0 :: v_dual_lshlrev_b32 v3, 1, v10
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v2, 12, v13
	scratch_store_b32 off, v200, off offset:244 ; 4-byte Folded Spill
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v4, 25, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v3, off offset:156 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s74, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v0, 1, v200
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[9:10], null, v2, s21, v[1:2]
	v_or_b32_e32 v2, 8, v13
	v_mul_lo_u32 v4, s74, v4
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v160, 1, v11
	v_or_b32_e32 v5, 4, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[10:11], null, s21, v2, v[1:2]
	v_add3_u32 v2, v3, s7, v0
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v3, 21, v16
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v158, 0
	v_mad_u64_u32 v[11:12], null, s21, v5, v[1:2]
	v_mad_u64_u32 v[12:13], null, s21, v13, v[1:2]
	v_add3_u32 v1, v4, s7, v0
	v_subrev_nc_u32_e32 v2, s5, v2
	v_mul_lo_u32 v5, s74, v56
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v4, 17, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v1, s5, v1
	v_add_nc_u32_e32 v2, 1, v2
	v_mul_lo_u32 v3, s74, v3
	v_mul_lo_u32 v13, s74, v55
	v_mul_lo_u32 v4, s74, v4
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:160
	scratch_store_b32 off, v47, off offset:256
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v2, 1, v5
	v_mul_lo_u32 v5, s74, v50
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v129, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:164
	scratch_store_b32 off, v144, off offset:248
	v_add3_u32 v2, v3, s7, v0
	v_add3_u32 v3, v4, s7, v0
	v_lshlrev_b32_e32 v4, 1, v13
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_mov_b32_e32 v131, 0
	v_subrev_nc_u32_e32 v2, s5, v2
	v_subrev_nc_u32_e32 v3, s5, v3
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v18, 13, v16
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v13, 5, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v4, off offset:172 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 9, v16
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v3, 1, v3
	scratch_store_b32 off, v2, off offset:176 ; 4-byte Folded Spill
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v2, 1, v5
	v_mul_lo_u32 v4, s74, v4
	v_mul_lo_u32 v1, s74, v18
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:184
	scratch_store_b32 off, v2, off offset:180
	scratch_store_b32 off, v202, off offset:252
	v_mul_lo_u32 v2, s74, v13
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v156, s75, 8, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v13, s74, v144
	v_add3_u32 v3, v4, s7, v0
	v_mul_lo_u32 v4, s74, v16
	v_add3_u32 v1, v1, s7, v0
	v_or_b32_e32 v7, 0x300, v140
	v_mov_b32_e32 v211, 0
	v_add3_u32 v2, v2, s7, v0
	s_add_i32 s7, s7, s74
	v_subrev_nc_u32_e32 v1, s5, v1
	v_or_b32_e32 v8, 0x3f0, v140
	v_add3_u32 v0, s7, v4, v0
	v_mov_b32_e32 v87, 0
	v_mul_lo_u32 v18, s74, v49
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v0, s5, v0
	v_mov_b32_e32 v59, 0
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v19, 0, v140
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:192
	scratch_store_b32 off, v48, off offset:260
	v_add_nc_u32_e32 v0, 1, v0
	v_mul_lo_u32 v1, s74, v48
	v_mov_b32_e32 v239, 0
	v_dual_mov_b32 v212, 0 :: v_dual_lshlrev_b32 v5, 1, v18
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v13
	v_subrev_nc_u32_e32 v3, s5, v3
	v_add_nc_u32_e32 v183, v19, v140
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v0, 0, v7
	v_mov_b32_e32 v103, 0
	v_subrev_nc_u32_e32 v2, s5, v2
	v_mov_b32_e32 v132, 0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:228
	scratch_store_b32 off, v140, off offset:236
	scratch_store_b32 off, v19, off offset:140
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, v14, v15
	v_mul_lo_u32 v4, s74, v202
	v_lshrrev_b32_e32 v6, 1, v140
	v_mov_b32_e32 v60, 0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v49, off offset:264
	scratch_store_b32 off, v5, off offset:188
	v_mul_lo_u32 v5, s74, v47
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v157, 0, v199
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v50, off offset:268
	scratch_store_b32 off, v1, off offset:196
	v_add_nc_u32_e32 v1, 1, v3
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v6, 0x70, v6
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v55, off offset:272
	scratch_store_b32 off, v1, off offset:200
	v_lshlrev_b32_e32 v1, 1, v5
	scratch_store_b32 off, v56, off offset:276 ; 4-byte Folded Spill
	v_mov_b32_e32 v88, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s29, s4, s8
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s4, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 1, v2
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v1, 1, v4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v184, v157, v6
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v1, s4
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v186, 0, v17
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_add_u32 s30, s29, s74
	s_lshl_b32 s31, s74, 2
	s_lshl_b32 s33, s21, 4
	s_lshl_b32 s34, s74, 5
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v16, off, off offset:220 ; 4-byte Folded Reload
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v224, off offset:96
	scratch_store_b32 off, v154, off offset:92
	scratch_store_b32 off, v209, off offset:88
	scratch_store_b32 off, v207, off offset:84
	scratch_store_b32 off, v81, off offset:80
	scratch_store_b32 off, v42, off offset:76
	scratch_store_b32 off, v151, off offset:72
	scratch_store_b32 off, v43, off offset:68
	scratch_store_b32 off, v132, off offset:64
	scratch_store_b32 off, v100, off offset:60
	scratch_store_b32 off, v52, off offset:56
	scratch_store_b32 off, v41, off offset:52
	scratch_store_b32 off, v101, off offset:48
	scratch_store_b32 off, v153, off offset:44
	scratch_store_b32 off, v87, off offset:40
	scratch_store_b32 off, v44, off offset:36
	scratch_store_b32 off, v86, off offset:32
	scratch_store_b32 off, v114, off offset:28
	scratch_store_b32 off, v46, off offset:24
	scratch_store_b32 off, v74, off offset:20
	scratch_store_b32 off, v92, off offset:16
	scratch_store_b32 off, v45, off offset:12
	v_dual_mov_b32 v100, v127 :: v_dual_add_nc_u32 v15, s66, v9
	v_mov_b32_e32 v200, v201
	v_dual_mov_b32 v101, v129 :: v_dual_add_nc_u32 v0, s66, v12
	v_add_nc_u32_e32 v13, s66, v11
	v_dual_mov_b32 v129, v94 :: v_dual_add_nc_u32 v14, s66, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_mov_b32_e32 v94, v57
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v13, v13, s[20:23], 0 offen
	buffer_load_u8 v14, v14, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	v_mov_b32_e32 v132, v54
	v_mov_b32_e32 v154, v80
	v_mov_b32_e32 v80, v77
	v_dual_mov_b32 v140, v99 :: v_dual_mov_b32 v99, v60
	v_mov_b32_e32 v144, v124
	v_dual_mov_b32 v124, v106 :: v_dual_add_nc_u32 v9, s33, v9
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v11, s33, v11
	s_add_i32 s28, s28, -1
	v_mov_b32_e32 v87, v51
	v_mov_b32_e32 v127, v91
	v_mov_b32_e32 v91, v53
	v_dual_mov_b32 v201, v198 :: v_dual_mov_b32 v198, v133
	v_mov_b32_e32 v151, v218
	v_dual_mov_b32 v133, v122 :: v_dual_mov_b32 v122, v125
	v_mov_b32_e32 v81, v158
	v_mov_b32_e32 v125, v119
	v_mov_b32_e32 v119, v105
	v_mov_b32_e32 v105, v97
	v_dual_mov_b32 v97, v96 :: v_dual_add_nc_u32 v10, s33, v10
	v_add_nc_u32_e32 v12, s33, v12
	s_waitcnt vmcnt(4)
	v_add3_u32 v194, v16, s4, v156
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s29, v194
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v27, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v193, v16, s4, v156
	v_mov_b32_e32 v96, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v95, v255 :: v_dual_add_nc_u32 v16, s29, v193
	buffer_load_u16 v28, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v192, v16, s4, v156
	v_add_nc_u32_e32 v16, s29, v192
	buffer_load_u16 v29, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v191, v16, s4, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s29, v191
	buffer_load_u16 v30, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v190, v16, s4, v156
	v_add_nc_u32_e32 v16, s29, v190
	buffer_load_u16 v31, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v189, v16, s4, v156
	v_mov_b32_e32 v114, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s29, v189
	buffer_load_u16 v32, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v188, v16, s4, v156
	v_add_nc_u32_e32 v16, s29, v188
	buffer_load_u16 v33, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v187, v16, s4, v156
	v_mov_b32_e32 v92, v220
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v16, s29, v187
	buffer_load_u16 v34, v16, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v16, v0
	ds_store_b8 v16, v13 offset:256
	ds_store_b8 v16, v14 offset:512
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v15
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v157 offset:320
	ds_load_u8 v13, v157 offset:256
	ds_load_u8 v21, v157 offset:336
	ds_load_u8 v22, v157 offset:272
	ds_load_u8 v225, v157 offset:352
	ds_load_u8 v227, v157 offset:288
	ds_load_u8 v207, v157 offset:368
	ds_load_u8 v209, v157 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v0, 0xc0c0004
	ds_load_u8 v0, v157 offset:448
	ds_load_u8 v14, v157 offset:384
	ds_load_u8 v17, v157 offset:464
	ds_load_u8 v23, v157 offset:400
	ds_load_u8 v229, v157 offset:480
	ds_load_u8 v235, v157 offset:416
	ds_load_u8 v214, v157 offset:496
	ds_load_u8 v215, v157 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v14, v0, 0xc0c0004
	ds_load_u8 v0, v157 offset:64
	ds_load_u8 v15, v157
	ds_load_u8 v24, v157 offset:80
	ds_load_u8 v238, v157 offset:96
	ds_load_u8 v216, v157 offset:112
	ds_load_u8 v19, v157 offset:16
	ds_load_u8 v243, v157 offset:32
	ds_load_u8 v217, v157 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v23, v17, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v15, v0, 0xc0c0004
	ds_load_u8 v16, v157 offset:192
	ds_load_u8 v18, v157 offset:128
	ds_load_u8 v0, v157 offset:208
	ds_load_u8 v25, v157 offset:144
	ds_load_u8 v244, v157 offset:224
	ds_load_u8 v245, v157 offset:160
	ds_load_u8 v221, v157 offset:240
	ds_load_u8 v222, v157 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v19, v24, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	scratch_load_b32 v18, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v223, v18
	ds_load_u8 v224, v157 offset:944
	ds_load_u8 v38, v157 offset:832
	ds_load_u8 v39, v157 offset:768
	ds_load_u8 v161, v157 offset:848
	ds_load_u8 v162, v157 offset:784
	ds_load_u8 v18, v157 offset:864
	ds_load_u8 v248, v157 offset:800
	ds_load_u8 v231, v157 offset:880
	ds_load_u8 v232, v157 offset:816
	ds_load_u8 v40, v157 offset:704
	ds_load_u8 v41, v157 offset:640
	ds_load_u8 v163, v157 offset:720
	ds_load_u8 v202, v157 offset:656
	ds_load_u8 v249, v157 offset:736
	ds_load_u8 v250, v157 offset:672
	ds_load_u8 v233, v157 offset:752
	ds_load_u8 v234, v157 offset:688
	ds_load_u8 v42, v157 offset:576
	ds_load_u8 v43, v157 offset:512
	ds_load_u8 v165, v157 offset:592
	ds_load_u8 v166, v157 offset:528
	ds_load_u8 v20, v157 offset:608
	ds_load_u8 v252, v157 offset:544
	ds_load_u8 v236, v157 offset:624
	ds_load_u8 v237, v157 offset:560
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v157 offset:960
	ds_load_u8 v16, v157 offset:896
	ds_load_u8 v26, v157 offset:976
	ds_load_u8 v155, v157 offset:912
	ds_load_u8 v246, v157 offset:992
	ds_load_u8 v247, v157 offset:928
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v183, v27
	ds_store_b16 v183, v28 offset:512
	ds_store_b16 v183, v29 offset:1024
	ds_store_b16 v183, v30 offset:1536
	ds_store_b16 v183, v31 offset:2048
	ds_store_b16 v183, v32 offset:2560
	ds_store_b16 v183, v33 offset:3072
	ds_store_b16 v183, v34 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v27, v184 offset:1280
	ds_load_u8 v28, v184 offset:1024
	ds_load_u8 v45, v184 offset:1920
	ds_load_u8 v46, v184 offset:1664
	ds_load_u8 v47, v184 offset:1408
	ds_load_u8 v48, v184 offset:1152
	ds_load_u8 v51, v184 offset:384
	ds_load_u8 v52, v184 offset:128
	ds_load_u8 v53, v184 offset:2688
	ds_load_u8 v54, v184 offset:2432
	ds_load_u8 v55, v184 offset:2176
	v_perm_b32 v0, v25, v0, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v184 offset:1792
	ds_load_u8 v29, v184 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v184 offset:256
	ds_load_u8 v30, v184
	ds_load_u8 v49, v184 offset:896
	ds_load_u8 v50, v184 offset:640
	v_lshl_or_b32 v37, v28, 16, v27
	v_perm_b32 v27, v39, v38, 0xc0c0004
	v_perm_b32 v28, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v16, v15, 16, v27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v184 offset:768
	ds_load_u8 v31, v184 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v30, 16, v29
	v_perm_b32 v29, v41, v40, 0xc0c0004
	v_lshl_or_b32 v15, v29, 16, v28
	ds_load_u8 v27, v184 offset:3328
	ds_load_u8 v28, v184 offset:3072
	ds_load_u8 v38, v184 offset:3968
	ds_load_u8 v39, v184 offset:3712
	ds_load_u8 v40, v184 offset:3456
	ds_load_u8 v41, v184 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v184 offset:3840
	ds_load_u8 v29, v184 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v184 offset:2304
	ds_load_u8 v30, v184 offset:2048
	ds_load_u8 v42, v184 offset:2944
	v_lshl_or_b32 v44, v28, 16, v27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v184 offset:2816
	ds_load_u8 v31, v184 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[27:34], v[36:37], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[27:34], v[43:44], v[15:16], v[27:34] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v27
	v_cvt_f32_i32_e32 v199, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v29
	v_cvt_f32_i32_e32 v226, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v27, v48, v47, 0xc0c0004
	v_perm_b32 v28, v46, v45, 0xc0c0004
	v_perm_b32 v29, v52, v51, 0xc0c0004
	v_perm_b32 v30, v50, v49, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v31
	v_cvt_f32_i32_e32 v65, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v46, v28, 16, v27
	v_perm_b32 v27, v41, v40, 0xc0c0004
	v_lshl_or_b32 v45, v30, 16, v29
	v_perm_b32 v28, v39, v38, 0xc0c0004
	v_perm_b32 v29, v55, v54, 0xc0c0004
	v_perm_b32 v30, v53, v42, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v33
	v_cvt_f32_i32_e32 v74, v34
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v48, v28, 16, v27
	v_lshl_or_b32 v50, v17, 16, v21
	v_lshl_or_b32 v47, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[27:34], v[45:46], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v0, 16, v19
	v_perm_b32 v0, v162, v161, 0xc0c0004
	v_perm_b32 v17, v155, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[47:48], v[15:16], v[27:34] neg_lo:[1,1,0]
	v_perm_b32 v19, v166, v165, 0xc0c0004
	v_perm_b32 v21, v202, v163, 0xc0c0004
	v_mov_b32_e32 v202, v169
	v_lshl_or_b32 v52, v17, 16, v0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v86, v27
	v_cvt_f32_i32_e32 v27, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v51, v21, 16, v19
	v_perm_b32 v17, v235, v229, 0xc0c0004
	v_perm_b32 v19, v243, v238, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v27, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v27, v33
	scratch_store_b32 off, v27, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v27, v34
	scratch_load_b32 v34, off, off offset:216 ; 4-byte Folded Reload
	scratch_store_b32 off, v27, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v27, v28
	scratch_store_b32 off, v27, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v27, v29
	scratch_store_b32 off, v27, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v27, v30
	scratch_store_b32 off, v27, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v27, v31
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v27, off offset:112 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[21:28], v[36:37], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[43:44], v[51:52], v[21:28] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v255, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v159, v22
	v_cvt_f32_i32_e32 v197, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v153, v24
	v_cvt_f32_i32_e32 v242, v25
	v_cvt_f32_i32_e32 v241, v26
	v_cvt_f32_i32_e32 v240, v27
	v_cvt_f32_i32_e32 v196, v28
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[21:28], v[45:46], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v106, v90
	v_mov_b32_e32 v90, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[47:48], v[51:52], v[21:28] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v213, v21
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v21, v245, v244, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v220, v22
	v_cvt_f32_i32_e32 v219, v23
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v27
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v39, v21, 16, v19
	v_perm_b32 v19, v250, v249, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v218, v24
	v_cvt_f32_i32_e32 v77, v25
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v227, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v17, 16, v0
	v_perm_b32 v0, v248, v18, 0xc0c0004
	v_perm_b32 v17, v247, v246, 0xc0c0004
	v_perm_b32 v18, v252, v20, 0xc0c0004
	v_perm_b32 v20, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[21:28], v[36:37], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v247, v17, 16, v0
	v_lshl_or_b32 v246, v19, 16, v18
	v_perm_b32 v17, v209, v207, 0xc0c0004
	v_perm_b32 v18, v215, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[43:44], v[246:247], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v18, 16, v17
	v_perm_b32 v17, v237, v236, 0xc0c0004
	v_perm_b32 v18, v234, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v21
	v_cvt_f32_i32_e32 v0, v22
	v_cvt_f32_i32_e32 v161, v23
	v_cvt_f32_i32_e32 v19, v24
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v23, v27
	v_cvt_f32_i32_e32 v22, v28
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[26:33], v[45:46], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v21, v222, v221, 0xc0c0004
	v_lshl_or_b32 v222, v18, 16, v17
	v_add_nc_u32_e32 v18, s30, v194
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[47:48], v[246:247], v[26:33] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v41, v21, 16, v20
	v_perm_b32 v20, v232, v231, 0xc0c0004
	v_perm_b32 v21, v224, v223, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v238, v26
	v_cvt_f32_i32_e32 v229, v31
	v_cvt_f32_i32_e32 v227, v32
	v_cvt_f32_i32_e32 v225, v33
	v_cvt_f32_i32_e32 v245, v27
	v_cvt_f32_i32_e32 v244, v28
	v_cvt_f32_i32_e32 v243, v29
	v_cvt_f32_i32_e32 v235, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[26:33], v[36:37], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v223, v21, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[43:44], v[222:223], v[26:33] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v158, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v182, v27
	v_cvt_f32_i32_e32 v181, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v179, v29
	v_cvt_f32_i32_e32 v172, v30
	v_cvt_f32_i32_e32 v171, v31
	v_cvt_f32_i32_e32 v170, v32
	v_cvt_f32_i32_e32 v169, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[26:33], v[45:46], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[47:48], v[222:223], v[26:33] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v27
	v_add_nc_u32_e32 v27, s30, v193
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v28
	v_add_nc_u32_e32 v28, s30, v192
	v_cvt_f32_i32_e32 v21, v26
	v_cvt_f32_i32_e32 v26, v29
	v_add_nc_u32_e32 v29, s30, v191
	v_cvt_f32_i32_e32 v20, v30
	v_add_nc_u32_e32 v30, s30, v190
	v_cvt_f32_i32_e32 v252, v31
	v_add_nc_u32_e32 v31, s30, v189
	v_cvt_f32_i32_e32 v250, v32
	v_add_nc_u32_e32 v32, s30, v188
	v_cvt_f32_i32_e32 v249, v33
	v_add_nc_u32_e32 v33, s30, v187
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s4, v34
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v34, v34, s[12:15], 0 offen
	buffer_load_u8 v36, v18, s[12:15], 0 offen
	scratch_load_b32 v18, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s4, v18
	buffer_load_u8 v37, v18, s[12:15], 0 offen
	scratch_load_b32 v18, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s4, v18
	s_clause 0x2
	buffer_load_u8 v38, v18, s[12:15], 0 offen
	buffer_load_u8 v27, v27, s[12:15], 0 offen
	buffer_load_u8 v28, v28, s[12:15], 0 offen
	scratch_load_b32 v18, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s4, v18
	buffer_load_u8 v43, v18, s[12:15], 0 offen
	scratch_load_b32 v18, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v27.h, 8, v43.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s4, v18
	s_clause 0x2
	buffer_load_u8 v44, v18, s[12:15], 0 offen
	buffer_load_u8 v29, v29, s[12:15], 0 offen
	buffer_load_u8 v30, v30, s[12:15], 0 offen
	scratch_load_b32 v18, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v27.h, v29.l, v27.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s4, v18
	buffer_load_u8 v45, v18, s[12:15], 0 offen
	scratch_load_b32 v18, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v28.h, 8, v45.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s4, v18
	s_clause 0x2
	buffer_load_u8 v46, v18, s[12:15], 0 offen
	buffer_load_u8 v31, v31, s[12:15], 0 offen
	buffer_load_u8 v32, v32, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v18, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v29.l, 8, v46.l
	s_waitcnt vmcnt(2)
	v_or_b16 v28.h, v31.l, v28.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s4, v18
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v47, v18, s[12:15], 0 offen
	buffer_load_u8 v33, v33, s[12:15], 0 offen
	v_lshlrev_b16 v18.h, 8, v37.l
	v_lshlrev_b16 v18.l, 8, v34.l
	v_or_b16 v29.l, v32.l, v29.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v18.h, v27.l, v18.h
	v_lshlrev_b16 v27.l, 8, v38.l
	v_or_b16 v18.l, v36.l, v18.l
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s4, s4, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v27.l, v28.l, v27.l
	v_lshlrev_b16 v28.l, 8, v44.l
	v_or_b16 v28.l, v30.l, v28.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v29.h, 8, v47.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v29.h, v33.l, v29.h
	ds_store_b16 v183, v18
	ds_store_b16_d16_hi v183, v18 offset:512
	ds_store_b16 v183, v27 offset:1024
	ds_store_b16_d16_hi v183, v27 offset:1536
	ds_store_b16 v183, v28 offset:2048
	ds_store_b16_d16_hi v183, v28 offset:2560
	ds_store_b16 v183, v29 offset:3072
	ds_store_b16_d16_hi v183, v29 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v18, v184 offset:1280
	ds_load_u8 v27, v184 offset:1024
	ds_load_u8 v38, v184 offset:1920
	ds_load_u8 v43, v184 offset:1664
	ds_load_u8 v44, v184 offset:1408
	ds_load_u8 v45, v184 offset:1152
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v231, off, off offset:4
	scratch_load_b32 v224, off, off
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v27, v18, 0xc0c0004
	ds_load_u8 v27, v184 offset:1792
	ds_load_u8 v28, v184 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v184 offset:256
	ds_load_u8 v29, v184
	ds_load_u8 v46, v184 offset:896
	ds_load_u8 v47, v184 offset:640
	ds_load_u8 v48, v184 offset:384
	ds_load_u8 v53, v184 offset:128
	v_lshl_or_b32 v37, v27, 16, v18
	ds_load_u8 v18, v184 offset:3328
	ds_load_u8 v27, v184 offset:3072
	ds_load_u8 v54, v184 offset:3968
	ds_load_u8 v55, v184 offset:3712
	ds_load_u8 v56, v184 offset:3456
	ds_load_u8 v163, v184 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v184 offset:768
	ds_load_u8 v30, v184 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v27, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v29, 16, v28
	ds_load_u8 v27, v184 offset:3840
	ds_load_u8 v28, v184 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v184 offset:2304
	ds_load_u8 v29, v184 offset:2048
	ds_load_u8 v173, v184 offset:2944
	ds_load_u8 v174, v184 offset:2688
	ds_load_u8 v175, v184 offset:2432
	ds_load_u8 v176, v184 offset:2176
	v_lshl_or_b32 v60, v27, 16, v18
	v_perm_b32 v18, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v184 offset:2816
	ds_load_u8 v30, v184 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[27:34], v[36:37], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[27:34], v[59:60], v[15:16], v[27:34] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v35, v27
	v_cvt_f32_i32_e32 v180, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v178, v29
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v27, v43, v38, 0xc0c0004
	v_perm_b32 v28, v53, v48, 0xc0c0004
	v_perm_b32 v29, v47, v46, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v177, v30
	v_cvt_f32_i32_e32 v168, v31
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v62, v27, 16, v18
	v_perm_b32 v18, v163, v56, 0xc0c0004
	v_lshl_or_b32 v61, v29, 16, v28
	v_perm_b32 v27, v55, v54, 0xc0c0004
	v_perm_b32 v28, v176, v175, 0xc0c0004
	v_perm_b32 v29, v174, v173, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v167, v32
	v_cvt_f32_i32_e32 v166, v33
	v_cvt_f32_i32_e32 v165, v34
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v56, v27, 16, v18
	v_lshl_or_b32 v55, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[27:34], v[61:62], v[13:14], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v18, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[27:34], v[55:56], v[15:16], v[27:34] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v163, v27
	v_cvt_f32_i32_e32 v13, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v14, v33
	v_cvt_f32_i32_e32 v15, v34
	v_cvt_f32_i32_e32 v209, v28
	v_cvt_f32_i32_e32 v207, v29
	v_cvt_f32_i32_e32 v191, v30
	v_cvt_f32_i32_e32 v16, v31
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[27:34], v[36:37], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[59:60], v[51:52], v[27:34] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v45, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v28
	v_cvt_f32_i32_e32 v43, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v30
	v_cvt_f32_i32_e32 v176, v31
	v_cvt_f32_i32_e32 v175, v32
	v_cvt_f32_i32_e32 v174, v33
	v_cvt_f32_i32_e32 v173, v34
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[27:34], v[61:62], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[55:56], v[51:52], v[27:34] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[47:54], v[36:37], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v215, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[47:54], v[59:60], v[246:247], v[47:54] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v187, v32
	v_cvt_f32_i32_e32 v188, v33
	v_cvt_f32_i32_e32 v189, v34
	v_cvt_f32_i32_e32 v221, v28
	v_cvt_f32_i32_e32 v217, v29
	v_cvt_f32_i32_e32 v34, v47
	v_cvt_f32_i32_e32 v33, v48
	v_cvt_f32_i32_e32 v32, v49
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v29, v51
	v_cvt_f32_i32_e32 v28, v52
	v_cvt_f32_i32_e32 v27, v53
	v_cvt_f32_i32_e32 v185, v54
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[47:54], v[61:62], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v30
	v_cvt_f32_i32_e32 v190, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[47:54], v[55:56], v[246:247], v[47:54] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v232, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v192, v52
	v_cvt_f32_i32_e32 v193, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v54
	v_cvt_f32_i32_e32 v236, v48
	v_cvt_f32_i32_e32 v234, v49
	v_cvt_f32_i32_e32 v233, v50
	v_cvt_f32_i32_e32 v214, v51
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[47:54], v[36:37], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[47:54], v[59:60], v[222:223], v[47:54] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v39, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v48
	v_cvt_f32_i32_e32 v59, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v50
	v_cvt_f32_i32_e32 v37, v51
	v_cvt_f32_i32_e32 v36, v52
	v_cvt_f32_i32_e32 v31, v53
	v_cvt_f32_i32_e32 v30, v54
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[47:54], v[61:62], v[41:42], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:152
	scratch_load_b32 v42, off, off offset:148
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[47:54], v[55:56], v[222:223], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v237, v47
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v47, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v222, v52
	v_cvt_f32_i32_e32 v223, v53
	v_cvt_f32_i32_e32 v62, v54
	v_cvt_f32_i32_e32 v248, v48
	v_cvt_f32_i32_e32 v247, v49
	v_cvt_f32_i32_e32 v246, v50
	v_cvt_f32_i32_e32 v152, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v18, s5, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v41, s5, v41
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, s5, v42
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s5, v47
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s5, s5, 2
	s_cmp_lg_u32 s28, 0
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	s_clause 0x3
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	buffer_load_u16 v41, v41, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v55, v47, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v47, v160, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v61, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v160, s31, v160
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v61, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v186
	ds_load_b128 v[51:54], v186 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v56, v18, v164
	.loc	1 1226 17                       ; ragged.py:1226:17
	scratch_load_b32 v164, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_fmac_f32_e32 v164, v56, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_store_b32 off, v164, off offset:8 ; 4-byte Folded Spill
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v164, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v164, v255
	v_mov_b32_e32 v255, v95
	v_dual_mov_b32 v95, v96 :: v_dual_mul_f32 v56, v18, v199
	v_mov_b32_e32 v96, v97
	v_mov_b32_e32 v97, v105
	v_mov_b32_e32 v105, v119
	v_mov_b32_e32 v119, v125
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v195, v56, v48 :: v_dual_mul_f32 v56, v18, v57
	v_mov_b32_e32 v125, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v113, v41, v47 :: v_dual_fmac_f32 v118, v56, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v56, v18, v226
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v226, 16, v42
	scratch_load_b32 v42, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v226, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v255, v0, v48 :: v_dual_mul_f32 v0, v226, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v226, v19
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v95, v0, v50 :: v_dual_lshlrev_b32 v0, 16, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v0, v158 :: v_dual_mov_b32 v158, v81
	scratch_load_b32 v81, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v230, v19, v47 :: v_dual_mul_f32 v19, v0, v182
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v164, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v251, v19, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v0, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v41, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v164, v197
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v253, v19, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v0, v179 :: v_dual_mov_b32 v122, v133
	v_dual_mov_b32 v133, v198 :: v_dual_mov_b32 v198, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v112, v41, v49 :: v_dual_fmac_f32 v73, v19, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v18, v146
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v56, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v41, v164, v153 :: v_dual_mul_f32 v14, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v16, v18, v16 :: v_dual_fmac_f32 v125, v19, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v18, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v41, v50
	v_mov_b32_e32 v201, v200
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v13, v18
	v_mul_f32_e32 v15, v15, v18
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v122, v19, v52 :: v_dual_mul_f32 v19, v18, v147
	v_dual_fmac_f32 v108, v19, v53 :: v_dual_mul_f32 v19, v18, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v107, v19, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v164, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v19, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v226, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v19, v164, v241 :: v_dual_fmac_f32 v254, v41, v47
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v19, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v164, v240
	scratch_load_b32 v41, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v19, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v164, v196
	v_mul_f32_e32 v17, v0, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v19, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v226, v25
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v239, v19, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v226, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v88, v19, v52 :: v_dual_mul_f32 v19, v226, v23
	v_dual_fmac_f32 v224, v19, v53 :: v_dual_mul_f32 v19, v226, v22
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[22:25], v186 offset:512
	ds_load_b128 v[47:50], v186 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v231, v19, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v0, v172
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v211, v19, v51 :: v_dual_fmac_f32 v208, v17, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v0, v26
	v_dual_mov_b32 v51, v87 :: v_dual_fmac_f32 v210, v17, v25
	scratch_load_b32 v17, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v18, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v17, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v18
	v_dual_mul_f32 v19, v0, v171 :: v_dual_fmac_f32 v64, v17, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v57, v94 :: v_dual_fmac_f32 v212, v19, v52
	v_dual_mul_f32 v19, v0, v170 :: v_dual_mov_b32 v94, v129
	v_mov_b32_e32 v129, v101
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v17, off, off offset:104
	scratch_load_b32 v52, off, off offset:56
	scratch_load_b32 v153, off, off offset:44
	scratch_load_b32 v87, off, off offset:40
	scratch_load_b32 v101, off, off offset:48
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v228, v19, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v0, v169
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v19, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v86, v18 :: v_dual_mov_b32 v54, v132
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v224, off
	scratch_store_b32 off, v231, off offset:4
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v19, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v19, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v63, v17, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v18, v19
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v19, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v19, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v18
	v_mov_b32_e32 v53, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v91, v127 :: v_dual_fmac_f32 v58, v17, v50
	v_mul_f32_e32 v17, v164, v77
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v17, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v18, v19
	v_mov_b32_e32 v127, v100
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v132, off, off offset:64
	scratch_load_b32 v100, off, off offset:60
	scratch_load_b32 v224, off, off offset:96
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v17, v17, v164
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v100, v19, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v149, v17, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:136
	scratch_load_b32 v19, off, off offset:116
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v17, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v164
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v17, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v226, v235
	v_dual_mov_b32 v77, v80 :: v_dual_mov_b32 v80, v154
	scratch_load_b32 v154, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v17, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v229, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v17, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v227, v226
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v17, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v225, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v19, v18, v19 :: v_dual_fmac_f32 v136, v17, v50
	v_mul_f32_e32 v17, v0, v20
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v203, v17, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v252, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v17, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v250, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v17, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v249, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v19, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v213, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v17, v50
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v17, v82, s[16:19], 0 offen
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v150, v19, v22 :: v_dual_mul_f32 v19, v164, v220
	v_mov_b32_e32 v220, v92
	v_dual_fmac_f32 v75, v19, v23 :: v_dual_add_nc_u32 v82, s31, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v164, v219
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v76, v19, v24 :: v_dual_mul_f32 v19, v164, v218
	v_mov_b32_e32 v218, v151
	scratch_load_b32 v151, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v19, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v238, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v19, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v226, v245
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v19, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v226, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v52, v19, v24 :: v_dual_mul_f32 v19, v226, v243
	v_fmac_f32_e32 v53, v19, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v21, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v224, v19, v22 :: v_dual_mul_f32 v19, v0, v155
	v_fmac_f32_e32 v205, v19, v23
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v61, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v186
	ds_load_b128 v[23:26], v186 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v35
	v_mov_b32_e32 v219, v114
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v127, v17, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v180
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v117, v17, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v116, v17, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v177
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v17, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v164, v45
	scratch_load_b32 v45, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v120, v17, v19 :: v_dual_mul_f32 v17, v164, v44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:36
	scratch_load_b32 v86, off, off offset:32
	scratch_load_b32 v114, off, off offset:28
	v_dual_fmac_f32 v94, v17, v20 :: v_dual_mul_f32 v17, v164, v43
	scratch_load_b32 v43, off, off offset:68 ; 4-byte Folded Reload
	v_fmac_f32_e32 v91, v17, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v164, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v17, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v226, v34
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v70, v17, v19 :: v_dual_mul_f32 v17, v226, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v17, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v226, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v68, v17, v21 :: v_dual_mul_f32 v17, v226, v46
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:24
	scratch_load_b32 v74, off, off offset:20
	scratch_load_b32 v92, off, off offset:16
	v_fmac_f32_e32 v67, v17, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v72, v17, v19 :: v_dual_mul_f32 v17, v0, v40
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v44, v17, v20 :: v_dual_mul_f32 v17, v0, v59
	v_mov_b32_e32 v59, v90
	v_mov_b32_e32 v90, v106
	v_mov_b32_e32 v106, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v124, v144 :: v_dual_fmac_f32 v45, v17, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v17, v0, v60 :: v_dual_mov_b32 v60, v99
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v46, v17, v22 :: v_dual_mul_f32 v17, v18, v168
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v17, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v167
	v_dual_mov_b32 v169, v202 :: v_dual_fmac_f32 v124, v17, v24
	v_mul_f32_e32 v17, v18, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v17, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v165
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v17, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v164, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v99, v140 :: v_dual_fmac_f32 v106, v17, v23
	v_mul_f32_e32 v17, v164, v175
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v105, v17, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v164, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v17, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v164, v173
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v104, v17, v26 :: v_dual_mul_f32 v17, v226, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v222, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v87, v17, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v226, v28
	v_mul_f32_e32 v28, v226, v214
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v132, v17, v24 :: v_dual_mul_f32 v17, v226, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v27, v194, v226 :: v_dual_fmac_f32 v60, v17, v25
	v_mul_f32_e32 v17, v226, v185
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v59, v17, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v158, v17, v23 :: v_dual_mul_f32 v17, v0, v36
	v_fmac_f32_e32 v71, v17, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v31, v62, v0 :: v_dual_fmac_f32 v206, v17, v25
	v_dual_mul_f32 v17, v0, v30 :: v_dual_mul_f32 v30, v223, v0
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v17, v26
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[19:22], v186 offset:512
	ds_load_b128 v[23:26], v186 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v163, v18
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v41, v17, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v209
	scratch_load_b32 v209, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v99, v16, v23
	v_fmac_f32_e32 v201, v15, v26
	v_fmac_f32_e32 v79, v28, v23
	v_fmac_f32_e32 v123, v17, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v207
	scratch_load_b32 v207, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v27, v26
	v_dual_fmac_f32 v135, v29, v24 :: v_dual_fmac_f32 v134, v30, v25
	v_dual_fmac_f32 v114, v17, v21 :: v_dual_mul_f32 v17, v18, v191
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v18, v188, v164 :: v_dual_fmac_f32 v133, v31, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v92, v17, v22 :: v_dual_mul_f32 v17, v215, v164
	v_fmac_f32_e32 v154, v18, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v42, v17, v19 :: v_dual_mul_f32 v17, v164, v221
	v_dual_fmac_f32 v98, v17, v20 :: v_dual_mul_f32 v17, v164, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v90, v17, v21 :: v_dual_mul_f32 v17, v164, v216
	v_fmac_f32_e32 v78, v17, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v232, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v142, v17, v19 :: v_dual_mul_f32 v17, v226, v236
	v_fmac_f32_e32 v153, v17, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v226, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v57, v17, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v226, v233
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v17, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v237, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v80, v17, v19 :: v_dual_mul_f32 v17, v0, v248
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v189, v164
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v169, v17, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v247
	v_mul_f32_e32 v20, v164, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v151, v19, v26 :: v_dual_fmac_f32 v218, v17, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v246
	v_mul_f32_e32 v0, v0, v152
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v77, v20, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v219, v17, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v187, v164
	v_mul_f32_e32 v21, v192, v226
	v_mul_f32_e32 v22, v193, v226
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v220, v0, v23
	v_fmac_f32_e32 v198, v17, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v21, v24
	v_fmac_f32_e32 v141, v22, v25
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v209, v13, v24
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v207, v14, v25
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v5, off, off offset:280
	scratch_load_b32 v140, off, off offset:236
	scratch_load_b32 v199, off, off offset:240
	scratch_load_b32 v200, off, off offset:244
	scratch_load_b32 v144, off, off offset:248
	scratch_load_b32 v202, off, off offset:252
	scratch_load_b32 v47, off, off offset:256
	scratch_load_b32 v48, off, off offset:260
	scratch_load_b32 v49, off, off offset:264
	scratch_load_b32 v50, off, off offset:268
	scratch_load_b32 v55, off, off offset:272
	scratch_load_b32 v56, off, off offset:276
	scratch_load_b32 v146, off, off offset:8
	v_mov_b32_e32 v147, v195
.LBB0_7:                                ; %Flow676
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v0, 62, v144
	v_or_b32_e32 v2, 60, v144
	v_or_b32_e32 v4, 58, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v12, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s1, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s1
	v_add_co_u32 v7, s1, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v144
	v_or_b32_e32 v4, 52, v144
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s6
	v_add_co_u32 v2, s6, s66, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[7:8]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 50, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s10, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s10
	v_add_co_u32 v7, s10, s66, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 46, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s14, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s14
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 44, v144
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s66, v3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 42, v144
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s14
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s18, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v8, null, s67, 0, s18
	v_add_co_u32 v1, s18, s66, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v41
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[7:8]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v116
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v10, 0xbfb8aa3b, v127
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v12
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v13
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v14, 0, 0x42800000, s22
	v_cndmask_b32_e64 v16, 0, 0x42800000, s23
	v_mul_f32_e32 v193, 0xbfb8aa3b, v123
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v207
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v201
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s23
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v0, v11, v0
	v_mul_f32_e32 v11, 0xbfb8aa3b, v42
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v12, v12
	v_mul_f32_e32 v190, 0xbfb8aa3b, v99
	v_dual_mul_f32 v188, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v151
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_mul_f32_e32 v11, 0xbfb8aa3b, v198
	v_mul_f32_e32 v175, 0xbfb8aa3b, v67
	v_mul_f32_e32 v185, 0xbfb8aa3b, v106
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v17
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v13, v14, v13
	v_ldexp_f32 v14, v16, v15
	v_mul_f32_e32 v16, 0xbfb8aa3b, v154
	v_ldexp_f32 v12, v12, v4
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v16
	v_mul_f32_e32 v186, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v20, 0, 0x42800000, s23
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v21, 0xbfb8aa3b, v81 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v151
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v198
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v154 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s23
	v_ldexp_f32 v15, v15, v4
	v_dual_mul_f32 v4, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v165, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v21
	v_mul_f32_e32 v177, 0xbfb8aa3b, v70
	v_mul_f32_e32 v167, 0xbfb8aa3b, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v11, v16, v11
	v_ldexp_f32 v16, v18, v17
	v_ldexp_f32 v17, v20, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v18, 0xbfb8aa3b, v43
	v_mul_f32_e32 v20, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v24, 0, 0x42800000, s23
	v_mul_f32_e32 v65, 0xbfb8aa3b, v204
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v20
	v_mul_f32_e32 v174, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v81 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v142
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, s22
	v_mul_f32_e32 v159, 0xbfb8aa3b, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v19, v19
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v43
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s23
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	v_dual_mul_f32 v157, 0xbfb8aa3b, v169 :: v_dual_mul_f32 v170, 0xbfb8aa3b, v59
	v_mul_f32_e32 v25, 0xbfb8aa3b, v133
	v_ldexp_f32 v19, v19, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v80
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_and_b32 v6, 0x80, v140
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v20, v18
	v_ldexp_f32 v20, v22, v21
	v_ldexp_f32 v21, v24, v23
	v_mul_f32_e32 v22, 0xbfb8aa3b, v135
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v23, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v0, v0, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v22
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v26, 0, 0x42800000, s22
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v172, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v135
	v_cndmask_b32_e64 v28, 0, 0x42800000, s22
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, vcc_lo, v41, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v25, v25
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v80 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s23, v207, v13, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v152, 0xbfb8aa3b, v153 :: v_dual_add_f32 v15, 1.0, v15
	v_exp_f32_e32 v22, v22
	v_dual_mul_f32 v162, 0xbfb8aa3b, v45 :: v_dual_add_f32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_ldexp_f32 v23, v25, v23
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v133
	v_ldexp_f32 v24, v26, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v29, v30, 1.0
	v_div_scale_f32 v40, null, v15, v15, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v26, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v4
	v_dual_mul_f32 v164, 0xbfb8aa3b, v44 :: v_dual_add_f32 v17, 1.0, v17
	v_dual_mul_f32 v160, 0xbfb8aa3b, v71 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v33, v31, v30 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v117
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v25, v28, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v13, v13, v207
	v_fma_f32 v35, -v29, v33, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v12, v12, v209
	v_rcp_f32_e32 v32, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v33, v35, v30 :: v_dual_mul_f32 v194, 0xbfb8aa3b, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v197, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v196, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v29, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v192, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v28, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v184, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v30, v33
	v_fma_f32 v34, -v27, v26, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v32, v36, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v156, 0xbfb8aa3b, v218
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v182, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v34, v26
	v_div_scale_f32 v34, s22, v209, v12, v209
	v_mul_f32_e32 v39, v37, v32
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v178, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v34, v26
	v_div_fixup_f32 v0, v29, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v180, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v87
	v_dual_mul_f32 v176, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v163, 0xbfb8aa3b, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v27, v35, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v220
	v_dual_mul_f32 v168, 0xbfb8aa3b, v57 :: v_dual_mul_f32 v155, 0xbfb8aa3b, v219
	v_dual_mul_f32 v166, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v161, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v31, v26
	v_fma_f32 v31, -v28, v39, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[1:2]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v27, v35, v34
	v_fmac_f32_e32 v39, v31, v32
	v_div_scale_f32 v36, null, v14, v14, v201
	v_div_scale_f32 v29, s24, v201, v14, v201
	v_fma_f32 v31, -v40, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v38, v36
	v_div_fmas_f32 v26, v27, v26, v35
	v_fma_f32 v27, -v28, v39, v37
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, null, v11, v11, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v27, v27, v32, v39
	v_div_fixup_f32 v12, v26, v12, v209
	s_mov_b32 vcc_lo, s24
	v_fma_f32 v33, -v36, v38, 1.0
	v_rcp_f32_e32 v32, v31
	v_div_fixup_f32 v13, v27, v13, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v33, v38
	v_div_scale_f32 v33, s22, v42, v15, v42
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v29, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v33, v30
	v_div_scale_f32 v37, null, v16, v16, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v36, v28, v29
	v_fma_f32 v26, -v40, v35, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v37
	v_fmac_f32_e32 v28, v34, v38
	v_fma_f32 v34, -v31, v32, 1.0
	v_fmac_f32_e32 v35, v26, v30
	v_div_scale_f32 v26, s23, v198, v11, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v36, v28, v29
	v_div_scale_f32 v36, null, v17, v17, v151
	v_fmac_f32_e32 v32, v34, v32
	v_fma_f32 v39, -v37, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v29, v38, v28
	v_rcp_f32_e32 v34, v36
	v_fma_f32 v29, -v40, v35, v33
	v_div_scale_f32 v38, s24, v154, v16, v154
	v_fmac_f32_e32 v27, v39, v27
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v30, v35
	v_div_scale_f32 v41, s22, v151, v17, v151
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v36, v34, 1.0
	v_mul_f32_e32 v35, v38, v27
	v_div_fixup_f32 v14, v28, v14, v201
	v_div_fixup_f32 v15, v29, v15, v42
	v_div_scale_f32 v40, null, v19, v19, v142
	v_fmac_f32_e32 v34, v39, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v37, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v40
	s_mov_b32 vcc_lo, s23
	v_mul_f32_e32 v29, v41, v34
	v_fmac_f32_e32 v35, v28, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v28, -v36, v29, v41
	v_fma_f32 v42, -v40, v39, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v28, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_mul_f32 v33, v26, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, s25, v142, v19, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v31, v33, v26
	v_mul_f32_e32 v28, v42, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v30, v32
	v_div_scale_f32 v30, null, v18, v18, v43
	v_fma_f32 v26, -v31, v33, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_div_fmas_f32 v26, v26, v32, v33
	v_fma_f32 v32, -v37, v35, v38
	s_mov_b32 vcc_lo, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v11, v26, v11, v198
	v_fma_f32 v33, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v27, v32, v27, v35
	v_fma_f32 v32, -v36, v29, v41
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v35, -v40, v28, v42
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, null, v20, v20, v141
	v_div_scale_f32 v36, s23, v43, v18, v43
	v_div_fmas_f32 v29, v32, v34, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v32, v33
	v_fmac_f32_e32 v28, v35, v39
	v_mul_f32_e32 v34, v36, v31
	v_div_fixup_f32 v16, v27, v16, v154
	s_mov_b32 vcc_lo, s25
	v_div_fixup_f32 v17, v29, v17, v151
	v_fma_f32 v26, -v40, v28, v42
	v_fma_f32 v27, -v30, v34, v36
	v_div_scale_f32 v29, null, v21, v21, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v33, v32, 1.0
	v_div_fmas_f32 v26, v26, v39, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v27, v31
	v_div_scale_f32 v27, s22, v141, v20, v141
	v_fmac_f32_e32 v32, v35, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v26, v19, v142
	v_fma_f32 v26, -v30, v34, v36
	s_mov_b32 vcc_lo, s23
	v_rcp_f32_e32 v28, v29
	v_mul_f32_e32 v30, v27, v32
	v_div_scale_f32 v35, null, v22, v22, v80
	v_div_fmas_f32 v26, v26, v31, v34
	v_div_scale_f32 v34, null, v24, v24, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v33, v30, v27
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v18, v26, v18, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v26, v34
	v_fma_f32 v36, -v29, v28, 1.0
	v_fmac_f32_e32 v30, v31, v32
	v_rcp_f32_e32 v37, v35
	v_div_scale_f32 v39, null, v23, v23, v134
	v_div_scale_f32 v43, null, v25, v25, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v33, v30, v27
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v34, v26, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v142, v138, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v32, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v35, v37, 1.0
	v_fmac_f32_e32 v26, v41, v26
	v_rcp_f32_e32 v32, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v20, v27, v20, v141
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v141, v64, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v36, v28
	v_div_scale_f32 v36, s23, v81, v21, v81
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s24, v80, v22, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v36, v28
	v_fma_f32 v41, -v39, v42, 1.0
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v33, -v29, v31, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v41, v42
	v_dual_mul_f32 v40, v38, v37 :: v_dual_fmac_f32 v31, v33, v28
	v_div_scale_f32 v33, s22, v135, v24, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v35, v40, v38
	v_fma_f32 v27, -v29, v31, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v33, v26
	v_fma_f32 v36, -v43, v32, 1.0
	v_fmac_f32_e32 v40, v30, v37
	v_div_scale_f32 v30, s25, v134, v23, v134
	v_div_fmas_f32 v27, v27, v28, v31
	v_fma_f32 v31, -v34, v29, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v28, -v35, v40, v38
	s_mov_b32 vcc_lo, s24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v27, v21, v81
	v_fmac_f32_e32 v29, v31, v26
	v_div_fmas_f32 v28, v28, v37, v40
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, s23, v133, v25, v133
	v_fma_f32 v27, -v34, v29, v33
	v_div_fixup_f32 v22, v28, v22, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v27, v26, v29
	s_mov_b32 vcc_lo, s25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s24
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v10, v24, v135
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v135, v63, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v30, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v139, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v37, v36, v32 :: v_dual_mul_f32 v138, v58, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v143, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v39, v35, v30
	v_fma_f32 v28, -v43, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v31, v42
	v_fmac_f32_e32 v37, v28, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, s24
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v39, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, s22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v43, v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v42, v35
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v29, v32, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v26, v23, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v9, v25, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v133, v149, v11
	v_dual_mul_f32 v134, v150, v15 :: v_dual_mul_f32 v9, v128, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v7, v8, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v145, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v8, v12
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v18, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v137, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v18, v18, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_ldexp_f32 v0, v28, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v8, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v28, v28, v117
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, s22, v117, v28, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v25, null, v0, v0, v127
	v_rcp_f32_e32 v19, v17
	v_div_scale_f32 v30, vcc_lo, v127, v0, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v27, v25
	v_div_scale_f32 v20, null, v29, v29, v115
	v_div_scale_f32 v32, s23, v115, v29, v115
	v_fma_f32 v7, -v17, v19, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v25, v27, 1.0
	v_dual_fmac_f32 v19, v7, v19 :: v_dual_mul_f32 v12, v136, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v131, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v8, v27
	v_mul_f32_e32 v21, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v25, v21, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v148, v16 :: v_dual_fmac_f32 v21, v26, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v18, v18, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v21, v30
	v_div_fmas_f32 v21, v25, v27, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s24
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v21, v0, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v25, v27, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v129, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v23, v31, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v17, v23, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v224, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v22, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v30, v19
	v_fma_f32 v17, -v17, v23, v31
	v_div_scale_f32 v31, s24, v116, v18, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v20, v22, 1.0
	v_div_fmas_f32 v17, v17, v19, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v24, v22
	v_rcp_f32_e32 v24, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v30, v32, v22
	s_mov_b32 vcc_lo, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v20, v30, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v26, v24, 1.0
	v_fmac_f32_e32 v30, v21, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v33, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s25
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v20, v30, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v19, v31, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v25, v25, v126
	v_div_fixup_f32 v17, v17, v28, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v26, v19, v31
	v_fmac_f32_e32 v19, v21, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v26, v19, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v22, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v26, v24, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v109
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v32, v30, 1.0
	v_div_scale_f32 v26, null, v21, v21, v124
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v19, v18, v116
	v_div_fixup_f32 v19, v20, v29, v115
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v115, v146, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v22, v22, v110
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v118, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v130, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v33
	v_div_scale_f32 v19, s22, v124, v21, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v31, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v147, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v26, v27, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v33, v20, 1.0
	v_dual_fmac_f32 v27, v29, v27 :: v_dual_fmac_f32 v20, v23, v20
	v_div_scale_f32 v23, s23, v110, v22, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v31, v23, v20 :: v_dual_fmac_f32 v30, v24, v30
	v_div_scale_f32 v24, vcc_lo, v126, v25, v126
	v_mul_f32_e32 v34, v24, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v32, v34, v24
	v_fmac_f32_e32 v34, v28, v30
	v_div_scale_f32 v28, null, v17, v17, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v32, v34, v24
	v_mul_f32_e32 v24, v19, v27
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v30, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v26, v24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v18, v25, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v30, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v33, v31, v23
	v_fma_f32 v25, -v28, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v26, v24, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v18, v20
	v_fmac_f32_e32 v29, v25, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s24, v109, v17, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v23, -v33, v31, v23
	v_div_fmas_f32 v19, v19, v27, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v18, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v19, v21, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v27, -v28, v24, v30
	v_div_fmas_f32 v20, v23, v20, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v26, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v92 :: v_dual_fmac_f32 v24, v27, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v22, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v188
	v_exp_f32_e32 v23, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v28, v24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v26, null, v21, v21, v114
	v_div_fmas_f32 v22, v22, v29, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v22, v17, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v108, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v122, v19
	v_dual_mul_f32 v110, v107, v17 :: v_dual_add_f32 v17, 1.0, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v26, v24, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v125, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v17, v17, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v30, v24
	v_div_scale_f32 v30, s23, v114, v21, v114
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v34, null, v18, v18, v123
	v_rcp_f32_e32 v25, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v34, v25, 1.0
	v_fmac_f32_e32 v25, v27, v25
	v_div_scale_f32 v27, s22, v123, v18, v123
	s_mov_b32 vcc_lo, s22
	v_mul_f32_e32 v29, v27, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v34, v29, v27
	v_fmac_f32_e32 v29, v23, v25
	v_mul_f32_e32 v23, v30, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v34, v29, v27
	v_fma_f32 v27, -v26, v23, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v25, v29
	v_fmac_f32_e32 v23, v27, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v20, v18, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v20, -v26, v23, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v22, v28, v22
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fmas_f32 v20, v20, v24, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, s24
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v21, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v23, v24, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v22, v19
	v_div_scale_f32 v22, s22, v92, v17, v92
	v_rcp_f32_e32 v26, v25
	v_div_scale_f32 v33, null, v23, v23, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v22, v19
	v_fma_f32 v21, -v31, v29, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v26, 1.0
	v_dual_fmac_f32 v29, v21, v19 :: v_dual_fmac_f32 v26, v30, v26
	v_div_scale_f32 v30, s23, v99, v0, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v29, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v21, v28, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v30, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v25, v27, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v22, v19, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v27, v31, v26
	v_div_scale_f32 v24, null, v21, v21, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v32
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v25, v27, v30
	v_rcp_f32_e32 v32, v24
	v_rcp_f32_e32 v30, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v19, v17, v92
	v_div_fmas_f32 v22, v22, v26, v27
	v_div_scale_f32 v27, vcc_lo, v120, v21, v120
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v22, v0, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v24, v32, 1.0
	v_fma_f32 v28, -v33, v30, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v102, v102, v0 :: v_dual_mul_f32 v99, v121, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v22, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s22, v94, v23, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_fmac_f32 v32, v34, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v28, v30
	v_rcp_f32_e32 v34, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v27, v32
	v_fma_f32 v0, -v24, v29, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v0, v32
	v_fma_f32 v0, -v33, v19, v28
	v_fma_f32 v18, -v24, v29, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v19, v0, v30
	v_fma_f32 v0, -v31, v34, 1.0
	v_div_scale_f32 v24, s23, v93, v26, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v33, v19, v28
	v_div_fixup_f32 v18, v18, v21, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v100, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v17, v17, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v29, s22, v91, v17, v91
	v_fmac_f32_e32 v34, v0, v34
	v_rcp_f32_e32 v0, v20
	v_div_fmas_f32 v19, v22, v30, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v106
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v19, v23, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v27
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v20, v0, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v119, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v22, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v23, v23, v25
	v_exp_f32_e32 v28, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v29, v0
	v_mul_f32_e32 v21, v24, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v31, v21, v24
	v_fma_f32 v32, -v20, v25, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v22
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v27, v34
	v_dual_fmac_f32 v25, v32, v0 :: v_dual_add_f32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v31, v21, v24
	v_div_scale_f32 v31, null, v23, v23, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v20, v25, v29
	v_div_scale_f32 v29, null, v22, v22, v105
	v_rcp_f32_e32 v28, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fmas_f32 v21, v24, v34, v21
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v30, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v20, v0, v25
	v_rcp_f32_e32 v25, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v31, v28, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v26, v93
	v_div_fixup_f32 v0, v0, v17, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v113, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v24, v24, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v29, v25, 1.0
	v_fmac_f32_e32 v28, v27, v28
	v_div_scale_f32 v27, vcc_lo, v106, v23, v106
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v94, v112, v0 :: v_dual_fmac_f32 v25, v30, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s22, v105, v22, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v26, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v20, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v19, v30, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v111, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v31, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v32, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v32, null, v0, v0, v104
	v_fma_f32 v21, -v17, v20, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v31, v26, v27
	v_fma_f32 v27, -v29, v19, v30
	v_div_scale_f32 v31, s23, v86, v24, v86
	v_fmac_f32_e32 v20, v21, v20
	v_rcp_f32_e32 v21, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v19, v27, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v28, v26
	v_mul_f32_e32 v28, v31, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v18, v23, v106
	v_fma_f32 v23, -v29, v19, v30
	v_fma_f32 v33, -v32, v21, 1.0
	v_fma_f32 v29, -v17, v28, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s24, v104, v0, v104
	v_div_fmas_f32 v19, v23, v25, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v28, v29, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v83, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v19, v22, v105
	v_fma_f32 v17, -v17, v28, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v27, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v33, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_mul_f32 v23, v30, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v20, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v32, v23, v30
	v_div_scale_f32 v31, null, v26, v26, v98
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v29, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v31
	v_div_fixup_f32 v17, v17, v24, v86
	v_fma_f32 v30, -v32, v23, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v85, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v20, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v77
	v_exp_f32_e32 v29, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v20, v20, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v29, v25
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	v_div_fmas_f32 v21, v30, v21, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v31, v28, 1.0
	v_div_fixup_f32 v0, v21, v0, v104
	v_rcp_f32_e32 v21, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v25, v28
	v_div_scale_f32 v25, vcc_lo, v98, v26, v98
	v_div_scale_f32 v27, null, v23, v23, v90
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v103, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v25, v28
	v_div_scale_f32 v17, s22, v90, v23, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v32, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v34, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v22, v28
	v_fma_f32 v22, -v33, v21, 1.0
	v_fma_f32 v24, -v27, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v31, v34, v25
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, s23, v78, v20, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v19, v19, v28, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v19, v26, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v33, v31, v22
	v_fmac_f32_e32 v30, v24, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v70 :: v_dual_fmac_f32 v31, v19, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v17, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v75, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v33, v31, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v27, v24, v17
	v_fmac_f32_e32 v24, v29, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v27, v24, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, s24, v77, v0, v77
	v_rcp_f32_e32 v28, v25
	v_div_scale_f32 v34, null, v19, v19, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v25, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v26, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_fmas_f32 v17, v17, v30, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v17, v23, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fmas_f32 v21, v22, v21, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v27, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v34
	s_mov_b32 vcc_lo, s24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v21, v20, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v76, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v172
	v_exp_f32_e32 v23, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v34, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_mul_f32_e32 v24, v29, v28
	v_div_scale_f32 v27, s22, v70, v19, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v24, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v30, v28
	v_fma_f32 v21, -v25, v24, v29
	v_mul_f32_e32 v29, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v28, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v21, v0, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v89, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v97, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v25
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v24, v30, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v28, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v34, v29, v27
	v_div_scale_f32 v30, s23, v69, v22, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v31, null, v0, v0, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v31
	v_fma_f32 v21, -v31, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v17, v21, v17
	v_fmac_f32_e32 v29, v23, v26
	v_mul_f32_e32 v23, v30, v24
	v_fma_f32 v20, -v34, v29, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v25, v23, v30
	v_div_fmas_f32 v20, v20, v26, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v27, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, s22, v67, v0, v67
	v_div_fixup_f32 v19, v20, v19, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v20, -v25, v23, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_mul_f32_e32 v29, v21, v17
	v_div_fmas_f32 v20, v20, v24, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s24
	v_cndmask_b32_e64 v24, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v22, v69
	v_fma_f32 v22, -v31, v29, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v170
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v132 :: v_dual_fmac_f32 v29, v22, v17
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v31, v29, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v27
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v21, v17, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, s24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v17, v0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v18, v18, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v254, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v95, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v24, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v22, v22, v87
	v_fma_f32 v30, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_fmac_f32 v26, v30, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s23, v68, v18, v68
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v33, null, v23, v23, v132
	v_mul_f32_e32 v27, v30, v26
	v_fma_f32 v31, -v25, v27, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v31, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v24
	v_fma_f32 v21, -v25, v27, v30
	v_rcp_f32_e32 v30, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v26, v27
	v_div_scale_f32 v27, vcc_lo, v87, v22, v87
	v_fma_f32 v34, -v24, v32, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v21, v18, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v33, v30, 1.0
	v_fmac_f32_e32 v32, v34, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v96, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v30, v28, v30 :: v_dual_mul_f32 v29, v27, v32
	v_div_scale_f32 v28, s22, v132, v23, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v21, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v60
	v_fma_f32 v17, -v24, v29, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v34, v31
	v_fmac_f32_e32 v29, v17, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v24, v29, v27
	v_div_fmas_f32 v19, v19, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v19, v22, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v25, v27, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v18, v28, v30 :: v_dual_add_f32 v25, 1.0, v25
	v_fma_f32 v17, -v33, v18, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v32, null, v25, v25, v153
	v_fmac_f32_e32 v18, v17, v30
	v_fma_f32 v17, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v33, v18, v28
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v17, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v21, v30, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v18, v23, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v29, v29
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v255, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v0, v0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v29, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v20, v17, 1.0
	v_fmac_f32_e32 v17, v22, v17
	v_div_scale_f32 v24, s23, v60, v26, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v24, v34
	v_fma_f32 v23, -v31, v21, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v23, v34
	v_div_scale_f32 v22, s22, v59, v0, v59
	v_fma_f32 v24, -v31, v21, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v17
	v_fma_f32 v31, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v23, v31, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fmas_f32 v21, v24, v34, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v34, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v20, v23, v22
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v30, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v32, v33, 1.0
	v_div_fixup_f32 v21, v21, v26, v60
	v_div_fmas_f32 v17, v20, v17, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v27, v33
	v_div_scale_f32 v27, s23, v153, v25, v153
	v_div_fixup_f32 v0, v17, v0, v59
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v239, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v23, v27, v33 :: v_dual_mul_f32 v62, v34, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v35
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v28, v31
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v28, -v32, v23, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v23, v28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v24, v24, v74
	v_fma_f32 v27, -v32, v23, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v26, v20
	v_div_fmas_f32 v23, v27, v33, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v25, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v51, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v72
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v22, v22, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, s22, v57, v22, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v21, -v20, v26, 1.0
	v_div_scale_f32 v28, null, v0, v0, v79
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v26, v21, v26
	v_rcp_f32_e32 v32, v28
	v_div_scale_f32 v21, s24, v74, v24, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v29, v30, 1.0
	v_mul_f32_e32 v19, v21, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_fma_f32 v25, -v28, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v17, v30
	v_fmac_f32_e32 v32, v25, v32
	v_div_scale_f32 v25, s23, v79, v0, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v88, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v29, v31, v17
	v_fmac_f32_e32 v31, v18, v30
	v_fma_f32 v18, -v20, v19, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v29, v31, v17
	v_fmac_f32_e32 v19, v18, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v25, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v30, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v20, v19, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v28, v29, v25
	v_div_fixup_f32 v17, v17, v22, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v18, v18, v27
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	v_fmac_f32_e32 v29, v30, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v20, v26, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v21, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	v_exp_f32_e32 v26, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v28, v29, v25
	v_div_scale_f32 v21, null, v18, v18, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_rcp_f32_e32 v28, v21
	v_div_scale_f32 v33, null, v20, v20, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v33
	v_div_fixup_f32 v19, v19, v24, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v27, -v21, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v52, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v22, v22, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v54, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v27, v28
	v_div_scale_f32 v27, vcc_lo, v72, v18, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v0, v26
	v_fma_f32 v31, -v33, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v25, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v24, v27, v28 :: v_dual_mul_f32 v53, v53, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, s23, v46, v22, v46
	v_fma_f32 v19, -v21, v24, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v26, v0, 1.0
	v_fmac_f32_e32 v29, v31, v29
	v_div_scale_f32 v31, s22, v44, v20, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v30, v0
	v_fmac_f32_e32 v24, v19, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v25, v31, v29
	v_div_scale_f32 v30, null, v17, v17, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v21, v24, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v33, v25, v31
	v_rcp_f32_e32 v27, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s24
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v28, v24
	v_fmac_f32_e32 v25, v19, v29
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v21, v18, v72
	v_fma_f32 v24, -v33, v25, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v230, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v29, v25
	v_fma_f32 v25, -v30, v27, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v24, v20, v44
	v_fmac_f32_e32 v27, v25, v27
	v_div_scale_f32 v25, s22, v45, v17, v45
	v_mul_f32_e32 v19, v23, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v251, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v26, v19, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v28, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v23, -v26, v19, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v206
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v23, v0, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_exp_f32_e32 v23, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v22, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v25, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v32, null, v28, v28, v158
	v_fma_f32 v19, -v30, v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v19, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v32
	v_fma_f32 v22, -v30, v26, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v71 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v204
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v29, v31, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v32, v19, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_fmas_f32 v22, v22, v27, v26
	v_div_scale_f32 v26, null, v23, v23, v206
	v_div_scale_f32 v25, null, v21, v21, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v22, v17, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v33, v25
	v_div_scale_f32 v27, vcc_lo, v158, v28, v158
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v73, v0
	v_mul_f32_e32 v46, v253, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v22, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v26, v30, 1.0
	v_fmac_f32_e32 v19, v31, v19
	v_fma_f32 v31, -v25, v33, 1.0
	v_div_scale_f32 v22, s23, v206, v23, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v24, v30
	v_mul_f32_e32 v34, v27, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v32, v34, v27
	v_fmac_f32_e32 v33, v31, v33
	v_div_scale_f32 v31, s22, v71, v21, v71
	v_dual_fmac_f32 v34, v0, v19 :: v_dual_mul_f32 v17, v31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v32, v34, v27
	v_fma_f32 v0, -v25, v17, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v20, v19, v34
	s_mov_b32 vcc_lo, s22
	v_dual_fmac_f32 v17, v0, v33 :: v_dual_mul_f32 v0, v22, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v19, v28, v158
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v28, 4, v140
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v25, v17, v31
	v_fma_f32 v24, -v26, v0, v22
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v20, v33, v17
	v_dual_fmac_f32 v0, v24, v30 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v18, v18, v204
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v26, v0, v22
	v_rcp_f32_e32 v26, v24
	v_div_fixup_f32 v17, v17, v21, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v20, v25, v20
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v218
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v219
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v22, v30, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, s22
	v_exp_f32_e32 v25, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v24, v26, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v23, v206
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v220
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v20, v20, v169
	v_fmac_f32_e32 v26, v30, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v4, v27
	v_exp_f32_e32 v21, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v25, v25, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, vcc_lo, v204, v18, v204
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v4, v4, v218
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v25, v25, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v32, v30
	v_fma_f32 v33, -v23, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v34, v22
	v_fma_f32 v37, -v30, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v31, v27, v26 :: v_dual_fmac_f32 v32, v37, v32
	v_fma_f32 v35, -v24, v31, v27
	v_div_scale_f32 v37, s23, v218, v4, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v35, v26
	v_fma_f32 v35, -v22, v34, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v24, v31, v27
	v_fmac_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v36, null, v21, v21, v220
	v_div_scale_f32 v35, s24, v219, v25, v219
	v_fmac_f32_e32 v29, v33, v29
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v33, s22, v169, v20, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v35, v34
	v_div_fmas_f32 v24, v24, v26, v31
	s_mov_b32 vcc_lo, s22
	s_mov_b32 s22, 0x76543210
	v_div_fixup_f32 v18, v24, v18, v204
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v36, v38, 1.0
	v_dual_mul_f32 v39, v33, v29 :: v_dual_fmac_f32 v38, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v23, v39, v33
	v_div_scale_f32 v40, s25, v220, v21, v220
	v_fmac_f32_e32 v39, v27, v29
	v_fma_f32 v27, -v22, v42, v35
	v_mul_f32_e32 v41, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v31, v40, v38
	v_fma_f32 v23, -v23, v39, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v27, v34
	v_fma_f32 v26, -v30, v41, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v24, -v36, v31, v40
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v27, 0x60, v140
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v29, v39
	v_fma_f32 v22, -v22, v42, v35
	v_fmac_f32_e32 v41, v26, v32
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v31, v24, v38
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v29, 1, v6
	v_lshrrev_b32_e32 v35, 3, v6
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v30, v41, v37
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v37, v228, v0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s23, s66, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v26, v32, v41
	s_mov_b32 vcc_lo, s24
	v_fma_f32 v26, -v36, v31, v40
	v_div_fmas_f32 v22, v22, v34, v42
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v36, v212, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s25
	v_div_fixup_f32 v4, v24, v4, v218
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v211, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v22, v25, v219
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v19, |v102|, |v141|, |v135|
	v_max3_f32 v22, |v75|, |v76|, |v77|
	v_max3_f32 v24, |v54|, |v13|, |v11|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v210, v17 :: v_dual_and_b32 v25, 3, v140
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v38, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v66, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v23, v20, v169
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v208, v4
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v117|, |v107|, |v108|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v21, v220
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v20, |v91|, |v92|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v205, v18
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v18, |v99|, |v100|, |v101|
	v_max3_f32 v21, |v93|, |v83|, |v84|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v203, v0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v115|, |v116|
	v_max3_f32 v23, |v78|, |v133|, |v16|
	v_max3_f32 v17, |v109|, |v110|, |v142|
	s_delay_alu instid0(VALU_DEP_3)
	v_max3_f32 v0, v0, |v118|, v4
	v_max3_f32 v4, v18, v19, |v138|
	v_max3_f32 v18, |v85|, |v86|, |v134|
	v_max3_f32 v19, v20, |v94|, v21
	v_max3_f32 v20, v22, v23, |v15|
	v_max_f32_e64 v21, |v67|, |v68|
	v_max3_f32 v22, |v69|, |v59|, |v60|
	v_max3_f32 v23, |v51|, |v52|, |v53|
	v_max3_f32 v0, v0, v17, v4
	v_max3_f32 v18, v19, v18, v20
	v_max_f32_e64 v20, |v43|, |v44|
	v_max3_f32 v17, v21, |v70|, v22
	v_max3_f32 v19, v23, v24, |v12|
	v_max3_f32 v21, |v45|, |v34|, |v36|
	v_max3_f32 v22, |v33|, |v32|, |v30|
	v_max3_f32 v23, |v31|, |v7|, |v8|
	v_max3_f32 v4, |v61|, |v62|, |v14|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v24, v0, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, |v46|, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max3_f32 v21, v22, v23, |v9|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v18, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v19, v17, v4, v19
	v_max_f32_e32 v22, v24, v24
.Ltmp24:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s23
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v24, v19, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v18, v23
	v_max3_f32 v17, |v37|, |v38|, |v10|
	v_max_f32_e32 v24, v24, v24
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v23, 4, v140
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, v17, v21
	v_max_f32_e32 v17, v0, v22
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v21, v25, 9, 0
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v19, v19, v24 :: v_dual_lshlrev_b32 v22, 5, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v20, s22, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 8, v140
	v_lshl_add_u32 v21, v23, 2, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v26, 0x680, v28, v22
	v_xor_b32_e32 v22, v22, v27
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v39, v23, 6, 0
	v_lshl_add_u32 v21, v24, 4, v21
	v_xor_b32_e32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v0
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v21, v29, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v22, v39, v35, v26
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 38, v144
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v39.h, 0
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[17:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v22
.Ltmp40:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 36, v144
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v21, s22, s66, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v22, null, s67, 0, s22
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 34, v144
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s27, s66, v0
	v_add_co_ci_u32_e64 v1, null, s67, 0, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s27, s66, v2
	v_add_co_ci_u32_e64 v3, null, s67, 0, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 32, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[2:3]
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v17
	v_mov_b32_e32 v0, v18
.Ltmp42:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[2:3]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v2, v19 :: v_dual_max_f32 v3, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v18, v18
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v20, v20
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v0, v0, v0
.Ltmp47:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[21:22]
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp49:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[21:22]
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
	v_max_f32_e32 v4, v17, v0
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v19, v19
.Ltmp53:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s31, s66, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v21, v4
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v19, v20, v20
.Ltmp56:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s31
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v17, v2
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v3
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp59:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[0:1]
.Ltmp60:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v17, v2
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v21, v21
	v_max_f32_e32 v19, v18, v19
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v29, 4, v25
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v20, v20
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 30, v144
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v18, v19 :: v_dual_max_f32 v1, v4, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v3, v0 :: v_dual_add_nc_u32 v25, 0, v6
	v_max_f32_e32 v3, v17, v17
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s34, s66, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v20, v0 :: v_dual_mov_b32 v21, v1
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v18, v18
	v_max_f32_e32 v2, v2, v3
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v19, v4 :: v_dual_mov_b32 v4, v2
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v26, v20, v20 :: v_dual_max_f32 v21, v21, v21
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v22, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v19, 28, v144
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v26 :: v_dual_max_f32 v1, v1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s35, s66, v19
	v_add_co_ci_u32_e64 v20, null, s67, 0, s35
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v22, v22
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v22, 1, v27
	v_lshlrev_b32_e32 v24, 3, v24
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v23
	v_add_nc_u32_e32 v23, 0, v29
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v21
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v21, v25, v22, v24
.Ltmp87:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v22, 26, v144
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s67, 0, s34
.Ltmp88:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v23, v4, v24
	ds_store_b128 v21, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp89:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[19:20]
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[0:3], v4
.Ltmp91:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 24, v144
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[19:20]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v19, 22, v144
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v21, s35, s66, v22
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[17:18]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v22, null, s67, 0, s35
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[17:18]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s40, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v18, null, s67, 0, s40
	v_add_co_u32 v19, s40, s66, v19
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v144
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v20, null, s67, 0, s40
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[17:18]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v3, v3, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[17:18]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s44, s66, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v23, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 18, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[19:20]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s67, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s44, s66, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v20, null, s67, 0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[21:22]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v21, s44, s66, v4
	v_add_co_ci_u32_e64 v22, null, s67, 0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[17:18]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v24, v0, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[17:18]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s50, s66, v56
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[19:20]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s67, 0, s50
	v_add_co_u32 v19, s50, s66, v55
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, s67, 0, s50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v1, v1 :: v_dual_fmac_f32 v0, v4, v0
	v_div_scale_f32 v4, vcc_lo, v23, 0x40e00000, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[17:18]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v17, s53, s66, v50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[21:22]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[19:20]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s67, 0, s53
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[19:20]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v19, 0x2b8cbccc, v1 :: v_dual_max_f32 v2, v2, v2
	v_mul_f32_e32 v21, v4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[17:18]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v25, -v24, v21, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_fmac_f32 v21, v25, v0
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v24, v21, v4
	v_rcp_f32_e32 v26, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v20, v1, v0, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s55, s66, v49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v22, v26, 1.0
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v25, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v4, v26
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v4, vcc_lo, v2, 0x40e00000, v2
	v_div_fixup_f32 v20, v20, 0x40e00000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[17:18]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v18.h, v39.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v40, -v21, v25, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v18.l, v20.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v25, v40, v25
	v_div_scale_f32 v40, s61, v3, 0x40e00000, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v24, v35, 1.0
	v_fmac_f32_e32 v35, v0, v35
	v_mul_f32_e32 v23, v4, v26
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s58, s66, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v17, -v22, v23, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v23, v17, v26
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v17, 1, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v18, s60, v19, 0x40e00000, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v4, -v22, v23, v4
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v20, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v17, v18, v25 :: v_dual_mul_f32 v20, v40, v35
	v_div_fmas_f32 v4, v4, v26, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v63, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v21, v17, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v24, v20, v40
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v2, v4, 0x40e00000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v41, null, v63, v63, v115
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v17, v23, v25 :: v_dual_fmac_f32 v20, v26, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v39.l, v2.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v21, v17, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v18, v41
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v24, v20, v40
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.h, v39.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v0, v0, v25, v17
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v17, 1, v39
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v35, v20
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v24, vcc_lo, v115, v63, v115
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v63, v63, v116
	v_fma_f32 v4, -v41, v18, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v20, v1, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v25, v19
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v17, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v18, v4, v18
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v39.l, v20.h
	v_and_b32_e32 v2, 1, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v17, v24, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v19, v25, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v35, 1, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v42, s60, v116, v63, v116
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v41, v17, v24
	v_fmac_f32_e32 v25, v23, v25
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v2, v20, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v82, v82, v92
	v_dual_fmac_f32 v17, v0, v18 :: v_dual_mul_f32 v20, v42, v25
	v_div_scale_f32 v88, null, v82, v82, v84
	v_div_scale_f32 v90, null, v82, v82, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v41, v17, v24
	v_fma_f32 v41, -v19, v20, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v24, v18, v17
	v_fmac_f32_e32 v20, v41, v25
	v_div_scale_f32 v26, null, v63, v63, v118
	v_div_scale_f32 v40, null, v63, v63, v117
	v_div_scale_f32 v48, null, v63, v63, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v26
	v_rcp_f32_e32 v0, v40
	v_div_scale_f32 v49, null, v63, v63, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v48
	v_div_fixup_f32 v24, v17, v63, v115
	v_fma_f32 v17, -v19, v20, v42
	v_rcp_f32_e32 v50, v49
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v57, null, v63, v63, v109
	v_fma_f32 v35, -v26, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v47, -v40, v0, 1.0
	v_div_fmas_f32 v17, v17, v25, v20
	v_fma_f32 v56, -v48, v41, 1.0
	v_div_scale_f32 v20, s60, v107, v63, v107
	v_fmac_f32_e32 v39, v35, v39
	v_div_scale_f32 v35, s61, v118, v63, v118
	v_fmac_f32_e32 v0, v47, v0
	v_div_scale_f32 v47, s62, v117, v63, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v18, v35, v39 :: v_dual_fmac_f32 v41, v56, v41
	v_fma_f32 v56, -v49, v50, 1.0
	v_mul_f32_e32 v42, v47, v0
	v_div_fixup_f32 v25, v17, v63, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v26, v18, v35
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v50, v56, v50
	v_div_scale_f32 v56, s63, v108, v63, v108
	v_fmac_f32_e32 v18, v19, v39
	v_fma_f32 v19, -v40, v42, v47
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v58, null, v63, v63, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v26, v18, v35
	v_dual_fmac_f32 v42, v19, v0 :: v_dual_mul_f32 v19, v20, v41
	v_div_scale_f32 v66, null, v63, v63, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v39, v18
	v_fma_f32 v18, -v40, v42, v47
	v_rcp_f32_e32 v47, v57
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v26, -v48, v19, v20
	v_mul_f32_e32 v39, v56, v50
	v_div_fmas_f32 v0, v18, v0, v42
	v_rcp_f32_e32 v18, v58
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v19, v26, v41
	v_fma_f32 v40, -v49, v39, v56
	v_div_fixup_f32 v26, v17, v63, v118
	v_fma_f32 v42, -v57, v47, 1.0
	v_div_fixup_f32 v35, v0, v63, v117
	v_fma_f32 v0, -v48, v19, v20
	v_fmac_f32_e32 v39, v40, v50
	v_div_scale_f32 v17, s61, v109, v63, v109
	v_fmac_f32_e32 v47, v42, v47
	v_fma_f32 v20, -v58, v18, 1.0
	v_div_scale_f32 v48, null, v63, v63, v142
	v_div_fmas_f32 v0, v0, v41, v19
	v_fma_f32 v19, -v49, v39, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v41, v17, v47 :: v_dual_fmac_f32 v18, v20, v18
	v_rcp_f32_e32 v20, v48
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v42, s60, v110, v63, v110
	v_div_scale_f32 v49, null, v63, v63, v99
	v_div_fmas_f32 v19, v19, v50, v39
	v_fma_f32 v50, -v57, v41, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v42, v18
	v_rcp_f32_e32 v65, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v64, -v48, v20, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v23, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v50, v47
	v_div_scale_f32 v50, null, v63, v63, v100
	v_div_fixup_f32 v39, v0, v63, v107
	v_div_fixup_f32 v40, v19, v63, v108
	v_fma_f32 v0, -v58, v56, v42
	v_fmac_f32_e32 v20, v64, v20
	v_div_scale_f32 v19, s62, v142, v63, v142
	v_fma_f32 v17, -v57, v41, v17
	v_rcp_f32_e32 v57, v50
	v_fma_f32 v64, -v49, v65, 1.0
	v_fmac_f32_e32 v56, v0, v18
	v_mul_f32_e32 v0, v19, v20
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v73, null, v63, v63, v135
	v_fmac_f32_e32 v65, v64, v65
	v_div_scale_f32 v64, s63, v99, v63, v99
	v_div_fmas_f32 v17, v17, v47, v41
	v_fma_f32 v41, -v58, v56, v42
	v_fma_f32 v42, -v48, v0, v19
	v_fma_f32 v58, -v50, v57, 1.0
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v47, v64, v65
	v_div_fmas_f32 v18, v41, v18, v56
	v_fmac_f32_e32 v0, v42, v20
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, s60, v100, v63, v100
	v_fma_f32 v71, -v49, v47, v64
	v_div_fixup_f32 v41, v17, v63, v109
	v_div_fixup_f32 v42, v18, v63, v110
	v_fma_f32 v17, -v48, v0, v19
	v_mul_f32_e32 v18, v58, v57
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v56, v66
	v_fmac_f32_e32 v47, v71, v65
	v_div_fmas_f32 v0, v17, v20, v0
	v_fma_f32 v20, -v50, v18, v58
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v71, null, v63, v63, v102
	v_fma_f32 v17, -v49, v47, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v18, v20, v57
	v_div_scale_f32 v64, s61, v101, v63, v101
	v_fma_f32 v19, -v66, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v17, v17, v65, v47
	v_div_fixup_f32 v47, v0, v63, v142
	v_fma_f32 v0, -v50, v18, v58
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v56, v19, v56
	v_rcp_f32_e32 v19, v71
	v_div_scale_f32 v72, null, v63, v63, v141
	v_div_fmas_f32 v0, v0, v57, v18
	v_rcp_f32_e32 v18, v73
	v_mul_f32_e32 v65, v64, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v20, v72
	v_div_fixup_f32 v48, v17, v63, v99
	v_div_scale_f32 v58, s62, v102, v63, v102
	v_fma_f32 v49, -v71, v19, 1.0
	v_fma_f32 v17, -v66, v65, v64
	v_div_scale_f32 v74, null, v63, v63, v138
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v73, v18, 1.0
	v_fmac_f32_e32 v19, v49, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v72, v20, 1.0
	v_div_scale_f32 v57, s60, v141, v63, v141
	v_dual_fmac_f32 v18, v79, v18 :: v_dual_fmac_f32 v65, v17, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v17, v58, v19 :: v_dual_fmac_f32 v20, v49, v20
	v_div_fixup_f32 v49, v0, v63, v100
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v0, -v66, v65, v64
	v_rcp_f32_e32 v66, v74
	v_fma_f32 v50, -v71, v17, v58
	v_mul_f32_e32 v64, v57, v20
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v21.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v56, v65
	v_div_scale_f32 v65, s61, v135, v63, v135
	v_fmac_f32_e32 v17, v50, v19
	v_fma_f32 v56, -v72, v64, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v0, v63, v101
	v_fma_f32 v79, -v74, v66, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v0, -v71, v17, v58
	v_fmac_f32_e32 v64, v56, v20
	v_mul_f32_e32 v58, v65, v18
	v_fmac_f32_e32 v66, v79, v66
	v_div_scale_f32 v71, s63, v138, v63, v138
	v_div_scale_f32 v79, null, v82, v82, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v80, v71, v66
	v_div_fmas_f32 v0, v0, v19, v17
	v_fma_f32 v17, -v72, v64, v57
	v_fma_f32 v19, -v73, v58, v65
	v_rcp_f32_e32 v72, v79
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v56, v0, v63, v102
	v_div_fmas_f32 v17, v17, v20, v64
	v_fmac_f32_e32 v58, v19, v18
	v_rcp_f32_e32 v19, v81
	v_fma_f32 v20, -v74, v80, v71
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v57, v17, v63, v141
	v_fma_f32 v0, -v73, v58, v65
	v_fma_f32 v64, -v79, v72, 1.0
	v_fmac_f32_e32 v80, v20, v66
	v_div_scale_f32 v17, s60, v91, v82, v91
	v_div_scale_f32 v73, null, v82, v82, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v64, v72
	v_fma_f32 v20, -v81, v19, 1.0
	v_div_fmas_f32 v0, v0, v18, v58
	v_fma_f32 v18, -v74, v80, v71
	v_div_scale_f32 v65, s61, v92, v82, v92
	v_dual_mul_f32 v64, v17, v72 :: v_dual_fmac_f32 v19, v20, v19
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v20, v73
	v_div_fmas_f32 v18, v18, v66, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v79, v64, v17
	v_mul_f32_e32 v74, v65, v19
	v_div_fixup_f32 v58, v0, v63, v135
	v_div_scale_f32 v71, null, v82, v82, v93
	v_fmac_f32_e32 v64, v66, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v81, v74, v65
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v80, -v73, v20, 1.0
	v_rcp_f32_e32 v87, v71
	v_fma_f32 v17, -v79, v64, v17
	v_fmac_f32_e32 v74, v0, v19
	v_div_fixup_f32 v63, v18, v63, v138
	v_fmac_f32_e32 v20, v80, v20
	v_div_scale_f32 v18, s62, v94, v82, v94
	v_div_fmas_f32 v17, v17, v72, v64
	v_fma_f32 v64, -v81, v74, v65
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v18, v20
	v_div_scale_f32 v80, null, v82, v82, v83
	v_div_fmas_f32 v19, v64, v19, v74
	v_rcp_f32_e32 v74, v88
	v_fma_f32 v66, -v71, v87, 1.0
	v_fma_f32 v65, -v73, v0, v18
	v_rcp_f32_e32 v79, v80
	v_div_fixup_f32 v64, v17, v82, v91
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v87, v66, v87 :: v_dual_fmac_f32 v0, v65, v20
	v_div_scale_f32 v66, s63, v93, v82, v93
	v_div_fixup_f32 v65, v19, v82, v92
	v_fma_f32 v19, -v88, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v17, -v73, v0, v18
	v_fma_f32 v81, -v80, v79, 1.0
	v_div_scale_f32 v73, s61, v84, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v19, v74
	v_mul_f32_e32 v72, v66, v87
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s60, v83, v82, v83
	v_div_fmas_f32 v0, v17, v20, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v71, v72, v66
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v18, v81, v79
	v_div_scale_f32 v91, null, v82, v82, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v89, v87
	v_div_scale_f32 v89, null, v82, v82, v85
	v_fma_f32 v20, -v80, v18, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v71, v72, v66
	v_rcp_f32_e32 v19, v89
	v_div_fixup_f32 v66, v0, v82, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v18, v20, v79
	v_rcp_f32_e32 v20, v90
	v_div_fmas_f32 v17, v17, v87, v72
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v0, -v80, v18, v81
	v_div_scale_f32 v81, null, v82, v82, v134
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v89, v19, 1.0
	v_div_fixup_f32 v71, v17, v82, v93
	v_div_fmas_f32 v0, v0, v79, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v18, v81
	v_div_scale_f32 v80, s62, v85, v82, v85
	v_fmac_f32_e32 v19, v72, v19
	v_mul_f32_e32 v87, v73, v74
	v_fma_f32 v72, -v90, v20, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v79, s60, v86, v82, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v88, v87, v73
	v_fmac_f32_e32 v20, v72, v20
	v_div_fixup_f32 v72, v0, v82, v83
	v_fma_f32 v92, -v81, v18, 1.0
	v_div_scale_f32 v93, null, v82, v82, v77
	v_fmac_f32_e32 v87, v17, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v18, v92, v18
	v_fma_f32 v0, -v88, v87, v73
	v_rcp_f32_e32 v88, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v74, v87
	v_div_scale_f32 v87, s61, v134, v82, v134
	v_mul_f32_e32 v17, v80, v19
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v92, -v91, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v89, v17, v80
	v_dual_fmac_f32 v88, v92, v88 :: v_dual_fmac_f32 v17, v73, v19
	v_mul_f32_e32 v83, v79, v20
	v_div_fixup_f32 v73, v0, v82, v84
	v_div_scale_f32 v84, s63, v75, v82, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v89, v17, v80
	v_fma_f32 v74, -v90, v83, v79
	v_mul_f32_e32 v80, v87, v18
	v_div_scale_f32 v89, null, v82, v82, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v19, v17
	v_fmac_f32_e32 v83, v74, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v19, -v81, v80, v87
	v_mul_f32_e32 v92, v84, v88
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v74, v0, v82, v85
	v_fma_f32 v17, -v90, v83, v79
	v_fmac_f32_e32 v80, v19, v18
	v_rcp_f32_e32 v19, v93
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v85, null, v82, v82, v133
	v_div_fmas_f32 v17, v17, v20, v83
	v_fma_f32 v20, -v91, v92, v84
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v79, v17, v82, v86
	v_fmac_f32_e32 v92, v20, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v20, -v93, v19, 1.0
	v_fma_f32 v83, -v89, v90, 1.0
	v_div_scale_f32 v17, s60, v76, v82, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v20, v19
	v_fma_f32 v0, -v81, v80, v87
	v_div_scale_f32 v81, null, v82, v82, v78
	v_div_fmas_f32 v0, v0, v18, v80
	v_fma_f32 v18, -v91, v92, v84
	v_div_scale_f32 v84, s61, v77, v82, v77
	v_fmac_f32_e32 v90, v83, v90
	v_rcp_f32_e32 v20, v81
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v87, v84, v19
	v_div_fmas_f32 v18, v18, v88, v92
	v_mul_f32_e32 v83, v17, v90
	v_div_fixup_f32 v80, v0, v82, v134
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v0, -v93, v87, v84
	v_div_fixup_f32 v75, v18, v82, v75
	v_fma_f32 v86, -v89, v83, v17
	v_fma_f32 v88, -v81, v20, 1.0
	v_div_scale_f32 v18, s62, v78, v82, v78
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v86, v90 :: v_dual_fmac_f32 v20, v88, v20
	v_fmac_f32_e32 v87, v0, v19
	v_div_scale_f32 v86, null, v82, v82, v16
	v_fma_f32 v17, -v89, v83, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v18, v20
	v_rcp_f32_e32 v89, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v85, v91, 1.0
	v_div_fmas_f32 v17, v17, v90, v83
	v_fma_f32 v83, -v93, v87, v84
	v_div_scale_f32 v93, null, v82, v82, v15
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v84, -v81, v0, v18
	v_div_fmas_f32 v19, v83, v19, v87
	v_rcp_f32_e32 v83, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v86, v89, 1.0
	v_div_scale_f32 v87, s60, v16, v82, v16
	v_div_fixup_f32 v77, v19, v82, v77
	v_fmac_f32_e32 v0, v84, v20
	v_div_fixup_f32 v76, v17, v82, v76
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v93, v83, 1.0
	v_fma_f32 v17, -v81, v0, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v19, v83
	v_fmac_f32_e32 v89, v92, v89
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, s63, v133, v82, v133
	v_div_fmas_f32 v0, v17, v20, v0
	v_mul_f32_e32 v18, v87, v89
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v90, v88, v91
	v_div_fixup_f32 v78, v0, v82, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v86, v18, v87
	v_fma_f32 v84, -v85, v90, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v84, v91
	v_div_scale_f32 v84, null, v55, v55, v67
	v_fma_f32 v17, -v85, v90, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v19, v84
	v_div_scale_f32 v85, s61, v15, v82, v15
	v_div_scale_f32 v88, null, v55, v55, v68
	v_div_fmas_f32 v17, v17, v91, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v85, v83
	v_fmac_f32_e32 v18, v20, v89
	v_rcp_f32_e32 v20, v88
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v19, 1.0
	v_div_fixup_f32 v81, v17, v82, v133
	v_fma_f32 v0, -v86, v18, v87
	v_fma_f32 v17, -v93, v90, v85
	v_div_scale_f32 v86, s62, v67, v55, v67
	v_fmac_f32_e32 v19, v91, v19
	v_div_scale_f32 v91, null, v55, v55, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v88, v20, 1.0
	v_div_fmas_f32 v0, v0, v89, v18
	v_fmac_f32_e32 v90, v17, v83
	v_rcp_f32_e32 v18, v91
	v_div_scale_f32 v89, null, v55, v55, v69
	v_dual_mul_f32 v17, v86, v19 :: v_dual_fmac_f32 v20, v87, v20
	v_div_scale_f32 v87, s60, v68, v55, v68
	v_div_fixup_f32 v16, v0, v82, v16
	v_fma_f32 v0, -v93, v90, v85
	v_rcp_f32_e32 v93, v89
	v_fma_f32 v85, -v84, v17, v86
	v_mul_f32_e32 v92, v87, v20
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v91, v18, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v83, v90
	v_fmac_f32_e32 v17, v85, v19
	v_fma_f32 v83, -v88, v92, v87
	v_fmac_f32_e32 v18, v94, v18
	v_div_scale_f32 v85, s61, v70, v55, v70
	v_fma_f32 v90, -v89, v93, 1.0
	v_div_fixup_f32 v15, v0, v82, v15
	v_fma_f32 v0, -v84, v17, v86
	v_fmac_f32_e32 v92, v83, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v85, v18 :: v_dual_fmac_f32 v93, v90, v93
	v_div_scale_f32 v83, s63, v69, v55, v69
	v_div_scale_f32 v84, null, v55, v55, v59
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v19, v17
	v_fma_f32 v17, -v88, v92, v87
	v_fma_f32 v19, -v91, v82, v85
	v_rcp_f32_e32 v86, v84
	v_mul_f32_e32 v87, v83, v93
	v_div_scale_f32 v88, null, v55, v55, v60
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v82, v19, v18
	v_div_fmas_f32 v17, v17, v20, v92
	v_rcp_f32_e32 v19, v88
	v_fma_f32 v20, -v89, v87, v83
	v_div_fixup_f32 v67, v0, v55, v67
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v86, 1.0
	v_fma_f32 v0, -v91, v82, v85
	v_div_scale_f32 v85, null, v55, v55, v61
	v_fmac_f32_e32 v87, v20, v93
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v68, v17, v55, v68
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v17, s60, v59, v55, v59
	v_fma_f32 v20, -v88, v19, 1.0
	v_div_fmas_f32 v0, v0, v18, v82
	v_fma_f32 v18, -v89, v87, v83
	v_rcp_f32_e32 v83, v85
	v_div_scale_f32 v90, null, v55, v55, v62
	s_mov_b32 vcc_lo, s63
	v_dual_mul_f32 v82, v17, v86 :: v_dual_fmac_f32 v19, v20, v19
	v_div_scale_f32 v89, s61, v60, v55, v60
	v_div_fmas_f32 v20, v18, v93, v87
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v84, v82, v17
	v_mul_f32_e32 v91, v89, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v83, 1.0
	v_div_fixup_f32 v18, v0, v55, v70
	v_div_scale_f32 v70, null, v55, v55, v14
	v_div_fixup_f32 v20, v20, v55, v69
	v_fmac_f32_e32 v82, v87, v86
	v_fma_f32 v0, -v88, v91, v89
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v69, s62, v61, v55, v61
	v_fma_f32 v87, -v90, v93, 1.0
	v_rcp_f32_e32 v92, v70
	v_fma_f32 v17, -v84, v82, v17
	v_fmac_f32_e32 v91, v0, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v84, v69, v83 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, s63, v62, v55, v62
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v17, v86, v82
	v_fma_f32 v17, -v88, v91, v89
	v_fma_f32 v82, -v85, v84, v69
	v_mul_f32_e32 v86, v87, v93
	v_fma_f32 v88, -v70, v92, 1.0
	v_div_scale_f32 v89, null, v55, v55, v51
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v84, v82, v83
	v_div_fmas_f32 v17, v17, v19, v91
	v_rcp_f32_e32 v82, v89
	v_fma_f32 v19, -v90, v86, v87
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v88, s60, v14, v55, v14
	v_div_fixup_f32 v0, v0, v55, v59
	v_div_fixup_f32 v17, v17, v55, v60
	v_fma_f32 v59, -v85, v84, v69
	v_fmac_f32_e32 v86, v19, v93
	v_mul_f32_e32 v60, v88, v92
	v_div_scale_f32 v69, null, v55, v55, v52
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v19, -v89, v82, 1.0
	v_div_fmas_f32 v59, v59, v83, v84
	v_fma_f32 v83, -v90, v86, v87
	v_fma_f32 v84, -v70, v60, v88
	v_rcp_f32_e32 v85, v69
	v_div_scale_f32 v90, null, v55, v55, v53
	v_fmac_f32_e32 v82, v19, v82
	v_div_scale_f32 v87, s61, v51, v55, v51
	v_fmac_f32_e32 v60, v84, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v90
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v19, v59, v55, v61
	v_div_fmas_f32 v83, v83, v93, v86
	v_mul_f32_e32 v86, v87, v82
	v_fma_f32 v91, -v69, v85, 1.0
	v_fma_f32 v61, -v70, v60, v88
	v_div_scale_f32 v70, s62, v52, v55, v52
	v_div_fixup_f32 v59, v83, v55, v62
	v_fma_f32 v62, -v89, v86, v87
	v_fmac_f32_e32 v85, v91, v85
	v_fma_f32 v83, -v90, v84, 1.0
	v_div_scale_f32 v88, null, v55, v55, v54
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v86, v62, v82
	v_div_fmas_f32 v60, v61, v92, v60
	v_dual_mul_f32 v61, v70, v85 :: v_dual_fmac_f32 v84, v83, v84
	v_rcp_f32_e32 v62, v88
	v_div_scale_f32 v83, s60, v53, v55, v53
	v_div_scale_f32 v91, null, v55, v55, v13
	v_div_fixup_f32 v14, v60, v55, v14
	v_fma_f32 v60, -v89, v86, v87
	v_fma_f32 v87, -v69, v61, v70
	v_mul_f32_e32 v89, v83, v84
	v_rcp_f32_e32 v92, v91
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v62, 1.0
	v_div_fmas_f32 v60, v60, v82, v86
	v_fmac_f32_e32 v61, v87, v85
	v_fma_f32 v82, -v90, v89, v83
	v_div_scale_f32 v86, s61, v54, v55, v54
	v_fmac_f32_e32 v62, v93, v62
	v_div_fixup_f32 v51, v60, v55, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v91, v92, 1.0
	v_fma_f32 v60, -v69, v61, v70
	v_fmac_f32_e32 v89, v82, v84
	v_div_scale_f32 v82, null, v55, v55, v11
	s_mov_b32 vcc_lo, s62
	v_dual_mul_f32 v69, v86, v62 :: v_dual_fmac_f32 v92, v87, v92
	v_div_scale_f32 v70, s63, v13, v55, v13
	v_div_fmas_f32 v60, v60, v85, v61
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v61, -v90, v89, v83
	v_fma_f32 v83, -v88, v69, v86
	v_mul_f32_e32 v87, v70, v92
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v90, null, v55, v55, v12
	v_div_fmas_f32 v61, v61, v84, v89
	v_fmac_f32_e32 v69, v83, v62
	v_fma_f32 v84, -v91, v87, v70
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v82, v85, 1.0
	v_rcp_f32_e32 v83, v90
	v_div_fixup_f32 v52, v60, v55, v52
	v_div_fixup_f32 v53, v61, v55, v53
	v_fma_f32 v60, -v88, v69, v86
	v_fmac_f32_e32 v87, v84, v92
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v61, s60, v11, v55, v11
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v89, null, v23, v23, v44
	v_div_fmas_f32 v60, v60, v62, v69
	v_fma_f32 v62, -v91, v87, v70
	v_mul_f32_e32 v69, v61, v85
	v_div_scale_f32 v70, null, v23, v23, v43
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_fmas_f32 v62, v62, v92, v87
	v_rcp_f32_e32 v86, v70
	v_fma_f32 v87, -v82, v69, v61
	v_div_fixup_f32 v54, v60, v55, v54
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, s61, v12, v55, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v87, v85
	v_div_fixup_f32 v13, v62, v55, v13
	v_rcp_f32_e32 v62, v89
	v_mul_f32_e32 v88, v84, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v70, v86, 1.0
	v_fma_f32 v61, -v82, v69, v61
	v_div_scale_f32 v82, null, v23, v23, v46
	v_fma_f32 v60, -v90, v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v87, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v89, v62, 1.0
	v_fmac_f32_e32 v88, v60, v83
	v_div_scale_f32 v60, s62, v43, v23, v43
	v_div_fmas_f32 v61, v61, v85, v69
	v_fmac_f32_e32 v62, v91, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v90, v88, v84
	v_mul_f32_e32 v84, v60, v86
	v_div_scale_f32 v85, s60, v44, v23, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v82, v87, 1.0
	v_div_scale_f32 v92, null, v23, v23, v45
	v_fma_f32 v91, -v70, v84, v60
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s63, v46, v23, v46
	v_mul_f32_e32 v93, v85, v62
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v69, v69, v83, v88
	v_fmac_f32_e32 v84, v91, v86
	v_mul_f32_e32 v88, v90, v87
	v_fma_f32 v83, -v89, v93, v85
	v_div_fixup_f32 v11, v61, v55, v11
	v_div_fixup_f32 v12, v69, v55, v12
	v_fma_f32 v55, -v70, v84, v60
	v_fma_f32 v60, -v82, v88, v90
	v_div_scale_f32 v69, null, v23, v23, v34
	v_fmac_f32_e32 v93, v83, v62
	v_fma_f32 v61, -v92, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v60, v87
	v_rcp_f32_e32 v60, v69
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v70, -v89, v93, v85
	v_fmac_f32_e32 v94, v61, v94
	v_div_scale_f32 v61, s61, v45, v23, v45
	v_div_fmas_f32 v55, v55, v86, v84
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v83, null, v23, v23, v36
	v_div_fmas_f32 v62, v70, v62, v93
	v_fma_f32 v70, -v82, v88, v90
	v_mul_f32_e32 v82, v61, v94
	v_fma_f32 v84, -v69, v60, 1.0
	v_rcp_f32_e32 v85, v83
	v_div_fixup_f32 v43, v55, v23, v43
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v86, -v92, v82, v61
	v_fmac_f32_e32 v60, v84, v60
	v_div_scale_f32 v84, s60, v34, v23, v34
	v_div_fmas_f32 v70, v70, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v86, v94
	v_div_fixup_f32 v44, v62, v23, v44
	v_mul_f32_e32 v55, v84, v60
	v_fma_f32 v62, -v83, v85, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v61, -v92, v82, v61
	v_div_fixup_f32 v46, v70, v23, v46
	v_fma_f32 v86, -v69, v55, v84
	v_div_scale_f32 v70, null, v23, v23, v37
	v_fmac_f32_e32 v85, v62, v85
	v_div_scale_f32 v62, s62, v36, v23, v36
	v_div_fmas_f32 v61, v61, v94, v82
	v_fmac_f32_e32 v55, v86, v60
	v_rcp_f32_e32 v87, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v62, v85
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v45, v61, v23, v45
	v_fma_f32 v61, -v69, v55, v84
	v_div_scale_f32 v86, null, v23, v23, v38
	v_fma_f32 v69, -v83, v82, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v61, v60, v55
	v_div_scale_f32 v60, null, v23, v23, v10
	v_fma_f32 v84, -v70, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v69, v85
	v_rcp_f32_e32 v69, v60
	v_div_scale_f32 v61, s60, v37, v23, v37
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v23, v23, v33
	v_div_fixup_f32 v34, v55, v23, v34
	v_fma_f32 v62, -v83, v82, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v60, v69, 1.0
	v_mul_f32_e32 v83, v61, v87
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v88, v55, v88
	v_div_scale_f32 v55, s61, v38, v23, v38
	v_fmac_f32_e32 v69, v89, v69
	v_div_scale_f32 v89, null, v23, v23, v32
	v_div_fmas_f32 v62, v62, v85, v82
	v_fma_f32 v82, -v70, v83, v61
	v_mul_f32_e32 v85, v55, v88
	v_div_scale_f32 v91, s62, v10, v23, v10
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v55
	v_mul_f32_e32 v94, v91, v69
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s63, v33, v23, v33
	v_div_fixup_f32 v36, v62, v23, v36
	v_fma_f32 v61, -v70, v83, v61
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v62, -v60, v94, v91
	v_mul_f32_e32 v70, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v55, -v86, v85, v55
	v_fmac_f32_e32 v94, v62, v69
	v_fma_f32 v62, -v84, v70, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s60, v32, v23, v32
	v_div_fmas_f32 v61, v61, v87, v83
	v_fma_f32 v60, -v60, v94, v91
	v_fmac_f32_e32 v70, v62, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v62, v82, v93
	v_div_scale_f32 v83, null, v23, v23, v30
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v37, v61, v23, v37
	v_div_fmas_f32 v55, v55, v88, v85
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v60, v60, v69, v94
	v_fma_f32 v69, -v84, v70, v92
	v_fma_f32 v84, -v89, v62, v82
	v_div_fixup_f32 v38, v55, v23, v38
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v10, v60, v23, v10
	v_div_fmas_f32 v69, v69, v90, v70
	v_fmac_f32_e32 v62, v84, v93
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v61, -v83, v85, 1.0
	v_div_scale_f32 v60, null, v23, v23, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v89, v62, v82
	v_div_fixup_f32 v33, v69, v23, v33
	v_fmac_f32_e32 v85, v61, v85
	v_div_scale_f32 v61, null, v23, v23, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v93, v62
	v_div_scale_f32 v70, vcc_lo, v30, v23, v30
	v_rcp_f32_e32 v62, v60
	v_div_scale_f32 v69, null, v23, v23, v8
	v_mul_f32_e32 v86, v70, v85
	v_div_scale_f32 v87, null, v23, v23, v9
	v_rcp_f32_e32 v82, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v69
	v_fma_f32 v90, -v83, v86, v70
	v_div_fixup_f32 v32, v55, v23, v32
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v60, v62, 1.0
	v_rcp_f32_e32 v89, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v62, v55, v62
	v_div_scale_f32 v55, s60, v31, v23, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v83, v86, v70
	v_fma_f32 v88, -v61, v82, 1.0
	v_fma_f32 v91, -v69, v84, 1.0
	v_mul_f32_e32 v92, v55, v62
	v_fma_f32 v93, -v87, v89, 1.0
	v_div_fmas_f32 v70, v70, v85, v86
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fmac_f32_e32 v82, v88, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, s61, v7, v23, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s62, v8, v23, v8
	v_fma_f32 v90, -v60, v92, v55
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s63, v9, v23, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v17
	v_and_b32_e32 v17, 15, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v95, v91, v84 :: v_dual_fmac_f32 v92, v90, v62
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v83, -v61, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v69, v95, v91
	v_fma_f32 v55, -v60, v92, v55
	v_fma_f32 v60, -v87, v96, v93
	v_fmac_f32_e32 v94, v83, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v90, v84
	v_div_fmas_f32 v55, v55, v62, v92
	v_fmac_f32_e32 v96, v60, v89
	v_fma_f32 v61, -v61, v94, v88
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v60, -v69, v95, v91
	v_div_fixup_f32 v30, v70, v23, v30
	v_fma_f32 v62, -v87, v96, v93
	v_div_fmas_f32 v61, v61, v82, v94
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v31, v55, v23, v31
	v_div_fmas_f32 v60, v60, v84, v95
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v7, v61, v23, v7
	v_div_fmas_f32 v62, v62, v89, v96
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v60, v23, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v62, v23, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v62, v71
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v35
	v_rndne_f32_e32 v35, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v47
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v56
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v56, v58
	v_rndne_f32_e32 v57, v63
	v_rndne_f32_e32 v58, v64
	v_rndne_f32_e32 v64, v73
	v_rndne_f32_e32 v73, v78
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v78, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v65
	v_rndne_f32_e32 v65, v74
	v_rndne_f32_e32 v74, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v91, v11
	v_and_b32_e32 v11, 15, v24
	v_and_b32_e32 v24, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v78, 16, v140
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v83, v15
	v_cvt_i32_f32_e32 v99, v38
	v_cvt_i32_f32_e32 v102, v32
	v_and_b32_e32 v15, 15, v25
	v_and_b32_e32 v38, 15, v40
	v_and_b32_e32 v25, 15, v20
	v_and_b32_e32 v32, 15, v0
	v_and_b32_e32 v40, 15, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v140
	v_and_b32_e32 v19, 0x2f0, v28
	v_lshlrev_b32_e32 v20, 8, v78
	v_and_b32_e32 v28, 64, v140
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v72
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v69, v80
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v74
	v_and_b32_e32 v74, 15, v57
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v57, 3, v6
	v_and_or_b32 v0, 0xe000, v0, v20
	v_xor_b32_e32 v19, v19, v28
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v66
	v_rndne_f32_e32 v70, v75
	v_rndne_f32_e32 v72, v77
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v7, v7, s60, 0x40e00000
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v77, v58
	v_cvt_i32_f32_e32 v84, v67
	v_cvt_i32_f32_e32 v93, v43
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v57, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v96, v34
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_cvt_i32_f32_e32 v75, v42
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v100, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v76, v50
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v89, v54
	v_cvt_i32_f32_e32 v104, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v94, v44
	v_cvt_i32_f32_e32 v105, v7
	v_cvt_i32_f32_e32 v106, v8
	v_cvt_i32_f32_e32 v107, v9
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v77
	v_and_b32_e32 v9, 15, v84
	v_and_b32_e32 v10, 15, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v19, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_cvt_i32_f32_e32 v97, v36
	v_cvt_i32_f32_e32 v101, v33
	v_cvt_i32_f32_e32 v103, v30
	v_and_b32_e32 v30, 15, v35
	v_and_b32_e32 v31, 15, v63
	v_and_b32_e32 v33, 15, v96
	v_cvt_i32_f32_e32 v95, v46
	v_and_b32_e32 v46, 15, v75
	v_and_b32_e32 v50, 15, v47
	v_and_b32_e32 v54, 15, v48
	v_and_b32_e32 v58, 15, v49
	v_and_b32_e32 v47, 15, v69
	v_and_b32_e32 v48, 15, v14
	v_and_b32_e32 v49, 15, v100
	v_and_b32_e32 v34, 15, v39
	v_and_b32_e32 v62, 15, v76
	v_and_b32_e32 v35, 15, v64
	v_and_b32_e32 v39, 15, v65
	v_and_b32_e32 v63, 15, v73
	v_and_b32_e32 v64, 15, v89
	v_and_b32_e32 v65, 15, v104
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v80, v70
	v_cvt_i32_f32_e32 v87, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v90, v13
	v_cvt_i32_f32_e32 v92, v12
	v_and_b32_e32 v12, 15, v60
	v_and_b32_e32 v13, 15, v68
	v_and_b32_e32 v14, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v19, v[7:10]
	ds_store_b128 v19, v[30:33] offset:256
	ds_store_b128 v19, v[46:49] offset:2048
	ds_store_b128 v19, v[62:65] offset:2304
	v_xad_u32 v7, v0, 16, 0
	v_lshlrev_b32_e32 v8, 6, v140
	v_lshlrev_b32_e32 v9, 5, v27
	v_cndmask_b32_e64 v6, 0x2010, 0, vcc_lo
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v55, v55
	v_and_b32_e32 v36, 15, v85
	v_and_b32_e32 v37, 15, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_cvt_i32_f32_e32 v82, v16
	v_cvt_i32_f32_e32 v88, v52
	v_and_b32_e32 v16, 15, v61
	v_and_b32_e32 v51, 15, v80
	v_and_b32_e32 v52, 15, v87
	v_and_b32_e32 v60, 15, v53
	v_and_b32_e32 v18, 15, v95
	v_and_b32_e32 v53, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[11:14]
	ds_store_b128 v7, v[34:37] offset:256
	v_xad_u32 v10, v0, 32, 0
	v_lshlrev_b32_e32 v11, 2, v78
	v_and_or_b32 v8, 0x300, v8, v9
	v_xor_b32_e32 v6, v6, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v66
	v_and_b32_e32 v42, 15, v41
	v_and_b32_e32 v66, 15, v55
	v_and_b32_e32 v67, 15, v81
	v_and_b32_e32 v68, 15, v90
	v_and_b32_e32 v41, 15, v98
	v_and_b32_e32 v69, 15, v105
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[50:53] offset:2048
	ds_store_b128 v7, v[66:69] offset:2304
	ds_store_b128 v10, v[15:18]
	ds_store_b128 v10, v[38:41] offset:256
	v_or3_b32 v18, v6, v8, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v86, v59
	v_and_b32_e32 v70, 15, v56
	v_and_b32_e32 v55, 15, v71
	v_and_b32_e32 v59, 15, v72
	v_and_b32_e32 v56, 15, v88
	v_and_b32_e32 v57, 15, v102
	v_and_b32_e32 v61, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v82
	v_and_b32_e32 v75, 15, v83
	v_and_b32_e32 v72, 15, v91
	v_and_b32_e32 v76, 15, v92
	v_and_b32_e32 v73, 15, v106
	v_and_b32_e32 v77, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v19, 0, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v23, 15, v26
	v_and_b32_e32 v26, 15, v45
	v_and_b32_e32 v43, 15, v79
	v_and_b32_e32 v44, 15, v86
	v_and_b32_e32 v45, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v10, v[54:57] offset:2048
	ds_store_b128 v10, v[70:73] offset:2304
	ds_store_b128 v0, v[23:26]
	ds_store_b128 v0, v[42:45] offset:256
	ds_store_b128 v0, v[58:61] offset:2048
	ds_store_b128 v0, v[74:77] offset:2304
	v_xad_u32 v0, 0x4020, v18, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v19
	ds_load_b128 v[10:13], v19 offset:128
	ds_load_b128 v[14:17], v19 offset:4096
	ds_load_b128 v[23:26], v19 offset:4224
	v_xad_u32 v19, 0x8040, v18, 0
	ds_load_b128 v[27:30], v0
	ds_load_b128 v[31:34], v0 offset:128
	ds_load_b128 v[35:38], v0 offset:4096
	ds_load_b128 v[39:42], v0 offset:4224
	v_xad_u32 v0, 0xc060, v18, 0
	ds_load_b128 v[43:46], v19
	ds_load_b128 v[47:50], v19 offset:128
	ds_load_b128 v[51:54], v19 offset:4096
	ds_load_b128 v[55:58], v19 offset:4224
	ds_load_b128 v[59:62], v0 offset:4096
	ds_load_b128 v[63:66], v0
	ds_load_b128 v[67:70], v0 offset:128
	ds_load_b128 v[71:74], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s60, s66, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, 0, s60
	v_add_co_u32 v75, s60, s66, v144
	v_add_co_ci_u32_e64 v76, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[18:19]
	v_cmp_le_i64_e64 s63, s[64:65], v[75:76]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v43, v51, 4, v43
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s75, 7, v200
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v51, v59, 4, v63
	v_lshl_or_b32 v59, v23, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 30, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v61, v25, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v25, 32, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v62, v26, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v26, 34, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[18:19]
	v_cmp_gt_i64_e64 s64, s[72:73], v[75:76]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v76, v35, 4, v27
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v27, 36, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v71, v36, 4, v28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 38, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v60, v24, 4, v11
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v68, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 40, v3
	v_mad_u64_u32 v[23:24], null, v23, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v69, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 42, v3
	v_mad_u64_u32 v[24:25], null, v25, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v75, v14, 4, v6
	v_lshl_or_b32 v63, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	v_add_nc_u32_e32 v31, 44, v3
	v_mad_u64_u32 v[25:26], null, v26, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v40, 4, v32
	v_lshl_or_b32 v64, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	v_add_nc_u32_e32 v32, 46, v3
	v_mad_u64_u32 v[26:27], null, v27, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v33
	v_lshl_or_b32 v65, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	v_add_nc_u32_e32 v33, 48, v3
	v_mad_u64_u32 v[27:28], null, v28, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	v_add_nc_u32_e32 v34, 50, v3
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	v_add_nc_u32_e32 v35, 52, v3
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_add_nc_u32_e32 v36, 54, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v37, 56, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_add_nc_u32_e32 v14, 16, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v16, 20, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	v_add_nc_u32_e32 v17, 22, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v38, 58, v3
	v_add_nc_u32_e32 v39, 60, v3
	v_add_nc_u32_e32 v66, 62, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	v_add_nc_u32_e32 v19, 26, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v20, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v66, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v75, v20, s[64:67], 0 offen
	buffer_store_b8 v76, v0, s[64:67], 0 offen
	buffer_store_b8 v43, v4, s[64:67], 0 offen
	buffer_store_b8 v51, v6, s[64:67], 0 offen
	buffer_store_b8 v59, v7, s[64:67], 0 offen
	buffer_store_b8 v63, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v22.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v0, s[64:67], 0 offen
	buffer_store_b8 v55, v4, s[64:67], 0 offen
	buffer_store_b8 v67, v6, s[64:67], 0 offen
	buffer_store_b8 v71, v7, s[64:67], 0 offen
	buffer_store_b8 v44, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v0, s[64:67], 0 offen
	buffer_store_b8 v60, v4, s[64:67], 0 offen
	buffer_store_b8 v40, v6, s[64:67], 0 offen
	buffer_store_b8 v48, v7, s[64:67], 0 offen
	buffer_store_b8 v56, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v64, v0, s[64:67], 0 offen
	buffer_store_b8 v68, v4, s[64:67], 0 offen
	buffer_store_b8 v45, v6, s[64:67], 0 offen
	buffer_store_b8 v53, v7, s[64:67], 0 offen
	buffer_store_b8 v61, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v41, v0, s[64:67], 0 offen
	buffer_store_b8 v49, v4, s[64:67], 0 offen
	buffer_store_b8 v57, v6, s[64:67], 0 offen
	buffer_store_b8 v65, v7, s[64:67], 0 offen
	buffer_store_b8 v69, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b8 v46, v0, s[64:67], 0 offen
	buffer_store_b8 v54, v4, s[64:67], 0 offen
	buffer_store_b8 v62, v6, s[64:67], 0 offen
	buffer_store_b8 v42, v7, s[64:67], 0 offen
	buffer_store_b8 v50, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v140
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v3, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v3, 3, v199
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v0, s[64:67], 0 offen
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
	v_and_b32_e32 v2, 0xc0, v140
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp92:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 288
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
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 288
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31508
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 288
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 78
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 288
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 76
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
