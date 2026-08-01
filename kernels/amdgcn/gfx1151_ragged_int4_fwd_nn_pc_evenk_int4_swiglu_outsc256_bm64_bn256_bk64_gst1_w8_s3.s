	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v198, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s30, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s16, s14, 1
	s_sub_i32 s15, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s17, s15, s13
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s14, s16, s14
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s14, 1
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s13, s16, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s31, s13, s30
	s_sub_i32 s80, s31, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s80, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[24:25], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[78:79], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v1, s24 :: v_dual_lshlrev_b32 v2, 1, v0
	v_mov_b32_e32 v3, s78
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[74:75], s[4:5], 0x0
	s_load_b64 s[76:77], s[2:3], 0x0
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v197, 0x80, v0
	v_lshrrev_b32_e32 v181, 7, v0
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v179, 15, v0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v169, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s2, 0, v197
	v_or_b32_e32 v186, 30, v181
	v_or_b32_e32 v185, 28, v181
	v_or_b32_e32 v184, 26, v181
	v_or_b32_e32 v183, 24, v181
	v_or_b32_e32 v182, 22, v181
	v_or_b32_e32 v180, 20, v181
	v_or_b32_e32 v178, 18, v181
	v_or_b32_e32 v177, 16, v181
	v_or_b32_e32 v176, 14, v181
	v_or_b32_e32 v175, 12, v181
	v_or_b32_e32 v174, 10, v181
	v_or_b32_e32 v173, 8, v181
	v_or_b32_e32 v172, 6, v181
	v_or_b32_e32 v171, 4, v181
	v_or_b32_e32 v170, 2, v181
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v146, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v147, 0
	v_mov_b32_e32 v131, 0
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s25, s80, 8
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s26, s72, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_load_b128 s[20:23], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v20, 1, v169
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s78, v18
	v_add_co_ci_u32_e64 v3, null, s79, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v199, s25, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v4, vcc_lo, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[4:5]
	v_dual_mov_b32 v193, v173 :: v_dual_and_b32 v4, 24, v198
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[2:3]
	v_cndmask_b32_e64 v3, 0x88, 0, s2
	v_lshl_or_b32 v201, v179, 5, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[6:7]
	v_cmp_le_i64_e64 s4, s[74:75], v[10:11]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[6:7]
	v_cmp_gt_i64_e64 s12, s[76:77], v[10:11]
	v_xor_b32_e32 v200, v3, v169
	v_xor_b32_e32 v5, 8, v201
	v_dual_mov_b32 v191, v171 :: v_dual_add_nc_u32 v6, s78, v18
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_lshlrev_b32_e32 v10, 1, v181
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s8
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s8, s26, s73
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[12:13]
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s27, s8, s24
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_mul_i32 s8, s73, s24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[12:13]
	v_dual_mov_b32 v195, v175 :: v_dual_and_b32 v2, 31, v0
	v_xor_b32_e32 v3, 0x110, v200
	v_dual_mov_b32 v192, v172 :: v_dual_add_nc_u32 v13, 56, v6
	v_dual_mov_b32 v55, v1 :: v_dual_add_nc_u32 v236, 0, v5
	v_mov_b32_e32 v5, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v10, s8, 1, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[14:15]
	v_dual_mov_b32 v190, v170 :: v_dual_add_nc_u32 v15, 48, v6
	v_add_nc_u32_e32 v14, 40, v6
	v_xor_b32_e32 v7, 16, v201
	v_add_nc_u32_e32 v12, 32, v6
	v_dual_mov_b32 v194, v174 :: v_dual_add_nc_u32 v11, 24, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[76:77], v[8:9]
	v_lshrrev_b32_e32 v4, 1, v19
	v_dual_mov_b32 v196, v176 :: v_dual_add_nc_u32 v9, 16, v6
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[161:162], null, v13, s73, v[2:3]
	v_add_nc_u32_e32 v13, 61, v10
	v_mad_u64_u32 v[162:163], null, v15, s73, v[2:3]
	v_mad_u64_u32 v[163:164], null, v14, s73, v[2:3]
	v_dual_mov_b32 v54, v1 :: v_dual_add_nc_u32 v237, 0, v7
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[164:165], null, v12, s73, v[2:3]
	v_mad_u64_u32 v[165:166], null, v11, s73, v[2:3]
	v_add3_u32 v202, 0, v179, v4
	v_add_nc_u32_e32 v4, 8, v6
	v_mul_lo_u32 v13, s72, v13
	v_mad_u64_u32 v[166:167], null, v9, s73, v[2:3]
	v_add_nc_u32_e32 v9, 57, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[167:168], null, v4, s73, v[2:3]
	s_lshl_b32 s8, s31, 8
	v_mad_u64_u32 v[168:169], null, v6, s73, v[2:3]
	v_mul_lo_u32 v4, s72, v9
	v_add3_u32 v11, v13, s8, v20
	v_add_nc_u32_e32 v9, 53, v10
	v_add_nc_u32_e32 v6, 49, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s9
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s9, s30, 8
	v_mul_lo_u32 v12, s72, v186
	v_subrev_nc_u32_e32 v11, s9, v11
	v_mul_lo_u32 v2, s72, v9
	v_add3_u32 v4, v4, s8, v20
	v_mul_lo_u32 v6, s72, v6
	v_mul_lo_u32 v9, s72, v185
	v_add_nc_u32_e32 v203, 1, v11
	v_add_nc_u32_e32 v11, 45, v10
	v_subrev_nc_u32_e32 v4, s9, v4
	v_lshlrev_b32_e32 v204, 1, v12
	v_add3_u32 v2, v2, s8, v20
	v_mul_lo_u32 v12, s72, v184
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v13, 33, v10
	v_add_nc_u32_e32 v205, 1, v4
	v_add3_u32 v4, v6, s8, v20
	v_mul_lo_u32 v6, s72, v11
	v_subrev_nc_u32_e32 v2, s9, v2
	v_add_nc_u32_e32 v11, 41, v10
	v_lshlrev_b32_e32 v208, 1, v12
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v12, 37, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v207, 1, v2
	v_subrev_nc_u32_e32 v2, s9, v4
	v_mul_lo_u32 v4, s72, v11
	v_add3_u32 v6, v6, s8, v20
	v_mul_lo_u32 v11, s72, v182
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v206, 1, v9
	v_add_nc_u32_e32 v209, 1, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s9, v6
	v_mul_lo_u32 v6, s72, v12
	v_mul_lo_u32 v12, s72, v13
	v_mul_lo_u32 v9, s72, v183
	v_add3_u32 v4, v4, s8, v20
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v211, 1, v2
	v_dual_mov_b32 v23, v1 :: v_dual_lshlrev_b32 v212, 1, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v2, s9, v4
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v4, 29, v10
	v_add3_u32 v11, v12, s8, v20
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v12, 25, v10
	v_dual_mov_b32 v21, v1 :: v_dual_lshlrev_b32 v210, 1, v9
	v_mul_lo_u32 v9, s72, v180
	v_mul_lo_u32 v4, s72, v4
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v213, 1, v2
	v_mul_lo_u32 v2, s72, v12
	v_add3_u32 v6, v6, s8, v20
	v_subrev_nc_u32_e32 v11, s9, v11
	v_mov_b32_e32 v30, v1
	v_dual_mov_b32 v29, v1 :: v_dual_lshlrev_b32 v214, 1, v9
	v_add_nc_u32_e32 v9, 21, v10
	v_subrev_nc_u32_e32 v6, s9, v6
	v_add3_u32 v4, v4, s8, v20
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v217, 1, v11
	v_add3_u32 v2, v2, s8, v20
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v11, 17, v10
	v_mul_lo_u32 v9, s72, v9
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v215, 1, v6
	v_mul_lo_u32 v6, s72, v177
	v_subrev_nc_u32_e32 v4, s9, v4
	v_subrev_nc_u32_e32 v2, s9, v2
	v_mul_lo_u32 v11, s72, v11
	v_dual_mov_b32 v33, v1 :: v_dual_add_nc_u32 v14, 13, v10
	v_mul_lo_u32 v12, s72, v176
	v_dual_mov_b32 v34, v1 :: v_dual_add_nc_u32 v219, 1, v4
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v221, 1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v2, s72, v14
	v_add3_u32 v4, v9, s8, v20
	v_dual_mov_b32 v38, v1 :: v_dual_add_nc_u32 v9, 9, v10
	v_dual_mov_b32 v35, v1 :: v_dual_lshlrev_b32 v218, 1, v6
	v_add3_u32 v6, v11, s8, v20
	v_mul_lo_u32 v9, s72, v9
	v_dual_mov_b32 v37, v1 :: v_dual_lshlrev_b32 v220, 1, v12
	v_subrev_nc_u32_e32 v4, s9, v4
	v_dual_mov_b32 v41, v1 :: v_dual_add_nc_u32 v12, 5, v10
	v_mul_lo_u32 v13, s72, v178
	v_subrev_nc_u32_e32 v6, s9, v6
	v_add3_u32 v2, v2, s8, v20
	v_dual_mov_b32 v40, v1 :: v_dual_add_nc_u32 v223, 1, v4
	v_mul_lo_u32 v4, s72, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v42, v1 :: v_dual_add_nc_u32 v225, 1, v6
	v_subrev_nc_u32_e32 v2, s9, v2
	v_add3_u32 v6, v9, s8, v20
	v_mul_lo_u32 v9, s72, v10
	v_dual_mov_b32 v31, v1 :: v_dual_lshlrev_b32 v216, 1, v13
	v_mul_lo_u32 v13, s72, v175
	v_mul_lo_u32 v11, s72, v174
	v_dual_mov_b32 v44, v1 :: v_dual_add_nc_u32 v227, 1, v2
	v_mul_lo_u32 v2, s72, v172
	v_add3_u32 v4, v4, s8, v20
	s_add_i32 s8, s8, s72
	v_mul_lo_u32 v10, s72, v171
	v_add3_u32 v9, s8, v9, v20
	v_dual_mov_b32 v39, v1 :: v_dual_lshlrev_b32 v222, 1, v13
	v_mul_lo_u32 v13, s72, v173
	v_dual_mov_b32 v43, v1 :: v_dual_lshlrev_b32 v224, 1, v11
	v_mul_lo_u32 v11, s72, v170
	v_mul_lo_u32 v12, s72, v181
	v_xor_b32_e32 v8, 24, v201
	v_subrev_nc_u32_e32 v6, s9, v6
	v_subrev_nc_u32_e32 v4, s9, v4
	v_dual_mov_b32 v47, v1 :: v_dual_lshlrev_b32 v228, 1, v2
	v_subrev_nc_u32_e32 v2, s9, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[16:17]
	v_mov_b32_e32 v180, v177
	v_dual_mov_b32 v45, v1 :: v_dual_lshlrev_b32 v226, 1, v13
	v_dual_mov_b32 v46, v1 :: v_dual_add_nc_u32 v229, 1, v6
	v_dual_mov_b32 v49, v1 :: v_dual_lshlrev_b32 v230, 1, v10
	v_dual_mov_b32 v48, v1 :: v_dual_add_nc_u32 v231, 1, v4
	v_dual_mov_b32 v51, v1 :: v_dual_lshlrev_b32 v232, 1, v11
	v_dual_mov_b32 v50, v1 :: v_dual_add_nc_u32 v233, 1, v2
	v_dual_mov_b32 v53, v1 :: v_dual_lshlrev_b32 v234, 1, v12
	v_dual_mov_b32 v52, v1 :: v_dual_add_nc_u32 v235, 0, v3
	v_dual_mov_b32 v57, v1 :: v_dual_add_nc_u32 v238, 0, v8
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v20, v1
	v_dual_mov_b32 v56, v1 :: v_dual_add_nc_u32 v239, 0, v198
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v66, v1
	v_mov_b32_e32 v67, v1
	v_mov_b32_e32 v68, v1
	v_mov_b32_e32 v69, v1
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v73, v1
	v_mov_b32_e32 v74, v1
	v_mov_b32_e32 v75, v1
	v_mov_b32_e32 v76, v1
	v_mov_b32_e32 v77, v1
	v_mov_b32_e32 v78, v1
	v_mov_b32_e32 v79, v1
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v82, v1
	v_mov_b32_e32 v83, v1
	v_mov_b32_e32 v84, v1
	v_mov_b32_e32 v85, v1
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v87, v1
	v_mov_b32_e32 v88, v1
	v_mov_b32_e32 v89, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v91, v1
	v_mov_b32_e32 v92, v1
	v_mov_b32_e32 v93, v1
	v_mov_b32_e32 v94, v1
	v_mov_b32_e32 v95, v1
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v97, v1
	v_mov_b32_e32 v98, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v100, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v102, v1
	v_mov_b32_e32 v103, v1
	v_mov_b32_e32 v104, v1
	v_mov_b32_e32 v105, v1
	v_mov_b32_e32 v106, v1
	v_mov_b32_e32 v107, v1
	v_mov_b32_e32 v108, v1
	v_mov_b32_e32 v109, v1
	v_mov_b32_e32 v110, v1
	v_mov_b32_e32 v111, v1
	v_mov_b32_e32 v112, v1
	v_mov_b32_e32 v113, v1
	v_mov_b32_e32 v114, v1
	v_mov_b32_e32 v115, v1
	v_mov_b32_e32 v116, v1
	v_mov_b32_e32 v117, v1
	v_mov_b32_e32 v118, v1
	v_mov_b32_e32 v119, v1
	v_mov_b32_e32 v120, v1
	v_mov_b32_e32 v121, v1
	v_mov_b32_e32 v122, v1
	v_mov_b32_e32 v123, v1
	v_mov_b32_e32 v124, v1
	v_mov_b32_e32 v125, v1
	v_mov_b32_e32 v126, v1
	v_mov_b32_e32 v127, v1
	v_mov_b32_e32 v128, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s10
	s_and_b32 s3, s3, s11
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s4, s4, s12
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	.loc	1 1058 13 is_stmt 1             ; ragged.py:1058:13
	s_mov_b32 s28, 0
	s_and_b32 s13, s23, 0xffff
	s_add_u32 s29, s27, s72
	.loc	1 1058 19 is_stmt 0             ; ragged.py:1058:19
	s_lshl_b32 s30, s72, 6
	s_mov_b32 s8, s20
	s_mov_b32 s9, s21
	s_mov_b32 s12, s22
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_mov_b32 s20, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19                          ; ragged.py:0:19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1069 38 is_stmt 1             ; ragged.py:1069:38
	v_add_nc_u32_e32 v129, s20, v168
	v_add_nc_u32_e32 v130, s20, v167
	v_add_nc_u32_e32 v131, s20, v166
	v_add_nc_u32_e32 v132, s20, v165
	v_add_nc_u32_e32 v133, s20, v164
	v_add_nc_u32_e32 v134, s20, v163
	v_add_nc_u32_e32 v135, s20, v162
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add3_u32 v169, v234, s28, v199
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add3_u32 v170, v232, s28, v199
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v136, s20, v161
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	v_cndmask_b32_e64 v133, 0x80000000, v133, s4
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add3_u32 v171, v230, s28, v199
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v134, 0x80000000, v134, s5
	v_cndmask_b32_e64 v135, 0x80000000, v135, s6
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add3_u32 v172, v228, s28, v199
	v_add3_u32 v173, v226, s28, v199
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x6
	buffer_load_u8 v129, v129, s[8:11], 0 offen
	buffer_load_u8 v130, v130, s[8:11], 0 offen
	buffer_load_u8 v131, v131, s[8:11], 0 offen
	buffer_load_u8 v132, v132, s[8:11], 0 offen
	buffer_load_u8 v133, v133, s[8:11], 0 offen
	buffer_load_u8 v134, v134, s[8:11], 0 offen
	buffer_load_u8 v135, v135, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add3_u32 v174, v224, s28, v199
	v_add3_u32 v175, v222, s28, v199
	v_add3_u32 v176, v220, s28, v199
	v_add3_u32 v177, v218, s28, v199
	v_add3_u32 v178, v216, s28, v199
	v_add3_u32 v240, v214, s28, v199
	v_add3_u32 v241, v212, s28, v199
	v_add3_u32 v242, v210, s28, v199
	v_add3_u32 v243, v208, s28, v199
	v_add3_u32 v244, v206, s28, v199
	v_add3_u32 v245, v204, s28, v199
	v_add_nc_u32_e32 v137, s27, v169
	v_add_nc_u32_e32 v138, s27, v170
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v136, 0x80000000, v136, s7
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v139, s27, v171
	v_add_nc_u32_e32 v140, s27, v172
	v_add_nc_u32_e32 v141, s27, v173
	v_add_nc_u32_e32 v142, s27, v174
	v_add_nc_u32_e32 v143, s27, v175
	v_add_nc_u32_e32 v144, s27, v176
	v_add_nc_u32_e32 v145, s27, v177
	v_add_nc_u32_e32 v146, s27, v178
	v_add_nc_u32_e32 v147, s27, v240
	v_add_nc_u32_e32 v148, s27, v241
	v_add_nc_u32_e32 v149, s27, v242
	v_add_nc_u32_e32 v150, s27, v243
	v_add_nc_u32_e32 v151, s27, v244
	v_add_nc_u32_e32 v152, s27, v245
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	s_clause 0xf
	buffer_load_u16 v182, v137, s[12:15], 0 offen
	buffer_load_u16 v183, v138, s[12:15], 0 offen
	buffer_load_u16 v184, v139, s[12:15], 0 offen
	buffer_load_u16 v185, v140, s[12:15], 0 offen
	buffer_load_u16 v186, v141, s[12:15], 0 offen
	buffer_load_u16 v187, v142, s[12:15], 0 offen
	buffer_load_u16 v246, v143, s[12:15], 0 offen
	buffer_load_u16 v247, v144, s[12:15], 0 offen
	buffer_load_u16 v248, v145, s[12:15], 0 offen
	buffer_load_u16 v249, v146, s[12:15], 0 offen
	buffer_load_u16 v250, v147, s[12:15], 0 offen
	buffer_load_u16 v251, v148, s[12:15], 0 offen
	buffer_load_u16 v252, v149, s[12:15], 0 offen
	buffer_load_u16 v253, v150, s[12:15], 0 offen
	buffer_load_u16 v254, v151, s[12:15], 0 offen
	buffer_load_u16 v255, v152, s[12:15], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	buffer_load_u8 v136, v136, s[8:11], 0 offen
	v_add_nc_u32_e32 v137, 0, v200
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v169, s29, v169
	v_add_nc_u32_e32 v170, s29, v170
	v_add_nc_u32_e32 v171, s29, v171
	v_add_nc_u32_e32 v172, s29, v172
	v_add_nc_u32_e32 v173, s29, v173
	v_add_nc_u32_e32 v174, s29, v174
	v_add_nc_u32_e32 v175, s29, v175
	v_add_nc_u32_e32 v176, s29, v176
	v_add_nc_u32_e32 v177, s29, v177
	v_add_nc_u32_e32 v178, s29, v178
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s20, s20, 32
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(23)
	ds_store_b8 v137, v129
	s_waitcnt vmcnt(21)
	ds_store_b8 v137, v131 offset:512
	s_waitcnt vmcnt(19)
	ds_store_b8 v137, v133 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b8 v137, v135 offset:1536
	ds_store_b8 v235, v130
	ds_store_b8 v235, v132 offset:512
	ds_store_b8 v235, v134 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v235, v136 offset:1536
	v_add_nc_u32_e32 v129, 0, v201
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[145:148], v129 offset1:1
	ds_load_2addr_stride64_b64 v[141:144], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v236 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v236 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[153:156], v237 offset1:1
	ds_load_2addr_stride64_b64 v[133:136], v237 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[157:160], v238 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v238 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v239, v182
	ds_store_b16 v239, v183 offset:512
	ds_store_b16 v239, v184 offset:1024
	ds_store_b16 v239, v185 offset:1536
	ds_store_b16 v239, v186 offset:2048
	ds_store_b16 v239, v187 offset:2560
	ds_store_b16 v239, v246 offset:3072
	ds_store_b16 v239, v247 offset:3584
	ds_store_b16 v239, v248 offset:4096
	ds_store_b16 v239, v249 offset:4608
	ds_store_b16 v239, v250 offset:5120
	ds_store_b16 v239, v251 offset:5632
	ds_store_b16 v239, v252 offset:6144
	ds_store_b16 v239, v253 offset:6656
	ds_store_b16 v239, v254 offset:7168
	ds_store_b16 v239, v255 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v182, v202 offset:1280
	ds_load_u8 v183, v202 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:1792
	ds_load_u8 v184, v202 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v247, v183, 16, v182
	ds_load_u8 v182, v202 offset:256
	ds_load_u8 v183, v202
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:768
	ds_load_u8 v184, v202 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v246, v183, 16, v182
	ds_load_u8 v182, v202 offset:3328
	ds_load_u8 v183, v202 offset:3072
	v_wmma_i32_16x16x16_iu4 v[65:72], v[246:247], v[145:146], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[246:247], v[147:148], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[246:247], v[141:142], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[246:247], v[143:144], v[113:120] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v246, s28, v217
	v_add_nc_u32_e32 v247, s28, v215
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:3840
	ds_load_u8 v184, v202 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v249, v183, 16, v182
	ds_load_u8 v182, v202 offset:2304
	ds_load_u8 v183, v202 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:2816
	ds_load_u8 v184, v202 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v248, v183, 16, v182
	ds_load_u8 v182, v202 offset:5376
	ds_load_u8 v183, v202 offset:5120
	v_wmma_i32_16x16x16_iu4 v[65:72], v[248:249], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[248:249], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[248:249], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[248:249], v[139:140], v[113:120] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v248, s28, v213
	v_add_nc_u32_e32 v249, s28, v211
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:5888
	ds_load_u8 v184, v202 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v251, v183, 16, v182
	ds_load_u8 v182, v202 offset:4352
	ds_load_u8 v183, v202 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:4864
	ds_load_u8 v184, v202 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v250, v183, 16, v182
	ds_load_u8 v182, v202 offset:7424
	ds_load_u8 v183, v202 offset:7168
	v_wmma_i32_16x16x16_iu4 v[65:72], v[250:251], v[153:154], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[250:251], v[155:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[250:251], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[250:251], v[135:136], v[113:120] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v250, s28, v209
	v_add_nc_u32_e32 v251, s28, v207
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:7936
	ds_load_u8 v184, v202 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v253, v183, 16, v182
	ds_load_u8 v182, v202 offset:6400
	ds_load_u8 v183, v202 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:6912
	ds_load_u8 v184, v202 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v252, v183, 16, v182
	ds_load_u8 v182, v202 offset:1408
	ds_load_u8 v183, v202 offset:1152
	v_wmma_i32_16x16x16_iu4 v[65:72], v[252:253], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[252:253], v[159:160], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[252:253], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[252:253], v[131:132], v[113:120] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v252, s28, v205
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_add_nc_u32_e32 v253, s28, v203
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:1920
	ds_load_u8 v184, v202 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v255, v183, 16, v182
	ds_load_u8 v182, v202 offset:384
	ds_load_u8 v183, v202 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:896
	ds_load_u8 v184, v202 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v254, v183, 16, v182
	ds_load_u8 v182, v202 offset:3456
	ds_load_u8 v183, v202 offset:3200
	v_wmma_i32_16x16x16_iu4 v[73:80], v[254:255], v[145:146], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[254:255], v[147:148], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[254:255], v[141:142], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[254:255], v[143:144], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v202 offset:3968
	ds_load_u8 v184, v202 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v183, 16, v182
	ds_load_u8 v182, v202 offset:2432
	ds_load_u8 v184, v202 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v184, v182, 0xc0c0004
	ds_load_u8 v184, v202 offset:2944
	ds_load_u8 v185, v202 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v184, 16, v182
	ds_load_u8 v184, v202 offset:5504
	ds_load_u8 v185, v202 offset:5248
	v_wmma_i32_16x16x16_iu4 v[73:80], v[182:183], v[149:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[182:183], v[151:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[182:183], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[182:183], v[139:140], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v182, s29, v240
	v_add_nc_u32_e32 v183, s29, v241
	v_add_nc_u32_e32 v240, s28, v229
	v_add_nc_u32_e32 v241, s28, v227
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v202 offset:6016
	ds_load_u8 v186, v202 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v185, 16, v184
	ds_load_u8 v184, v202 offset:4480
	ds_load_u8 v186, v202 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v186, v184, 0xc0c0004
	ds_load_u8 v186, v202 offset:4992
	ds_load_u8 v187, v202 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v186, 16, v184
	ds_load_u8 v186, v202 offset:7552
	ds_load_u8 v187, v202 offset:7296
	v_wmma_i32_16x16x16_iu4 v[73:80], v[184:185], v[153:154], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[184:185], v[155:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[184:185], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[184:185], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v184, s29, v242
	v_add_nc_u32_e32 v185, s29, v243
	v_add_nc_u32_e32 v242, s28, v225
	v_add_nc_u32_e32 v243, s28, v223
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v202 offset:8064
	ds_load_u8 v188, v202 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v187, 16, v186
	ds_load_u8 v186, v202 offset:6528
	ds_load_u8 v188, v202 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v188, v186, 0xc0c0004
	ds_load_u8 v188, v202 offset:7040
	ds_load_u8 v189, v202 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v189, s28, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v186, v188, 16, v186
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v188, s28, v233
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[186:187], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[186:187], v[159:160], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[186:187], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[186:187], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v186, s29, v244
	v_add_nc_u32_e32 v187, s29, v245
	v_add_nc_u32_e32 v244, s28, v221
	v_add_nc_u32_e32 v245, s28, v219
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1f
	buffer_load_u8 v254, v169, s[12:15], 0 offen
	buffer_load_u8 v169, v188, s[12:15], 0 offen
	buffer_load_u8 v170, v170, s[12:15], 0 offen
	buffer_load_u8 v188, v189, s[12:15], 0 offen
	buffer_load_u8 v171, v171, s[12:15], 0 offen
	buffer_load_u8 v189, v240, s[12:15], 0 offen
	buffer_load_u8 v172, v172, s[12:15], 0 offen
	buffer_load_u8 v240, v241, s[12:15], 0 offen
	buffer_load_u8 v173, v173, s[12:15], 0 offen
	buffer_load_u8 v241, v242, s[12:15], 0 offen
	buffer_load_u8 v174, v174, s[12:15], 0 offen
	buffer_load_u8 v242, v243, s[12:15], 0 offen
	buffer_load_u8 v175, v175, s[12:15], 0 offen
	buffer_load_u8 v243, v244, s[12:15], 0 offen
	buffer_load_u8 v176, v176, s[12:15], 0 offen
	buffer_load_u8 v244, v245, s[12:15], 0 offen
	buffer_load_u8 v177, v177, s[12:15], 0 offen
	buffer_load_u8 v245, v246, s[12:15], 0 offen
	buffer_load_u8 v178, v178, s[12:15], 0 offen
	buffer_load_u8 v246, v247, s[12:15], 0 offen
	buffer_load_u8 v182, v182, s[12:15], 0 offen
	buffer_load_u8 v247, v248, s[12:15], 0 offen
	buffer_load_u8 v183, v183, s[12:15], 0 offen
	buffer_load_u8 v248, v249, s[12:15], 0 offen
	buffer_load_u8 v184, v184, s[12:15], 0 offen
	buffer_load_u8 v249, v250, s[12:15], 0 offen
	buffer_load_u8 v185, v185, s[12:15], 0 offen
	buffer_load_u8 v250, v251, s[12:15], 0 offen
	buffer_load_u8 v186, v186, s[12:15], 0 offen
	buffer_load_u8 v251, v252, s[12:15], 0 offen
	buffer_load_u8 v187, v187, s[12:15], 0 offen
	buffer_load_u8 v252, v253, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_add_i32 s28, s28, s30
	s_cmp_lt_i32 s20, s73
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(30)
	v_lshlrev_b16 v169.l, 8, v169.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v254.l, v169.l
	ds_store_b16 v239, v169
	s_waitcnt vmcnt(28)
	v_lshlrev_b16 v169.l, 8, v188.l
	v_or_b16 v169.l, v170.l, v169.l
	ds_store_b16 v239, v169 offset:512
	s_waitcnt vmcnt(26)
	v_lshlrev_b16 v169.l, 8, v189.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v171.l, v169.l
	ds_store_b16 v239, v169 offset:1024
	s_waitcnt vmcnt(24)
	v_lshlrev_b16 v169.l, 8, v240.l
	v_or_b16 v169.l, v172.l, v169.l
	ds_store_b16 v239, v169 offset:1536
	s_waitcnt vmcnt(22)
	v_lshlrev_b16 v169.l, 8, v241.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v173.l, v169.l
	ds_store_b16 v239, v169 offset:2048
	s_waitcnt vmcnt(20)
	v_lshlrev_b16 v169.l, 8, v242.l
	v_or_b16 v169.l, v174.l, v169.l
	ds_store_b16 v239, v169 offset:2560
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v169.l, 8, v243.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v175.l, v169.l
	ds_store_b16 v239, v169 offset:3072
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v169.l, 8, v244.l
	v_or_b16 v169.l, v176.l, v169.l
	ds_store_b16 v239, v169 offset:3584
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v169.l, 8, v245.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v177.l, v169.l
	ds_store_b16 v239, v169 offset:4096
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v169.l, 8, v246.l
	v_or_b16 v169.l, v178.l, v169.l
	ds_store_b16 v239, v169 offset:4608
	s_waitcnt vmcnt(10)
	v_lshlrev_b16 v169.l, 8, v247.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v182.l, v169.l
	ds_store_b16 v239, v169 offset:5120
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v169.l, 8, v248.l
	v_or_b16 v169.l, v183.l, v169.l
	ds_store_b16 v239, v169 offset:5632
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v169.l, 8, v249.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v184.l, v169.l
	ds_store_b16 v239, v169 offset:6144
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v169.l, 8, v250.l
	v_or_b16 v169.l, v185.l, v169.l
	ds_store_b16 v239, v169 offset:6656
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v169.l, 8, v251.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v186.l, v169.l
	ds_store_b16 v239, v169 offset:7168
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v169.l, 8, v252.l
	v_or_b16 v169.l, v187.l, v169.l
	ds_store_b16 v239, v169 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v169, v202 offset:1280
	ds_load_u8 v170, v202 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v202 offset:1792
	ds_load_u8 v171, v202 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v169, v202 offset:256
	ds_load_u8 v171, v202
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v171, v169, 0xc0c0004
	ds_load_u8 v171, v202 offset:768
	ds_load_u8 v172, v202 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v171, 16, v169
	ds_load_u8 v171, v202 offset:3328
	ds_load_u8 v172, v202 offset:3072
	v_wmma_i32_16x16x16_iu4 v[1:8], v[169:170], v[145:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[169:170], v[147:148], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[169:170], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[169:170], v[143:144], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v202 offset:3840
	ds_load_u8 v173, v202 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v172, 16, v171
	ds_load_u8 v171, v202 offset:2304
	ds_load_u8 v173, v202 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v173, v171, 0xc0c0004
	ds_load_u8 v173, v202 offset:2816
	ds_load_u8 v174, v202 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v173, 16, v171
	ds_load_u8 v173, v202 offset:5376
	ds_load_u8 v174, v202 offset:5120
	v_wmma_i32_16x16x16_iu4 v[1:8], v[171:172], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[171:172], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[171:172], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[171:172], v[139:140], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v202 offset:5888
	ds_load_u8 v175, v202 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v174, 16, v173
	ds_load_u8 v173, v202 offset:4352
	ds_load_u8 v175, v202 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v175, v173, 0xc0c0004
	ds_load_u8 v175, v202 offset:4864
	ds_load_u8 v176, v202 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v175, 16, v173
	ds_load_u8 v175, v202 offset:7424
	ds_load_u8 v176, v202 offset:7168
	v_wmma_i32_16x16x16_iu4 v[1:8], v[173:174], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[173:174], v[155:156], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[173:174], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[173:174], v[135:136], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v202 offset:7936
	ds_load_u8 v177, v202 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v176, 16, v175
	ds_load_u8 v175, v202 offset:6400
	ds_load_u8 v177, v202 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v177, v175, 0xc0c0004
	ds_load_u8 v177, v202 offset:6912
	ds_load_u8 v178, v202 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v177, 16, v175
	ds_load_u8 v177, v202 offset:1408
	ds_load_u8 v178, v202 offset:1152
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[157:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[159:160], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[131:132], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v202 offset:1920
	ds_load_u8 v182, v202 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v182, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v178, 16, v177
	ds_load_u8 v177, v202 offset:384
	ds_load_u8 v178, v202 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v202 offset:896
	ds_load_u8 v182, v202 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v182, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v182, v178, 16, v177
	v_wmma_i32_16x16x16_iu4 v[9:16], v[182:183], v[145:146], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v145, v202 offset:3456
	ds_load_u8 v146, v202 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[182:183], v[147:148], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[182:183], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[182:183], v[143:144], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v202 offset:3968
	ds_load_u8 v177, v202 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v177, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v146, 16, v145
	ds_load_u8 v145, v202 offset:2432
	ds_load_u8 v146, v202 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v202 offset:2944
	ds_load_u8 v177, v202 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v177, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v146, 16, v145
	ds_load_u8 v145, v202 offset:5504
	ds_load_u8 v146, v202 offset:5248
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[149:150], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[151:152], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[177:178], v[139:140], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v202 offset:6016
	ds_load_u8 v149, v202 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v149, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v146, 16, v145
	ds_load_u8 v145, v202 offset:4480
	ds_load_u8 v146, v202 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v202 offset:4992
	ds_load_u8 v149, v202 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v149, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v146, 16, v145
	ds_load_u8 v145, v202 offset:7552
	ds_load_u8 v146, v202 offset:7296
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[153:154], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[149:150], v[155:156], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[149:150], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[149:150], v[135:136], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v202 offset:8064
	ds_load_u8 v153, v202 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v153, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v146, 16, v145
	ds_load_u8 v145, v202 offset:6528
	ds_load_u8 v153, v202 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v153, v145, 0xc0c0004
	ds_load_u8 v153, v202 offset:7040
	ds_load_u8 v154, v202 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v153, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[157:158], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[145:146], v[159:160], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[145:146], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[145:146], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v165, v65
	v_cvt_f32_i32_e32 v166, v66
	v_cvt_f32_i32_e32 v168, v67
	v_cvt_f32_i32_e32 v167, v68
	v_cvt_f32_i32_e32 v142, v69
	v_cvt_f32_i32_e32 v143, v70
	v_cvt_f32_i32_e32 v144, v71
	v_cvt_f32_i32_e32 v145, v72
	v_cvt_f32_i32_e32 v146, v73
	v_cvt_f32_i32_e32 v139, v74
	v_cvt_f32_i32_e32 v140, v75
	v_cvt_f32_i32_e32 v141, v76
	v_cvt_f32_i32_e32 v129, v77
	v_cvt_f32_i32_e32 v132, v78
	v_cvt_f32_i32_e32 v131, v79
	v_cvt_f32_i32_e32 v130, v80
	v_cvt_f32_i32_e32 v161, v81
	v_cvt_f32_i32_e32 v162, v82
	v_cvt_f32_i32_e32 v164, v83
	v_cvt_f32_i32_e32 v163, v84
	v_cvt_f32_i32_e32 v148, v85
	v_cvt_f32_i32_e32 v149, v86
	v_cvt_f32_i32_e32 v150, v87
	v_cvt_f32_i32_e32 v151, v88
	v_cvt_f32_i32_e32 v147, v89
	v_cvt_f32_i32_e32 v136, v90
	v_cvt_f32_i32_e32 v137, v91
	v_cvt_f32_i32_e32 v138, v92
	v_cvt_f32_i32_e32 v77, v93
	v_cvt_f32_i32_e32 v135, v94
	v_cvt_f32_i32_e32 v134, v95
	v_cvt_f32_i32_e32 v133, v96
	v_cvt_f32_i32_e32 v157, v97
	v_cvt_f32_i32_e32 v158, v98
	v_cvt_f32_i32_e32 v160, v99
	v_cvt_f32_i32_e32 v159, v100
	v_cvt_f32_i32_e32 v153, v101
	v_cvt_f32_i32_e32 v154, v102
	v_cvt_f32_i32_e32 v155, v103
	v_cvt_f32_i32_e32 v156, v104
	v_cvt_f32_i32_e32 v152, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v76, v109
	v_cvt_f32_i32_e32 v100, v110
	v_cvt_f32_i32_e32 v99, v111
	v_cvt_f32_i32_e32 v98, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v110, v119
	v_cvt_f32_i32_e32 v111, v120
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v95, v122
	v_cvt_f32_i32_e32 v96, v123
	v_cvt_f32_i32_e32 v97, v124
	v_cvt_f32_i32_e32 v70, v125
	v_cvt_f32_i32_e32 v103, v126
	v_cvt_f32_i32_e32 v102, v127
	v_cvt_f32_i32_e32 v101, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v92, v2
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v72, v6
	v_cvt_f32_i32_e32 v73, v7
	v_cvt_f32_i32_e32 v74, v8
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v68, v10
	v_cvt_f32_i32_e32 v69, v11
	v_cvt_f32_i32_e32 v67, v12
	v_cvt_f32_i32_e32 v7, v13
	v_cvt_f32_i32_e32 v66, v14
	v_cvt_f32_i32_e32 v65, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v90, v17
	v_cvt_f32_i32_e32 v89, v18
	v_cvt_f32_i32_e32 v87, v19
	v_cvt_f32_i32_e32 v88, v20
	v_cvt_f32_i32_e32 v81, v21
	v_cvt_f32_i32_e32 v80, v22
	v_cvt_f32_i32_e32 v79, v23
	v_cvt_f32_i32_e32 v78, v24
	v_cvt_f32_i32_e32 v82, v25
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v6, v29
	v_cvt_f32_i32_e32 v20, v30
	v_cvt_f32_i32_e32 v19, v31
	v_cvt_f32_i32_e32 v18, v32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v83, v35
	v_cvt_f32_i32_e32 v84, v36
	v_cvt_f32_i32_e32 v31, v37
	v_cvt_f32_i32_e32 v30, v38
	v_cvt_f32_i32_e32 v29, v39
	v_cvt_f32_i32_e32 v28, v40
	v_cvt_f32_i32_e32 v27, v41
	v_cvt_f32_i32_e32 v13, v42
	v_cvt_f32_i32_e32 v12, v43
	v_cvt_f32_i32_e32 v11, v44
	v_cvt_f32_i32_e32 v5, v45
	v_cvt_f32_i32_e32 v23, v46
	v_cvt_f32_i32_e32 v22, v47
	v_cvt_f32_i32_e32 v21, v48
	v_cvt_f32_i32_e32 v36, v49
	v_cvt_f32_i32_e32 v35, v50
	v_cvt_f32_i32_e32 v32, v51
	v_cvt_f32_i32_e32 v33, v52
	v_cvt_f32_i32_e32 v40, v53
	v_cvt_f32_i32_e32 v38, v54
	v_cvt_f32_i32_e32 v39, v55
	v_cvt_f32_i32_e32 v37, v56
	v_cvt_f32_i32_e32 v34, v57
	v_cvt_f32_i32_e32 v10, v58
	v_cvt_f32_i32_e32 v9, v59
	v_cvt_f32_i32_e32 v8, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v26, v62
	v_cvt_f32_i32_e32 v25, v63
	v_cvt_f32_i32_e32 v24, v64
	v_dual_mov_b32 v1, s24 :: v_dual_mov_b32 v2, v198
	v_dual_mov_b32 v3, s78 :: v_dual_mov_b32 v170, v190
	v_dual_mov_b32 v171, v191 :: v_dual_mov_b32 v172, v192
	v_dual_mov_b32 v173, v193 :: v_dual_mov_b32 v174, v194
	v_dual_mov_b32 v175, v195 :: v_dual_mov_b32 v176, v196
	v_mov_b32_e32 v177, v180
	v_and_b32_e32 v169, 0x7f, v0
	v_or_b32_e32 v178, 18, v181
	v_or_b32_e32 v180, 20, v181
	v_or_b32_e32 v182, 22, v181
	v_or_b32_e32 v183, 24, v181
	v_or_b32_e32 v184, 26, v181
	v_or_b32_e32 v185, 28, v181
	v_or_b32_e32 v186, 30, v181
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v41, 5, v0
	v_and_b32_e32 v44, 0xf0, v0
	v_and_b32_e32 v2, 28, v2
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_and_b32 s69, s17, 0xffff
	s_mov_b32 s71, 0x31027000
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v41, 32, v41
	v_lshl_add_u32 v42, v44, 2, 0
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s68, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v45, v42, v41, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v41, s0, s78, v179
	v_add_co_ci_u32_e64 v42, null, s79, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 16, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 1, v41
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[41:42]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v41, s1, s78, v2
	v_add_co_ci_u32_e64 v42, null, s79, 0, s1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 32, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v46, 1, v41
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[76:77], v[41:42]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v41, s4, s78, v2
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v2, s25, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v42, null, s79, 0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v47, 1, v41
	s_mov_b32 s0, 0x76543210
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_mad_u64_u32 v[1:2], null, s26, v1, v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v179
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[76:77], v[41:42]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v41, s6, s78, v2
	v_add_co_ci_u32_e64 v42, null, s79, 0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v2, 1, v41
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[76:77], v[41:42]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_cndmask_b32_e32 v41, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v42, 0x80000000, v46, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v47, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x3
	buffer_load_u16 v41, v41, s[68:71], 0 offen
	buffer_load_u16 v42, v42, s[68:71], 0 offen
	buffer_load_u16 v46, v43, s[68:71], 0 offen
	buffer_load_u16 v2, v2, s[68:71], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s69, s19, 0xffff
	s_mov_b32 s68, s18
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_lshlrev_b32_e32 v43, 1, v1
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v1, v1, s72, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v54, v162, v42
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v43, v43, s[68:71], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v116, v114, v2 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v45, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v1, v1, s[68:71], 0 offen
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 16, v41
	v_lshlrev_b32_e32 v41, 16, v46
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s72, s68
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v47, v167, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v44, v44, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v48, v166, v43
	v_mul_f32_e32 v49, v165, v43
	v_mul_f32_e32 v59, v159, v41
	v_mul_f32_e32 v63, v115, v2
	v_mul_f32_e32 v117, v113, v2
	v_mul_f32_e32 v118, v112, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[112:115], v44
	ds_load_b128 v[122:125], v44 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v46, v168, v43
	v_mul_f32_e32 v61, v160, v41
	v_dual_mul_f32 v51, v164, v42 :: v_dual_mul_f32 v62, v157, v41
	v_mul_f32_e32 v52, v163, v42
	v_dual_mul_f32 v55, v161, v42 :: v_dual_mul_f32 v56, v158, v41
	v_mul_f32_e32 v126, v156, v41
	v_dual_mul_f32 v127, v155, v41 :: v_dual_mul_f32 v110, v110, v2
	v_dual_mul_f32 v128, v154, v41 :: v_dual_mul_f32 v109, v109, v2
	v_mul_f32_e32 v107, v107, v2
	v_mul_f32_e32 v97, v97, v2
	v_dual_mul_f32 v95, v95, v2 :: v_dual_mul_f32 v100, v100, v41
	v_dual_mul_f32 v103, v103, v2 :: v_dual_mul_f32 v98, v98, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v50, v49, v112 :: v_dual_mul_f32 v53, v48, v113
	v_mul_f32_e32 v64, v46, v114
	v_mul_f32_e32 v58, v47, v115
	v_dual_mul_f32 v46, v55, v112 :: v_dual_mul_f32 v55, v54, v113
	v_dual_mul_f32 v57, v52, v115 :: v_dual_mul_f32 v60, v51, v114
	v_dual_mul_f32 v48, v62, v112 :: v_dual_mul_f32 v59, v59, v115
	v_dual_mul_f32 v56, v56, v113 :: v_dual_mul_f32 v61, v61, v114
	v_dual_mul_f32 v47, v118, v112 :: v_dual_mul_f32 v52, v63, v114
	v_dual_mul_f32 v49, v117, v113 :: v_dual_mul_f32 v62, v144, v43
	v_dual_mul_f32 v51, v116, v115 :: v_dual_mul_f32 v116, v150, v42
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v54, v145, v43 :: v_dual_mul_f32 v113, v151, v42
	v_dual_mul_f32 v63, v143, v43 :: v_dual_mul_f32 v114, v148, v42
	v_dual_mul_f32 v112, v142, v43 :: v_dual_mul_f32 v115, v149, v42
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v142, v153, v41 :: v_dual_mul_f32 v119, v63, v123
	v_mul_f32_e32 v143, v111, v2
	v_dual_mul_f32 v108, v108, v2 :: v_dual_mul_f32 v121, v54, v125
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v118, v112, v122 :: v_dual_mul_f32 v115, v115, v123
	v_dual_mul_f32 v120, v62, v124 :: v_dual_mul_f32 v117, v113, v125
	v_dual_mul_f32 v114, v114, v122 :: v_dual_mul_f32 v111, v128, v123
	v_dual_mul_f32 v116, v116, v124 :: v_dual_mul_f32 v63, v142, v122
	v_dual_mul_f32 v112, v127, v124 :: v_dual_mul_f32 v113, v126, v125
	v_mul_f32_e32 v62, v108, v122
	v_dual_mul_f32 v108, v109, v123 :: v_dual_mul_f32 v127, v152, v41
	v_dual_mul_f32 v109, v110, v124 :: v_dual_mul_f32 v110, v143, v125
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v123, v141, v43
	v_mul_f32_e32 v124, v140, v43
	v_dual_mul_f32 v125, v139, v43 :: v_dual_mul_f32 v128, v138, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[138:141], v44 offset:512
	ds_load_b128 v[142:145], v44 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v54, v146, v43
	v_mul_f32_e32 v122, v147, v42
	v_mul_f32_e32 v146, v137, v42
	v_dual_mul_f32 v147, v136, v42 :: v_dual_mul_f32 v148, v106, v41
	v_mul_f32_e32 v106, v105, v41
	v_mul_f32_e32 v105, v104, v41
	v_mul_f32_e32 v96, v96, v2
	v_mul_f32_e32 v133, v133, v42
	v_mul_f32_e32 v99, v99, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v92, v92, v43 :: v_dual_mul_f32 v89, v89, v42
	v_mul_f32_e32 v91, v91, v43
	v_dual_mul_f32 v87, v87, v42 :: v_dual_mul_f32 v84, v84, v41
	v_dual_mul_f32 v149, v85, v41 :: v_dual_mul_f32 v36, v36, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v54, v54, v138
	v_dual_mul_f32 v126, v122, v138 :: v_dual_mul_f32 v105, v105, v139
	v_mul_f32_e32 v122, v127, v138
	v_dual_mul_f32 v104, v107, v138 :: v_dual_mul_f32 v97, v97, v141
	v_dual_mul_f32 v136, v125, v139 :: v_dual_mul_f32 v137, v124, v140
	v_dual_mul_f32 v138, v123, v141 :: v_dual_mul_f32 v127, v132, v43
	v_dual_mul_f32 v123, v147, v139 :: v_dual_mul_f32 v124, v146, v140
	v_mul_f32_e32 v95, v95, v139
	v_dual_mul_f32 v125, v128, v141 :: v_dual_mul_f32 v106, v106, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v139, v129, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v107, v148, v141
	v_mul_f32_e32 v96, v96, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v128, v131, v43
	v_dual_mul_f32 v132, v130, v43 :: v_dual_mul_f32 v129, v135, v42
	v_mul_f32_e32 v135, v102, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v134, v134, v42 :: v_dual_mul_f32 v131, v128, v144
	v_dual_mul_f32 v140, v101, v2 :: v_dual_mul_f32 v101, v99, v144
	v_dual_mul_f32 v141, v77, v42 :: v_dual_mul_f32 v76, v76, v41
	v_mul_f32_e32 v146, v70, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v100, v100, v143
	v_mul_f32_e32 v130, v127, v143
	v_dual_mul_f32 v132, v132, v145 :: v_dual_mul_f32 v77, v135, v144
	v_dual_mul_f32 v127, v129, v143 :: v_dual_mul_f32 v128, v134, v144
	v_mul_f32_e32 v129, v133, v145
	v_dual_mul_f32 v102, v98, v145 :: v_dual_mul_f32 v99, v76, v142
	v_mul_f32_e32 v70, v103, v143
	v_dual_mul_f32 v98, v140, v145 :: v_dual_mul_f32 v133, v139, v142
	v_mul_f32_e32 v103, v141, v142
	v_mul_f32_e32 v76, v146, v142
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v147, v88, v42 :: v_dual_mul_f32 v150, v83, v41
	v_dual_mul_f32 v148, v86, v41 :: v_dual_mul_f32 v73, v73, v43
	v_dual_mul_f32 v80, v80, v42 :: v_dual_mul_f32 v71, v71, v43
	v_dual_mul_f32 v30, v30, v41 :: v_dual_mul_f32 v79, v79, v42
	v_mul_f32_e32 v28, v28, v41
	v_mul_f32_e32 v31, v31, v41
	v_mul_f32_e32 v27, v27, v41
	v_dual_mul_f32 v67, v67, v43 :: v_dual_mul_f32 v12, v12, v41
	v_dual_mul_f32 v69, v69, v43 :: v_dual_mul_f32 v14, v14, v42
	v_mul_f32_e32 v7, v7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v72, v72, v43
	v_mul_f32_e32 v34, v34, v2
	v_mul_f32_e32 v68, v68, v43
	v_mul_f32_e32 v16, v16, v42
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v6, v6, v42 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v45, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[139:142], v44
	ds_load_b128 v[143:146], v44 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v1, v94, v43
	v_mul_f32_e32 v45, v93, v43
	v_mul_f32_e32 v93, v90, v42
	v_mul_f32_e32 v35, v35, v2
	v_mul_f32_e32 v151, v33, v2
	v_dual_mul_f32 v152, v32, v2 :: v_dual_mul_f32 v29, v29, v41
	v_mul_f32_e32 v39, v39, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v135, v91, v139 :: v_dual_mul_f32 v134, v92, v140
	v_dual_mul_f32 v94, v45, v142 :: v_dual_mul_f32 v87, v87, v141
	v_dual_mul_f32 v90, v1, v141 :: v_dual_mul_f32 v85, v148, v139
	v_dual_mul_f32 v88, v93, v139 :: v_dual_mul_f32 v83, v84, v142
	v_dual_mul_f32 v89, v89, v140 :: v_dual_mul_f32 v86, v147, v142
	v_dual_mul_f32 v45, v149, v140 :: v_dual_mul_f32 v32, v36, v139
	v_dual_mul_f32 v84, v150, v141 :: v_dual_mul_f32 v33, v35, v140
	v_dual_mul_f32 v36, v152, v141 :: v_dual_mul_f32 v35, v151, v142
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v1, v74, v43 :: v_dual_mul_f32 v74, v81, v42
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v139, v78, v42 :: v_dual_mul_f32 v92, v73, v145
	v_mul_f32_e32 v140, v40, v2
	v_dual_mul_f32 v141, v38, v2 :: v_dual_mul_f32 v78, v79, v145
	v_dual_mul_f32 v142, v37, v2 :: v_dual_mul_f32 v81, v71, v143
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v91, v72, v144 :: v_dual_mul_f32 v72, v139, v146
	v_dual_mul_f32 v93, v1, v146 :: v_dual_mul_f32 v38, v31, v143
	v_dual_mul_f32 v73, v74, v143 :: v_dual_mul_f32 v74, v80, v144
	v_dual_mul_f32 v40, v30, v144 :: v_dual_mul_f32 v31, v29, v145
	v_mul_f32_e32 v30, v142, v146
	v_mul_f32_e32 v37, v28, v146
	v_dual_mul_f32 v1, v140, v143 :: v_dual_mul_f32 v28, v141, v144
	v_mul_f32_e32 v29, v39, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v143, v10, v2
	v_mul_f32_e32 v144, v9, v2
	v_dual_mul_f32 v71, v82, v42 :: v_dual_mul_f32 v82, v11, v41
	v_mul_f32_e32 v145, v8, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[8:11], v44 offset:512
	ds_load_b128 v[139:142], v44 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v39, v75, v43
	v_mul_f32_e32 v17, v17, v42
	v_mul_f32_e32 v13, v13, v41
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v80, v67, v11
	v_dual_mul_f32 v44, v17, v9 :: v_dual_mul_f32 v147, v34, v8
	v_dual_mul_f32 v34, v82, v11 :: v_dual_mul_f32 v39, v39, v8
	v_mul_f32_e32 v146, v27, v8
	v_mul_f32_e32 v71, v71, v8
	v_mul_f32_e32 v75, v68, v9
	v_mul_f32_e32 v79, v69, v10
	v_dual_mul_f32 v67, v16, v10 :: v_dual_mul_f32 v68, v14, v11
	v_dual_mul_f32 v17, v13, v9 :: v_dual_mul_f32 v14, v20, v42
	v_dual_mul_f32 v27, v12, v10 :: v_dual_mul_f32 v8, v143, v9
	v_dual_mul_f32 v9, v144, v10 :: v_dual_mul_f32 v10, v145, v11
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v11, v66, v43
	v_mul_f32_e32 v12, v65, v43
	v_mul_f32_e32 v13, v15, v43
	v_mul_f32_e32 v15, v19, v42
	v_mul_f32_e32 v16, v18, v42
	v_mul_f32_e32 v18, v23, v41
	v_mul_f32_e32 v19, v22, v41
	v_dual_mul_f32 v20, v21, v41 :: v_dual_mul_f32 v21, v26, v2
	v_mul_f32_e32 v22, v25, v2
	v_dual_mul_f32 v23, v24, v2 :: v_dual_mul_f32 v42, v6, v139
	v_mul_f32_e32 v2, v4, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v39
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v16, v16, v142 :: v_dual_mul_f32 v5, v5, v41
	v_mul_f32_e32 v18, v18, v140
	v_mul_f32_e32 v24, v11, v140
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v65, v7, v139
	v_mul_f32_e32 v11, v5, v139
	v_mul_f32_e32 v23, v23, v142
	v_dual_mul_f32 v13, v13, v142 :: v_dual_mul_f32 v2, v2, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v19, v19, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v12, v12, v141
	v_mul_f32_e32 v14, v14, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v39 :: v_dual_mul_f32 v15, v15, v141
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v20, v20, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v25, v22, v141 :: v_dual_add_f32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v5, null, v4, v4, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v6, v5
	v_fma_f32 v7, -v5, v6, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v21, v21, v140 :: v_dual_fmac_f32 v6, v7, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, vcc_lo, v39, v4, v39
	v_mul_f32_e32 v22, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v5, v22, v7
	v_fmac_f32_e32 v22, v26, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v22, v7
	v_div_fmas_f32 v5, v5, v6, v22
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v5, v4, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v5, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v54, v54, v4
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v6, v6, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v7
	v_fma_f32 v26, -v7, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v26, v22
	v_div_scale_f32 v26, vcc_lo, v24, v6, v24
	v_mul_f32_e32 v41, v26, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v7, v41, v26
	v_fmac_f32_e32 v41, v43, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v41, v26
	v_div_fmas_f32 v7, v7, v22, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v22, v22, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v26
	v_fma_f32 v43, -v26, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v12, v22, v12
	v_mul_f32_e32 v66, v43, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v26, v66, v43
	v_fmac_f32_e32 v66, v69, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v66, v43
	v_div_fmas_f32 v26, v26, v41, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v13
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v5, null, v39, v39, v13
	v_rcp_f32_e32 v41, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v5, v41, 1.0
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v13, v39, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v43, v41
	v_fma_f32 v69, -v5, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v41
	v_fma_f32 v5, -v5, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v5, v41, v66
	v_div_fixup_f32 v5, v7, v6, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v71
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v7
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v24, v24, v71
	v_rcp_f32_e32 v7, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v43, v7
	v_div_scale_f32 v43, vcc_lo, v71, v24, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v43, v7
	v_fma_f32 v69, -v6, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v7
	v_fma_f32 v6, -v6, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v6, v7, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v26, v22, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v14
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v22, v22, v14
	v_rcp_f32_e32 v12, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v7, v12, 1.0
	v_fmac_f32_e32 v12, v26, v12
	v_div_scale_f32 v26, vcc_lo, v14, v22, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v26, v12
	v_fma_f32 v69, -v7, v66, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v12
	v_fma_f32 v7, -v7, v66, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v7, v12, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v41, v39, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v15
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v13
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v39, v39, v15
	v_rcp_f32_e32 v13, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v41, v13
	v_div_scale_f32 v41, vcc_lo, v15, v39, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v41, v13
	v_fma_f32 v69, -v12, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v13
	v_fma_f32 v12, -v12, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v12, v13, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v12, v43, v24, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v16
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v13, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v24, v24, v16
	v_rcp_f32_e32 v43, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v13, v43, 1.0
	v_fmac_f32_e32 v43, v66, v43
	v_div_scale_f32 v66, vcc_lo, v16, v24, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v66, v43
	v_fma_f32 v71, -v13, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v71, v43
	v_fma_f32 v13, -v13, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v43, v13, v43, v69
	v_div_fixup_f32 v13, v26, v22, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v14, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v43, v24, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v22, v22, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v14
	v_fma_f32 v66, -v14, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v66, v26
	v_div_scale_f32 v66, vcc_lo, v146, v22, v146
	v_mul_f32_e32 v69, v66, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v14, v69, v66
	v_fmac_f32_e32 v69, v71, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v69, v66
	v_div_fmas_f32 v26, v14, v26, v69
	v_div_fixup_f32 v14, v41, v39, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v15, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v39, v39, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v15
	v_fma_f32 v66, -v15, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v66, v41
	v_div_scale_f32 v66, vcc_lo, v18, v39, v18
	v_mul_f32_e32 v69, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v15, v69, v66
	v_fmac_f32_e32 v69, v71, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v69, v66
	v_div_fmas_f32 v41, v15, v41, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v15, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v41, v39, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_mul_f32_e32 v39, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v19
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v24, v24, v19
	v_rcp_f32_e32 v43, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v15, v43, 1.0
	v_fmac_f32_e32 v43, v66, v43
	v_div_scale_f32 v66, vcc_lo, v19, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v66, v43
	v_fma_f32 v71, -v15, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v71, v43
	v_fma_f32 v15, -v15, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v15, v43, v69
	v_div_fixup_f32 v15, v26, v22, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v20
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v22, v22, v20
	v_rcp_f32_e32 v66, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v26, v66, 1.0
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v20, v22, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, v69, v66
	v_div_fixup_f32 v19, v43, v24, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v82, -v26, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v82, v66
	v_fma_f32 v26, -v26, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v66, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v26, v22, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v20, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v147
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v39, v39, v147
	v_rcp_f32_e32 v66, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v41, v66, 1.0
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v147, v39, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v69, v66
	v_fma_f32 v82, -v41, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v82, v66
	v_fma_f32 v41, -v41, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v66, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v24, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v43
	v_fma_f32 v69, -v43, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v21, v24, v21
	v_mul_f32_e32 v71, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v43, v71, v69
	v_fmac_f32_e32 v71, v82, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v71, v69
	v_div_fmas_f32 v43, v43, v66, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v25
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v26, v26, v25
	v_rcp_f32_e32 v66, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v20, v66, 1.0
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v69, v66
	v_fma_f32 v82, -v20, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v82, v66
	v_fma_f32 v20, -v20, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v20, v66, v71
	v_div_fixup_f32 v20, v41, v39, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v23
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v41, v41, v23
	v_rcp_f32_e32 v69, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v39, v69, 1.0
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, vcc_lo, v23, v41, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v71, v69
	v_fma_f32 v139, -v39, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v139, v69
	v_fma_f32 v39, -v39, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v69, v39, v69, v82
	v_div_fixup_f32 v39, v43, v24, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v135
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v135
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v21, v21, v135
	v_rcp_f32_e32 v43, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v24, v43, 1.0
	v_fmac_f32_e32 v43, v71, v43
	v_div_scale_f32 v71, vcc_lo, v135, v21, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v71, v43
	v_fma_f32 v139, -v24, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v139, v43
	v_fma_f32 v24, -v24, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v24, v43, v82
	v_div_fixup_f32 v43, v66, v26, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v24, v21, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v26
	v_fma_f32 v71, -v26, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v71, v66
	v_div_scale_f32 v71, vcc_lo, v134, v25, v134
	v_mul_f32_e32 v82, v71, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v26, v82, v71
	v_fmac_f32_e32 v82, v139, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v26, v82, v71
	v_div_fixup_f32 v71, v69, v41, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v66, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v41, v41, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v23
	v_fma_f32 v69, -v23, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v94, v41, v94
	v_mul_f32_e32 v82, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v23, v82, v69
	v_fmac_f32_e32 v82, v139, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v82, v69
	v_div_fmas_f32 v66, v23, v66, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v69, v69, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v82, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v82, v24
	v_div_scale_f32 v82, vcc_lo, v90, v69, v90
	v_mul_f32_e32 v135, v82, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v23, v135, v82
	v_fmac_f32_e32 v135, v139, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v135, v82
	v_div_fmas_f32 v82, v23, v24, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v26, v25, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v25, v25, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v24
	v_fma_f32 v134, -v24, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v134, v26
	v_div_scale_f32 v134, vcc_lo, v81, v25, v81
	v_mul_f32_e32 v135, v134, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v24, v135, v134
	v_fmac_f32_e32 v135, v139, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v135, v134
	v_div_fmas_f32 v134, v24, v26, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v66, v41, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v41, v41, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v26
	v_fma_f32 v94, -v26, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v94, v66
	v_div_scale_f32 v94, vcc_lo, v91, v41, v91
	v_div_fixup_f32 v25, v134, v25, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v135, v94, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v26, v135, v94
	v_fmac_f32_e32 v135, v139, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v135, v94
	v_div_fmas_f32 v66, v26, v66, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v94, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v26
	v_fma_f32 v139, -v26, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v92, v94, v92
	v_mul_f32_e32 v140, v139, v135
	v_div_fixup_f32 v41, v66, v41, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v26, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v140, v139
	v_div_fmas_f32 v135, v26, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v135, v94, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v93
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v139, v139, v93
	v_rcp_f32_e32 v140, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v26, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v93, v139, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v26, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v26, -v26, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v140, v26, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v82, v69, v90
	v_div_fixup_f32 v69, v140, v139, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v75
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v81, v81, v75
	v_rcp_f32_e32 v90, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v82, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v75, v81, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v82, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v82, -v82, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v90, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v90, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v82, v81, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v90, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v90, v90, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v79, v90, v79
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v91, v94, v93
	v_fmac_f32_e32 v94, v134, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v82, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v82, v82, v80
	v_rcp_f32_e32 v92, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v81, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v80, v82, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v134, -v81, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v92
	v_fma_f32 v81, -v81, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v92, v81, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v65
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v93, v93, v65
	v_rcp_f32_e32 v94, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v81, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v65, v93, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v135, v134, v94
	v_div_fixup_f32 v82, v92, v82, v80
	v_fma_f32 v139, -v81, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v94
	v_fma_f32 v81, -v81, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v94, v81, v94, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v88
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v88
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v134
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v134, v134, v88
	v_rcp_f32_e32 v135, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v81, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v88, v134, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v135
	v_fma_f32 v141, -v81, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v135
	v_fma_f32 v81, -v81, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v135, v81, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v89
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v139, v139, v89
	v_rcp_f32_e32 v140, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v81, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v89, v139, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v81, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v81, -v81, v142, v141
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v140, v81, v140, v142
	v_div_fixup_f32 v81, v91, v90, v79
	v_div_fixup_f32 v90, v94, v93, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v135, v134, v88
	v_div_fixup_f32 v80, v140, v139, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v55, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v86
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v65, v65, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, vcc_lo, v86, v65, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v89
	v_fma_f32 v93, -v88, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v89
	v_fma_f32 v88, -v88, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v89, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v88, v65, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v89
	v_mul_f32_e32 v65, 0xbfb8aa3b, v72
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v89, v89
	v_ldexp_f32 v89, v89, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v89, v89, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v87, v89, v87
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v91, v94, v93
	v_fmac_f32_e32 v94, v134, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v91, v89, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v73
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v73
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v93, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v73, v92, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v134, v94
	v_fma_f32 v139, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v94
	v_fma_f32 v93, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v93, v94, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v94, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v74
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v94, v94, v134
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v94, v94, v74
	v_rcp_f32_e32 v135, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v134, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v74, v94, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v135
	v_fma_f32 v141, -v134, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v135
	v_fma_f32 v134, -v134, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v134, v134, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v78
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v135, v135, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v93, v92, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v139, null, v135, v135, v78
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v78, v135, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v139, v135, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v72
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v65, v65, v72
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, vcc_lo, v72, v65, v72
	v_div_fixup_f32 v74, v134, v94, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v89
	v_fma_f32 v93, -v88, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v89
	v_fma_f32 v88, -v88, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v89, 0xbfb8aa3b, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v88, v65, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v89
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v89, v89
	v_ldexp_f32 v89, v89, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v89, v89, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v44, v89, v44
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v91, v94, v93
	v_fmac_f32_e32 v94, v134, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v91, v89, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v67
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v67
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v93, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v67, v92, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v134, v94
	v_fma_f32 v139, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v94
	v_fma_f32 v93, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v93, v93, v94, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v94, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v72, v93, v92, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v94, v94, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v94, v94, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v134
	v_fma_f32 v139, -v134, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v68, v94, v68
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v134, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v134, v140, v139
	v_div_fmas_f32 v134, v134, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v134, v94, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v42
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v135, v135, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v42
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v42, v135, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v139, v139, v140, v142
	v_div_fixup_f32 v89, v139, v135, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v42, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v42, v42, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v65
	v_fma_f32 v91, -v65, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v91, v67
	v_div_scale_f32 v91, vcc_lo, v85, v42, v85
	v_mul_f32_e32 v92, v91, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v65, v92, v91
	v_fmac_f32_e32 v92, v93, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v92, v91
	v_div_fmas_f32 v65, v65, v67, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v65, v42, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_mul_f32_e32 v42, 0xbfb8aa3b, v83
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v67, v67, v45
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v45, v67, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v134, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v91, v67, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v56, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v83
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v70, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v42, v42, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v65
	v_fma_f32 v93, -v65, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v83, v42, v83
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v65, v94, v93
	v_fmac_f32_e32 v94, v134, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v94, v93
	v_div_fmas_f32 v65, v65, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v65, v42, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v84
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v84
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v93, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v84, v92, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v134, v94
	v_fma_f32 v139, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v94
	v_fma_f32 v93, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v93, v93, v94, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v94, 0xbfb8aa3b, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v93, v92, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v94, v94, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v94, v94, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v134
	v_fma_f32 v139, -v134, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v38, v94, v38
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v134, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v134, v140, v139
	v_div_fmas_f32 v134, v134, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v91, v134, v94, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v40
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v135, v135, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v40
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v40, v135, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v92, v139, v135, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v31
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v38, v38, v31
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v40, v42, 1.0
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v31, v38, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v65, v42
	v_fma_f32 v93, -v40, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v93, v42
	v_fma_f32 v40, -v40, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v42, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v42, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v37
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v42, v42, v37
	v_rcp_f32_e32 v67, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v65, v67, 1.0
	v_fmac_f32_e32 v67, v93, v67
	v_div_scale_f32 v93, vcc_lo, v37, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v67
	v_fma_f32 v134, -v65, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v67
	v_fma_f32 v65, -v65, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v65, v67, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v17
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v67, v67, v17
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v93, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v17, v67, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v134, v94
	v_fma_f32 v139, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v94
	v_fma_f32 v93, -v93, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v93, v93, v94, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v94, 0xbfb8aa3b, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v93, v93, v67, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v94, v94, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v94, v94, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v134
	v_fma_f32 v139, -v134, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v27, v94, v27
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v134, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v134, v140, v139
	v_div_fmas_f32 v134, v134, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v134, v94, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v106, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v135, v135, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v139
	v_fma_f32 v141, -v139, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v34, v135, v34
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v139, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v139, -v139, v142, v141
	v_div_fixup_f32 v141, v65, v42, v37
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v140, v40, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v94, v139, v135, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v17, v17, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v37, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v37, v34
	v_div_scale_f32 v37, vcc_lo, v11, v17, v11
	v_mul_f32_e32 v38, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v31, v38, v37
	v_fmac_f32_e32 v38, v40, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v38, v37
	v_div_fmas_f32 v31, v31, v34, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v34, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v40, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, vcc_lo, v32, v34, v32
	v_mul_f32_e32 v42, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v37, v42, v40
	v_fmac_f32_e32 v42, v65, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v42, v40
	v_div_fmas_f32 v37, v37, v38, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v38, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v38, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v38, v38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v65, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v33, v38, v33
	v_mul_f32_e32 v67, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v40, v67, v65
	v_fmac_f32_e32 v67, v134, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v67, v65
	v_div_fmas_f32 v40, v40, v42, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v42, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v40, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v35
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v42, v42, v35
	v_rcp_f32_e32 v67, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v65, v67, 1.0
	v_fmac_f32_e32 v67, v134, v67
	v_div_scale_f32 v134, vcc_lo, v35, v42, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v134, v67
	v_fma_f32 v139, -v65, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v67
	v_fma_f32 v65, -v65, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v65, v67, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v36
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v134
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v67, v67, v36
	v_rcp_f32_e32 v135, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v134, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v36, v67, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v139, v135
	v_fma_f32 v143, -v134, v142, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v135
	v_fma_f32 v134, -v134, v142, v139
	v_div_fixup_f32 v139, v37, v34, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v134, v134, v135, v142
	v_div_fixup_f32 v135, v31, v17, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v142, v65, v42, v35
	v_div_fixup_f32 v134, v134, v67, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v11, v11, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v11, v11, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v17
	v_fma_f32 v32, -v17, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v1, v11, v1
	v_mul_f32_e32 v34, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v17, v34, v32
	v_fmac_f32_e32 v34, v35, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v34, v32
	v_div_fmas_f32 v17, v17, v31, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v31, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v17, v11, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v58, v24
	v_mul_f32_e32 v17, v131, v6
	v_mul_f32_e32 v6, v138, v82
	v_mul_f32_e32 v58, v126, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v125, v68
	v_mul_f32_e32 v68, v63, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v24, v101, v19 :: v_dual_fmac_f32 v31, 0xbfb8aa3b, v28
	v_dual_mul_f32 v70, v62, v1 :: v_dual_mul_f32 v63, v104, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v31, v31, v28
	v_rcp_f32_e32 v34, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v32, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v28, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v32, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v34
	v_fma_f32 v32, -v32, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v32, v32, v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v29
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v34, v34, v29
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v29, v34, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v40, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v40, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v30
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v36, v36, v30
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, vcc_lo, v30, v36, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v40, v38
	v_fma_f32 v65, -v37, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v65, v38
	v_fma_f32 v37, -v37, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v38, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v38, 0xbfb8aa3b, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v37, v36, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v36, v136, v75 :: v_dual_mul_f32 v37, v127, v13
	v_mul_f32_e32 v20, v110, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v8
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v38, v38, v8
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v40, v42, 1.0
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v8, v38, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v65, v42
	v_fma_f32 v143, -v40, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v143, v42
	v_fma_f32 v40, -v40, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v42, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v42, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v9
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v42, v42, v9
	v_rcp_f32_e32 v67, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v65, v67, 1.0
	v_fmac_f32_e32 v67, v143, v67
	v_div_scale_f32 v143, vcc_lo, v9, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v143, v67
	v_fma_f32 v145, -v65, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v67
	v_fma_f32 v65, -v65, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v65, v67, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v10
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v143, null, v67, v67, v10
	v_rcp_f32_e32 v144, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v143, v144, 1.0
	v_fmac_f32_e32 v144, v145, v144
	v_div_scale_f32 v145, vcc_lo, v10, v67, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v146, v145, v144
	v_fma_f32 v147, -v143, v146, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v147, v144
	v_fma_f32 v143, -v143, v146, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v143, v143, v144, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v144, 0xbfb8aa3b, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v143, v143, v67, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v67, v46, v79 :: v_dual_mul_f32 v46, v115, v74
	v_mul_f32_e32 v10, v117, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v144, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, vcc_lo
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v13, |v67|, |v55|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v2
	v_exp_f32_e32 v144, v144
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v144, v144, v145
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v144, 1.0, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v145, null, v144, v144, v2
	v_rcp_f32_e32 v146, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v145, v146, 1.0
	v_fmac_f32_e32 v146, v147, v146
	v_div_scale_f32 v147, vcc_lo, v2, v144, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v148, v147, v146
	v_fma_f32 v149, -v145, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v149, v146
	v_fma_f32 v145, -v145, v148, v147
	v_div_fixup_f32 v147, v35, v34, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v60, v87
	v_dual_mul_f32 v60, v122, v15 :: v_dual_mul_f32 v15, v113, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v145, v145, v146, v148
	v_div_fixup_f32 v146, v32, v31, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v64, v26
	v_mul_f32_e32 v64, v118, v25
	v_mul_f32_e32 v31, v130, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v145, v144, v2
	v_div_fixup_f32 v144, v65, v42, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v50, v21 :: v_dual_mul_f32 v50, v53, v23
	v_mul_f32_e32 v42, v119, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v40, v38, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v133, v90
	v_mul_f32_e32 v21, v137, v81
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v65|, |v50|
	v_max3_f32 v8, |v11|, |v64|, |v42|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v132, v7
	v_dual_mul_f32 v26, v120, v66 :: v_dual_mul_f32 v7, v121, v69
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, |v53|, |v31|, |v17|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max3_f32 v4, v4, |v28|, v8
	v_max3_f32 v8, |v36|, |v21|, |v6|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v66, v114, v73 :: v_dual_mul_f32 v23, v128, v14
	v_mul_f32_e32 v25, v124, v72
	v_mul_f32_e32 v41, v123, v44
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, v9, |v5|
	v_max3_f32 v9, |v26|, |v7|, |v54|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v116, v78
	v_dual_mul_f32 v69, v48, v85 :: v_dual_mul_f32 v48, v111, v92
	v_mul_f32_e32 v40, v100, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v9, v8
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v57, v86
	v_dual_mul_f32 v57, v103, v89 :: v_dual_mul_f32 v8, v129, v16
	v_mul_f32_e32 v38, v61, v84
	v_mul_f32_e32 v44, v105, v93
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, |v9|, |v66|, |v46|
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v16, |v57|, |v37|, |v23|
	v_max_f32_e64 v18, |v69|, |v56|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v112, v140
	v_mul_f32_e32 v29, v77, v43
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v13, |v34|, v14
	v_max3_f32 v14, |v41|, |v25|, |v12|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v52, v134
	v_dual_mul_f32 v61, v49, v33 :: v_dual_mul_f32 v72, v47, v139
	v_mul_f32_e32 v52, v108, v146
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, v14, v16, |v8|
	v_max3_f32 v16, |v32|, |v10|, |v58|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v76, v2
	v_mul_f32_e32 v33, v96, v144
	v_mul_f32_e32 v47, v95, v145
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v72|, |v61|
	v_max3_f32 v74, v13, v16, v14
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v59, v83
	v_mul_f32_e32 v59, v99, v135
	v_mul_f32_e32 v16, v107, v94
	v_mul_f32_e32 v13, v102, v22
	v_mul_f32_e32 v39, v109, v147
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v19, |v14|, |v68|, |v48|
	v_max3_f32 v22, |v59|, |v40|, |v24|
	v_max3_f32 v30, |v62|, |v45|, |v29|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v49, 8, v0
.Ltmp25:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v18, v18, |v38|, v19
	v_max3_f32 v19, |v44|, |v27|, |v16|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v19, v19, v22, |v13|
	v_max3_f32 v22, |v35|, |v15|, |v60|
	v_max3_f32 v75, v18, v22, v19
.Ltmp27:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v51, v142 :: v_dual_mul_f32 v22, v97, v143
	v_dual_mul_f32 v18, v98, v71 :: v_dual_lshlrev_b32 v71, 1, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v19|, |v70|, |v52|
	v_max3_f32 v1, v1, |v43|, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v2, |v47|, |v33|, |v22|
	v_max3_f32 v2, v2, v30, |v18|
	v_max3_f32 v30, |v39|, |v20|, |v63|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v1, v1, v30, v2
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v74, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v30, v30, v30
	v_max_f32_e32 v73, v4, v2
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v75, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v74, v30
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v30, 0x60, v0
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v2
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v76, v1, v2 :: v_dual_and_b32 v1, 3, v0
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v0
	v_lshl_add_u32 v4, v1, 9, 0
	v_lshlrev_b32_e32 v51, 5, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v4, v2, 2, v4
	v_xor_b32_e32 v77, v51, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v4, v49, 4, v4
	v_add3_u32 v4, v4, v71, v77
	v_lshl_add_u32 v71, v2, 6, 0
	ds_store_b128 v4, v[73:76]
	v_lshlrev_b32_e32 v74, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_or_b32 v4, 0x680, v74, v51
	v_lshrrev_b32_e32 v51, 3, v197
	v_xor_b32_e32 v4, v4, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v4, v71, v51, v4
	ds_load_b128 v[75:78], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v51, v75
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v75, v75
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v76
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v76, v76
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v77
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v78, v78
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v51, v51, v51
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v51, v71, v51
	v_dual_max_f32 v71, v73, v73 :: v_dual_max_f32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v51
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v71, v75, v71 :: v_dual_max_f32 v4, v4, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v51, v51, v73
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v71, v71, v73
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v51
	v_mov_b32_e32 v75, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v73, v73, v73 :: v_dual_max_f32 v76, v75, v75
	v_max_f32_e32 v75, v51, v73
	v_max_f32_e32 v51, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v76, v71, v76 :: v_dual_max_f32 v51, v77, v51
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v71
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v51, v71
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v51, v4
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v4, v4, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v51, v4
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v78, v4, v51
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 3, v49
	v_lshrrev_b32_e32 v49, 1, v30
	v_add_nc_u32_e32 v51, 0, v197
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v49, v51, v49, v4
	ds_store_b128 v49, v[75:78]
	v_lshlrev_b32_e32 v49, 4, v1
	v_lshlrev_b32_e32 v1, 5, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v49
	v_add3_u32 v1, v2, v1, v4
	ds_load_b128 v[75:78], v1
.Ltmp66:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v75, v75 :: v_dual_max_f32 v4, v76, v76
	v_dual_max_f32 v2, v77, v77 :: v_dual_max_f32 v71, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v73, 0x2b8cbccc, v1
	v_div_scale_f32 v1, null, 0x40e00000, 0x40e00000, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v1
	v_fma_f32 v75, -v1, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v75, v51
	v_div_scale_f32 v75, vcc_lo, v73, 0x40e00000, v73
	v_mul_f32_e32 v76, v75, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v1, v76, v75
	v_fmac_f32_e32 v76, v77, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v1, v76, v75
	v_div_fmas_f32 v75, v1, v51, v76
	v_max_f32_e32 v1, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v1
	v_rcp_f32_e32 v51, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v2, v51, 1.0
	v_fmac_f32_e32 v51, v76, v51
	v_div_scale_f32 v76, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v51
	v_fma_f32 v78, -v2, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v51
	v_fma_f32 v2, -v2, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v51, v77
	v_max_f32_e32 v51, 0x2b8cbccc, v4
	v_div_fixup_f32 v1, v2, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v51
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v76, v4
	v_fma_f32 v77, -v4, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v51, 0x40e00000, v51
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v4, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v78, v77
	v_div_fmas_f32 v82, v4, v76, v78
	v_max_f32_e32 v4, 0x2b8cbccc, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v51, v82, 0x40e00000, v51
	v_div_scale_f32 v71, null, 0x40e00000, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v71
	v_fma_f32 v77, -v71, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v4, 0x40e00000, v4
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v71, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v78, v77
	v_div_fmas_f32 v71, v71, v76, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v71, 0x40e00000, v4
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v86
	v_mov_b16_e32 v71.h, v86.h
	v_mov_b16_e32 v86.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v4, 0x7fff
	v_and_b32_e32 v4, 1, v86
	v_mov_b16_e32 v86.l, v51.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v75, 0x40e00000, v73
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v71.l, v4.h
	v_add3_u32 v51, v51, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v71, 1, v71
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v71, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v82, v82, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v73, null, v71, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v73
	v_fma_f32 v76, -v73, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v65, v71, v65
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v73, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v77, v76
	v_div_fmas_f32 v87, v73, v75, v77
	v_div_scale_f32 v73, null, v71, v71, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v65, v87, v71, v65
	v_rcp_f32_e32 v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v65, v65, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v73, v75, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v50, v71, v50
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v73, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v77, v76
	v_div_fmas_f32 v80, v73, v75, v77
	v_div_scale_f32 v73, null, v71, v71, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v50, v80, v71, v50
	v_rcp_f32_e32 v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v73, v75, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v28, v71, v28
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v73, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v77, v76
	v_div_fmas_f32 v75, v73, v75, v77
	v_div_scale_f32 v73, null, v71, v71, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v28, v75, v71, v28
	v_rcp_f32_e32 v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v28, v28, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v73, v76, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v11, v71, v11
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v73, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v78, v77
	v_div_fmas_f32 v73, v73, v76, v78
	v_div_scale_f32 v76, null, v71, v71, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v73, v71, v11
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v76, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v64, v71, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v81, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v81, v77
	v_fma_f32 v76, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v76, v77, v79
	v_div_scale_f32 v76, null, v71, v71, v42
	v_div_fixup_f32 v64, v90, v71, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v77, v76
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v64, v64, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v42, v71, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v79, v78, v77 :: v_dual_and_b32 v64, 15, v64
	v_fma_f32 v81, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v81, v77
	v_fma_f32 v76, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v76, v77, v79
	v_div_scale_f32 v76, null, v71, v71, v26
	v_div_fixup_f32 v42, v81, v71, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v77, v76
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v26, v71, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v83, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v83, v77
	v_fma_f32 v76, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v77, v76, v77, v79
	v_div_scale_f32 v76, null, v71, v71, v7
	v_div_fixup_f32 v26, v77, v71, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v78, v76
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v7, v71, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v79, v78
	v_fma_f32 v84, -v76, v83, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v84, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v74, 0x2f0, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v83, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v76, v76, v78, v83
	v_div_scale_f32 v78, null, v71, v71, v54
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, vcc_lo, v54, v71, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v85, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v79
	v_fma_f32 v78, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v78, v79, v84
	v_div_scale_f32 v78, null, v71, v71, v36
	v_div_fixup_f32 v54, v89, v71, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v79, v78
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, vcc_lo, v36, v71, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v85, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v79
	v_fma_f32 v78, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v84, v78, v79, v84
	v_div_scale_f32 v78, null, v71, v71, v21
	v_div_fixup_f32 v36, v84, v71, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v79, v78
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, vcc_lo, v21, v71, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v83, v79
	v_fma_f32 v88, -v78, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v88, v79
	v_fma_f32 v78, -v78, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v78, v79, v85
	v_div_scale_f32 v78, null, v71, v71, v6
	v_div_fixup_f32 v21, v79, v71, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v83, v78
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v78, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v6, v71, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v85, v83
	v_fma_f32 v91, -v78, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v91, v83
	v_fma_f32 v78, -v78, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v83, v88
	v_div_scale_f32 v83, null, v71, v71, v53
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v83, v85, 1.0
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, vcc_lo, v53, v71, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v88, v85
	v_fma_f32 v92, -v83, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v85
	v_fma_f32 v83, -v83, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v93, v83, v85, v91
	v_div_scale_f32 v83, null, v71, v71, v31
	v_div_fixup_f32 v53, v93, v71, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v85, v83
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v53, v53, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, vcc_lo, v31, v71, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v88, v85
	v_fma_f32 v92, -v83, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v85
	v_fma_f32 v83, -v83, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v83, v85, v91
	v_div_scale_f32 v83, null, v71, v71, v17
	v_div_fixup_f32 v31, v88, v71, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v85, v83
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, vcc_lo, v17, v71, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v85
	v_fma_f32 v94, -v83, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v94, v85
	v_fma_f32 v83, -v83, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v83, v85, v92
	v_div_scale_f32 v83, null, v71, v71, v5
	v_div_fixup_f32 v17, v85, v71, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v91, v83
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v83, v91, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v5, v71, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v92, v91
	v_fma_f32 v95, -v83, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v91
	v_fma_f32 v83, -v83, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v83, v83, v91, v94
	v_rcp_f32_e32 v91, v86
	v_fma_f32 v92, -v86, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v67, v82, v67
	v_mul_f32_e32 v94, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v86, v94, v92
	v_fmac_f32_e32 v94, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v86, v94, v92
	v_div_fmas_f32 v104, v86, v91, v94
	v_div_scale_f32 v86, null, v82, v82, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v86
	v_fma_f32 v92, -v86, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v55, v82, v55
	v_mul_f32_e32 v94, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v86, v94, v92
	v_fmac_f32_e32 v94, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v86, v94, v92
	v_div_fmas_f32 v96, v86, v91, v94
	v_div_scale_f32 v86, null, v82, v82, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v86
	v_fma_f32 v92, -v86, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v34, v82, v34
	v_mul_f32_e32 v94, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v86, v94, v92
	v_fmac_f32_e32 v94, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v86, v94, v92
	v_div_fmas_f32 v92, v86, v91, v94
	v_div_scale_f32 v86, null, v82, v82, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v86
	v_fma_f32 v94, -v86, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, vcc_lo, v9, v82, v9
	v_mul_f32_e32 v95, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v86, v95, v94
	v_fmac_f32_e32 v95, v97, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v86, v95, v94
	v_div_fmas_f32 v86, v86, v91, v95
	v_div_scale_f32 v91, null, v82, v82, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v95, -v91, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v66, v82, v66
	v_mul_f32_e32 v97, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v91, v97, v95
	v_fmac_f32_e32 v97, v98, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v97, v95
	v_div_fmas_f32 v107, v91, v94, v97
	v_div_scale_f32 v91, null, v82, v82, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v95, -v91, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v46, v82, v46
	v_mul_f32_e32 v97, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v91, v97, v95
	v_fmac_f32_e32 v97, v98, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v97, v95
	v_div_fmas_f32 v98, v91, v94, v97
	v_div_scale_f32 v91, null, v82, v82, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v95, -v91, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v32, v82, v32
	v_mul_f32_e32 v97, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v91, v97, v95
	v_fmac_f32_e32 v97, v99, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v97, v95
	v_div_fmas_f32 v95, v91, v94, v97
	v_div_scale_f32 v91, null, v82, v82, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v97, -v91, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v97, v94
	v_div_scale_f32 v97, vcc_lo, v10, v82, v10
	v_mul_f32_e32 v99, v97, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v100, -v91, v99, v97
	v_fmac_f32_e32 v99, v100, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v99, v97
	v_div_fmas_f32 v91, v91, v94, v99
	v_div_scale_f32 v94, null, v82, v82, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v99, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, vcc_lo, v58, v82, v58
	v_mul_f32_e32 v100, v99, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v94, v100, v99
	v_fmac_f32_e32 v100, v101, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v100, v99
	v_div_fmas_f32 v106, v94, v97, v100
	v_div_scale_f32 v94, null, v82, v82, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v99, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, vcc_lo, v41, v82, v41
	v_mul_f32_e32 v100, v99, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v94, v100, v99
	v_fmac_f32_e32 v100, v101, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v100, v99
	v_div_fmas_f32 v101, v94, v97, v100
	v_div_scale_f32 v94, null, v82, v82, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v99, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, vcc_lo, v25, v82, v25
	v_mul_f32_e32 v100, v99, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v94, v100, v99
	v_fmac_f32_e32 v100, v102, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v100, v99
	v_div_fmas_f32 v97, v94, v97, v100
	v_div_scale_f32 v94, null, v82, v82, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v99, v94
	v_fma_f32 v100, -v94, v99, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v100, v99
	v_div_scale_f32 v100, vcc_lo, v12, v82, v12
	v_mul_f32_e32 v102, v100, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v94, v102, v100
	v_fmac_f32_e32 v102, v103, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v102, v100
	v_div_fmas_f32 v94, v94, v99, v102
	v_div_scale_f32 v99, null, v82, v82, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v100, v99
	v_fma_f32 v102, -v99, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v102, v100
	v_div_scale_f32 v102, vcc_lo, v57, v82, v57
	v_mul_f32_e32 v103, v102, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v105, -v99, v103, v102
	v_fmac_f32_e32 v103, v105, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v99, v103, v102
	v_div_fmas_f32 v111, v99, v100, v103
	v_div_scale_f32 v99, null, v82, v82, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v100, v99
	v_fma_f32 v102, -v99, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v102, v100
	v_div_scale_f32 v102, vcc_lo, v37, v82, v37
	v_mul_f32_e32 v103, v102, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v105, -v99, v103, v102
	v_fmac_f32_e32 v103, v105, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v99, v103, v102
	v_div_fmas_f32 v105, v99, v100, v103
	v_div_scale_f32 v99, null, v82, v82, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v100, v99
	v_fma_f32 v102, -v99, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v102, v100
	v_div_scale_f32 v102, vcc_lo, v23, v82, v23
	v_mul_f32_e32 v103, v102, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v108, -v99, v103, v102
	v_fmac_f32_e32 v103, v108, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v99, v103, v102
	v_div_fmas_f32 v102, v99, v100, v103
	v_div_scale_f32 v99, null, v82, v82, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v100, v99
	v_fma_f32 v103, -v99, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v103, v100
	v_div_scale_f32 v103, vcc_lo, v8, v82, v8
	v_mul_f32_e32 v108, v103, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v99, v108, v103
	v_fmac_f32_e32 v108, v109, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v99, v108, v103
	v_div_fmas_f32 v100, v99, v100, v108
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v99, 0xffff0000, v1
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v103, null, v99, v99, v69
	v_rcp_f32_e32 v108, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v103, v108, 1.0
	v_fmac_f32_e32 v108, v109, v108
	v_div_scale_f32 v109, vcc_lo, v69, v99, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v110, v109, v108
	v_fma_f32 v112, -v103, v110, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v110, v112, v108
	v_fma_f32 v103, -v103, v110, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v122, v103, v108, v110
	v_div_scale_f32 v103, null, v99, v99, v56
	v_div_fixup_f32 v69, v122, v99, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v103
	v_fma_f32 v109, -v103, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v109, v108
	v_div_scale_f32 v109, vcc_lo, v56, v99, v56
	v_mul_f32_e32 v110, v109, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v112, -v103, v110, v109
	v_fmac_f32_e32 v110, v112, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v103, v110, v109
	v_div_fmas_f32 v114, v103, v108, v110
	v_div_scale_f32 v103, null, v99, v99, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v103
	v_fma_f32 v109, -v103, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v109, v108
	v_div_scale_f32 v109, vcc_lo, v38, v99, v38
	v_mul_f32_e32 v110, v109, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v112, -v103, v110, v109
	v_fmac_f32_e32 v110, v112, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v103, v110, v109
	v_div_fmas_f32 v109, v103, v108, v110
	v_div_scale_f32 v103, null, v99, v99, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v103
	v_fma_f32 v110, -v103, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v110, v108
	v_div_scale_f32 v110, vcc_lo, v14, v99, v14
	v_mul_f32_e32 v112, v110, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v103, v112, v110
	v_fmac_f32_e32 v112, v113, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v103, v112, v110
	v_div_fmas_f32 v103, v103, v108, v112
	v_div_scale_f32 v108, null, v99, v99, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v110, v108
	v_fma_f32 v112, -v108, v110, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v110, v112, v110
	v_div_scale_f32 v112, vcc_lo, v68, v99, v68
	v_mul_f32_e32 v113, v112, v110
	v_div_fixup_f32 v41, v101, v82, v41
	v_div_fixup_f32 v67, v104, v82, v67
	v_div_fixup_f32 v58, v106, v82, v58
	v_div_fixup_f32 v46, v98, v82, v46
	v_fma_f32 v115, -v108, v113, v112
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v113, v115, v110
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v108, -v108, v113, v112
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v124, v108, v110, v113
	v_div_scale_f32 v108, null, v99, v99, v48
	v_div_fixup_f32 v25, v97, v82, v25
	v_div_fixup_f32 v12, v94, v82, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v110, v108
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v112, -v108, v110, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v110, v112, v110
	v_div_scale_f32 v112, vcc_lo, v48, v99, v48
	v_mul_f32_e32 v113, v112, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v108, v113, v112
	v_fmac_f32_e32 v113, v115, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v108, -v108, v113, v112
	v_div_fmas_f32 v116, v108, v110, v113
	v_div_scale_f32 v108, null, v99, v99, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v48, v116, v99, v48
	v_rcp_f32_e32 v110, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v112, -v108, v110, 1.0
	v_fmac_f32_e32 v110, v112, v110
	v_div_scale_f32 v112, vcc_lo, v35, v99, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v113, v112, v110
	v_fma_f32 v115, -v108, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v115, v110
	v_fma_f32 v108, -v108, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v113, v108, v110, v113
	v_div_scale_f32 v108, null, v99, v99, v15
	v_rcp_f32_e32 v110, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v112, -v108, v110, 1.0
	v_fmac_f32_e32 v110, v112, v110
	v_div_scale_f32 v112, vcc_lo, v15, v99, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v115, v112, v110
	v_fma_f32 v117, -v108, v115, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v117, v110
	v_fma_f32 v108, -v108, v115, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v108, v108, v110, v115
	v_div_scale_f32 v110, null, v99, v99, v60
	v_rcp_f32_e32 v112, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v110, v112, 1.0
	v_fmac_f32_e32 v112, v115, v112
	v_div_scale_f32 v115, vcc_lo, v60, v99, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v115, v112
	v_fma_f32 v118, -v110, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v112
	v_fma_f32 v110, -v110, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v123, v110, v112, v117
	v_div_scale_f32 v110, null, v99, v99, v44
	v_div_fixup_f32 v60, v123, v99, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v110
	v_fma_f32 v115, -v110, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v115, v112
	v_div_scale_f32 v115, vcc_lo, v44, v99, v44
	v_mul_f32_e32 v117, v115, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v118, -v110, v117, v115
	v_fmac_f32_e32 v117, v118, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v110, v117, v115
	v_div_fmas_f32 v119, v110, v112, v117
	v_div_scale_f32 v110, null, v99, v99, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v44, v119, v99, v44
	v_rcp_f32_e32 v112, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v110, v112, 1.0
	v_fmac_f32_e32 v112, v115, v112
	v_div_scale_f32 v115, vcc_lo, v27, v99, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v115, v112
	v_fma_f32 v118, -v110, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v112
	v_fma_f32 v110, -v110, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v115, v110, v112, v117
	v_div_scale_f32 v110, null, v99, v99, v16
	v_div_fixup_f32 v27, v115, v99, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v110
	v_fma_f32 v117, -v110, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v117, v112
	v_div_scale_f32 v117, vcc_lo, v16, v99, v16
	v_mul_f32_e32 v118, v117, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v120, -v110, v118, v117
	v_fmac_f32_e32 v118, v120, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v110, v118, v117
	v_div_fmas_f32 v112, v110, v112, v118
	v_div_scale_f32 v110, null, v99, v99, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v117, v110
	v_fma_f32 v118, -v110, v117, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v59, v99, v59
	v_mul_f32_e32 v120, v118, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v121, -v110, v120, v118
	v_fmac_f32_e32 v120, v121, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v110, v120, v118
	v_div_fmas_f32 v125, v110, v117, v120
	v_div_scale_f32 v110, null, v99, v99, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v59, v125, v99, v59
	v_rcp_f32_e32 v117, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v118, -v110, v117, 1.0
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v40, v99, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v120, v118, v117
	v_fma_f32 v121, -v110, v120, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v121, v117
	v_fma_f32 v110, -v110, v120, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v121, v110, v117, v120
	v_div_scale_f32 v110, null, v99, v99, v24
	v_rcp_f32_e32 v117, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v118, -v110, v117, 1.0
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v24, v99, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v120, v118, v117
	v_fma_f32 v126, -v110, v120, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v126, v117
	v_fma_f32 v110, -v110, v120, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v120, v110, v117, v120
	v_div_scale_f32 v110, null, v99, v99, v13
	v_rcp_f32_e32 v117, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v118, -v110, v117, 1.0
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v13, v99, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v126, v118, v117
	v_fma_f32 v127, -v110, v126, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v127, v117
	v_fma_f32 v110, -v110, v126, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v118, v110, v117, v126
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v117, 0xffff0000, v2
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v51.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v110, null, v117, v117, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v126, v110
	v_fma_f32 v127, -v110, v126, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v127, v126
	v_div_scale_f32 v127, vcc_lo, v72, v117, v72
	v_mul_f32_e32 v128, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v129, -v110, v128, v127
	v_fmac_f32_e32 v128, v129, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v110, -v110, v128, v127
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v127, 13, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v126, v110, v126, v128
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v110, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v72, v126, v117, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v128, 8, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_or_b32 v127, 0xe000, v127, v128
	v_and_b32_e32 v128, 64, v0
	v_xor_b32_e32 v74, v74, v128
	v_lshlrev_b32_e32 v128, 3, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or3_b32 v74, v127, v128, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v127, null, v117, v117, v61
	v_rcp_f32_e32 v128, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v129, -v127, v128, 1.0
	v_fmac_f32_e32 v128, v129, v128
	v_div_scale_f32 v129, vcc_lo, v61, v117, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v131, -v127, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v131, v128
	v_fma_f32 v127, -v127, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v132, v127, v128, v130
	v_div_scale_f32 v127, null, v117, v117, v43
	v_rcp_f32_e32 v128, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v129, -v127, v128, 1.0
	v_fmac_f32_e32 v128, v129, v128
	v_div_scale_f32 v129, vcc_lo, v43, v117, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v131, -v127, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v131, v128
	v_fma_f32 v127, -v127, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v133, v127, v128, v130
	v_div_scale_f32 v127, null, v117, v117, v19
	v_rcp_f32_e32 v128, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v129, -v127, v128, 1.0
	v_fmac_f32_e32 v128, v129, v128
	v_div_scale_f32 v129, vcc_lo, v19, v117, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v131, -v127, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v131, v128
	v_fma_f32 v127, -v127, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v127, v127, v128, v130
	v_div_scale_f32 v128, null, v117, v117, v70
	v_rcp_f32_e32 v129, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v130, -v128, v129, 1.0
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v70, v117, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v131, v130, v129
	v_fma_f32 v134, -v128, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v134, v129
	v_fma_f32 v128, -v128, v131, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v134, v128, v129, v131
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v128, 15, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v129, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v69, 0, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v67, v134, v117, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v130, 15, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v65, v107, v82, v66
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v67, 15, v67
	v_med3_f32 v65, v65, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v131, 15, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v66, v124, v99, v68
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v66, v66
	v_and_b32_e32 v66, 15, v66
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v69, v[128:131]
	ds_store_b128 v69, v[64:67] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v64, null, v117, v117, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v66, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v52, v117, v52
	v_mul_f32_e32 v67, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v64, v67, v66
	v_fmac_f32_e32 v67, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v64, v67, v66
	v_div_fmas_f32 v70, v64, v65, v67
	v_div_scale_f32 v64, null, v117, v117, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v66, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v39, v117, v39
	v_mul_f32_e32 v67, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v64, v67, v66
	v_fmac_f32_e32 v67, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v64, v67, v66
	v_div_fmas_f32 v72, v64, v65, v67
	v_div_scale_f32 v64, null, v117, v117, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v66, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v20, v117, v20
	v_mul_f32_e32 v67, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v64, v67, v66
	v_fmac_f32_e32 v67, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v64, v67, v66
	v_div_fmas_f32 v64, v64, v65, v67
	v_div_scale_f32 v65, null, v117, v117, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v63, v117, v63
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v65, v68, v67
	v_fmac_f32_e32 v68, v87, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v65, v65, v66, v68
	v_div_scale_f32 v66, null, v117, v117, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v63, v65, v117, v63
	v_rcp_f32_e32 v67, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v47, v117, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v68, v67
	v_fma_f32 v90, -v66, v87, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v90, v67
	v_fma_f32 v66, -v66, v87, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v66, v67, v87
	v_div_scale_f32 v66, null, v117, v117, v33
	v_div_fixup_f32 v47, v87, v117, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v33, v117, v33
	v_mul_f32_e32 v90, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v66, v90, v68
	v_fmac_f32_e32 v90, v104, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v90, v68
	v_div_fmas_f32 v90, v66, v67, v90
	v_div_scale_f32 v66, null, v117, v117, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v22, v117, v22
	v_mul_f32_e32 v104, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v107, -v66, v104, v68
	v_fmac_f32_e32 v104, v107, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v104, v68
	v_div_fmas_f32 v104, v66, v67, v104
	v_div_scale_f32 v66, null, v117, v117, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v62, v117, v62
	v_mul_f32_e32 v107, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v122, -v66, v107, v68
	v_fmac_f32_e32 v107, v122, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v107, v68
	v_div_fmas_f32 v107, v66, v67, v107
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v67, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v111, v82, v57
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v63
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v60, v107, v117, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v54, v54
	v_and_b32_e32 v68, 15, v57
	v_and_b32_e32 v57, 15, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v54
	v_med3_f32 v53, v53, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v53, v53
	v_and_b32_e32 v59, 15, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v60, 15, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v96, v82, v55
	v_div_fixup_f32 v55, v114, v99, v56
	v_div_fixup_f32 v56, v132, v117, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v69, v[65:68] offset:2048
	ds_store_b128 v69, v[57:60] offset:2304
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v42, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v117, v117, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v48, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v53
	v_and_b32_e32 v53, 15, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v54, 15, v54
	v_med3_f32 v50, v50, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v59, 15, v42
	v_cvt_i32_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v55, 15, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v50, v50
	v_and_b32_e32 v56, 15, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v50, v70, v117, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v50, -v46, v48, 1.0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, vcc_lo, v45, v117, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v52, v50, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v42, v74, 16, 0
	ds_store_b128 v42, v[53:56]
	ds_store_b128 v42, v[57:60] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v46, v52, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v52, v53, v48 :: v_dual_and_b32 v53, 15, v41
	v_fma_f32 v46, -v46, v52, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v46, v46, v48, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v52, 15, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v31
	v_med3_f32 v36, v36, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v54, 15, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v36, v105, v82, v37
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v36, v36
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v55, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v121, v99, v40
	v_div_fixup_f32 v40, v46, v117, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v36, v133, v117, v43
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v46, 15, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v40, 15, v28
	v_med3_f32 v31, v31, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v31, v31
	v_and_b32_e32 v47, 15, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v92, v82, v34
	v_div_fixup_f32 v34, v109, v99, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v42, v[52:55] offset:2048
	ds_store_b128 v42, v[44:47] offset:2304
	v_xad_u32 v38, v74, 32, 0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v28, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v34, 15, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v41, 15, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v36
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v28, v95, v82, v32
	v_div_fixup_f32 v32, v72, v117, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	v_med3_f32 v28, v28, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 15, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v113, v99, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v35, 15, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 15, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v26, v26
	v_and_b32_e32 v37, 15, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v26, null, v117, v117, v29
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v38, v[40:43]
	ds_store_b128 v38, v[34:37] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v28, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v28, 1.0
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, vcc_lo, v29, v117, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v28
	v_fma_f32 v34, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v34, v28
	v_fma_f32 v26, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v26, v28, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v25
	v_and_b32_e32 v25, 15, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v27
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v28, v90, v117, v33
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v26, 15, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v27, 15, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v21, v102, v82, v23
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v28
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v28, 15, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v23, v120, v99, v24
	v_div_fixup_f32 v24, v31, v117, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v31, 15, v17
	v_and_b32_e32 v32, 15, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v21, v78, v71, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v23, v83, v71, v5
	v_div_scale_f32 v5, null, v117, v117, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v17
	v_and_b32_e32 v33, 15, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v34, 15, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v76, v71, v7
	v_fma_f32 v7, -v5, v6, 1.0
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v38, v[25:28] offset:2048
	ds_store_b128 v38, v[31:34] offset:2304
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v18, v117, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v7, v6
	v_fma_f32 v25, -v5, v24, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v6
	v_fma_f32 v5, -v5, v24, v7
	v_div_fixup_f32 v7, v103, v99, v14
	v_div_fixup_f32 v14, v108, v99, v15
	v_div_fixup_f32 v15, v112, v99, v16
	v_div_fixup_f32 v16, v118, v99, v13
	v_div_fmas_f32 v5, v5, v6, v24
	v_div_fixup_f32 v6, v86, v82, v9
	v_div_fixup_f32 v9, v91, v82, v10
	v_div_fixup_f32 v13, v64, v117, v20
	v_div_fixup_f32 v20, v104, v117, v22
	v_div_fixup_f32 v22, v5, v117, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v5, 5, v30
	v_lshlrev_b32_e32 v10, 6, v0
	v_lshlrev_b32_e32 v18, 2, v110
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v13, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v5, 0x300, v10, v5
	v_cndmask_b32_e64 v10, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v24, v100, v82, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v10, v10, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v127, v117, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v41, v10, v5, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v17
	v_rndne_f32_e32 v5, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v11, v9
	v_cvt_i32_f32_e32 v17, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v19, 15, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v10, v10
	v_and_b32_e32 v12, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v24
	v_rndne_f32_e32 v20, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_and_b32_e32 v9, 15, v10
	v_and_b32_e32 v10, 15, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v14
	v_rndne_f32_e32 v14, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v5, v5
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v18, v18
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_and_b32_e32 v5, 15, v5
	v_and_b32_e32 v6, 15, v6
	v_and_b32_e32 v7, 15, v7
	v_cvt_i32_f32_e32 v17, v17
	v_and_b32_e32 v8, 15, v8
	v_and_b32_e32 v15, 15, v15
	v_and_b32_e32 v16, 15, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v21, v74, 48, 0
	v_add_nc_u32_e32 v22, 0, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v11, 15, v11
	v_and_b32_e32 v17, 15, v17
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v20, 15, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v21, v[5:8]
	ds_store_b128 v21, v[9:12] offset:256
	ds_store_b128 v21, v[13:16] offset:2048
	ds_store_b128 v21, v[17:20] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v22 offset:4096
	ds_load_b128 v[9:12], v22
	ds_load_b128 v[13:16], v22 offset:128
	ds_load_b128 v[17:20], v22 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v50, v6, 4, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v10, 0x4020, v41, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v5, 4, v9
	v_lshl_or_b32 v52, v7, 4, v11
	v_lshl_or_b32 v5, v8, 4, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[6:9], v10 offset:4096
	ds_load_b128 v[21:24], v10
	ds_load_b128 v[25:28], v10 offset:128
	ds_load_b128 v[29:32], v10 offset:4224
	v_xad_u32 v11, 0x8040, v41, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v14, v18, 4, v14
	v_lshl_or_b32 v59, v20, 4, v16
	v_lshl_or_b32 v15, v19, 4, v15
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v53, v6, 4, v21
	v_lshl_or_b32 v54, v7, 4, v22
	v_lshl_or_b32 v55, v8, 4, v23
	v_lshl_or_b32 v6, v9, 4, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[7:10], v11 offset:4096
	ds_load_b128 v[21:24], v11
	ds_load_b128 v[33:36], v11 offset:128
	ds_load_b128 v[37:40], v11 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v18, v31, 4, v27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, v181, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v29, 4, v25
	v_lshl_or_b32 v25, v32, 4, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 58, v31
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v56, v7, 4, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v7, 0xc060, v41, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v8, 4, v22
	v_lshl_or_b32 v58, v9, 4, v23
	v_lshl_or_b32 v8, v10, 4, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[9:12], v7 offset:4096
	ds_load_b128 v[21:24], v7
	ds_load_b128 v[41:44], v7 offset:128
	ds_load_b128 v[45:48], v7 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v19, v37, 4, v33
	v_lshl_or_b32 v20, v38, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 60, v31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v40, 4, v36
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v21, v9, 4, v21
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 62, v181
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v10, 4, v22
	v_lshl_or_b32 v23, v11, 4, v23
	v_lshl_or_b32 v24, v12, 4, v24
	v_lshl_or_b32 v12, v17, 4, v13
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s0, s78, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v28, v45, 4, v41
	v_lshl_or_b32 v17, v30, 4, v26
	v_lshl_or_b32 v29, v46, 4, v42
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 60, v181
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v39, 4, v35
	v_lshl_or_b32 v30, v47, 4, v43
	v_lshl_or_b32 v7, v48, 4, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s1, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 58, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s3, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s3
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 56, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s5, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s5
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s3, s3, s4
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 54, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s7, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s7
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 52, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s9, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s9
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s7, s7, s8
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 50, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s11, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s11
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s9, s9, s10
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 48, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s13, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s13
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s11, s11, s12
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 46, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s15, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s15
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s13, s13, s14
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 44, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s17, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s17
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s15, s15, s16
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 42, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s19, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s19
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s17, s17, s18
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 40, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s21, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s21
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s19, s19, s20
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 38, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s23, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s23
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s21, s21, s22
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 36, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s25, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s25
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s23, s23, s24
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 34, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s27, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s27
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s25, s25, s26
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[9:10]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v9, s29, s78, v9
	v_add_co_ci_u32_e64 v10, null, s79, 0, s29
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s27, s27, s28
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s31, s78, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s31
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s29, s29, s30
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s34, s78, v185
	v_add_co_ci_u32_e64 v10, null, s79, 0, s34
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s31, s31, s33
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s36, s78, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s34, s34, s35
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s38, s78, v183
	v_add_co_ci_u32_e64 v10, null, s79, 0, s38
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s36, s36, s37
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s40, s78, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s40
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s38, s38, s39
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s42, s78, v180
	v_add_co_ci_u32_e64 v10, null, s79, 0, s42
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s40, s40, s41
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s44, s78, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s44
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s42, s42, s43
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s46, s78, v177
	v_add_co_ci_u32_e64 v10, null, s79, 0, s46
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s44, s44, s45
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s48, s78, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s48
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s46, s46, s47
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s50, s78, v175
	v_add_co_ci_u32_e64 v10, null, s79, 0, s50
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s48, s48, s49
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s52, s78, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s52
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s50, s50, s51
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s54, s78, v173
	v_add_co_ci_u32_e64 v10, null, s79, 0, s54
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s52, s52, s53
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s56, s78, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s56
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s54, s54, s55
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s58, s78, v171
	v_add_co_ci_u32_e64 v10, null, s79, 0, s58
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s56, s56, s57
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s60, s78, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s60
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s58, s58, s59
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s62, s78, v181
	v_add_co_ci_u32_e64 v10, null, s79, 0, s62
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[9:10]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_lshl_or_b32 v9, s80, 7, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mad_u64_u32 v[10:11], null, v31, s73, v[9:10]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s62
	buffer_store_b8 v49, v10, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 2, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[10:11], null, v10, s73, v[9:10]
	v_add_nc_u32_e32 v11, 4, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s60
	buffer_store_b8 v53, v10, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s73, v[9:10]
	v_add_nc_u32_e32 v11, 6, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v13, 0x80000000, v10, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s73, v[9:10]
	v_add_nc_u32_e32 v11, 8, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v56, v13, s[68:71], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v10, s56
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s73, v[9:10]
	v_add_nc_u32_e32 v11, 10, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v21, v13, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 12, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v13, 0x80000000, v10, s54
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v12, v13, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v21, s73, v[9:10]
	v_add_nc_u32_e32 v12, 14, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v12, s73, v[9:10]
	v_add_nc_u32_e32 v13, 16, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v21, 0x80000000, v11, s50
	buffer_store_b8 v16, v10, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v13, s73, v[9:10]
	v_add_nc_u32_e32 v11, 18, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v16, 0x80000000, v12, s48
	buffer_store_b8 v19, v21, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v11, s73, v[9:10]
	v_add_nc_u32_e32 v12, 20, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v19, 0x80000000, v10, s46
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 22, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[12:13], null, v12, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v13, 0x80000000, v11, s44
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v10, s73, v[9:10]
	v_add_nc_u32_e32 v11, 24, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x2
	buffer_store_b8 v28, v16, s[68:71], 0 offen
	buffer_store_b8 v50, v19, s[68:71], 0 offen
	buffer_store_b8 v54, v13, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 26, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s42
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 32, v31
	v_add_nc_u32_e32 v28, 50, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v13, 0x80000000, v10, s40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v57, v12, s[68:71], 0 offen
	buffer_store_b8 v22, v13, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 30, v31
	v_mad_u64_u32 v[11:12], null, v16, s73, v[9:10]
	v_add_nc_u32_e32 v12, 28, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v16, 0x80000000, v10, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0x80000000, v11, s36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v12, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v14, v16, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 34, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v17, v21, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 38, v31
	v_add_nc_u32_e32 v17, 40, v31
	v_mad_u64_u32 v[11:12], null, v13, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v10, s34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 36, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v20, v12, s[68:71], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v11, s31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v19, s73, v[9:10]
	v_add_nc_u32_e32 v19, 42, v31
	v_add_nc_u32_e32 v20, 46, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v29, v21, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 48, v31
	v_add_nc_u32_e32 v29, 56, v31
	v_mad_u64_u32 v[11:12], null, v14, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v10, s29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 44, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v52, v12, s[68:71], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v11, s27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v13, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v55, v22, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 54, v31
	v_mad_u64_u32 v[11:12], null, v16, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s25
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 52, v31
	v_add_nc_u32_e32 v31, 62, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v10, s[68:71], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v11, s23
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v17, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v23, v12, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v19, s73, v[9:10]
	v_mad_u64_u32 v[12:13], null, v14, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v17, 0x80000000, v10, s21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v20, s73, v[9:10]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v19, 0x80000000, v11, s19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v21, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v15, v17, s[68:71], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v12, s17
	buffer_store_b8 v18, v19, s[68:71], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v13, s15
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v13, 63, v0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v28, s73, v[9:10]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[9:10]
	v_mad_u64_u32 v[16:17], null, v22, s73, v[9:10]
	v_mad_u64_u32 v[17:18], null, v29, s73, v[9:10]
	v_mad_u64_u32 v[18:19], null, v32, s73, v[9:10]
	v_mad_u64_u32 v[19:20], null, v33, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[20:21], null, v31, s73, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v21, 0x80000000, v10, s13
	v_cndmask_b32_e64 v14, 0x80000000, v14, s11
	s_clause 0x3
	buffer_store_b8 v26, v11, s[68:71], 0 offen
	buffer_store_b8 v30, v12, s[68:71], 0 offen
	buffer_store_b8 v5, v21, s[68:71], 0 offen
	buffer_store_b8 v6, v14, s[68:71], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v16, s7
	buffer_store_b8 v8, v15, s[68:71], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v19, s1
	v_cndmask_b32_e64 v6, 0x80000000, v17, s5
	v_cndmask_b32_e64 v11, 0x80000000, v18, s3
	s_clause 0x3
	buffer_store_b8 v24, v5, s[68:71], 0 offen
	buffer_store_b8 v59, v6, s[68:71], 0 offen
	buffer_store_b8 v25, v11, s[68:71], 0 offen
	buffer_store_b8 v27, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v20, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v11, 2, v110
	v_lshlrev_b32_e32 v6, 3, v179
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v7, v5, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v8
	v_add_nc_u32_e32 v8, 0, v11
	v_add_nc_u32_e32 v5, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s1, s1, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, v13, v3
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s11, s78, v13
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v4, v8, v7, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s79, 0, s11
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[9:10]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v2, s80, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp67:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33020
; TotalNumSgprs: 83
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
