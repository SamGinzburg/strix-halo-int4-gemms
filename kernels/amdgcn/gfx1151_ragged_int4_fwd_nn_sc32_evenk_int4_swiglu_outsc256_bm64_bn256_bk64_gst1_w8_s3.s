	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	v_mov_b32_e32 v137, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v55, 0 :: v_dual_lshlrev_b32 v12, 4, v137
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v138, 4, v137
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s14, s4, 31
	s_sub_i32 s11, s5, s6
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s11, s10
	s_cmp_ge_u32 s11, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s11, s13, s11
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s11, s10
	s_cselect_b32 s3, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s15, s3, s14
	s_sub_i32 s45, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[10:11], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s10
	s_addc_u32 s3, s5, s11
	s_load_b64 s[42:43], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s42, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s43, 0, s2
	v_add_nc_u32_e32 v17, s42, v138
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[40:41], v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[2:3]
	v_cmp_le_i64_e64 s6, s[34:35], v[4:5]
	v_cmp_le_i64_e64 s7, s[34:35], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[2:3]
	v_cmp_gt_i64_e64 s8, s[40:41], v[4:5]
	v_cmp_gt_i64_e64 s9, s[40:41], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s42, v138
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v137
	v_lshlrev_b32_e32 v2, 4, v137
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v152, 16, v5
	v_add_nc_u32_e32 v199, 32, v5
	v_add_nc_u32_e32 v202, 48, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr199
                                        ; implicit-def: $vgpr202
.LBB0_3:                                ; %Flow626
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v203, 0xf0, v137
	v_dual_mov_b32 v209, 0 :: v_dual_and_b32 v200, 15, v137
	v_dual_mov_b32 v157, 0 :: v_dual_and_b32 v52, 0x80, v137
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v215, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v218, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s28, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s42, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s43, 0, s0
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v10, s42, v200
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s10
	s_addc_u32 s1, s7, s11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[12:13], s[0:1], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[40:41], v[0:1]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[2:3]
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v1, 32, v10
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v2, 48, v10
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v0, 16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v1, s44, v1
	v_mul_lo_u32 v2, s44, v2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v9, 7, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v0, s44, v0
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v15, 16, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[40:41], v[4:5]
	v_dual_mov_b32 v150, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_mov_b32 v149, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[34:35], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[40:41], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_and_b32 s0, s1, s6
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s6, s33, 1
	v_mul_lo_u32 v164, v15, s28
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v18, 32, v17
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v2, off offset:132 ; 4-byte Folded Spill
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v1, off offset:136
	scratch_store_b32 off, v15, off offset:236
	scratch_store_b32 off, v17, off offset:256
	scratch_store_b32 off, v18, off offset:240
	scratch_store_b32 off, v137, off offset:228
	scratch_store_b32 off, v0, off offset:140
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v15, 1, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s7, s8
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s6, s28
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s9, s10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s9, s44, s12
	s_mul_i32 s11, s28, s12
	s_lshl_b32 s10, s9, 1
	v_lshl_add_u32 v15, s11, 1, v15
	s_or_b32 s10, s10, 1
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s46, s7, s12
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s10, s33, s10
	s_lshl_b32 s12, s15, 8
	v_mul_lo_u32 v163, v17, s28
	v_add3_u32 v16, s10, s12, v137
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v19, 48, v17
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v17, 29, v15
	s_mul_i32 s9, s9, s33
	v_mul_lo_u32 v10, s44, v10
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v8, 0x7f, v137
	s_lshl_b32 s10, s14, 8
	s_lshl_b32 s9, s9, 1
	v_subrev_nc_u32_e32 v16, s10, v16
	v_mul_lo_u32 v165, v18, s28
	v_add3_u32 v18, s9, s12, v137
	v_mul_lo_u32 v17, s33, v17
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v11, 1, v8
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v167, 1, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v16, s10, v18
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v18, 25, v15
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v0, 1, v10
	v_or_b32_e32 v10, 12, v9
	v_add3_u32 v17, v17, s12, v11
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v168, 1, v16
	v_mul_lo_u32 v16, s33, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v10, s33, v10
	v_subrev_nc_u32_e32 v2, s10, v17
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v207, 0
	v_mov_b32_e32 v133, 0
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v18, 13, v15
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 1, v2
	v_add3_u32 v2, v16, s12, v11
	v_add_nc_u32_e32 v16, 17, v15
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v1, 21, v15
	v_mov_b32_e32 v213, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s10, v2
	v_mul_lo_u32 v16, s33, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v1, s33, v1
	v_or_b32_e32 v17, 10, v9
	v_mov_b32_e32 v69, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v162, s45, 8, v11
	v_cmp_eq_u32_e64 s7, 0, v52
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v4, 0x70, v12
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v16, v16, s12, v11
	v_add3_u32 v1, v1, s12, v11
	v_mov_b32_e32 v63, 0
	v_cndmask_b32_e64 v6, 0x88, 0, s7
	v_bfe_i32 v5, v137, 3, 1
	v_subrev_nc_u32_e32 v16, s10, v16
	v_dual_mov_b32 v206, 0 :: v_dual_lshlrev_b32 v7, 5, v137
	v_mov_b32_e32 v93, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v16, 1, v16
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 14, v9
	v_mov_b32_e32 v140, 0
	v_xor_b32_e32 v6, v6, v8
	v_and_or_b32 v4, 0x88, v5, v4
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v13, 2, v203
	v_mul_lo_u32 v0, s33, v0
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v7, 32, v7
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v146, 0
	v_xor_b32_e32 v8, 8, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v7, 0, v13, v7
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v13, 1, v203
	v_lshlrev_b32_e32 v0, 1, v0
	scratch_store_b32 off, v138, off offset:232 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v5, 1, v137
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v3, 0, v200
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 1, v2
	v_mul_lo_u32 v2, s33, v18
	v_dual_mov_b32 v198, 0 :: v_dual_and_b32 v5, 0x70, v5
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s8, 0
	v_mul_lo_u32 v166, v19, s28
	s_mov_b32 s9, s8
	s_mov_b32 s11, s8
	s_mov_b32 s13, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v2, v2, s12, v11
	v_mov_b32_e32 v134, 0
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v193, v3, v5
	v_subrev_nc_u32_e32 v2, s10, v2
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v195, 0, v13
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v117, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v2, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:156
	scratch_store_b32 off, v19, off offset:244
	v_subrev_nc_u32_e32 v0, s10, v1
	v_mul_lo_u32 v1, s33, v17
	v_or_b32_e32 v17, 8, v9
	scratch_store_b32 off, v2, off offset:180 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s33, v15
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v10, off offset:160 ; 4-byte Folded Spill
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v10, 9, v15
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v17
	v_mul_lo_u32 v10, s33, v10
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v99, 0
	v_lshlrev_b32_e32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 5, v15
	v_add3_u32 v10, v10, s12, v11
	v_or_b32_e32 v15, 4, v9
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v131, 0
	v_mul_lo_u32 v1, s33, v1
	v_subrev_nc_u32_e32 v10, s10, v10
	v_mul_lo_u32 v15, s33, v15
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v215, 0
	v_mov_b32_e32 v121, 0
	v_add3_u32 v1, v1, s12, v11
	s_add_i32 s12, s12, s33
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v97, 0
	v_add3_u32 v2, s12, v2, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v1, s10, v1
	v_mov_b32_e32 v145, 0
	s_mov_b32 s12, s8
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v123, 0
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:176
	scratch_store_b32 off, v203, off offset:248
	v_or_b32_e32 v0, 6, v9
	v_mov_b32_e32 v105, 0
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v129, 0
	v_mul_lo_u32 v0, s33, v0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v81, 0
	v_lshlrev_b32_e32 v0, 1, v0
	scratch_store_b32 off, v16, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 2, v9
	v_mul_lo_u32 v9, s33, v9
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v11, s33, v16
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v57, 0
	v_lshlrev_b32_e32 v1, 1, v11
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s10, v2
	v_add_nc_u32_e32 v2, 1, v10
	s_mov_b32 s10, s8
	v_mov_b32_e32 v110, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v51, 0
	v_add_nc_u32_e32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:188
	scratch_store_b32 off, v52, off offset:252
	v_lshlrev_b32_e32 v2, 1, v15
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v85, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:192
	scratch_store_b32 off, v12, off offset:260
	v_lshlrev_b32_e32 v12, 1, v137
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v49, 0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_and_b32_e32 v14, 28, v12
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v192, 0, v12
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v77, 0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v61, 0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v7, v14
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v53, 0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	scratch_load_b32 v203, off, off offset:224 ; 4-byte Folded Reload
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v7, s14
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v214, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v2, s9
	v_mov_b32_e32 v4, s11
	v_mov_b32_e32 v6, s13
	v_mov_b32_e32 v8, s15
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_add_u32 s7, s46, s33
	s_lshl_b32 s47, s33, 2
	s_lshl_b32 s48, s33, 5
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v12, off, off offset:208 ; 4-byte Folded Reload
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v210, off offset:92
	scratch_store_b32 off, v208, off offset:88
	scratch_store_b32 off, v206, off offset:84
	scratch_store_b32 off, v44, off offset:80
	scratch_store_b32 off, v82, off offset:76
	scratch_store_b32 off, v61, off offset:72
	scratch_store_b32 off, v156, off offset:68
	scratch_store_b32 off, v132, off offset:64
	scratch_store_b32 off, v90, off offset:60
	scratch_store_b32 off, v63, off offset:56
	scratch_store_b32 off, v56, off offset:52
	scratch_store_b32 off, v98, off offset:48
	scratch_store_b32 off, v62, off offset:44
	scratch_store_b32 off, v121, off offset:40
	scratch_store_b32 off, v60, off offset:36
	scratch_store_b32 off, v49, off offset:32
	scratch_store_b32 off, v48, off offset:28
	scratch_store_b32 off, v50, off offset:24
	scratch_store_b32 off, v91, off offset:20
	scratch_store_b32 off, v53, off offset:16
	scratch_store_b32 off, v73, off offset:12
	scratch_store_b32 off, v54, off offset:8
	scratch_store_b32 off, v74, off offset:4
	scratch_store_b32 off, v51, off
	v_mov_b32_e32 v152, v133
	v_mov_b32_e32 v196, v141
	v_dual_mov_b32 v121, v153 :: v_dual_add_nc_u32 v10, v200, v165
	v_dual_mov_b32 v98, v45 :: v_dual_add_nc_u32 v9, v200, v164
	v_dual_mov_b32 v61, v55 :: v_dual_add_nc_u32 v0, v200, v163
	v_dual_mov_b32 v90, v238 :: v_dual_add_nc_u32 v11, v200, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v0, v0, s[28:31], 0 offen
	buffer_load_u8 v9, v9, s[28:31], 0 offen
	buffer_load_u8 v10, v10, s[28:31], 0 offen
	buffer_load_u8 v11, v11, s[28:31], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v165, 16, v165
	v_add_nc_u32_e32 v164, 16, v164
	v_add_nc_u32_e32 v163, 16, v163
	s_add_i32 s44, s44, -1
	v_mov_b32_e32 v133, v99
	v_mov_b32_e32 v99, v57
	v_mov_b32_e32 v141, v118
	v_mov_b32_e32 v153, v134
	v_dual_mov_b32 v197, v47 :: v_dual_mov_b32 v118, v108
	v_mov_b32_e32 v108, v100
	v_mov_b32_e32 v100, v92
	v_mov_b32_e32 v92, v58
	v_add_nc_u32_e32 v166, 16, v166
	s_waitcnt vmcnt(4)
	v_add3_u32 v230, v12, s8, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v12, s46, v230
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v25, v12, s[16:19], 0 offen
	scratch_load_b32 v12, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v219, v12, s8, v162
	v_add_nc_u32_e32 v12, s46, v219
	buffer_load_u16 v26, v12, s[16:19], 0 offen
	scratch_load_b32 v12, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v217, v12, s8, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v12, s46, v217
	buffer_load_u16 v27, v12, s[16:19], 0 offen
	scratch_load_b32 v12, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v212, v12, s8, v162
	v_add_nc_u32_e32 v12, s46, v212
	buffer_load_u16 v28, v12, s[16:19], 0 offen
	scratch_load_b32 v12, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v211, v12, s8, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v12, s46, v211
	buffer_load_u16 v29, v12, s[16:19], 0 offen
	scratch_load_b32 v12, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v210, v12, s8, v162
	v_add_nc_u32_e32 v12, s46, v210
	buffer_load_u16 v30, v12, s[16:19], 0 offen
	scratch_load_b32 v12, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v208, v12, s8, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v12, s46, v208
	buffer_load_u16 v31, v12, s[16:19], 0 offen
	scratch_load_b32 v12, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v206, v12, s8, v162
	v_add_nc_u32_e32 v12, s46, v206
	buffer_load_u16 v32, v12, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v12, v0
	ds_store_b8 v12, v9 offset:256
	ds_store_b8 v12, v10 offset:512
	ds_store_b8 v12, v11 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[17:20], v0 offset1:32
	ds_load_2addr_b64 v[9:12], v0 offset0:64 offset1:96
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[21:24], v0 offset1:32
	ds_load_2addr_b64 v[13:16], v0 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v192, v25
	ds_store_b16 v192, v26 offset:512
	ds_store_b16 v192, v27 offset:1024
	ds_store_b16 v192, v28 offset:1536
	ds_store_b16 v192, v29 offset:2048
	ds_store_b16 v192, v30 offset:2560
	ds_store_b16 v192, v31 offset:3072
	ds_store_b16 v192, v32 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v193 offset:1280
	ds_load_u8 v25, v193 offset:1024
	ds_load_u8 v33, v193 offset:1920
	ds_load_u8 v34, v193 offset:1664
	ds_load_u8 v35, v193 offset:1408
	ds_load_u8 v36, v193 offset:1152
	ds_load_u8 v45, v193 offset:3968
	ds_load_u8 v50, v193 offset:3712
	ds_load_u8 v51, v193 offset:3456
	ds_load_u8 v52, v193 offset:3200
	ds_load_u8 v55, v193 offset:2432
	ds_load_u8 v56, v193 offset:2176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v193 offset:1792
	ds_load_u8 v26, v193 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v193 offset:256
	ds_load_u8 v27, v193
	ds_load_u8 v37, v193 offset:896
	ds_load_u8 v38, v193 offset:640
	ds_load_u8 v39, v193 offset:384
	ds_load_u8 v44, v193 offset:128
	v_lshl_or_b32 v41, v25, 16, v0
	ds_load_u8 v0, v193 offset:3328
	ds_load_u8 v25, v193 offset:3072
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v193 offset:768
	ds_load_u8 v28, v193 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v27, 16, v26
	ds_load_u8 v25, v193 offset:3840
	ds_load_u8 v26, v193 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v193 offset:2304
	ds_load_u8 v27, v193 offset:2048
	ds_load_u8 v53, v193 offset:2944
	ds_load_u8 v54, v193 offset:2688
	v_lshl_or_b32 v43, v25, 16, v0
	v_perm_b32 v0, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v193 offset:2816
	ds_load_u8 v28, v193 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[25:32], v[40:41], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[42:43], v[21:22], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v174, v25
	v_cvt_f32_i32_e32 v60, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v62, v27
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v25, v34, v33, 0xc0c0004
	v_perm_b32 v26, v44, v39, 0xc0c0004
	v_perm_b32 v27, v38, v37, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v226, v28
	v_cvt_f32_i32_e32 v63, v29
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v49, v25, 16, v0
	v_perm_b32 v0, v52, v51, 0xc0c0004
	v_lshl_or_b32 v48, v27, 16, v26
	v_perm_b32 v25, v50, v45, 0xc0c0004
	v_perm_b32 v26, v56, v55, 0xc0c0004
	v_perm_b32 v27, v54, v53, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v73, v30
	v_cvt_f32_i32_e32 v82, v31
	v_cvt_f32_i32_e32 v91, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v51, v25, 16, v0
	v_lshl_or_b32 v50, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[25:32], v[48:49], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[21:22], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v30
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v189, v25
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v26
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v27
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[40:41], v[19:20], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[25:32], v[42:43], v[23:24], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v249, v25
	v_cvt_f32_i32_e32 v248, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v247, v27
	v_cvt_f32_i32_e32 v246, v28
	v_cvt_f32_i32_e32 v241, v29
	v_cvt_f32_i32_e32 v240, v30
	v_cvt_f32_i32_e32 v239, v31
	v_cvt_f32_i32_e32 v238, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[48:49], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[23:24], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v132, v30
	v_cvt_f32_i32_e32 v222, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v220, v28
	v_cvt_f32_i32_e32 v156, v29
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[27:34], v[40:41], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v224, v26
	v_cvt_f32_i32_e32 v74, v25
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[27:34], v[42:43], v[13:14], v[27:34] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v28
	v_cvt_f32_i32_e32 v26, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v161, v32
	v_cvt_f32_i32_e32 v29, v33
	v_cvt_f32_i32_e32 v28, v34
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[48:49], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v169, v27
	v_cvt_f32_i32_e32 v160, v30
	v_cvt_f32_i32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[13:14], v[32:39] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v231, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v225, v37
	v_cvt_f32_i32_e32 v223, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v221, v39
	v_cvt_f32_i32_e32 v237, v33
	v_cvt_f32_i32_e32 v236, v34
	v_cvt_f32_i32_e32 v234, v35
	v_cvt_f32_i32_e32 v229, v36
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[40:41], v[11:12], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v40, off, off offset:204 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[32:39], v[42:43], v[15:16], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v180, v32
	v_cvt_f32_i32_e32 v178, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v177, v34
	v_cvt_f32_i32_e32 v176, v35
	v_cvt_f32_i32_e32 v173, v36
	v_cvt_f32_i32_e32 v172, v37
	v_cvt_f32_i32_e32 v171, v38
	v_cvt_f32_i32_e32 v170, v39
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[48:49], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[15:16], v[32:39] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v254, v32
	v_add_nc_u32_e32 v32, s7, v230
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v27, v33
	v_add_nc_u32_e32 v33, s7, v219
	v_cvt_f32_i32_e32 v25, v34
	v_add_nc_u32_e32 v34, s7, v217
	v_cvt_f32_i32_e32 v30, v35
	v_add_nc_u32_e32 v35, s7, v212
	v_cvt_f32_i32_e32 v245, v36
	v_add_nc_u32_e32 v36, s7, v211
	v_cvt_f32_i32_e32 v235, v37
	v_add_nc_u32_e32 v37, s7, v210
	v_cvt_f32_i32_e32 v233, v38
	v_add_nc_u32_e32 v38, s7, v208
	v_cvt_f32_i32_e32 v232, v39
	v_add_nc_u32_e32 v39, s7, v206
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s8, v40
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v40, v40, s[16:19], 0 offen
	buffer_load_u8 v41, v32, s[16:19], 0 offen
	scratch_load_b32 v32, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s8, v32
	buffer_load_u8 v42, v32, s[16:19], 0 offen
	scratch_load_b32 v32, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s8, v32
	s_clause 0x2
	buffer_load_u8 v43, v32, s[16:19], 0 offen
	buffer_load_u8 v33, v33, s[16:19], 0 offen
	buffer_load_u8 v34, v34, s[16:19], 0 offen
	scratch_load_b32 v32, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s8, v32
	buffer_load_u8 v44, v32, s[16:19], 0 offen
	scratch_load_b32 v32, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v33.h, 8, v44.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s8, v32
	s_clause 0x2
	buffer_load_u8 v45, v32, s[16:19], 0 offen
	buffer_load_u8 v35, v35, s[16:19], 0 offen
	buffer_load_u8 v36, v36, s[16:19], 0 offen
	scratch_load_b32 v32, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v33.h, v35.l, v33.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s8, v32
	buffer_load_u8 v48, v32, s[16:19], 0 offen
	scratch_load_b32 v32, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v34.h, 8, v48.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s8, v32
	s_clause 0x2
	buffer_load_u8 v49, v32, s[16:19], 0 offen
	buffer_load_u8 v37, v37, s[16:19], 0 offen
	buffer_load_u8 v38, v38, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v32, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v35.l, 8, v49.l
	s_waitcnt vmcnt(2)
	v_or_b16 v34.h, v37.l, v34.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s8, v32
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v50, v32, s[16:19], 0 offen
	buffer_load_u8 v39, v39, s[16:19], 0 offen
	v_lshlrev_b16 v32.h, 8, v42.l
	v_lshlrev_b16 v32.l, 8, v40.l
	v_or_b16 v35.l, v38.l, v35.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v32.h, v33.l, v32.h
	v_lshlrev_b16 v33.l, 8, v43.l
	v_or_b16 v32.l, v41.l, v32.l
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s8, s8, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v33.l, v34.l, v33.l
	v_lshlrev_b16 v34.l, 8, v45.l
	v_or_b16 v34.l, v36.l, v34.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v35.h, 8, v50.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v35.h, v39.l, v35.h
	ds_store_b16 v192, v32
	ds_store_b16_d16_hi v192, v32 offset:512
	ds_store_b16 v192, v33 offset:1024
	ds_store_b16_d16_hi v192, v33 offset:1536
	ds_store_b16 v192, v34 offset:2048
	ds_store_b16_d16_hi v192, v34 offset:2560
	ds_store_b16 v192, v35 offset:3072
	ds_store_b16_d16_hi v192, v35 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v32, v193 offset:1280
	ds_load_u8 v33, v193 offset:1024
	ds_load_u8 v42, v193 offset:1920
	ds_load_u8 v43, v193 offset:1664
	ds_load_u8 v44, v193 offset:1408
	ds_load_u8 v45, v193 offset:1152
	ds_load_u8 v57, v193 offset:2688
	ds_load_u8 v58, v193 offset:2432
	ds_load_u8 v175, v193 offset:2176
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v193 offset:1792
	ds_load_u8 v34, v193 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v193 offset:256
	ds_load_u8 v35, v193
	ds_load_u8 v48, v193 offset:896
	ds_load_u8 v49, v193 offset:640
	ds_load_u8 v50, v193 offset:384
	ds_load_u8 v51, v193 offset:128
	v_lshl_or_b32 v41, v33, 16, v32
	ds_load_u8 v32, v193 offset:3328
	ds_load_u8 v33, v193 offset:3072
	ds_load_u8 v52, v193 offset:3968
	ds_load_u8 v53, v193 offset:3712
	ds_load_u8 v54, v193 offset:3456
	ds_load_u8 v55, v193 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v193 offset:768
	ds_load_u8 v36, v193 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v35, 16, v34
	ds_load_u8 v33, v193 offset:3840
	ds_load_u8 v34, v193 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v193 offset:2304
	ds_load_u8 v35, v193 offset:2048
	ds_load_u8 v56, v193 offset:2944
	v_lshl_or_b32 v251, v33, 16, v32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v193 offset:2816
	ds_load_u8 v36, v193 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v250, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[32:39], v[40:41], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[250:251], v[21:22], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v137, v32
	v_cvt_f32_i32_e32 v186, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v185, v34
	v_cvt_f32_i32_e32 v184, v35
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v32, v45, v44, 0xc0c0004
	v_perm_b32 v33, v43, v42, 0xc0c0004
	v_perm_b32 v34, v51, v50, 0xc0c0004
	v_perm_b32 v35, v49, v48, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v183, v36
	v_cvt_f32_i32_e32 v182, v37
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v253, v33, 16, v32
	v_perm_b32 v32, v55, v54, 0xc0c0004
	v_lshl_or_b32 v252, v35, 16, v34
	v_perm_b32 v33, v53, v52, 0xc0c0004
	v_perm_b32 v34, v175, v58, 0xc0c0004
	v_perm_b32 v35, v57, v56, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v38
	v_cvt_f32_i32_e32 v179, v39
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v45, v33, 16, v32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[40:41], v[19:20], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[32:39], v[252:253], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[250:251], v[23:24], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[44:45], v[21:22], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v49, v51
	v_cvt_f32_i32_e32 v48, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v53
	v_cvt_f32_i32_e32 v22, v36
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v191, v54
	v_cvt_f32_i32_e32 v190, v55
	v_cvt_f32_i32_e32 v188, v56
	v_cvt_f32_i32_e32 v187, v57
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[252:253], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v175, v32
	v_cvt_f32_i32_e32 v17, v37
	v_cvt_f32_i32_e32 v18, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[44:45], v[23:24], v[50:57] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v21, v39
	v_cvt_f32_i32_e32 v210, v33
	v_cvt_f32_i32_e32 v208, v34
	v_cvt_f32_i32_e32 v206, v35
	v_cvt_f32_i32_e32 v211, v50
	v_cvt_f32_i32_e32 v19, v55
	v_cvt_f32_i32_e32 v20, v56
	v_cvt_f32_i32_e32 v23, v57
	v_cvt_f32_i32_e32 v219, v51
	v_cvt_f32_i32_e32 v217, v52
	v_cvt_f32_i32_e32 v212, v53
	v_cvt_f32_i32_e32 v24, v54
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[40:41], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[250:251], v[13:14], v[50:57] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v39, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v38, v51
	v_cvt_f32_i32_e32 v37, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v53
	v_cvt_f32_i32_e32 v34, v54
	v_cvt_f32_i32_e32 v33, v55
	v_cvt_f32_i32_e32 v32, v56
	v_cvt_f32_i32_e32 v194, v57
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[252:253], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[44:45], v[13:14], v[51:58] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v230, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v143, v56
	v_cvt_f32_i32_e32 v10, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v58
	v_cvt_f32_i32_e32 v244, v52
	v_cvt_f32_i32_e32 v243, v53
	v_cvt_f32_i32_e32 v242, v54
	v_cvt_f32_i32_e32 v14, v55
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[40:41], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[250:251], v[15:16], v[51:58] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v202, v52
	v_cvt_f32_i32_e32 v138, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v199, v54
	v_cvt_f32_i32_e32 v42, v55
	v_cvt_f32_i32_e32 v41, v56
	v_cvt_f32_i32_e32 v40, v57
	v_cvt_f32_i32_e32 v35, v58
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[252:253], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[44:45], v[15:16], v[51:58] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:144
	scratch_load_b32 v45, off, off offset:140
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v250, v51
	v_cvt_f32_i32_e32 v253, v52
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:136
	scratch_load_b32 v52, off, off offset:132
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v11, v56
	v_cvt_f32_i32_e32 v12, v57
	v_cvt_f32_i32_e32 v15, v58
	v_cvt_f32_i32_e32 v252, v53
	v_cvt_f32_i32_e32 v251, v54
	v_cvt_f32_i32_e32 v16, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v44, s9, v44
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s9, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s9, v51
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s9, v52
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s9, s9, 2
	s_cmp_lg_u32 s44, 0
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s6
	s_clause 0x1
	buffer_load_u16 v134, v51, s[36:39], 0 offen
	buffer_load_u16 v47, v52, s[36:39], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v51, v168, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v168, s47, v168
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v44, v44, s[36:39], 0 offen
	buffer_load_u16 v45, v45, s[36:39], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v203, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v195
	ds_load_b128 v[55:58], v195 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v255, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v255, v174
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v174, 16, v45
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v45, v98 :: v_dual_fmac_f32 v204, v44, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v255, v60
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v18, v255
	v_mul_f32_e32 v22, v255, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v44, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v255, v62
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v145, v44, v53 :: v_dual_mul_f32 v44, v255, v226
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v226, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v226, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v0, v52 :: v_dual_mul_f32 v0, v226, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v103, v0, v53 :: v_dual_mul_f32 v0, v226, v160
	v_fmac_f32_e32 v102, v0, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v0, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v47, v197 :: v_dual_mul_f32 v26, v0, v180
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v0, v25
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v227, v26, v51 :: v_dual_mul_f32 v26, v0, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v77, v26, v52 :: v_dual_mul_f32 v26, v0, v177
	v_dual_fmac_f32 v79, v26, v53 :: v_dual_mul_f32 v26, v0, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v26, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v255, v63
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v112, v26, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v255, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v26, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v255, v82
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v26, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v255, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v26, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v174, v241
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v26, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v174, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v26, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v174, v239
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v26, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v174, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v26, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v226, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v216, v26, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v226, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v26, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v226, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v255, v137
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v26, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v226, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v67, v26, v58 :: v_dual_mul_f32 v26, v0, v173
	v_dual_fmac_f32 v213, v26, v55 :: v_dual_mul_f32 v26, v0, v172
	v_fmac_f32_e32 v144, v44, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v174, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v69, v26, v56 :: v_dual_mul_f32 v26, v0, v171
	v_dual_fmac_f32 v123, v44, v51 :: v_dual_mul_f32 v44, v174, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v26, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v0, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v44, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v174, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v71, v26, v58 :: v_dual_mul_f32 v26, v189, v255
	v_dual_fmac_f32 v129, v44, v53 :: v_dual_mul_f32 v44, v174, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v119, v44, v54 :: v_dual_mul_f32 v44, v226, v169
	v_fmac_f32_e32 v228, v44, v51
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[51:54], v195 offset:512
	ds_load_b128 v[55:58], v195 offset:528
	scratch_load_b32 v44, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v157, v25, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v25, v0, v30 :: v_dual_fmac_f32 v218, v26, v51
	scratch_load_b32 v26, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v209, v25, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v25, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v255, v25
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v125, v25, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v25, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v255
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v215, v25, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v25, off, off offset:100 ; 4-byte Folded Reload
	v_mul_f32_e32 v26, v255, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v26, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v26, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v255
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v25, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v25, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v255, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v26, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v26, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v255
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v158, v25, v58 :: v_dual_mul_f32 v25, v174, v156
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v11, v0
	v_mul_f32_e32 v12, v12, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v15, v15, v0 :: v_dual_fmac_f32 v110, v25, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v132, v174
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v25, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v25, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v255, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v26, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v74, v174
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v26, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v174, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v26, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v174, v222
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v26, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v174, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v26, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v231, v226
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v19, v174
	v_mul_f32_e32 v20, v20, v174
	v_dual_mul_f32 v23, v23, v174 :: v_dual_mul_f32 v24, v174, v24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v26, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v226, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v214, v26, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v226, v236
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v26, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v226, v234
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v10, v226
	v_mul_f32_e32 v14, v226, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v26, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v254, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v26, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v0, v27
	v_mov_b32_e32 v134, v153
	v_mov_b32_e32 v153, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v26, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v174
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v25, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v25, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v150, v25, v58 :: v_dual_mul_f32 v25, v226, v229
	v_fmac_f32_e32 v84, v25, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v225, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v148, v25, v56 :: v_dual_mul_f32 v25, v223, v226
	v_fmac_f32_e32 v147, v25, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v221, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v140, v25, v58 :: v_dual_mul_f32 v25, v0, v245
	v_fmac_f32_e32 v61, v25, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v235, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v55, v61
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v25, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v233, v0
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v56, off, off offset:52
	scratch_load_b32 v98, off, off offset:48
	scratch_load_b32 v60, off, off offset:36
	scratch_load_b32 v61, off, off offset:72
	scratch_load_b32 v82, off, off offset:76
	scratch_load_b32 v156, off, off offset:68
	scratch_load_b32 v132, off, off offset:64
	scratch_load_b32 v62, off, off offset:44
	scratch_load_b32 v121, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v134, v25, v57 :: v_dual_mov_b32 v57, v99
	v_mov_b32_e32 v99, v133
	v_mov_b32_e32 v133, v152
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v232, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v25, v58
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v25, v167, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v167, s47, v167
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v203, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v195
	ds_load_b128 v[51:54], v195 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v60, v29, v25 :: v_dual_mul_f32 v29, v255, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v122, v29, v26 :: v_dual_mul_f32 v29, v255, v185
	v_dual_fmac_f32 v120, v29, v27 :: v_dual_mul_f32 v29, v255, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v29, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v174, v36
	v_dual_mov_b32 v238, v90 :: v_dual_fmac_f32 v99, v29, v25
	v_mul_f32_e32 v29, v174, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:32
	scratch_load_b32 v90, off, off offset:60
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v98, v29, v26 :: v_dual_mul_f32 v29, v174, v48
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:28
	scratch_load_b32 v63, off, off offset:56
	v_mov_b32_e32 v58, v92
	v_mov_b32_e32 v92, v100
	v_dual_mov_b32 v100, v108 :: v_dual_fmac_f32 v97, v29, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v174, v43
	v_mov_b32_e32 v108, v118
	v_dual_mov_b32 v118, v141 :: v_dual_mov_b32 v141, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v96, v29, v28 :: v_dual_mul_f32 v29, v226, v39
	v_dual_fmac_f32 v100, v29, v25 :: v_dual_mul_f32 v29, v226, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v29, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v226, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v72, v29, v27 :: v_dual_mul_f32 v29, v226, v50
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:24
	scratch_load_b32 v91, off, off offset:20
	v_fmac_f32_e32 v75, v29, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v143, v226 :: v_dual_fmac_f32 v76, v29, v25
	v_mul_f32_e32 v25, v0, v202
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v50, v25, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v49, v25, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v199
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v48, v25, v28 :: v_dual_mul_f32 v25, v255, v183
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v25, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v255, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v25, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v255, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v113, v25, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v255, v179
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v114, v25, v54 :: v_dual_mul_f32 v25, v174, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v108, v25, v51 :: v_dual_mul_f32 v25, v174, v190
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v91, v25, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v174, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v90, v25, v53 :: v_dual_mul_f32 v25, v174, v187
	v_fmac_f32_e32 v63, v25, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v226, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v92, v25, v51 :: v_dual_mul_f32 v25, v226, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v33, v175, v255 :: v_dual_fmac_f32 v66, v25, v52
	v_mul_f32_e32 v25, v226, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v64, v25, v53 :: v_dual_mul_f32 v25, v226, v194
	v_fmac_f32_e32 v65, v25, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v25, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v41
	scratch_load_b32 v51, off, off          ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v205, v25, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v40
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v25, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:16
	scratch_load_b32 v73, off, off offset:12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v238, v25, v54
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[25:28], v195 offset:512
	ds_load_b128 v[29:32], v195 offset:528
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:8
	scratch_load_b32 v74, off, off offset:4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v17, v255
	v_mul_f32_e32 v21, v21, v255
	v_mul_f32_e32 v13, v13, v226
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v44, v33, v25 :: v_dual_mul_f32 v33, v255, v210
	scratch_load_b32 v210, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v198, v20, v31
	v_dual_fmac_f32 v132, v11, v30 :: v_dual_fmac_f32 v89, v12, v31
	v_dual_fmac_f32 v118, v33, v26 :: v_dual_mul_f32 v33, v255, v208
	scratch_load_b32 v208, off, off offset:88 ; 4-byte Folded Reload
	v_fmac_f32_e32 v82, v15, v32
	v_fmac_f32_e32 v141, v23, v32
	v_fmac_f32_e32 v201, v19, v30
	v_fmac_f32_e32 v107, v33, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v255, v206
	scratch_load_b32 v206, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v46, v9, v30 :: v_dual_fmac_f32 v47, v10, v31
	v_dual_fmac_f32 v105, v22, v29 :: v_dual_fmac_f32 v106, v33, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v211, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v45, v33, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v174, v219
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v83, v33, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v174, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v62, v33, v27 :: v_dual_mul_f32 v33, v174, v212
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v51, v14, v29
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v73, v33, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v230, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v139, v33, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v33, v226, v244 :: v_dual_fmac_f32 v74, v24, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v58, v33, v26 :: v_dual_mul_f32 v33, v226, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v33, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v226, v242
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v56, v33, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v33, v250, v0 :: v_dual_fmac_f32 v210, v17, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v33, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v25, v0, v253 :: v_dual_fmac_f32 v208, v18, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v61, v25, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v252
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v206, v21, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v25, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v0, v251
	v_mul_f32_e32 v0, v0, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v13, v32
	v_dual_fmac_f32 v54, v25, v28 :: v_dual_fmac_f32 v53, v0, v29
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v2, off, off offset:260
	scratch_load_b32 v5, off, off offset:256
	scratch_load_b32 v138, off, off offset:232
	scratch_load_b32 v152, off, off offset:236
	scratch_load_b32 v199, off, off offset:240
	scratch_load_b32 v202, off, off offset:244
	scratch_load_b32 v203, off, off offset:248
	scratch_load_b32 v52, off, off offset:252
	scratch_load_b32 v137, off, off offset:228
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 8, v137
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v121
	v_dual_mul_f32 v4, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v127
	v_mul_f32_e32 v24, 0xbfb8aa3b, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v208
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	v_mul_f32_e32 v196, 0xbfb8aa3b, v113
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v189, 0xbfb8aa3b, v96 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v15, v8
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_exp_f32_e32 v14, v14
	v_mul_f32_e32 v10, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v12, 0, 0x42800000, s0
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v210
	v_dual_mul_f32 v195, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v11, v15, v11
	v_mul_f32_e32 v15, 0xbfb8aa3b, v45
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v13, v14, v13
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v208
	v_mul_f32_e32 v187, 0xbfb8aa3b, v108
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_mul_f32_e32 v15, 0xbfb8aa3b, v198
	v_mul_f32_e32 v182, 0xbfb8aa3b, v62
	v_exp_f32_e32 v12, v12
	v_dual_mul_f32 v20, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v0, v3, v0
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v183, 0xbfb8aa3b, v83
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v45
	v_mul_f32_e32 v170, 0xbfb8aa3b, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v12, v12, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v201
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_exp_f32_e32 v14, v14
	v_dual_mul_f32 v194, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v161, 0xbfb8aa3b, v156
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v198 :: v_dual_mul_f32 v162, 0xbfb8aa3b, v205
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v14, v14, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v139
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v16
	v_exp_f32_e32 v17, v17
	v_dual_mul_f32 v8, 0xbfb8aa3b, v131 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v201
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_mul_f32_e32 v190, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v141
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v16, v17, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v11, v11, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v15, v15, v4
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_mul_f32_e32 v178, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v192, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v99
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v17, v19, v18
	v_mul_f32_e32 v19, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v173, 0xbfb8aa3b, v64
	v_exp_f32_e32 v23, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v139
	v_dual_mul_f32 v188, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v90
	v_dual_mul_f32 v186, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_mul_f32_e32 v4, 0xbfb8aa3b, v46
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_dual_mul_f32 v184, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v73
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v47
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_dual_mul_f32 v180, 0xbfb8aa3b, v74 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v75
	v_dual_mul_f32 v172, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v176, 0xbfb8aa3b, v72
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v18, v18, v3
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v46
	v_dual_mul_f32 v3, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v66
	v_dual_mul_f32 v169, 0xbfb8aa3b, v56 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v51
	v_mul_f32_e32 v163, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v19, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v20, v21, v20
	v_ldexp_f32 v21, v23, v22
	v_dual_mul_f32 v23, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v167, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v160, 0xbfb8aa3b, v238
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v19, v19, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v14, v14, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, s1, v208, v12, v208
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, vcc_lo, v44, v11, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v136
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v132
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v82
	v_exp_f32_e32 v4, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v22
	v_dual_mul_f32 v165, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v50
	v_exp_f32_e32 v31, v23
	v_dual_mul_f32 v164, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v61
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_3)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v4, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v53
	v_exp_f32_e32 v26, v26
	v_mul_f32_e32 v4, 0xbfb8aa3b, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s24
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v26, v25
	v_ldexp_f32 v26, v30, v27
	v_ldexp_f32 v27, v31, v28
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v12, v12, v208
	v_fma_f32 v28, -v29, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v0, v0, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v31
	v_fmac_f32_e32 v33, v28, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v34, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v31, v35, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v29, v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v30, v28, 1.0
	v_fmac_f32_e32 v35, v39, v35
	v_div_scale_f32 v39, null, v13, v13, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v38, v33
	v_mul_f32_e32 v42, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v29, -v29, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v29, v29, v33, v36
	v_rcp_f32_e32 v33, v43
	v_fma_f32 v36, -v39, v41, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v29, v11, v44
	v_dual_fmac_f32 v41, v36, v41 :: v_dual_fmac_f32 v28, v37, v28
	v_div_scale_f32 v37, s0, v210, v0, v210
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v36, s0, v45, v14, v45
	v_mul_f32_e32 v38, v37, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v30, v38, v37
	v_fmac_f32_e32 v38, v34, v28
	v_fma_f32 v34, -v31, v42, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v30, v38, v37
	v_fmac_f32_e32 v42, v34, v35
	v_div_scale_f32 v30, s6, v206, v13, v206
	v_fma_f32 v34, -v43, v33, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v29, v28, v38
	v_fma_f32 v29, -v31, v42, v40
	v_mul_f32_e32 v31, v30, v41
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, null, v15, v15, v201
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v39, v31, v30
	v_div_fmas_f32 v29, v29, v35, v42
	v_rcp_f32_e32 v35, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v16, v16, v198
	v_fmac_f32_e32 v31, v37, v41
	v_mul_f32_e32 v38, v36, v33
	v_div_fixup_f32 v12, v29, v12, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v29, v40
	v_div_fixup_f32 v0, v28, v0, v210
	v_fma_f32 v30, -v39, v31, v30
	v_fma_f32 v37, -v34, v35, 1.0
	v_div_scale_f32 v39, null, v17, v17, v141
	v_fma_f32 v28, -v43, v38, v36
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v37, v35
	v_rcp_f32_e32 v37, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v40, v29, 1.0
	v_fmac_f32_e32 v38, v28, v33
	v_div_scale_f32 v28, s1, v201, v15, v201
	v_div_fmas_f32 v30, v30, v41, v31
	v_fmac_f32_e32 v29, v42, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v31, -v43, v38, v36
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v41, s6, v198, v16, v198
	v_fma_f32 v42, -v39, v37, 1.0
	v_mul_f32_e32 v36, v28, v35
	v_div_fmas_f32 v31, v31, v33, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v41, v29
	v_div_scale_f32 v44, s0, v141, v17, v141
	v_fmac_f32_e32 v37, v42, v37
	v_fma_f32 v33, -v34, v36, v28
	v_div_scale_f32 v43, null, v18, v18, v139
	v_div_fixup_f32 v13, v30, v13, v206
	v_div_fixup_f32 v14, v31, v14, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v33, v35
	v_div_scale_f32 v33, null, v19, v19, v46
	v_fma_f32 v30, -v40, v38, v41
	v_mul_f32_e32 v31, v44, v37
	v_fma_f32 v28, -v34, v36, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v33
	v_rcp_f32_e32 v42, v43
	v_fmac_f32_e32 v38, v30, v29
	v_fma_f32 v30, -v39, v31, v44
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v28, v28, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v40, v38, v41
	v_fmac_f32_e32 v31, v30, v37
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v33, v34, 1.0
	v_fma_f32 v45, -v43, v42, 1.0
	v_div_fmas_f32 v29, v35, v29, v38
	v_fma_f32 v35, -v39, v31, v44
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v34, v36, v34
	v_div_scale_f32 v36, null, v20, v20, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v35, v37, v31
	v_div_scale_f32 v39, s1, v46, v19, v46
	v_rcp_f32_e32 v35, v36
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, s7, v139, v18, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v39, v34
	v_div_fixup_f32 v15, v28, v15, v201
	v_div_fixup_f32 v28, v29, v16, v198
	v_mul_f32_e32 v30, v45, v42
	v_div_fixup_f32 v29, v31, v17, v141
	v_div_scale_f32 v31, null, v21, v21, v68
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v38, -v43, v30, v45
	v_fma_f32 v17, -v33, v37, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v38, v42
	v_fma_f32 v38, -v36, v35, 1.0
	v_fmac_f32_e32 v37, v17, v34
	v_div_scale_f32 v17, s0, v47, v20, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v43, v30, v45
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v42, v30
	v_rcp_f32_e32 v30, v31
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v40, v16, v18, v139
	v_fma_f32 v16, -v33, v37, v39
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v31, v30, 1.0
	v_div_fmas_f32 v16, v16, v34, v37
	v_div_scale_f32 v37, s1, v68, v21, v68
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v30, v33, v30
	v_div_fixup_f32 v42, v16, v19, v46
	v_div_scale_f32 v46, null, v27, v27, v82
	v_div_scale_f32 v33, null, v25, v25, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v19, v37, v30
	v_mul_f32_e32 v18, v17, v35
	v_fma_f32 v41, -v38, v39, 1.0
	v_rcp_f32_e32 v16, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v36, v18, v17
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, null, v26, v26, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v34, v35
	v_div_scale_f32 v34, s6, v136, v32, v136
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v33, v16, 1.0
	v_fma_f32 v17, -v36, v18, v17
	v_fma_f32 v36, -v31, v19, v37
	v_mul_f32_e32 v43, v34, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v35, v18
	v_rcp_f32_e32 v35, v46
	v_fmac_f32_e32 v19, v36, v30
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v18, -v38, v43, v34
	v_div_fixup_f32 v47, v17, v20, v47
	v_div_scale_f32 v20, s7, v89, v26, v89
	v_fma_f32 v17, -v31, v19, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v18, v39
	v_div_scale_f32 v36, s0, v132, v25, v132
	v_fma_f32 v31, -v46, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v17, v17, v30, v19
	v_fma_f32 v19, -v38, v43, v34
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v31, v35
	v_div_scale_f32 v31, s1, v82, v27, v82
	v_div_fixup_f32 v37, v17, v21, v68
	v_div_fmas_f32 v19, v19, v39, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v21, v31, v35 :: v_dual_fmac_f32 v16, v44, v16
	v_fma_f32 v44, -v41, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v44, v45
	v_mul_f32_e32 v34, v20, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v41, v34, v20
	v_fmac_f32_e32 v34, v17, v45
	v_fma_f32 v17, -v46, v21, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v21, v17, v35 :: v_dual_mul_f32 v18, v36, v16
	v_fma_f32 v17, -v46, v21, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v33, v18, v36
	v_fmac_f32_e32 v18, v30, v16
	v_div_fixup_f32 v30, v19, v32, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v10, -v33, v18, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v10, v16, v18
	v_fma_f32 v16, -v41, v34, v20
	s_mov_b32 vcc_lo, s7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v215, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v10, v25, v132
	v_div_fmas_f32 v16, v16, v45, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v17, v35, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v16, v26, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_ldexp_f32 v7, v18, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v158, v13
	v_mul_f32_e32 v13, v149, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v9, v27, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v122
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v218, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v7, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v154, v15 :: v_dual_mul_f32 v15, v151, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v0, v0, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v155, v14 :: v_dual_mul_f32 v14, v150, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v6, v7, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v31
	v_div_scale_f32 v34, vcc_lo, v60, v0, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v120
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v186
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v6, v11, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v140, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v31, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v33, 1.0, v6 :: v_dual_mul_f32 v6, v135, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v33, v33, v121
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v36, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v134, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v28, v28, v122
	v_rcp_f32_e32 v35, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v38, v37, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v10, v147, v47 :: v_dual_fmac_f32 v37, v36, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v25, v25, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v29, v35, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v159, v12 :: v_dual_fmac_f32 v35, v41, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v32, v9, v32 :: v_dual_mul_f32 v9, v146, v30
	v_div_scale_f32 v30, s0, v122, v28, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v34, v32
	v_fma_f32 v40, -v31, v39, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v32
	v_fma_f32 v26, -v31, v39, v34
	v_mul_f32_e32 v31, v30, v35
	v_div_scale_f32 v34, s1, v121, v33, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v32, v39
	v_rcp_f32_e32 v32, v36
	v_fma_f32 v39, -v29, v31, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v133, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, s6, v120, v25, v120
	v_fma_f32 v27, -v36, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v29, v31, v30
	v_fmac_f32_e32 v32, v27, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v148, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v131
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v29, v29, v35, v31
	v_mul_f32_e32 v31, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v29, v28, v122
	v_fma_f32 v35, -v36, v31, v39
	v_mul_f32_e32 v40, v34, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v127 :: v_dual_fmac_f32 v31, v35, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v38, v40, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v26, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v38, v40, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_ldexp_f32 v26, v26, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v34, v34, v37, v40
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v113
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v34, v33, v121
	v_fma_f32 v33, -v36, v31, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v121, v142, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v122, v144, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v33, v32, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v31, v25, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v34, v34, v38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v120, v204, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v30, v27
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v114
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_add_f32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v34, v34, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v35, null, v27, v27, v127
	v_rcp_f32_e32 v28, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v39, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v35, v32, 1.0
	v_fmac_f32_e32 v28, v25, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v37, v32
	v_div_scale_f32 v37, s1, v127, v27, v127
	v_div_scale_f32 v42, null, v26, v26, v131
	v_div_scale_f32 v33, s0, v131, v26, v131
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v30, v42
	v_div_scale_f32 v25, s0, v113, v34, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v42, v30, 1.0
	v_fmac_f32_e32 v30, v36, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v33, v30
	v_fma_f32 v38, -v42, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v38, v30
	v_mul_f32_e32 v38, v37, v32
	v_fma_f32 v29, -v42, v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v35, v38, v37
	v_div_fmas_f32 v29, v29, v30, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v33, v32
	v_div_scale_f32 v30, null, v0, v0, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v29, v26, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v35, v38, v37
	v_rcp_f32_e32 v31, v30
	v_mul_f32_e32 v37, v25, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v32, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v118
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v30, v31, 1.0
	v_div_fixup_f32 v27, v29, v27, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v39, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v38, v31
	v_div_scale_f32 v38, s1, v114, v0, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v37, v29, v28 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v192
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v112, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v35, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v38, v31
	v_fma_f32 v25, -v39, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v145, v24 :: v_dual_add_f32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v30, v33, v38
	v_div_fmas_f32 v25, v25, v28, v37
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v39, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v34, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v105
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v126, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v30, v33, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v31, v33
	v_div_scale_f32 v33, vcc_lo, v118, v29, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v28, v0, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v107
	v_exp_f32_e32 v28, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_mul_f32 v114, v130, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v115, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v31, v31, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v28, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s1, v106, v31, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v36, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v29, v29, v118
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_add_f32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v27, null, v25, v25, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v41, null, v32, v32, v107
	v_rcp_f32_e32 v38, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v40, 1.0
	v_fmac_f32_e32 v40, v42, v40
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v41, v38, 1.0
	v_mul_f32_e32 v37, v33, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v36, v37, v33
	v_fmac_f32_e32 v38, v35, v38
	v_div_scale_f32 v35, s0, v107, v32, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v37, v0, v40 :: v_dual_mul_f32 v34, v35, v38
	v_fma_f32 v26, -v36, v37, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v41, v34, v35
	v_div_fmas_f32 v26, v26, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v0, v38
	v_fma_f32 v0, -v39, v42, 1.0
	v_div_fixup_f32 v26, v26, v29, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v41, v34, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v37, s0, v105, v25, v105
	v_div_fmas_f32 v28, v28, v38, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v99
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v32, v107
	v_fmac_f32_e32 v42, v0, v42
	v_rcp_f32_e32 v0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v35
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v30, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v39, v29, v30
	v_fma_f32 v34, -v27, v0, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v33
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v29, v35, v42 :: v_dual_fmac_f32 v0, v34, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v29, v30
	v_mul_f32_e32 v33, v37, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v32, v32, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v27, v33, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	v_ldexp_f32 v34, v36, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v39
	v_fmac_f32_e32 v33, v40, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v27, -v27, v33, v37
	v_div_fmas_f32 v29, v30, v42, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v30, 1.0, v34 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v38, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v39, v36, 1.0
	v_div_fmas_f32 v0, v27, v0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v31, v106
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v35, v36
	v_div_scale_f32 v35, vcc_lo, v99, v32, v99
	v_div_fixup_f32 v0, v0, v25, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v25, null, v34, v34, v96
	v_dual_mul_f32 v31, v35, v36 :: v_dual_mul_f32 v106, v124, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v125, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v27, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v25
	v_fma_f32 v40, -v39, v31, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v105, v117, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v40, v36
	v_div_scale_f32 v37, null, v30, v30, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v40, null, v0, v0, v97
	v_fma_f32 v29, -v25, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v37
	v_fma_f32 v26, -v39, v31, v35
	v_div_scale_f32 v39, s1, v96, v34, v96
	v_fmac_f32_e32 v27, v29, v27
	v_rcp_f32_e32 v29, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v26, v26, v36, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v37, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, s0, v98, v30, v98
	v_fma_f32 v41, -v40, v29, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v38, v33
	v_fmac_f32_e32 v29, v41, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v37, v28, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v32, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v35, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v37, v28, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s6, v97, v0, v97
	v_div_fmas_f32 v28, v32, v33, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v38, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v30, v98
	v_mul_f32_e32 v36, v39, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v170
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v25, v36, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v35, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v37, v27
	v_fma_f32 v37, -v40, v32, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v36, v39
	v_fmac_f32_e32 v32, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v31, v31, v108
	v_div_fmas_f32 v25, v25, v27, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v42
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v39
	v_fma_f32 v38, -v40, v32, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v37, v33
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v38, v29, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v39, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v97
	v_div_scale_f32 v35, null, v32, v32, v91
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, vcc_lo, v108, v31, v108
	v_div_scale_f32 v41, null, v27, v27, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v35
	v_mul_f32_e32 v42, v33, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v41
	v_div_fixup_f32 v25, v25, v34, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v128, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v42, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v99, v129, v0 :: v_dual_mul_f32 v96, v123, v26
	v_mul_f32_e32 v98, v119, v25
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v35, v38, 1.0
	v_fmac_f32_e32 v42, v30, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v40, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v41, v29, 1.0
	v_div_scale_f32 v25, s0, v91, v32, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v39, v42, v33
	v_fmac_f32_e32 v38, v34, v38
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s1, v90, v27, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v36, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v33, v25, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v30, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v26, v28, v31, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v0, v0, v63
	v_fma_f32 v37, -v35, v33, v25
	v_fma_f32 v28, -v41, v39, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v37, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v28, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s6, v63, v0, v63
	v_fma_f32 v25, -v35, v33, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v34, v36, 1.0
	v_fma_f32 v30, -v41, v39, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v88, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v28, v28, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v31, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v37, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_div_scale_f32 v42, null, v28, v28, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v34, v33, v37
	v_div_fmas_f32 v29, v30, v29, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v38, v36
	v_div_fixup_f32 v27, v29, v27, v90
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v34, v33, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v116, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v30, v30, v62
	v_fma_f32 v35, -v42, v31, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v31, v35, v31
	v_div_fixup_f32 v25, v25, v32, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s0, v83, v28, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v35, v31
	v_fma_f32 v38, -v34, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v36, 0xbfb8aa3b, v74 :: v_dual_mul_f32 v91, v87, v0
	v_ldexp_f32 v32, v32, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v111, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s1, v62, v30, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v42, v37, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v39, null, v0, v0, v73
	v_dual_fmac_f32 v37, v32, v31 :: v_dual_mul_f32 v32, v38, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v36, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v42, v37, v35
	v_fma_f32 v35, -v34, v32, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v31, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v35, v33
	v_fma_f32 v29, -v39, v25, 1.0
	v_div_scale_f32 v31, null, v26, v26, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v28, v83
	v_fma_f32 v28, -v34, v32, v38
	v_fmac_f32_e32 v25, v29, v25
	v_div_scale_f32 v29, s0, v73, v0, v73
	v_rcp_f32_e32 v34, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v37, v29, v25
	v_div_fmas_f32 v28, v28, v33, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s6
	v_exp_f32_e32 v36, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v31, v34, 1.0
	v_div_fixup_f32 v28, v28, v30, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s1, v74, v26, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v36, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v35, v38, v34 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v39, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v31, v35, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v32, v33, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v33, null, v30, v30, v100
	v_dual_fmac_f32 v35, v39, v34 :: v_dual_add_f32 v32, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v33
	v_div_fmas_f32 v25, v29, v25, v37
	v_fma_f32 v29, -v31, v35, v38
	v_div_scale_f32 v41, null, v32, v32, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v41
	v_div_fmas_f32 v29, v29, v34, v35
	v_fma_f32 v42, -v33, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, vcc_lo, v100, v30, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v42, v40
	v_div_fixup_f32 v26, v29, v26, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v41, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_mul_f32 v37, v35, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v110, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v36, v38
	v_div_scale_f32 v36, s0, v95, v32, v95
	v_fma_f32 v25, -v33, v37, v35
	v_div_scale_f32 v39, null, v34, v34, v75
	v_mul_f32_e32 v26, v36, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v109, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v25, v40
	v_rcp_f32_e32 v42, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v29, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v41, v26, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v80, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v33, v37, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v25, v38
	v_div_scale_f32 v31, s1, v75, v34, v75
	v_div_fmas_f32 v27, v27, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v39, v42, 1.0
	v_div_scale_f32 v28, null, v0, v0, v72
	v_fma_f32 v29, -v41, v26, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v42, v25, v42
	v_rcp_f32_e32 v25, v28
	v_div_fmas_f32 v26, v29, v38, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v30, v100
	v_mul_f32_e32 v29, v31, v42
	v_div_fixup_f32 v26, v26, v32, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v35
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v72, v0, v72
	v_fma_f32 v30, -v28, v25, 1.0
	v_fma_f32 v35, -v39, v29, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v101, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	v_ldexp_f32 v32, v32, v33
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v35, v42
	v_mul_f32_e32 v33, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v39, v29, v31
	v_fma_f32 v40, -v28, v33, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v32, v32, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v36, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v40, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v28, v33, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v37, null, v30, v30, v66
	v_div_fmas_f32 v29, v31, v42, v29
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v38, v35
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v39, v36, 1.0
	v_div_fmas_f32 v25, v28, v25, v33
	v_rcp_f32_e32 v33, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v35, v36
	v_div_scale_f32 v35, vcc_lo, v92, v32, v92
	v_div_fixup_f32 v29, v29, v34, v75
	v_div_fixup_f32 v0, v25, v0, v72
	v_div_scale_f32 v25, null, v31, v31, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v34, v35, v36
	v_fma_f32 v38, -v37, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v103, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v28, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v25
	v_fma_f32 v40, -v39, v34, v35
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, s0, v66, v30, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v40, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v102, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v38, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v228, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v25, v28, 1.0
	v_div_scale_f32 v40, null, v0, v0, v65
	v_fma_f32 v27, -v39, v34, v35
	v_fma_f32 v35, -v37, v26, v38
	v_fmac_f32_e32 v28, v29, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v29, v40
	v_div_scale_f32 v39, s1, v64, v31, v64
	v_fmac_f32_e32 v26, v35, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v36, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v39, v28
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v40, v29, 1.0
	v_div_fixup_f32 v27, v27, v32, v92
	v_fma_f32 v32, -v37, v26, v38
	v_div_scale_f32 v38, s6, v65, v0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v41, v29
	v_fma_f32 v37, -v25, v36, v39
	v_div_fmas_f32 v26, v32, v33, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v38, v29
	v_fmac_f32_e32 v36, v37, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v57
	v_ldexp_f32 v34, v35, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v40, v32, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v36, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v41
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, null, v34, v34, v58
	v_div_fmas_f32 v25, v25, v28, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v42
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v39
	v_fma_f32 v38, -v40, v32, v38
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v37, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v30, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v25, v25, v31, v64
	v_div_fmas_f32 v29, v38, v29, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v39, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v65
	v_div_scale_f32 v35, null, v32, v32, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, vcc_lo, v58, v34, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v41, null, v28, v28, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v33, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v67, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v94, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v42, v33
	v_div_scale_f32 v25, s0, v57, v32, v57
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v35, v38, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v93, v26 :: v_dual_fmac_f32 v42, v30, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v40, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v216, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v31, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v41, v29, 1.0
	v_fma_f32 v26, -v39, v42, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v31, v25, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s1, v56, v28, v56
	v_div_fmas_f32 v26, v26, v36, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v0, v0, v51
	v_fma_f32 v37, -v35, v31, v25
	v_mul_f32_e32 v39, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v37, v38
	v_fma_f32 v27, -v41, v39, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v34, v58
	v_fma_f32 v25, -v35, v31, v25
	v_fmac_f32_e32 v39, v27, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v42
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v33, v36, 1.0
	v_div_scale_f32 v37, s6, v51, v0, v51
	v_fma_f32 v30, -v41, v39, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v50 :: v_dual_fmac_f32 v36, v34, v36
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v38, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v37, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v32, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v33, v31, v37
	v_div_scale_f32 v42, null, v27, v27, v76
	v_div_fmas_f32 v29, v30, v29, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v38, v36
	v_rcp_f32_e32 v34, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v29, v28, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v33, v31, v37
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v86, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v32, v32, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v42, v34, 1.0
	v_div_fmas_f32 v29, v29, v36, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v57, v85, v25 :: v_dual_fmac_f32 v34, v35, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s0, v76, v27, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v30, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v35, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v33, v31, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v84, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v42, v38, v35
	v_fmac_f32_e32 v31, v39, v31
	v_div_scale_f32 v39, s1, v50, v32, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v0, v0, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v37, v34 :: v_dual_mul_f32 v37, v39, v31
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v25, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v214, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v42, v38, v35
	v_fma_f32 v35, -v33, v37, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v36, v29
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v34, v38
	v_dual_fmac_f32 v37, v35, v31 :: v_dual_add_f32 v26, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v40, v25, 1.0
	v_div_fixup_f32 v27, v28, v27, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v28, -v33, v37, v39
	v_div_scale_f32 v33, null, v26, v26, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v25, v29, v25
	v_div_scale_f32 v29, s0, v48, v0, v48
	v_rcp_f32_e32 v34, v33
	v_div_fmas_f32 v28, v28, v31, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v37, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v29, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v32, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v40, v38, v29
	v_fma_f32 v39, -v33, v34, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v160
	v_exp_f32_e32 v37, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v32, v25
	v_fmac_f32_e32 v34, v39, v34
	v_div_scale_f32 v39, s1, v49, v26, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v36, v35
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v40, v38, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v39, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v37, v31
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v33, v35, v39
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v37, null, v32, v32, v207
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v40, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v37
	v_div_fmas_f32 v25, v29, v25, v38
	v_div_scale_f32 v42, null, v31, v31, v205
	v_fma_f32 v29, -v33, v35, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v42
	v_div_fixup_f32 v0, v25, v0, v48
	v_div_fmas_f32 v29, v29, v34, v35
	v_fma_f32 v43, -v37, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v36
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v238
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, vcc_lo, v207, v32, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v41, v43, v41 :: v_dual_add_f32 v34, 1.0, v34
	v_fma_f32 v36, -v42, v39, 1.0
	v_div_fixup_f32 v26, v29, v26, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v35, v41
	v_div_scale_f32 v40, null, v34, v34, v156
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s0, v205, v31, v205
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v79, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v37, v38, v35
	v_rcp_f32_e32 v43, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v26, v36, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v78, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v25, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v227, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v42, v26, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v29, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v77, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v37, v38, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v25, v39
	v_fma_f32 v25, -v40, v43, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v41, v38
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v28, -v42, v26, v36
	v_fmac_f32_e32 v43, v25, v43
	v_div_scale_f32 v25, s1, v156, v34, v156
	v_div_scale_f32 v29, null, v0, v0, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v28, v39, v26
	v_mul_f32_e32 v26, v25, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v29
	v_div_fixup_f32 v27, v27, v32, v207
	v_fma_f32 v22, -v40, v26, v25
	v_div_fixup_f32 v23, v23, v31, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v22, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v29, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	v_exp_f32_e32 v3, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v40, v26, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v4, v28
	v_div_scale_f32 v37, s0, v238, v0, v238
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v53
	v_ldexp_f32 v22, v22, v33
	v_exp_f32_e32 v33, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v43, v26
	v_mul_f32_e32 v26, v37, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v34, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v36, -v29, v26, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v22, v22, v61
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v26, v36, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v31, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v32
	v_div_scale_f32 v31, null, v3, v3, v59
	v_fma_f32 v29, -v29, v26, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v33, v33, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v31
	v_div_fmas_f32 v26, v29, v28, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v4, v4, v53
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v32, v34, 1.0
	v_div_scale_f32 v29, vcc_lo, v61, v22, v61
	v_rcp_f32_e32 v39, v28
	v_div_fixup_f32 v0, v26, v0, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v34, v36, v34
	v_fma_f32 v36, -v31, v37, 1.0
	v_div_scale_f32 v46, s6, v53, v4, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v35, v38, 1.0
	v_dual_mul_f32 v40, v29, v34 :: v_dual_fmac_f32 v37, v36, v37
	v_div_scale_f32 v36, s0, v59, v3, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v28, v39, 1.0
	v_fmac_f32_e32 v38, v26, v38
	v_div_scale_f32 v26, s1, v54, v33, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v71, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v32, v40, v29
	v_dual_mul_f32 v44, v36, v37 :: v_dual_fmac_f32 v39, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v26, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v70, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v31, v44, v36
	v_mul_f32_e32 v47, v46, v39
	v_fma_f32 v25, -v35, v45, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v69, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v32, v40, v29
	v_fmac_f32_e32 v44, v0, v37
	v_fma_f32 v0, -v28, v47, v46
	v_fmac_f32_e32 v45, v25, v38
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v83|, |v16|, |v15|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v34, v40
	v_fma_f32 v25, -v31, v44, v36
	v_fmac_f32_e32 v47, v0, v39
	v_fma_f32 v0, -v35, v45, v26
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v40, v213, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v37, v44
	v_fma_f32 v26, -v28, v47, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v23, v22, v61
	v_div_fmas_f32 v0, v0, v38, v45
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v3, v25, v3, v59
	v_div_fmas_f32 v26, v26, v39, v47
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v120|, |v121|
	v_max3_f32 v25, |v122|, |v112|, |v113|
	v_max3_f32 v27, |v107|, |v20|, |v18|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v33, v54
	v_div_fixup_f32 v4, v26, v4, v53
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v104|, |v105|, |v106|
	v_max3_f32 v28, |v80|, |v81|, |v82|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v157, v3
	v_mul_f32_e32 v35, v209, v0
	v_mul_f32_e32 v36, v55, v4
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v23, |v24|, v25
	v_max3_f32 v23, v26, v27, |v19|
	v_max_f32_e64 v25, |v96|, |v97|
	v_max3_f32 v26, |v98|, |v88|, |v89|
	v_max3_f32 v0, |v114|, |v115|, |v21|
	v_max3_f32 v27, |v90|, |v91|, |v17|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v153, v22
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v48|, |v49|
	v_max3_f32 v25, v25, |v99|, v26
	v_max3_f32 v26, v28, v29, |v14|
	v_max3_f32 v0, v4, v0, v23
	v_max3_f32 v23, |v50|, |v40|, |v41|
	v_max_f32_e64 v31, |v72|, |v73|
	v_max3_f32 v32, |v74|, |v64|, |v65|
	v_max3_f32 v3, v25, v27, v26
	v_max3_f32 v25, |v38|, |v37|, |v35|
	v_max3_f32 v26, |v36|, |v6|, |v7|
	v_max3_f32 v27, |v42|, |v43|, |v9|
	v_max3_f32 v22, v22, |v51|, v23
	v_max3_f32 v34, |v30|, |v12|, |v10|
	v_max3_f32 v28, |v66|, |v67|, |v13|
	v_max3_f32 v23, v25, v26, |v8|
	v_max3_f32 v29, v31, |v75|, v32
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v22, v22, v27, v23
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v23, 3, v137
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v33, |v56|, |v57|, |v58|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v32, 5, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v31, v33, v34, |v11|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v34, 0x60, v137
	v_lshlrev_b32_e32 v33, 1, v52
	v_and_or_b32 v2, 0x680, v2, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v29, v28, v31
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v31, 3, v52
	v_xor_b32_e32 v2, v2, v34
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v25, v28, v28 :: v_dual_max_f32 v26, v29, v29
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v22, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v25, v0, v25 :: v_dual_max_f32 v26, v3, v26
	v_dual_max_f32 v0, v28, v28 :: v_dual_and_b32 v3, 4, v137
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v28, v23, 9, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v4, v0 :: v_dual_max_f32 v4, v29, v29
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v3, 2, v28
	v_xor_b32_e32 v29, v32, v34
	v_lshl_add_u32 v39, v3, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v22, v4
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v1, 4, v0
	v_lshlrev_b32_e32 v1, 3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v39, v31, v2
.Ltmp31:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v39.h, 0
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v33, v29
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp33:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v44.h, v39.h
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[25:28]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v0, v25
	v_mov_b32_e32 v2, v26
	v_mov_b32_e32 v4, v27
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v25, v25 :: v_dual_max_f32 v25, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v28, v28
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v22, v0
	v_max_f32_e32 v22, v27, v27
	v_dual_max_f32 v2, v25, v2 :: v_dual_max_f32 v25, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v27, v0 :: v_dual_max_f32 v4, v22, v4
	v_mov_b32_e32 v28, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v26, v25
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v27, v27 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v25, v4
	v_mov_b32_dpp v28, v28 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v26, v22 :: v_dual_max_f32 v27, v27, v27
	v_mov_b32_dpp v25, v25 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v27 :: v_dual_max_f32 v25, v25, v25
	v_max_f32_e32 v2, v2, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v26, v26, v26 :: v_dual_mov_b32 v27, v0
	v_max_f32_e32 v4, v4, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v28, v2
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v22, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v27, v27 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v29, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v31, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v27, v27
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v28, v28
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v0, v25
	v_max_f32_e32 v0, v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v26, v2, v26
	v_max_f32_e32 v2, v31, v31
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v29, 1, v34
	v_add_nc_u32_e32 v31, 0, v52
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v4, v0 :: v_dual_lshlrev_b32 v0, 5, v3
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v3, v23, 4, 0
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v22, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v31, v29, v1
	v_add3_u32 v0, v3, v0, v1
	ds_store_b128 v2, v[25:28]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v0
.Ltmp59:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v0, v0
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v46, s1, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v22, v4
	v_rcp_f32_e32 v28, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v4, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v23, v22
	v_fma_f32 v27, -v4, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v27, v22
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v3
	v_fma_f32 v4, -v4, v25, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v26, v28, 1.0
	v_rcp_f32_e32 v31, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v4, v22, v25
	v_div_scale_f32 v25, null, 0x40e00000, 0x40e00000, v1
	v_fmac_f32_e32 v28, v23, v28
	v_div_scale_f32 v22, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v29, v25
	v_div_fixup_f32 v0, v4, 0x40e00000, v0
	v_mul_f32_e32 v4, v22, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v44.l, v0.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v26, v4, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v25, v29, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v23, v28
	v_fma_f32 v23, -v27, v31, 1.0
	v_fmac_f32_e32 v29, v45, v29
	v_div_scale_f32 v45, s0, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v23, v31
	v_fma_f32 v23, -v26, v4, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v0, v44, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v0, v45, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v26, v46, v31
	v_div_fmas_f32 v4, v23, v28, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v28, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v25, v0, v45
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v27, v26, v46
	v_div_fixup_f32 v4, v4, 0x40e00000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v28, v28, v120
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v23, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v44, v31
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v39.l, v4.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v52, null, v28, v28, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v25, v0, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v25, v47
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v27, v26, v46
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v23, 63, v137
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v53, null, v28, v28, v122
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v0, v2, v29, v0
	s_mov_b32 vcc_lo, s1
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v29, 1, v39
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v27, v31, v26
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v26, null, v28, v28, v121
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v1, -v47, v25, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v31.h, v39.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v45, v26
	v_div_scale_f32 v44, vcc_lo, v120, v28, v120
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v31.l, v0.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v25, v1, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v27, v2, 0x40e00000, v3
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v3, v4, v29, 0x7fff
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s42, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v29, v44, v25 :: v_dual_and_b32 v4, 1, v31
	v_fma_f32 v46, -v26, v45, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v39.l, v27.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s43, 0, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v31, v0, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v47, v29, v44
	v_fmac_f32_e32 v45, v46, v45
	v_rcp_f32_e32 v46, v52
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v39, 1, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v54, s0, v121, v28, v121
	v_fmac_f32_e32 v29, v0, v25
	v_rcp_f32_e32 v0, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v27, v39, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v27, v54, v45
	v_div_scale_f32 v60, null, v28, v28, v112
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v52, v46, 1.0
	v_fma_f32 v44, -v47, v29, v44
	v_fma_f32 v47, -v26, v27, v54
	v_div_scale_f32 v61, null, v28, v28, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v55, s1, v24, v28, v24
	v_fma_f32 v59, -v53, v0, 1.0
	v_div_fmas_f32 v25, v44, v25, v29
	v_fmac_f32_e32 v27, v47, v45
	v_mul_f32_e32 v29, v55, v46
	v_rcp_f32_e32 v47, v60
	v_fmac_f32_e32 v0, v59, v0
	v_div_scale_f32 v59, s6, v122, v28, v122
	v_div_fixup_f32 v44, v25, v28, v120
	v_fma_f32 v25, -v26, v27, v54
	v_fma_f32 v26, -v52, v29, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v54, v59, v0
	v_rcp_f32_e32 v63, v61
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v68, -v60, v47, 1.0
	v_div_fmas_f32 v25, v25, v45, v27
	v_fmac_f32_e32 v29, v26, v46
	v_fma_f32 v26, -v53, v54, v59
	v_div_scale_f32 v27, s0, v112, v28, v112
	v_fmac_f32_e32 v47, v68, v47
	v_div_fixup_f32 v45, v25, v28, v121
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v61, v63, 1.0
	v_fma_f32 v25, -v52, v29, v55
	v_fmac_f32_e32 v54, v26, v0
	v_div_scale_f32 v55, null, v28, v28, v114
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v26, v27, v47
	v_fmac_f32_e32 v63, v68, v63
	v_div_scale_f32 v52, s7, v113, v28, v113
	v_div_fmas_f32 v25, v25, v46, v29
	v_fma_f32 v29, -v53, v54, v59
	v_rcp_f32_e32 v53, v55
	v_div_scale_f32 v68, null, v28, v28, v115
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v60, v26, v27
	v_mul_f32_e32 v59, v52, v63
	v_div_fmas_f32 v0, v29, v0, v54
	v_rcp_f32_e32 v29, v68
	v_div_fixup_f32 v24, v25, v28, v24
	v_fmac_f32_e32 v26, v46, v47
	v_fma_f32 v54, -v61, v59, v52
	v_fma_f32 v69, -v55, v53, 1.0
	v_div_fixup_f32 v46, v0, v28, v122
	v_div_scale_f32 v25, s1, v114, v28, v114
	v_fma_f32 v0, -v60, v26, v27
	v_fmac_f32_e32 v59, v54, v63
	v_fmac_f32_e32 v53, v69, v53
	v_fma_f32 v27, -v68, v29, 1.0
	v_div_scale_f32 v60, null, v28, v28, v21
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v54, v25, v53
	v_div_fmas_f32 v0, v0, v47, v26
	v_fma_f32 v26, -v61, v59, v52
	v_fmac_f32_e32 v29, v27, v29
	v_rcp_f32_e32 v27, v60
	v_div_scale_f32 v61, s0, v115, v28, v115
	v_div_scale_f32 v69, null, v28, v28, v104
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v47, v0, v28, v112
	v_div_fmas_f32 v26, v26, v63, v59
	v_fma_f32 v59, -v55, v54, v25
	v_mul_f32_e32 v63, v61, v29
	v_rcp_f32_e32 v71, v69
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v70, -v60, v27, 1.0
	v_div_fixup_f32 v52, v26, v28, v113
	v_fmac_f32_e32 v54, v59, v53
	v_fma_f32 v0, -v68, v63, v61
	v_div_scale_f32 v59, null, v28, v28, v105
	v_fmac_f32_e32 v27, v70, v27
	v_div_scale_f32 v26, s6, v21, v28, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v70, -v69, v71, 1.0
	v_fma_f32 v25, -v55, v54, v25
	v_fmac_f32_e32 v63, v0, v29
	v_rcp_f32_e32 v76, v59
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v0, v26, v27
	v_fmac_f32_e32 v71, v70, v71
	v_div_scale_f32 v55, s7, v104, v28, v104
	v_div_fmas_f32 v25, v25, v53, v54
	v_fma_f32 v53, -v68, v63, v61
	v_div_scale_f32 v70, null, v28, v28, v106
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v60, v0, v26
	v_mul_f32_e32 v61, v55, v71
	v_fma_f32 v68, -v59, v76, 1.0
	v_div_fmas_f32 v29, v53, v29, v63
	v_rcp_f32_e32 v63, v70
	v_fmac_f32_e32 v0, v54, v27
	v_fma_f32 v77, -v69, v61, v55
	v_fmac_f32_e32 v76, v68, v76
	v_div_scale_f32 v68, s0, v105, v28, v105
	v_div_fixup_f32 v53, v25, v28, v114
	v_div_fixup_f32 v54, v29, v28, v115
	v_fma_f32 v25, -v60, v0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v61, v77, v71 :: v_dual_mul_f32 v26, v68, v76
	v_fma_f32 v29, -v70, v63, 1.0
	v_div_scale_f32 v77, null, v28, v28, v107
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v78, null, v28, v28, v20
	v_div_fmas_f32 v0, v25, v27, v0
	v_fma_f32 v27, -v59, v26, v68
	v_fmac_f32_e32 v63, v29, v63
	v_rcp_f32_e32 v29, v77
	v_fma_f32 v25, -v69, v61, v55
	v_div_scale_f32 v69, s1, v106, v28, v106
	v_fmac_f32_e32 v26, v27, v76
	v_rcp_f32_e32 v27, v78
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v0, v28, v21
	v_div_fmas_f32 v25, v25, v71, v61
	v_mul_f32_e32 v61, v69, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v60, -v77, v29, 1.0
	v_fma_f32 v0, -v59, v26, v68
	v_div_scale_f32 v68, null, v28, v28, v18
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v55, v25, v28, v104
	v_fma_f32 v25, -v70, v61, v69
	v_fmac_f32_e32 v29, v60, v29
	v_div_scale_f32 v59, s6, v107, v28, v107
	v_fma_f32 v60, -v78, v27, 1.0
	v_div_fmas_f32 v0, v0, v76, v26
	v_rcp_f32_e32 v26, v68
	v_div_scale_f32 v76, null, v28, v28, v19
	v_fmac_f32_e32 v61, v25, v63
	v_mul_f32_e32 v25, v59, v29
	v_fmac_f32_e32 v27, v60, v27
	v_div_scale_f32 v71, s0, v20, v28, v20
	v_rcp_f32_e32 v79, v76
	v_div_fixup_f32 v60, v0, v28, v105
	v_fma_f32 v0, -v70, v61, v69
	v_fma_f32 v69, -v77, v25, v59
	v_mul_f32_e32 v70, v71, v27
	v_fma_f32 v85, -v68, v26, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v63, v61
	v_fmac_f32_e32 v25, v69, v29
	v_fma_f32 v63, -v78, v70, v71
	v_fmac_f32_e32 v26, v85, v26
	v_fma_f32 v85, -v76, v79, 1.0
	v_div_scale_f32 v69, s1, v18, v28, v18
	v_div_fixup_f32 v61, v0, v28, v106
	v_fma_f32 v0, -v77, v25, v59
	v_fmac_f32_e32 v70, v63, v27
	v_fmac_f32_e32 v79, v85, v79
	v_div_scale_f32 v85, null, v84, v84, v96
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v59, v69, v26
	v_div_scale_f32 v77, s7, v19, v28, v19
	v_div_fmas_f32 v0, v0, v29, v25
	v_fma_f32 v25, -v78, v70, v71
	v_rcp_f32_e32 v71, v85
	v_div_scale_f32 v86, null, v84, v84, v97
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v29, -v68, v59, v69
	v_mul_f32_e32 v78, v77, v79
	v_div_fmas_f32 v25, v25, v27, v70
	v_rcp_f32_e32 v27, v86
	v_div_fixup_f32 v63, v0, v28, v107
	v_fmac_f32_e32 v59, v29, v26
	v_fma_f32 v29, -v76, v78, v77
	v_fma_f32 v70, -v85, v71, 1.0
	v_div_fixup_f32 v20, v25, v28, v20
	v_div_scale_f32 v25, s0, v96, v84, v96
	v_fma_f32 v0, -v68, v59, v69
	v_fmac_f32_e32 v78, v29, v79
	v_fmac_f32_e32 v71, v70, v71
	v_fma_f32 v29, -v86, v27, 1.0
	v_div_scale_f32 v70, null, v84, v84, v99
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v68, s1, v97, v84, v97
	v_div_fmas_f32 v0, v0, v26, v59
	v_fma_f32 v26, -v76, v78, v77
	v_mul_f32_e32 v59, v25, v71
	v_fmac_f32_e32 v27, v29, v27
	v_rcp_f32_e32 v29, v70
	v_div_scale_f32 v76, null, v84, v84, v98
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v69, -v85, v59, v25
	v_div_fmas_f32 v26, v26, v79, v78
	v_mul_f32_e32 v77, v68, v27
	v_rcp_f32_e32 v79, v76
	v_div_fixup_f32 v18, v0, v28, v18
	v_fmac_f32_e32 v59, v69, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v70, v29, 1.0
	v_div_fixup_f32 v19, v26, v28, v19
	v_fma_f32 v0, -v86, v77, v68
	v_div_scale_f32 v28, null, v84, v84, v88
	v_fmac_f32_e32 v29, v78, v29
	v_div_scale_f32 v26, s6, v99, v84, v99
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v69, -v76, v79, 1.0
	v_fma_f32 v25, -v85, v59, v25
	v_fmac_f32_e32 v77, v0, v27
	v_rcp_f32_e32 v78, v28
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v0, v26, v29 :: v_dual_fmac_f32 v79, v69, v79
	v_div_scale_f32 v85, s7, v98, v84, v98
	v_div_fmas_f32 v25, v25, v71, v59
	v_fma_f32 v59, -v86, v77, v68
	v_div_scale_f32 v86, null, v84, v84, v89
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v68, -v70, v0, v26
	v_mul_f32_e32 v71, v85, v79
	v_fma_f32 v69, -v28, v78, 1.0
	v_div_fmas_f32 v27, v59, v27, v77
	v_rcp_f32_e32 v59, v86
	v_fmac_f32_e32 v0, v68, v29
	v_fma_f32 v77, -v76, v71, v85
	v_fmac_f32_e32 v78, v69, v78
	v_div_scale_f32 v87, s0, v88, v84, v88
	v_div_fixup_f32 v68, v25, v84, v96
	v_div_fixup_f32 v69, v27, v84, v97
	v_fma_f32 v25, -v70, v0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v71, v77, v79 :: v_dual_mul_f32 v26, v87, v78
	v_fma_f32 v27, -v86, v59, 1.0
	v_div_scale_f32 v92, null, v84, v84, v90
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v77, s1, v89, v84, v89
	v_div_fmas_f32 v0, v25, v29, v0
	v_fma_f32 v25, -v76, v71, v85
	v_fma_f32 v29, -v28, v26, v87
	v_fmac_f32_e32 v59, v27, v59
	v_rcp_f32_e32 v27, v92
	v_div_scale_f32 v85, null, v84, v84, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v29, v78
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v70, v0, v84, v99
	v_rcp_f32_e32 v29, v85
	v_div_fmas_f32 v25, v25, v79, v71
	v_mul_f32_e32 v79, v77, v59
	v_fma_f32 v0, -v28, v26, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v76, -v92, v27, 1.0
	v_div_scale_f32 v87, null, v84, v84, v17
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v71, v25, v84, v98
	v_fma_f32 v25, -v86, v79, v77
	v_fmac_f32_e32 v27, v76, v27
	v_div_scale_f32 v28, s6, v90, v84, v90
	v_fma_f32 v76, -v85, v29, 1.0
	v_div_fmas_f32 v0, v0, v78, v26
	v_rcp_f32_e32 v26, v87
	v_fmac_f32_e32 v79, v25, v59
	v_mul_f32_e32 v25, v28, v27
	v_fmac_f32_e32 v29, v76, v29
	v_div_scale_f32 v78, s0, v91, v84, v91
	v_div_scale_f32 v93, null, v84, v84, v80
	v_div_fixup_f32 v76, v0, v84, v88
	v_fma_f32 v0, -v86, v79, v77
	v_fma_f32 v77, -v92, v25, v28
	v_mul_f32_e32 v86, v78, v29
	v_rcp_f32_e32 v88, v93
	v_fma_f32 v94, -v87, v26, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v25, v77, v27
	v_div_fmas_f32 v0, v0, v59, v79
	v_fma_f32 v59, -v85, v86, v78
	v_fmac_f32_e32 v26, v94, v26
	v_div_scale_f32 v94, s1, v17, v84, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v77, v0, v84, v89
	v_fma_f32 v79, -v93, v88, 1.0
	v_fma_f32 v0, -v92, v25, v28
	v_fmac_f32_e32 v86, v59, v29
	v_mul_f32_e32 v28, v94, v26
	v_div_scale_f32 v89, null, v84, v84, v81
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v88, v79, v88
	v_div_scale_f32 v59, s7, v80, v84, v80
	v_div_fmas_f32 v0, v0, v27, v25
	v_fma_f32 v25, -v85, v86, v78
	v_fma_f32 v27, -v87, v28, v94
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v95, null, v84, v84, v82
	v_mul_f32_e32 v92, v59, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v27, v26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v27, v95
	v_div_fmas_f32 v25, v25, v29, v86
	v_fma_f32 v29, -v93, v92, v59
	v_div_fixup_f32 v78, v0, v84, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v89, v85, 1.0
	v_fma_f32 v0, -v87, v28, v94
	v_div_fixup_f32 v79, v25, v84, v91
	v_fmac_f32_e32 v92, v29, v88
	v_div_scale_f32 v25, s0, v81, v84, v81
	v_fmac_f32_e32 v85, v86, v85
	v_fma_f32 v29, -v95, v27, 1.0
	v_div_scale_f32 v86, null, v84, v84, v83
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, null, v84, v84, v16
	v_div_fmas_f32 v0, v0, v26, v28
	v_fma_f32 v26, -v93, v92, v59
	v_mul_f32_e32 v28, v25, v85
	v_fmac_f32_e32 v27, v29, v27
	v_rcp_f32_e32 v29, v86
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v59, s1, v82, v84, v82
	v_div_fmas_f32 v26, v26, v88, v92
	v_fma_f32 v88, -v89, v28, v25
	v_rcp_f32_e32 v92, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v59, v27
	v_div_fixup_f32 v17, v0, v84, v17
	v_div_fixup_f32 v80, v26, v84, v80
	v_fma_f32 v91, -v86, v29, 1.0
	v_fmac_f32_e32 v28, v88, v85
	v_div_scale_f32 v88, null, v84, v84, v15
	v_fma_f32 v0, -v95, v90, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v29, v91, v29
	v_div_scale_f32 v26, s6, v83, v84, v83
	v_fma_f32 v91, -v87, v92, 1.0
	v_fma_f32 v25, -v89, v28, v25
	v_rcp_f32_e32 v89, v88
	v_fmac_f32_e32 v90, v0, v27
	v_mul_f32_e32 v0, v26, v29
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s7, v16, v84, v16
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v94, null, v84, v84, v14
	v_div_fmas_f32 v25, v25, v85, v28
	v_fma_f32 v28, -v95, v90, v59
	v_fma_f32 v59, -v86, v0, v26
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v93, -v88, v89, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v62, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v27, v28, v27, v90
	v_fmac_f32_e32 v0, v59, v29
	v_rcp_f32_e32 v28, v94
	v_fma_f32 v59, -v87, v85, v91
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v90, s0, v15, v84, v15
	v_div_fixup_f32 v81, v25, v84, v81
	v_fma_f32 v25, -v86, v0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v85, v59, v92 :: v_dual_mul_f32 v26, v90, v89
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v82, v27, v84, v82
	v_fma_f32 v27, -v94, v28, 1.0
	v_div_scale_f32 v59, null, v62, v62, v72
	v_div_fmas_f32 v0, v25, v29, v0
	v_fma_f32 v25, -v87, v85, v91
	v_fma_f32 v29, -v88, v26, v90
	v_div_scale_f32 v87, null, v62, v62, v73
	v_fmac_f32_e32 v28, v27, v28
	v_rcp_f32_e32 v27, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v29, v89
	v_rcp_f32_e32 v29, v87
	v_div_scale_f32 v86, s1, v14, v84, v14
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v83, v0, v84, v83
	v_div_fmas_f32 v25, v25, v92, v85
	v_mul_f32_e32 v85, v86, v28
	v_fma_f32 v0, -v88, v26, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v59, v27, 1.0
	v_div_scale_f32 v88, s6, v72, v62, v72
	v_fma_f32 v90, -v87, v29, 1.0
	v_div_fixup_f32 v16, v25, v84, v16
	v_fma_f32 v25, -v94, v85, v86
	v_fmac_f32_e32 v27, v91, v27
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v29, v90, v29
	v_div_scale_f32 v90, null, v62, v62, v74
	v_div_fmas_f32 v0, v0, v89, v26
	v_fmac_f32_e32 v85, v25, v28
	v_mul_f32_e32 v25, v88, v27
	v_div_scale_f32 v89, s0, v73, v62, v73
	v_rcp_f32_e32 v93, v90
	v_div_fixup_f32 v15, v0, v84, v15
	v_fma_f32 v0, -v94, v85, v86
	v_fma_f32 v86, -v59, v25, v88
	v_mul_f32_e32 v92, v89, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v39, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v28, v85
	v_fmac_f32_e32 v25, v86, v27
	v_fma_f32 v28, -v87, v92, v89
	v_fma_f32 v86, -v90, v93, 1.0
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v28, v29
	v_fmac_f32_e32 v93, v86, v93
	v_div_fixup_f32 v14, v0, v84, v14
	v_fma_f32 v0, -v59, v25, v88
	v_div_scale_f32 v59, s7, v74, v62, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v27, v25
	v_fma_f32 v25, -v87, v92, v89
	v_mul_f32_e32 v87, v59, v93
	v_div_scale_f32 v91, null, v62, v62, v75
	v_div_scale_f32 v85, s1, v75, v62, v75
	v_div_scale_f32 v84, null, v62, v62, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v91
	v_div_scale_f32 v88, null, v62, v62, v65
	v_rcp_f32_e32 v86, v84
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v72, v0, v62, v72
	v_div_fmas_f32 v25, v25, v29, v92
	v_fma_f32 v29, -v90, v87, v59
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v91, v26, 1.0
	v_div_fixup_f32 v73, v25, v62, v73
	v_fmac_f32_e32 v87, v29, v93
	v_fma_f32 v89, -v84, v86, 1.0
	v_div_scale_f32 v29, s0, v64, v62, v64
	v_fmac_f32_e32 v26, v94, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s1, v65, v62, v65
	v_mul_f32_e32 v28, v85, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v27, -v91, v28, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v28, v27, v26
	v_rcp_f32_e32 v27, v88
	v_fma_f32 v0, -v91, v28, v85
	v_div_scale_f32 v85, null, v62, v62, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v26, v28
	v_fma_f32 v25, -v88, v27, 1.0
	v_fma_f32 v26, -v90, v87, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v59, v85
	v_div_scale_f32 v90, null, v62, v62, v67
	v_mul_f32_e32 v28, v29, v86
	v_fmac_f32_e32 v27, v25, v27
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v25, v26, v93, v87
	v_fma_f32 v26, -v84, v28, v29
	v_mul_f32_e32 v87, v89, v27
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v59, 1.0
	v_div_fixup_f32 v0, v0, v62, v75
	v_div_scale_f32 v75, null, v62, v62, v13
	v_div_fixup_f32 v25, v25, v62, v74
	v_fmac_f32_e32 v28, v26, v86
	v_fma_f32 v26, -v88, v87, v89
	v_fmac_f32_e32 v59, v91, v59
	v_div_scale_f32 v74, s6, v66, v62, v66
	v_fma_f32 v91, -v90, v92, 1.0
	v_rcp_f32_e32 v93, v75
	v_fma_f32 v29, -v84, v28, v29
	v_fmac_f32_e32 v87, v26, v27
	v_mul_f32_e32 v84, v74, v59
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s7, v67, v62, v67
	s_mov_b32 vcc_lo, s0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v26, v29, v86, v28
	v_fma_f32 v28, -v88, v87, v89
	v_fma_f32 v29, -v85, v84, v74
	v_mul_f32_e32 v86, v91, v92
	v_fma_f32 v88, -v75, v93, 1.0
	v_div_scale_f32 v89, null, v62, v62, v56
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v84, v29, v59
	v_div_fmas_f32 v27, v28, v27, v87
	v_rcp_f32_e32 v87, v89
	v_fma_f32 v28, -v90, v86, v91
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v88, s0, v13, v62, v13
	v_div_fixup_f32 v26, v26, v62, v64
	v_div_fixup_f32 v27, v27, v62, v65
	v_fma_f32 v29, -v85, v84, v74
	v_fmac_f32_e32 v86, v28, v92
	v_mul_f32_e32 v64, v88, v93
	v_div_scale_f32 v65, null, v62, v62, v57
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v28, -v89, v87, 1.0
	v_div_fmas_f32 v29, v29, v59, v84
	v_fma_f32 v59, -v90, v86, v91
	v_fma_f32 v74, -v75, v64, v88
	v_rcp_f32_e32 v84, v65
	v_div_scale_f32 v90, null, v62, v62, v58
	v_fmac_f32_e32 v87, v28, v87
	v_div_scale_f32 v85, s1, v56, v62, v56
	v_fmac_f32_e32 v64, v74, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v74, v90
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v28, v29, v62, v66
	v_div_fmas_f32 v59, v59, v92, v86
	v_mul_f32_e32 v86, v85, v87
	v_fma_f32 v91, -v65, v84, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v29, v59, v62, v67
	v_fma_f32 v59, -v75, v64, v88
	v_fma_f32 v66, -v89, v86, v85
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v67, s6, v57, v62, v57
	v_fma_f32 v75, -v90, v74, 1.0
	v_div_scale_f32 v88, null, v62, v62, v30
	v_div_fmas_f32 v59, v59, v93, v64
	v_fmac_f32_e32 v86, v66, v87
	v_mul_f32_e32 v64, v67, v84
	v_fmac_f32_e32 v74, v75, v74
	v_rcp_f32_e32 v66, v88
	v_div_scale_f32 v75, s0, v58, v62, v58
	v_div_scale_f32 v91, null, v62, v62, v12
	v_div_fixup_f32 v13, v59, v62, v13
	v_fma_f32 v59, -v89, v86, v85
	v_fma_f32 v85, -v65, v64, v67
	v_mul_f32_e32 v89, v75, v74
	v_rcp_f32_e32 v92, v91
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v66, 1.0
	v_div_fmas_f32 v59, v59, v87, v86
	v_fmac_f32_e32 v64, v85, v84
	v_fma_f32 v85, -v90, v89, v75
	v_div_scale_f32 v86, s1, v30, v62, v30
	v_fmac_f32_e32 v66, v93, v66
	v_div_fixup_f32 v56, v59, v62, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v91, v92, 1.0
	v_fma_f32 v59, -v65, v64, v67
	v_fmac_f32_e32 v89, v85, v74
	v_div_scale_f32 v85, null, v62, v62, v10
	s_mov_b32 vcc_lo, s6
	v_dual_mul_f32 v65, v86, v66 :: v_dual_fmac_f32 v92, v87, v92
	v_div_scale_f32 v67, s7, v12, v62, v12
	v_div_fmas_f32 v59, v59, v84, v64
	v_rcp_f32_e32 v84, v85
	v_fma_f32 v64, -v90, v89, v75
	v_fma_f32 v75, -v88, v65, v86
	v_mul_f32_e32 v87, v67, v92
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, null, v62, v62, v11
	v_div_fmas_f32 v64, v64, v74, v89
	v_fmac_f32_e32 v65, v75, v66
	v_fma_f32 v75, -v91, v87, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v85, v84, 1.0
	v_rcp_f32_e32 v74, v90
	v_div_fixup_f32 v57, v59, v62, v57
	v_div_fixup_f32 v58, v64, v62, v58
	v_fma_f32 v59, -v88, v65, v86
	v_fmac_f32_e32 v87, v75, v92
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v64, s0, v10, v62, v10
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, null, v39, v39, v49
	v_div_fmas_f32 v59, v59, v66, v65
	v_fma_f32 v65, -v91, v87, v67
	v_mul_f32_e32 v66, v64, v84
	v_div_scale_f32 v67, null, v39, v39, v48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v75, -v90, v74, 1.0
	v_div_fmas_f32 v65, v65, v92, v87
	v_rcp_f32_e32 v86, v67
	v_fma_f32 v87, -v85, v66, v64
	v_div_fixup_f32 v30, v59, v62, v30
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, s1, v11, v62, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v87, v84
	v_div_fixup_f32 v12, v65, v62, v12
	v_rcp_f32_e32 v65, v89
	v_mul_f32_e32 v88, v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v67, v86, 1.0
	v_fma_f32 v64, -v85, v66, v64
	v_div_scale_f32 v85, null, v39, v39, v51
	v_fma_f32 v59, -v90, v88, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v87, v86
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v64, v64, v84, v66
	v_fmac_f32_e32 v88, v59, v74
	v_div_scale_f32 v59, s6, v48, v39, v48
	v_fma_f32 v91, -v89, v65, 1.0
	v_div_scale_f32 v92, null, v39, v39, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v66, -v90, v88, v75
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v85, v87, 1.0
	v_mul_f32_e32 v75, v59, v86
	v_fmac_f32_e32 v65, v91, v65
	v_div_scale_f32 v84, s0, v49, v39, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s7, v51, v39, v51
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v66, v66, v74, v88
	v_fma_f32 v91, -v67, v75, v59
	v_dual_mul_f32 v88, v90, v87 :: v_dual_mul_f32 v93, v84, v65
	v_div_fixup_f32 v10, v64, v62, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v66, v62, v11
	v_div_scale_f32 v66, null, v39, v39, v40
	v_fma_f32 v62, -v85, v88, v90
	v_fmac_f32_e32 v75, v91, v86
	v_fma_f32 v74, -v89, v93, v84
	v_fma_f32 v64, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v88, v62, v87
	v_rcp_f32_e32 v62, v66
	v_fma_f32 v59, -v67, v75, v59
	v_dual_fmac_f32 v93, v74, v65 :: v_dual_fmac_f32 v94, v64, v94
	v_div_scale_f32 v64, s1, v50, v39, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v59, v86, v75
	v_fma_f32 v67, -v89, v93, v84
	v_div_scale_f32 v75, null, v39, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v74, v64, v94
	v_fma_f32 v84, -v66, v62, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v48, v59, v39, v48
	v_div_fmas_f32 v65, v67, v65, v93
	v_fma_f32 v67, -v85, v88, v90
	v_rcp_f32_e32 v85, v75
	v_fma_f32 v86, -v92, v74, v64
	v_fmac_f32_e32 v62, v84, v62
	v_div_scale_f32 v84, s0, v40, v39, v40
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v74, v86, v94
	v_div_fmas_f32 v67, v67, v87, v88
	v_mul_f32_e32 v59, v84, v62
	v_div_fixup_f32 v49, v65, v39, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v65, -v75, v85, 1.0
	v_fma_f32 v64, -v92, v74, v64
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v66, v59, v84
	v_div_fixup_f32 v51, v67, v39, v51
	v_div_scale_f32 v67, null, v39, v39, v42
	v_fmac_f32_e32 v85, v65, v85
	v_div_scale_f32 v65, s6, v41, v39, v41
	v_div_fmas_f32 v64, v64, v94, v74
	v_fmac_f32_e32 v59, v86, v62
	v_rcp_f32_e32 v87, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v74, v65, v85
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v50, v64, v39, v50
	v_fma_f32 v64, -v66, v59, v84
	v_div_scale_f32 v86, null, v39, v39, v43
	v_fma_f32 v66, -v75, v74, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v64, v62, v59
	v_div_scale_f32 v62, null, v39, v39, v9
	v_fma_f32 v84, -v67, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v74, v66, v85
	v_rcp_f32_e32 v66, v62
	v_div_scale_f32 v64, s0, v42, v39, v42
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v39, v39, v38
	v_div_fixup_f32 v40, v59, v39, v40
	v_fma_f32 v65, -v75, v74, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v62, v66, 1.0
	v_mul_f32_e32 v75, v64, v87
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v88, v59, v88
	v_div_scale_f32 v59, s1, v43, v39, v43
	v_fmac_f32_e32 v66, v89, v66
	v_div_scale_f32 v89, null, v39, v39, v37
	v_div_fmas_f32 v65, v65, v85, v74
	v_fma_f32 v74, -v67, v75, v64
	v_mul_f32_e32 v85, v59, v88
	v_div_scale_f32 v91, s6, v9, v39, v9
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v75, v74, v87
	v_fma_f32 v74, -v86, v85, v59
	v_mul_f32_e32 v94, v91, v66
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s7, v38, v39, v38
	v_div_fixup_f32 v41, v65, v39, v41
	v_fma_f32 v64, -v67, v75, v64
	v_fmac_f32_e32 v85, v74, v88
	v_fma_f32 v65, -v62, v94, v91
	v_mul_f32_e32 v67, v92, v90
	v_fma_f32 v74, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v59, -v86, v85, v59
	v_fmac_f32_e32 v94, v65, v66
	v_fma_f32 v65, -v84, v67, v92
	v_fmac_f32_e32 v93, v74, v93
	v_div_scale_f32 v74, s0, v37, v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v62, v94, v91
	v_fmac_f32_e32 v67, v65, v90
	v_div_fmas_f32 v64, v64, v87, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v65, v74, v93
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v39, v39, v35
	v_div_fmas_f32 v59, v59, v88, v85
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v42, v64, v39, v42
	v_div_fmas_f32 v62, v62, v66, v94
	v_fma_f32 v66, -v84, v67, v92
	v_fma_f32 v84, -v89, v65, v74
	v_rcp_f32_e32 v85, v75
	v_div_fixup_f32 v43, v59, v39, v43
	v_div_fixup_f32 v9, v62, v39, v9
	v_div_scale_f32 v62, null, v39, v39, v36
	v_fmac_f32_e32 v65, v84, v93
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v87, null, v39, v39, v8
	v_div_fmas_f32 v66, v66, v90, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v89, v65, v74
	v_fma_f32 v64, -v75, v85, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v38, v66, v39, v38
	v_div_fmas_f32 v59, v59, v93, v65
	v_rcp_f32_e32 v65, v62
	v_fmac_f32_e32 v85, v64, v85
	v_div_scale_f32 v64, null, v39, v39, v6
	v_div_scale_f32 v66, null, v39, v39, v7
	v_div_scale_f32 v67, vcc_lo, v35, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v74, v64
	v_rcp_f32_e32 v84, v66
	v_div_fixup_f32 v37, v59, v39, v37
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v59, -v62, v65, 1.0
	v_mul_f32_e32 v86, v67, v85
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v65, v59, v65
	v_div_scale_f32 v59, s0, v36, v39, v36
	v_fma_f32 v88, -v64, v74, 1.0
	v_fma_f32 v91, -v66, v84, 1.0
	v_fma_f32 v90, -v75, v86, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v59, v65
	v_dual_fmac_f32 v89, v93, v89 :: v_dual_fmac_f32 v74, v88, v74
	v_div_scale_f32 v88, s1, v6, v39, v6
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s6, v7, v39, v7
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v62, v92, v59
	v_div_scale_f32 v93, s7, v8, v39, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v88, v74 :: v_dual_mul_f32 v95, v91, v84
	v_fmac_f32_e32 v92, v90, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v67, -v75, v86, v67
	v_fma_f32 v75, -v64, v94, v88
	v_fma_f32 v90, -v66, v95, v91
	v_fma_f32 v59, -v62, v92, v59
	v_fma_f32 v62, -v87, v96, v93
	v_div_fmas_f32 v67, v67, v85, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v75, v74 :: v_dual_fmac_f32 v95, v90, v84
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v96, v62, v89
	v_div_fmas_f32 v59, v59, v65, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v64, -v64, v94, v88
	v_fma_f32 v62, -v66, v95, v91
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v87, v96, v93
	v_div_fixup_f32 v35, v67, v39, v35
	v_div_fmas_f32 v64, v64, v74, v94
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v36, v59, v39, v36
	v_div_fmas_f32 v62, v62, v84, v95
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v6, v64, v39, v6
	v_div_fmas_f32 v65, v65, v89, v96
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v7, v62, v39, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v61
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v65, v39, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v61, v68
	v_rndne_f32_e32 v62, v69
	v_rndne_f32_e32 v63, v70
	v_rndne_f32_e32 v64, v71
	v_rndne_f32_e32 v65, v76
	v_rndne_f32_e32 v66, v77
	v_rndne_f32_e32 v67, v78
	v_rndne_f32_e32 v68, v79
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v79, v15
	v_cvt_i32_f32_e32 v84, v13
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v89, v49
	v_and_b32_e32 v13, 15, v53
	v_and_b32_e32 v15, 15, v54
	v_and_b32_e32 v49, 15, v0
	v_and_b32_e32 v53, 15, v28
	v_and_b32_e32 v54, 15, v29
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v137
	v_and_b32_e32 v28, 16, v137
	v_lshlrev_b32_e32 v29, 4, v200
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v80
	v_rndne_f32_e32 v70, v81
	v_rndne_f32_e32 v71, v82
	v_rndne_f32_e32 v74, v83
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_cvt_i32_f32_e32 v77, v17
	v_and_b32_e32 v17, 15, v59
	v_and_b32_e32 v59, 15, v30
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v30, 6, v28
	v_xor_b32_e32 v29, v29, v34
	v_lshlrev_b32_e32 v34, 6, v137
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v81, v25
	v_cvt_i32_f32_e32 v88, v48
	v_cvt_i32_f32_e32 v90, v51
	v_cvt_i32_f32_e32 v91, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v30
	v_and_or_b32 v30, 0x1b00, v34, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v75, v18
	v_cvt_i32_f32_e32 v76, v19
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v78, v16
	v_cvt_i32_f32_e32 v80, v14
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v96, v9
	v_cvt_i32_f32_e32 v97, v38
	v_cvt_i32_f32_e32 v98, v37
	v_cvt_i32_f32_e32 v99, v35
	v_cvt_i32_f32_e32 v82, v26
	v_cvt_i32_f32_e32 v83, v27
	v_cvt_i32_f32_e32 v85, v12
	v_cvt_i32_f32_e32 v86, v10
	v_cvt_i32_f32_e32 v87, v11
	v_cvt_i32_f32_e32 v100, v36
	v_cvt_i32_f32_e32 v101, v6
	v_cvt_i32_f32_e32 v102, v7
	v_cvt_i32_f32_e32 v103, v8
	v_and_b32_e32 v6, 15, v39
	v_and_b32_e32 v7, 15, v44
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v9, 15, v45
	v_and_b32_e32 v10, 15, v46
	v_and_b32_e32 v11, 15, v47
	v_and_b32_e32 v12, 15, v52
	v_and_b32_e32 v24, 15, v61
	v_and_b32_e32 v25, 15, v62
	v_and_b32_e32 v26, 15, v63
	v_and_b32_e32 v27, 15, v64
	v_and_b32_e32 v35, 15, v65
	v_and_b32_e32 v36, 15, v66
	v_and_b32_e32 v37, 15, v67
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v47, 15, v72
	v_and_b32_e32 v48, 15, v73
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v63, 15, v88
	v_and_b32_e32 v64, 15, v89
	v_and_b32_e32 v65, 15, v90
	v_and_b32_e32 v66, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v29, v33
	v_xad_u32 v29, v30, v203, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v40
	v_cvt_i32_f32_e32 v93, v41
	v_cvt_i32_f32_e32 v94, v42
	v_cvt_i32_f32_e32 v95, v43
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v16, 15, v55
	v_and_b32_e32 v18, 15, v60
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v21, 15, v76
	v_and_b32_e32 v39, 15, v77
	v_and_b32_e32 v40, 15, v69
	v_and_b32_e32 v41, 15, v70
	v_and_b32_e32 v42, 15, v71
	v_and_b32_e32 v43, 15, v74
	v_and_b32_e32 v44, 15, v78
	v_and_b32_e32 v45, 15, v79
	v_and_b32_e32 v46, 15, v80
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v56, 15, v56
	v_and_b32_e32 v57, 15, v57
	v_and_b32_e32 v58, 15, v58
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	v_and_b32_e32 v74, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v29
	ds_load_b128 v[14:17], v29 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[24:27]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v29
	ds_load_b128 v[39:42], v29 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v29
	ds_load_b128 v[55:58], v29 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v29
	ds_load_b128 v[71:74], v29 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v29
	ds_load_b128 v[18:21], v29 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[35:38]
	ds_store_b128 v0, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v29
	ds_load_b128 v[43:46], v29 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v60, 15, v85
	v_and_b32_e32 v61, 15, v86
	v_and_b32_e32 v62, 15, v87
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	v_and_b32_e32 v70, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[51:54]
	ds_store_b128 v0, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v29
	ds_load_b128 v[59:62], v29 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v100
	v_and_b32_e32 v76, 15, v101
	v_and_b32_e32 v77, 15, v102
	v_and_b32_e32 v78, 15, v103
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v20, 4, v12
	v_lshl_or_b32 v20, v40, 4, v25
	v_lshl_or_b32 v25, v43, 4, v32
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v200
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[67:70]
	ds_store_b128 v0, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v29
	ds_load_b128 v[75:78], v29 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s45, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v15, 4, v7
	v_lshl_or_b32 v15, v16, 4, v8
	v_lshl_or_b32 v16, v17, 4, v9
	v_lshl_or_b32 v17, v18, 4, v10
	v_lshl_or_b32 v18, v19, 4, v11
	v_lshl_or_b32 v13, v21, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v39, 4, v24
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v5, s0, v[0:1]
	v_mad_u64_u32 v[8:9], null, v152, s0, v[0:1]
	v_mad_u64_u32 v[9:10], null, v199, s0, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v42, 4, v27
	v_lshl_or_b32 v27, v45, 4, v34
	v_lshl_or_b32 v29, v46, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v202, s0, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v16.l
	v_and_b16 v0.h, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v13.l
	v_and_b16 v5.h, 0xff, v12.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v41, 4, v26
	v_lshl_or_b32 v26, v44, 4, v33
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_lshlrev_b16 v5.l, 8, v29.l
	v_and_b16 v5.h, 0xff, v27.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v46, v77, 4, v69
	v_lshl_or_b32 v47, v78, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v44, v75, 4, v67
	v_lshl_or_b32 v45, v76, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v8, s4
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v33.l
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v30.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v47.l
	v_and_b16 v5.h, 0xff, v46.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_lshlrev_b16 v6.l, 8, v45.l
	v_and_b16 v6.h, 0xff, v44.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v0, 0x80000000, v10, s2
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v138
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v43
	v_mov_b16_e32 v4.l, v31.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v5, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s42, v23
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v137
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[40:41], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s45, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 268
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 268
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28372
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 268
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 268
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
