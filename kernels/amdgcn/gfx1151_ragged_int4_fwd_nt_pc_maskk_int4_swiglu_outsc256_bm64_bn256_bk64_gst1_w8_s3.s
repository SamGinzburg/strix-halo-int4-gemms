	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_mov_b32_e32 v169, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v0, 1, v169
	v_and_b32_e32 v43, 0x7f, v169
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 24
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
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
	s_ashr_i32 s33, s4, 31
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
	s_xor_b32 s34, s13, s33
	s_sub_i32 s80, s34, s33
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
	s_lshl_b64 s[12:13], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s12
	s_addc_u32 s3, s5, s13
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s4, s6, s12
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[24:25], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_addc_u32 s5, s7, s13
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s12
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[78:79], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s3, s9, s13
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s12
	s_addc_u32 s5, s11, s13
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s7, s72, 1
	s_mov_b32 s6, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s25, s24, s7
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v41, s25 :: v_dual_lshlrev_b32 v42, 1, v169
	v_dual_mov_b32 v3, s78 :: v_dual_and_b32 v4, 0x7f, v169
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr41
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[74:75], s[2:3], 0x0
	s_load_b64 s[76:77], s[4:5], 0x0
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v171, 0x80, v169
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v170, 15, v169
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v1, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v171
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v146, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v169
	s_load_b128 s[20:23], s[0:1], 0x0
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	s_mov_b32 s31, 0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s78, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s79, 0, s0
	v_add_nc_u32_e32 v129, s78, v18
	v_add_co_u32 v4, vcc_lo, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_le_i64_e64 s0, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v2, 24
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[6:7]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s9, s0, s9
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s0, s24, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_or_b32 s0, s0, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s10, s1, s10
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_mul_i32 s0, s72, s0
	s_lshl_b32 s1, s34, 8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v130, 8, v129
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[2:3]
	v_and_b32_e32 v3, 24, v0
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add3_u32 v7, s0, s1, v18
	s_lshl_b32 s0, s33, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[10:11]
	v_lshl_or_b32 v240, v170, 5, v3
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_subrev_nc_u32_e32 v7, s0, v7
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v161, 31, v169
	v_cndmask_b32_e64 v2, 0x88, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[12:13]
	v_xor_b32_e32 v4, 16, v240
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v10, 0xf8, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[12:13]
	v_xor_b32_e32 v0, v2, v43
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v11, 0xf0, v7
	v_dual_mov_b32 v63, v1 :: v_dual_add_nc_u32 v244, 0, v4
	v_mov_b32_e32 v4, v1
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[16:17]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v169, off offset:172
	v_mov_b32_e32 v16, v1
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add_nc_u32_e32 v10, 0xe8, v7
	scratch_store_b64 off, v[12:13], off offset:4 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	scratch_store_b32 off, v170, off offset:176 ; 4-byte Folded Spill
	v_mov_b32_e32 v20, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[14:15]
	v_mov_b32_e32 v15, v1
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v169
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[11:12], off offset:12 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xe0, v7
	scratch_store_b32 off, v171, off offset:180 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v10, 0xd8, v7
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v17, v1
	v_xor_b32_e32 v2, 0x110, v0
	scratch_store_b64 off, v[12:13], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	scratch_store_b32 off, v43, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v61, v1 :: v_dual_add_nc_u32 v242, 0, v2
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v241, v19, 4, v240
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[8:9]
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[11:12], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xd0, v7
	v_add_nc_u32_e32 v10, 0xc8, v7
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v19, v1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[76:77], v[8:9]
	v_xor_b32_e32 v8, 16, v241
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[12:13], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_xor_b32_e32 v9, 24, v241
	v_dual_mov_b32 v66, v1 :: v_dual_add_nc_u32 v247, 0, v8
	v_mov_b32_e32 v8, v1
	v_add_nc_u32_e32 v136, 56, v129
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v135, 48, v129
	scratch_store_b64 off, v[11:12], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xc0, v7
	v_add_nc_u32_e32 v10, 0xb8, v7
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v21, v1
	v_xor_b32_e32 v5, 24, v240
	v_add_nc_u32_e32 v134, 40, v129
	scratch_store_b64 off, v[12:13], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_add_nc_u32_e32 v133, 32, v129
	v_xor_b32_e32 v3, 8, v240
	v_add_nc_u32_e32 v132, 24, v129
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v131, 16, v129
	v_mov_b32_e32 v23, v1
	scratch_store_b64 off, v[11:12], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xb0, v7
	v_add_nc_u32_e32 v10, 0xa8, v7
	v_dual_mov_b32 v67, v1 :: v_dual_add_nc_u32 v248, 0, v9
	v_mov_b32_e32 v9, v1
	v_dual_mov_b32 v64, v1 :: v_dual_add_nc_u32 v245, 0, v5
	scratch_store_b64 off, v[12:13], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v25, v1
	v_dual_mov_b32 v62, v1 :: v_dual_add_nc_u32 v243, 0, v3
	v_mov_b32_e32 v3, v1
	scratch_store_b64 off, v[11:12], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xa0, v7
	v_add_nc_u32_e32 v10, 0x98, v7
	v_xor_b32_e32 v6, 8, v241
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v82, v1
	scratch_store_b64 off, v[12:13], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_mov_b32_e32 v32, v1
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v246, 0, v6
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v83, v1
	v_mov_b32_e32 v84, v1
	scratch_store_b64 off, v[11:12], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x90, v7
	v_dual_mov_b32 v85, v1 :: v_dual_add_nc_u32 v10, 0x88, v7
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v87, v1
	v_mov_b32_e32 v88, v1
	scratch_store_b64 off, v[12:13], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v89, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v91, v1
	v_mov_b32_e32 v92, v1
	scratch_store_b64 off, v[11:12], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x80, v7
	v_dual_mov_b32 v93, v1 :: v_dual_add_nc_u32 v10, 0x78, v7
	v_mov_b32_e32 v94, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v31, v1
	scratch_store_b64 off, v[12:13], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v95, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v40, v1
	scratch_store_b64 off, v[11:12], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x70, v7
	v_dual_mov_b32 v35, v1 :: v_dual_add_nc_u32 v10, 0x68, v7
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v97, v1
	scratch_store_b64 off, v[12:13], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v98, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v100, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v102, v1
	scratch_store_b64 off, v[11:12], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x60, v7
	v_dual_mov_b32 v43, v1 :: v_dual_add_nc_u32 v10, 0x58, v7
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	scratch_store_b64 off, v[12:13], off offset:148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s73, v11, v[161:162]
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	scratch_store_b64 off, v[11:12], off offset:156 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v11, 0x50, v7
	v_mad_u64_u32 v[12:13], null, s73, v10, v[161:162]
	v_dual_mov_b32 v51, v1 :: v_dual_add_nc_u32 v10, 0x48, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[183:184], null, s73, v11, v[161:162]
	v_add_nc_u32_e32 v11, 64, v7
	v_mad_u64_u32 v[184:185], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 56, v7
	scratch_store_b64 off, v[12:13], off offset:164 ; 8-byte Folded Spill
	v_mad_u64_u32 v[185:186], null, s73, v11, v[161:162]
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[186:187], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 40, v7
	v_add_nc_u32_e32 v12, 16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[187:188], null, s73, v11, v[161:162]
	v_add_nc_u32_e32 v11, 32, v7
	v_mad_u64_u32 v[188:189], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 24, v7
	v_mov_b32_e32 v52, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[189:190], null, s73, v11, v[161:162]
	v_add3_u32 v11, s25, s1, v18
	v_mad_u64_u32 v[190:191], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 8, v7
	v_mad_u64_u32 v[191:192], null, s73, v12, v[161:162]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v137, s0, v11
	v_mov_b32_e32 v53, v1
	v_mad_u64_u32 v[192:193], null, s73, v10, v[161:162]
	v_mad_u64_u32 v[193:194], null, s73, v7, v[161:162]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v10, 0xf8, v137
	v_dual_mov_b32 v54, v1 :: v_dual_add_nc_u32 v7, 0xf0, v137
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mad_u64_u32 v[194:195], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xe8, v137
	v_mad_u64_u32 v[195:196], null, s73, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0xe0, v137
	v_add_nc_u32_e32 v11, 0x78, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[196:197], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xd8, v137
	v_mad_u64_u32 v[197:198], null, s73, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0xd0, v137
	v_add_nc_u32_e32 v138, 0x70, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[198:199], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xc8, v137
	v_mad_u64_u32 v[199:200], null, s73, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0xc0, v137
	v_mov_b32_e32 v57, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[200:201], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xb8, v137
	v_mad_u64_u32 v[201:202], null, s73, v7, v[161:162]
	v_dual_mov_b32 v58, v1 :: v_dual_add_nc_u32 v7, 0xb0, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[202:203], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xa8, v137
	v_mad_u64_u32 v[203:204], null, s73, v7, v[161:162]
	v_dual_mov_b32 v68, v1 :: v_dual_add_nc_u32 v7, 0xa0, v137
	v_add_nc_u32_e32 v139, 0x68, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[204:205], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0x98, v137
	v_mad_u64_u32 v[205:206], null, s73, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0x90, v137
	v_mov_b32_e32 v69, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[206:207], null, s73, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0x88, v137
	v_mad_u64_u32 v[207:208], null, s73, v7, v[161:162]
	v_dual_mov_b32 v70, v1 :: v_dual_add_nc_u32 v7, 0x80, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[208:209], null, s73, v10, v[161:162]
	v_mov_b32_e32 v71, v1
	v_mad_u64_u32 v[209:210], null, s73, v7, v[161:162]
	v_mad_u64_u32 v[210:211], null, s73, v11, v[161:162]
	v_mad_u64_u32 v[211:212], null, s73, v138, v[161:162]
	v_add_nc_u32_e32 v138, 0x60, v137
	v_mad_u64_u32 v[212:213], null, s73, v139, v[161:162]
	v_dual_mov_b32 v72, v1 :: v_dual_add_nc_u32 v139, 0x58, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[213:214], null, s73, v138, v[161:162]
	v_add_nc_u32_e32 v138, 0x50, v137
	v_mad_u64_u32 v[214:215], null, s73, v139, v[161:162]
	v_add_nc_u32_e32 v139, 0x48, v137
	v_mov_b32_e32 v73, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[215:216], null, s73, v138, v[161:162]
	v_add_nc_u32_e32 v138, 64, v137
	v_mov_b32_e32 v74, v1
	v_mad_u64_u32 v[216:217], null, s73, v139, v[161:162]
	v_add_nc_u32_e32 v139, 56, v137
	v_mov_b32_e32 v75, v1
	v_mad_u64_u32 v[217:218], null, s73, v138, v[161:162]
	v_add_nc_u32_e32 v138, 48, v137
	v_mov_b32_e32 v76, v1
	v_mad_u64_u32 v[218:219], null, s73, v139, v[161:162]
	v_add_nc_u32_e32 v139, 40, v137
	v_mov_b32_e32 v77, v1
	v_mad_u64_u32 v[219:220], null, s73, v138, v[161:162]
	v_add_nc_u32_e32 v138, 32, v137
	v_mov_b32_e32 v78, v1
	v_mad_u64_u32 v[220:221], null, s73, v139, v[161:162]
	v_add_nc_u32_e32 v139, 24, v137
	v_mov_b32_e32 v79, v1
	v_mad_u64_u32 v[221:222], null, s73, v138, v[161:162]
	v_dual_mov_b32 v81, v1 :: v_dual_add_nc_u32 v138, 16, v137
	v_add_nc_u32_e32 v140, 8, v137
	v_mad_u64_u32 v[222:223], null, s73, v139, v[161:162]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[223:224], null, s73, v138, v[161:162]
	v_mad_u64_u32 v[224:225], null, s73, v140, v[161:162]
	v_mad_u64_u32 v[225:226], null, s73, v137, v[161:162]
	v_mad_u64_u32 v[226:227], null, v136, s73, v[161:162]
	v_mad_u64_u32 v[227:228], null, v135, s73, v[161:162]
	v_mad_u64_u32 v[228:229], null, v134, s73, v[161:162]
	v_mov_b32_e32 v12, v1
	v_mad_u64_u32 v[229:230], null, v133, s73, v[161:162]
	v_mad_u64_u32 v[230:231], null, v132, s73, v[161:162]
	v_mov_b32_e32 v10, v1
	v_mad_u64_u32 v[231:232], null, v131, s73, v[161:162]
	v_mad_u64_u32 v[232:233], null, v130, s73, v[161:162]
	v_mad_u64_u32 v[233:234], null, v129, s73, v[161:162]
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v18, v1
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
	s_and_b32 s26, vcc_lo, s8
	s_and_b32 s11, s3, s11
	s_and_b32 s27, s4, s12
	s_and_b32 s28, s5, s13
	s_and_b32 s29, s6, s14
	s_and_b32 s30, s7, s15
	s_and_b32 s13, s21, 0xffff
	s_mov_b32 s12, s20
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s21, s23, 0xffff
	s_mov_b32 s20, s22
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_add_nc_u32_e32 v129, s31, v161
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v131, s31, v232
	v_add_nc_u32_e32 v132, s31, v231
	v_add_nc_u32_e32 v133, s31, v230
	v_add_nc_u32_e32 v134, s31, v229
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v129
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v129, s31, v233
	v_add_nc_u32_e32 v135, s31, v228
	v_add_nc_u32_e32 v136, s31, v227
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_add_nc_u32_e32 v137, s31, v226
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s26, vcc_lo
	s_and_b32 s1, s9, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s3, s10, vcc_lo
	s_and_b32 s4, s11, vcc_lo
	s_and_b32 s5, s27, vcc_lo
	s_and_b32 s6, s28, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	buffer_load_u8 v130, v129, s[12:15], 0 offen
	v_cndmask_b32_e64 v129, 0x80000000, v131, s1
	v_cndmask_b32_e64 v131, 0x80000000, v132, s3
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s7, s29, vcc_lo
	s_and_b32 s8, s30, vcc_lo
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v138, s31, v224
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v129, v129, s[12:15], 0 offen
	buffer_load_u8 v132, v131, s[12:15], 0 offen
	v_cndmask_b32_e64 v131, 0x80000000, v133, s4
	v_cndmask_b32_e64 v133, 0x80000000, v134, s5
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	v_add_nc_u32_e32 v139, s31, v223
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v131, v131, s[12:15], 0 offen
	buffer_load_u8 v134, v133, s[12:15], 0 offen
	v_cndmask_b32_e64 v133, 0x80000000, v135, s6
	v_cndmask_b32_e64 v135, 0x80000000, v136, s7
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v140, s31, v222
	v_add_nc_u32_e32 v141, s31, v221
	v_add_nc_u32_e32 v142, s31, v220
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v133, v133, s[12:15], 0 offen
	buffer_load_u8 v136, v135, s[12:15], 0 offen
	v_cndmask_b32_e64 v135, 0x80000000, v137, s8
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v137, s31, v225
	v_add_nc_u32_e32 v143, s31, v219
	v_add_nc_u32_e32 v144, s31, v218
	v_add_nc_u32_e32 v145, s31, v217
	v_add_nc_u32_e32 v146, s31, v216
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	v_cndmask_b32_e32 v137, 0x80000000, v137, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v147, s31, v215
	v_add_nc_u32_e32 v148, s31, v214
	v_add_nc_u32_e32 v149, s31, v213
	v_add_nc_u32_e32 v150, s31, v212
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v235, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v138, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v151, s31, v211
	v_add_nc_u32_e32 v152, s31, v210
	v_add_nc_u32_e32 v153, s31, v209
	v_add_nc_u32_e32 v154, s31, v208
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v236, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v139, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v155, s31, v207
	v_add_nc_u32_e32 v156, s31, v206
	v_add_nc_u32_e32 v157, s31, v205
	v_add_nc_u32_e32 v158, s31, v204
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v237, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v140, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v159, s31, v203
	v_add_nc_u32_e32 v160, s31, v202
	v_add_nc_u32_e32 v162, s31, v201
	v_add_nc_u32_e32 v163, s31, v200
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v238, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v141, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v164, s31, v199
	v_add_nc_u32_e32 v165, s31, v198
	v_add_nc_u32_e32 v166, s31, v197
	v_add_nc_u32_e32 v167, s31, v196
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v249, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v142, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v168, s31, v195
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v169, s31, v194
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	buffer_load_u8 v135, v135, s[12:15], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v250, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v143, vcc_lo
	buffer_load_u8 v251, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v144, vcc_lo
	buffer_load_u8 v252, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v145, vcc_lo
	buffer_load_u8 v253, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v146, vcc_lo
	buffer_load_u8 v255, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v147, vcc_lo
	buffer_load_u8 v254, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v148, vcc_lo
	buffer_load_u8 v239, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v149, vcc_lo
	buffer_load_u8 v0, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v150, vcc_lo
	buffer_load_u8 v170, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v151, vcc_lo
	buffer_load_u8 v171, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v152, vcc_lo
	buffer_load_u8 v172, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v153, vcc_lo
	buffer_load_u8 v173, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v154, vcc_lo
	buffer_load_u8 v174, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v155, vcc_lo
	buffer_load_u8 v175, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v156, vcc_lo
	buffer_load_u8 v176, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v157, vcc_lo
	buffer_load_u8 v177, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v158, vcc_lo
	buffer_load_u8 v178, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v159, vcc_lo
	buffer_load_u8 v179, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v160, vcc_lo
	buffer_load_u8 v180, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v162, vcc_lo
	buffer_load_u8 v162, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v163, vcc_lo
	buffer_load_u8 v163, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v164, vcc_lo
	buffer_load_u8 v164, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v165, vcc_lo
	buffer_load_u8 v165, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v166, vcc_lo
	buffer_load_u8 v166, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v167, vcc_lo
	buffer_load_u8 v167, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v168, vcc_lo
	buffer_load_u8 v168, v137, s[20:23], 0 offen
	v_cndmask_b32_e32 v137, 0x80000000, v169, vcc_lo
	buffer_load_u8 v169, v137, s[20:23], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v137, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, 0, v137
	ds_store_b8 v234, v130
	ds_store_b8 v234, v132 offset:512
	ds_store_b8 v234, v134 offset:1024
	ds_store_b8 v234, v136 offset:1536
	ds_store_b8 v242, v129
	ds_store_b8 v242, v131 offset:512
	ds_store_b8 v242, v133 offset:1024
	ds_store_b8 v242, v135 offset:1536
	v_add_nc_u32_e32 v129, 0, v240
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[145:148], v129 offset1:1
	ds_load_2addr_stride64_b64 v[141:144], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v243 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v243 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[153:156], v244 offset1:1
	ds_load_2addr_stride64_b64 v[133:136], v244 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[157:160], v245 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v245 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v234, v235
	ds_store_b8 v234, v237 offset:512
	ds_store_b8 v234, v249 offset:1024
	ds_store_b8 v234, v251 offset:1536
	ds_store_b8 v234, v253 offset:2048
	ds_store_b8 v234, v254 offset:2560
	ds_store_b8 v234, v0 offset:3072
	ds_store_b8 v234, v171 offset:3584
	ds_store_b8 v234, v173 offset:4096
	ds_store_b8 v234, v175 offset:4608
	ds_store_b8 v234, v177 offset:5120
	ds_store_b8 v234, v179 offset:5632
	ds_store_b8 v234, v162 offset:6144
	ds_store_b8 v234, v164 offset:6656
	ds_store_b8 v234, v166 offset:7168
	ds_store_b8 v234, v168 offset:7680
	ds_store_b8 v242, v236
	ds_store_b8 v242, v238 offset:512
	ds_store_b8 v242, v250 offset:1024
	ds_store_b8 v242, v252 offset:1536
	ds_store_b8 v242, v255 offset:2048
	ds_store_b8 v242, v239 offset:2560
	ds_store_b8 v242, v170 offset:3072
	ds_store_b8 v242, v172 offset:3584
	ds_store_b8 v242, v174 offset:4096
	ds_store_b8 v242, v176 offset:4608
	ds_store_b8 v242, v178 offset:5120
	ds_store_b8 v242, v180 offset:5632
	ds_store_b8 v242, v163 offset:6144
	ds_store_b8 v242, v165 offset:6656
	ds_store_b8 v242, v167 offset:7168
	ds_store_b8 v242, v169 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_clause 0x9                            ; 80-byte Folded Reload
	scratch_load_b64 v[172:173], off, off offset:164
	scratch_load_b64 v[173:174], off, off offset:156
	scratch_load_b64 v[174:175], off, off offset:148
	scratch_load_b64 v[175:176], off, off offset:140
	scratch_load_b64 v[176:177], off, off offset:132
	scratch_load_b64 v[177:178], off, off offset:124
	scratch_load_b64 v[178:179], off, off offset:116
	scratch_load_b64 v[179:180], off, off offset:108
	scratch_load_b64 v[180:181], off, off offset:100
	scratch_load_b64 v[181:182], off, off offset:92
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v249, 0, v241
	ds_load_2addr_stride64_b64 v[250:253], v249 offset1:8
	ds_load_2addr_stride64_b64 v[235:238], v246 offset1:8
	ds_load_2addr_stride64_b64 v[162:165], v247 offset1:8
	ds_load_2addr_stride64_b64 v[166:169], v248 offset1:8
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v0, s31, v193
	v_add_nc_u32_e32 v170, s31, v184
	v_add_nc_u32_e32 v171, s31, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_dual_cndmask_b32 v170, 0x80000000, v170 :: v_dual_cndmask_b32 v171, 0x80000000, v171
	s_clause 0x2
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v170, v170, s[20:23], 0 offen
	buffer_load_u8 v171, v171, s[20:23], 0 offen
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[250:251], v[145:146], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[250:251], v[147:148], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[250:251], v[141:142], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[250:251], v[143:144], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[252:253], v[145:146], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[235:236], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[235:236], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[235:236], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[235:236], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[252:253], v[147:148], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[252:253], v[141:142], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[252:253], v[143:144], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[237:238], v[149:150], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[162:163], v[153:154], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[237:238], v[151:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[237:238], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[237:238], v[139:140], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[162:163], v[155:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[162:163], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[162:163], v[135:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[164:165], v[153:154], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[164:165], v[155:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[164:165], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[164:165], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v162, s31, v192
	v_add_nc_u32_e32 v163, s31, v191
	v_add_nc_u32_e32 v164, s31, v190
	v_add_nc_u32_e32 v165, s31, v189
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[166:167], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[166:167], v[159:160], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[166:167], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[166:167], v[131:132], v[113:120] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v166, s31, v188
	v_add_nc_u32_e32 v167, s31, v187
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[168:169], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[168:169], v[159:160], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[168:169], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[168:169], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v169, s31, v185
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v162, 0x80000000, v162 :: v_dual_cndmask_b32 v163, 0x80000000, v163
	v_dual_cndmask_b32 v164, 0x80000000, v164 :: v_dual_cndmask_b32 v165, 0x80000000, v165
	v_dual_cndmask_b32 v166, 0x80000000, v166 :: v_dual_cndmask_b32 v167, 0x80000000, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v169, 0x80000000, v169, vcc_lo
	s_clause 0x6
	buffer_load_u8 v162, v162, s[20:23], 0 offen
	buffer_load_u8 v163, v163, s[20:23], 0 offen
	buffer_load_u8 v164, v164, s[20:23], 0 offen
	buffer_load_u8 v165, v165, s[20:23], 0 offen
	buffer_load_u8 v166, v166, s[20:23], 0 offen
	buffer_load_u8 v167, v167, s[20:23], 0 offen
	buffer_load_u8 v169, v169, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v168, s31, v186
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v168, 0x80000000, v168, vcc_lo
	buffer_load_u8 v168, v168, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v172, s31, v172
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v173, s31, v173
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v174, s31, v174
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v175, s31, v175
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v176, s31, v176
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v177, s31, v177
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v178, s31, v178
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v179, s31, v179
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v172, 0x80000000, v172, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v235, s31, v181
	scratch_load_b64 v[181:182], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v173, 0x80000000, v173 :: v_dual_cndmask_b32 v174, 0x80000000, v174
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	v_dual_cndmask_b32 v177, 0x80000000, v177 :: v_dual_cndmask_b32 v178, 0x80000000, v178
	v_cndmask_b32_e32 v179, 0x80000000, v179, vcc_lo
	v_cndmask_b32_e32 v235, 0x80000000, v235, vcc_lo
	s_clause 0x7
	buffer_load_u8 v172, v172, s[20:23], 0 offen
	buffer_load_u8 v173, v173, s[20:23], 0 offen
	buffer_load_u8 v174, v174, s[20:23], 0 offen
	buffer_load_u8 v175, v175, s[20:23], 0 offen
	buffer_load_u8 v177, v177, s[20:23], 0 offen
	buffer_load_u8 v178, v178, s[20:23], 0 offen
	buffer_load_u8 v179, v179, s[20:23], 0 offen
	buffer_load_u8 v235, v235, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v180, s31, v180
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v176, 0x80000000, v176, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v180, 0x80000000, v180, vcc_lo
	s_clause 0x1
	buffer_load_u8 v176, v176, s[20:23], 0 offen
	buffer_load_u8 v180, v180, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v236, s31, v181
	scratch_load_b64 v[181:182], off, off offset:76 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v236, 0x80000000, v236, vcc_lo
	buffer_load_u8 v236, v236, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v237, s31, v181
	scratch_load_b64 v[181:182], off, off offset:68 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v237, 0x80000000, v237, vcc_lo
	buffer_load_u8 v237, v237, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v238, s31, v181
	scratch_load_b64 v[181:182], off, off offset:60 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v238, 0x80000000, v238, vcc_lo
	buffer_load_u8 v238, v238, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v239, s31, v181
	scratch_load_b64 v[181:182], off, off offset:52 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v239, 0x80000000, v239, vcc_lo
	buffer_load_u8 v239, v239, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v250, s31, v181
	scratch_load_b64 v[181:182], off, off offset:44 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v250, 0x80000000, v250, vcc_lo
	buffer_load_u8 v250, v250, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v251, s31, v181
	scratch_load_b64 v[181:182], off, off offset:36 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v251, 0x80000000, v251, vcc_lo
	buffer_load_u8 v251, v251, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v252, s31, v181
	scratch_load_b64 v[181:182], off, off offset:28 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v252, 0x80000000, v252, vcc_lo
	buffer_load_u8 v252, v252, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v253, s31, v181
	scratch_load_b64 v[181:182], off, off offset:20 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v253, 0x80000000, v253, vcc_lo
	buffer_load_u8 v253, v253, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v254, s31, v181
	scratch_load_b64 v[181:182], off, off offset:12 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v254, 0x80000000, v254, vcc_lo
	buffer_load_u8 v254, v254, s[20:23], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v255, s31, v181
	.loc	1 1095 35                       ; ragged.py:1095:35
	scratch_load_b64 v[181:182], off, off offset:4 ; 8-byte Folded Reload
	v_cndmask_b32_e32 v255, 0x80000000, v255, vcc_lo
	buffer_load_u8 v255, v255, s[20:23], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v181, s31, v181
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s31, s31, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s31, s73
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v181, 0x80000000, v181, vcc_lo
	buffer_load_u8 v181, v181, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v234, v0
	ds_store_b8 v234, v163 offset:512
	ds_store_b8 v234, v165 offset:1024
	ds_store_b8 v234, v167 offset:1536
	ds_store_b8 v234, v169 offset:2048
	ds_store_b8 v234, v171 offset:2560
	ds_store_b8 v234, v173 offset:3072
	ds_store_b8 v234, v175 offset:3584
	ds_store_b8 v234, v177 offset:4096
	ds_store_b8 v234, v179 offset:4608
	ds_store_b8 v234, v235 offset:5120
	ds_store_b8 v234, v237 offset:5632
	ds_store_b8 v234, v239 offset:6144
	ds_store_b8 v234, v251 offset:6656
	ds_store_b8 v234, v253 offset:7168
	s_waitcnt vmcnt(1)
	ds_store_b8 v234, v255 offset:7680
	ds_store_b8 v242, v162
	ds_store_b8 v242, v164 offset:512
	ds_store_b8 v242, v166 offset:1024
	ds_store_b8 v242, v168 offset:1536
	ds_store_b8 v242, v170 offset:2048
	ds_store_b8 v242, v172 offset:2560
	ds_store_b8 v242, v174 offset:3072
	ds_store_b8 v242, v176 offset:3584
	ds_store_b8 v242, v178 offset:4096
	ds_store_b8 v242, v180 offset:4608
	ds_store_b8 v242, v236 offset:5120
	ds_store_b8 v242, v238 offset:5632
	ds_store_b8 v242, v250 offset:6144
	ds_store_b8 v242, v252 offset:6656
	ds_store_b8 v242, v254 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b8 v242, v181 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[162:165], v249 offset1:8
	ds_load_2addr_stride64_b64 v[166:169], v246 offset1:8
	ds_load_2addr_stride64_b64 v[234:237], v247 offset1:8
	ds_load_2addr_stride64_b64 v[249:252], v248 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[162:163], v[145:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[145:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[162:163], v[147:148], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[147:148], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[162:163], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[164:165], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[162:163], v[143:144], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[164:165], v[143:144], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[166:167], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[149:150], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[168:169], v[151:152], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[139:140], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[234:235], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[236:237], v[153:154], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[234:235], v[155:156], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[236:237], v[155:156], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[234:235], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[236:237], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[234:235], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[236:237], v[135:136], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[249:250], v[157:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[251:252], v[157:158], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[249:250], v[159:160], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[251:252], v[159:160], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[249:250], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[251:252], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[249:250], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[251:252], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v168, v67
	v_cvt_f32_i32_e32 v138, v92
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v92, v4
	v_cvt_f32_i32_e32 v67, v12
	v_cvt_f32_i32_e32 v12, v42
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v42, off, off offset:184
	scratch_load_b32 v4, off, off offset:188
	scratch_load_b32 v169, off, off offset:172
	scratch_load_b32 v170, off, off offset:176
	scratch_load_b32 v171, off, off offset:180
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v165, v65
	v_cvt_f32_i32_e32 v166, v66
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
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v76, v109
	v_cvt_f32_i32_e32 v99, v110
	v_cvt_f32_i32_e32 v98, v111
	v_cvt_f32_i32_e32 v97, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v107, v117
	v_cvt_f32_i32_e32 v108, v118
	v_cvt_f32_i32_e32 v109, v119
	v_cvt_f32_i32_e32 v110, v120
	v_cvt_f32_i32_e32 v106, v121
	v_cvt_f32_i32_e32 v94, v122
	v_cvt_f32_i32_e32 v95, v123
	v_cvt_f32_i32_e32 v96, v124
	v_cvt_f32_i32_e32 v74, v125
	v_cvt_f32_i32_e32 v102, v126
	v_cvt_f32_i32_e32 v101, v127
	v_cvt_f32_i32_e32 v100, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v90, v1
	v_cvt_f32_i32_e32 v91, v2
	v_cvt_f32_i32_e32 v93, v3
	v_cvt_f32_i32_e32 v70, v5
	v_cvt_f32_i32_e32 v71, v6
	v_cvt_f32_i32_e32 v72, v7
	v_cvt_f32_i32_e32 v73, v8
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v68, v10
	v_cvt_f32_i32_e32 v69, v11
	v_cvt_f32_i32_e32 v6, v13
	v_cvt_f32_i32_e32 v66, v14
	v_cvt_f32_i32_e32 v65, v15
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v89, v17
	v_cvt_f32_i32_e32 v88, v18
	v_cvt_f32_i32_e32 v86, v19
	v_cvt_f32_i32_e32 v87, v20
	v_cvt_f32_i32_e32 v81, v21
	v_cvt_f32_i32_e32 v80, v22
	v_cvt_f32_i32_e32 v79, v23
	v_cvt_f32_i32_e32 v78, v24
	v_cvt_f32_i32_e32 v82, v25
	v_cvt_f32_i32_e32 v16, v26
	v_cvt_f32_i32_e32 v15, v27
	v_cvt_f32_i32_e32 v13, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v19, v30
	v_cvt_f32_i32_e32 v18, v31
	v_cvt_f32_i32_e32 v17, v32
	v_cvt_f32_i32_e32 v85, v33
	v_cvt_f32_i32_e32 v84, v34
	v_cvt_f32_i32_e32 v83, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v30, v37
	v_cvt_f32_i32_e32 v29, v38
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v27, v40
	v_cvt_f32_i32_e32 v26, v41
	v_cvt_f32_i32_e32 v11, v43
	v_cvt_f32_i32_e32 v10, v44
	v_cvt_f32_i32_e32 v2, v45
	v_cvt_f32_i32_e32 v22, v46
	v_cvt_f32_i32_e32 v21, v47
	v_cvt_f32_i32_e32 v20, v48
	v_cvt_f32_i32_e32 v35, v49
	v_cvt_f32_i32_e32 v34, v50
	v_cvt_f32_i32_e32 v31, v51
	v_cvt_f32_i32_e32 v32, v52
	v_cvt_f32_i32_e32 v40, v53
	v_cvt_f32_i32_e32 v38, v54
	v_cvt_f32_i32_e32 v39, v55
	v_cvt_f32_i32_e32 v37, v56
	v_cvt_f32_i32_e32 v33, v57
	v_cvt_f32_i32_e32 v9, v58
	v_cvt_f32_i32_e32 v8, v59
	v_cvt_f32_i32_e32 v7, v60
	v_cvt_f32_i32_e32 v1, v61
	v_cvt_f32_i32_e32 v25, v62
	v_cvt_f32_i32_e32 v24, v63
	v_cvt_f32_i32_e32 v23, v64
	v_mov_b32_e32 v41, s25
	v_mov_b32_e32 v3, s78
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v0, 28, v42
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 5, v169
	v_and_b32_e32 v45, 0xf0, v169
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s17, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v42, 32, v42
	v_lshl_add_u32 v43, v45, 2, 0
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s68, s16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s80, 7, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v46, v43, v42, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(1)
	v_add_co_u32 v42, s0, s78, v170
	v_add_co_ci_u32_e64 v43, null, s79, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v42
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 16, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s1, s78, v42
	v_add_co_ci_u32_e64 v43, null, s79, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v44, 1, v42
	s_mov_b32 s0, 0x76543210
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[76:77], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 32, v170
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v42, s4, s78, v42
	v_add_co_ci_u32_e64 v43, null, s79, 0, s4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v48, 1, v42
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[76:77], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 48, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s6, s78, v42
	v_add_co_ci_u32_e64 v43, null, s79, 0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[76:77], v[42:43]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_lshl_or_b32 v43, s80, 8, v169
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_add_nc_u32_e32 v47, v43, v41
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v41, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v48, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[68:71], 0 offen
	buffer_load_u16 v41, v41, s[68:71], 0 offen
	buffer_load_u16 v48, v43, s[68:71], 0 offen
	buffer_load_u16 v49, v42, s[68:71], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s69, s19, 0xffff
	s_mov_b32 s68, s18
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v49
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_lshlrev_b32_e32 v42, 1, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v162, v43
	v_dual_mul_f32 v56, v161, v43 :: v_dual_mul_f32 v117, v111, v41
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v42, v42, s[68:71], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v53, v164, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v16, v16, v43
	v_mul_f32_e32 v79, v79, v43
	v_mul_f32_e32 v13, v13, v43
	v_mul_f32_e32 v15, v15, v43
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v5, v5, v43 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v46, v42
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 16, v48
	v_lshlrev_b32_e32 v44, 16, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v63, v157, v42 :: v_dual_mul_f32 v48, v168, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v45, v45, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v50, v165, v44
	v_mul_f32_e32 v0, v114, v41
	v_mul_f32_e32 v115, v113, v41
	v_mul_f32_e32 v116, v112, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[111:114], v45
	ds_load_b128 v[123:126], v45 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v49, v167, v44
	v_dual_mul_f32 v51, v166, v44 :: v_dual_mul_f32 v54, v163, v43
	v_mul_f32_e32 v107, v107, v41
	v_mul_f32_e32 v110, v110, v41
	v_mul_f32_e32 v108, v108, v41
	v_mul_f32_e32 v95, v95, v41
	v_mul_f32_e32 v106, v106, v41
	v_mul_f32_e32 v130, v130, v44
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v90, v90, v44 :: v_dual_mul_f32 v39, v39, v41
	v_dual_mul_f32 v35, v35, v41 :: v_dual_mul_f32 v88, v88, v43
	v_mul_f32_e32 v71, v71, v44
	v_mul_f32_e32 v70, v70, v44
	v_mul_f32_e32 v67, v67, v44
	v_dual_mul_f32 v33, v33, v41 :: v_dual_mul_f32 v68, v68, v44
	v_mul_f32_e32 v1, v1, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v59, v49, v114
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v58, v160, v42 :: v_dual_mul_f32 v49, v63, v111
	v_mul_f32_e32 v60, v159, v42
	v_dual_mul_f32 v62, v158, v42 :: v_dual_mul_f32 v63, v143, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v50, v50, v111 :: v_dual_mul_f32 v127, v156, v42
	v_mul_f32_e32 v52, v51, v112
	v_dual_mul_f32 v118, v48, v113 :: v_dual_mul_f32 v55, v55, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v57, v56, v111 :: v_dual_mul_f32 v56, v62, v112
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v143, v153, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v51, v116, v112
	v_dual_mul_f32 v61, v54, v114 :: v_dual_mul_f32 v112, v151, v43
	v_dual_mul_f32 v48, v117, v111 :: v_dual_mul_f32 v111, v142, v44
	v_dual_mul_f32 v64, v53, v113 :: v_dual_mul_f32 v53, v144, v44
	v_mul_f32_e32 v60, v60, v114
	v_dual_mul_f32 v54, v115, v114 :: v_dual_mul_f32 v115, v149, v43
	v_mul_f32_e32 v62, v58, v113
	v_mul_f32_e32 v58, v0, v113
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v145, v44 :: v_dual_mul_f32 v113, v150, v43
	v_dual_mul_f32 v114, v148, v43 :: v_dual_mul_f32 v149, v105, v42
	v_mul_f32_e32 v142, v154, v42
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v144, v109, v41 :: v_dual_mul_f32 v119, v111, v123
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v120, v63, v124 :: v_dual_mul_f32 v105, v104, v42
	v_dual_mul_f32 v116, v113, v125 :: v_dual_mul_f32 v109, v143, v123
	v_mul_f32_e32 v113, v127, v126
	v_dual_mul_f32 v122, v0, v126 :: v_dual_mul_f32 v63, v107, v123
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v146, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v114, v114, v123
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v123, v147, v43
	v_dual_mul_f32 v147, v137, v43 :: v_dual_mul_f32 v128, v155, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v107, v108, v124
	v_mul_f32_e32 v121, v53, v125
	v_mul_f32_e32 v115, v115, v124
	v_mul_f32_e32 v111, v142, v124
	v_mul_f32_e32 v117, v112, v126
	v_mul_f32_e32 v112, v128, v125
	v_mul_f32_e32 v108, v144, v125
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v124, v141, v44
	v_dual_mul_f32 v125, v140, v44 :: v_dual_mul_f32 v110, v110, v126
	v_mul_f32_e32 v126, v139, v44
	v_mul_f32_e32 v146, v138, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[138:141], v45 offset:512
	ds_load_b128 v[142:145], v45 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v128, v152, v42
	v_dual_mul_f32 v148, v136, v43 :: v_dual_mul_f32 v99, v99, v42
	v_mul_f32_e32 v104, v103, v42
	v_mul_f32_e32 v94, v94, v41
	v_dual_mul_f32 v96, v96, v41 :: v_dual_mul_f32 v97, v97, v42
	v_dual_mul_f32 v134, v134, v43 :: v_dual_mul_f32 v83, v83, v42
	v_mul_f32_e32 v98, v98, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v36, v36, v42 :: v_dual_mul_f32 v151, v31, v41
	v_mul_f32_e32 v27, v27, v42
	v_mul_f32_e32 v29, v29, v42
	v_mul_f32_e32 v11, v11, v42
	v_mul_f32_e32 v28, v28, v42
	v_mul_f32_e32 v26, v26, v42
	v_mul_f32_e32 v2, v2, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v127, v123, v138
	v_mul_f32_e32 v105, v105, v140
	v_mul_f32_e32 v123, v128, v138
	v_mul_f32_e32 v53, v0, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v132, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v136, v126, v139 :: v_dual_mul_f32 v137, v125, v140
	v_dual_mul_f32 v125, v147, v140 :: v_dual_mul_f32 v104, v104, v139
	v_mul_f32_e32 v95, v95, v140
	v_dual_mul_f32 v103, v106, v138 :: v_dual_mul_f32 v138, v124, v141
	v_mul_f32_e32 v124, v148, v139
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v128, v131, v44
	v_dual_mul_f32 v140, v101, v41 :: v_dual_mul_f32 v147, v76, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v94, v94, v139 :: v_dual_mul_f32 v139, v129, v44
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v126, v146, v141 :: v_dual_mul_f32 v131, v0, v143
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v47, s72, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v106, v149, v141 :: v_dual_mul_f32 v99, v99, v143
	v_dual_mul_f32 v96, v96, v141 :: v_dual_mul_f32 v47, v91, v44
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[68:71], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v129, v135, v43
	v_dual_mul_f32 v135, v133, v43 :: v_dual_mul_f32 v102, v102, v41
	v_dual_mul_f32 v141, v100, v41 :: v_dual_mul_f32 v146, v77, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v91, v89, v43 :: v_dual_mul_f32 v74, v74, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v100, v98, v144 :: v_dual_mul_f32 v101, v97, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v76, v102, v143 :: v_dual_mul_f32 v77, v140, v144
	v_dual_mul_f32 v97, v141, v145 :: v_dual_mul_f32 v102, v146, v142
	v_mul_f32_e32 v98, v147, v142
	v_mul_f32_e32 v74, v74, v142
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v147, v87, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v133, v130, v145
	v_dual_mul_f32 v130, v135, v145 :: v_dual_mul_f32 v149, v84, v42
	v_mul_f32_e32 v132, v128, v144
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s72, s68
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s73, s68, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v46, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v93, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v128, v129, v143 :: v_dual_mul_f32 v129, v134, v144
	v_mul_f32_e32 v134, v139, v142
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[139:142], v45
	ds_load_b128 v[143:146], v45 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v46, v92, v44
	v_mul_f32_e32 v86, v86, v43
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v150, v32, v41 :: v_dual_mul_f32 v93, v47, v140
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v89, v0, v141
	v_dual_mul_f32 v47, v36, v142 :: v_dual_mul_f32 v0, v73, v44
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v34, v34, v41
	v_mul_f32_e32 v36, v72, v44
	v_mul_f32_e32 v72, v81, v43
	v_dual_mul_f32 v148, v85, v42 :: v_dual_mul_f32 v135, v90, v139
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v87, v91, v139
	v_mul_f32_e32 v83, v83, v141
	v_mul_f32_e32 v31, v35, v139
	v_mul_f32_e32 v35, v151, v141
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v73, v80, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v81, v71, v144 :: v_dual_mul_f32 v86, v86, v141
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v141, v37, v41 :: v_dual_mul_f32 v88, v88, v140
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v91, v0, v146 :: v_dual_mul_f32 v32, v34, v140
	v_mul_f32_e32 v71, v72, v143
	v_mul_f32_e32 v84, v148, v139
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v139, v40, v41 :: v_dual_mul_f32 v92, v46, v142
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v46, v149, v140
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v140, v38, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v40, v29, v144 :: v_dual_mul_f32 v29, v39, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v39, v69, v44
	v_mul_f32_e32 v69, v82, v43
	v_mul_f32_e32 v30, v30, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v85, v147, v142 :: v_dual_mul_f32 v80, v70, v143
	v_dual_mul_f32 v72, v73, v144 :: v_dual_mul_f32 v73, v79, v145
	v_mul_f32_e32 v37, v27, v146
	v_dual_mul_f32 v34, v150, v142 :: v_dual_mul_f32 v27, v139, v143
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v82, v10, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v90, v36, v145
	v_mul_f32_e32 v36, v28, v145
	v_mul_f32_e32 v28, v140, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v144, v8, v41
	v_dual_mul_f32 v145, v7, v41 :: v_dual_mul_f32 v38, v30, v143
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v30, v141, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v143, v9, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[7:10], v45 offset:512
	ds_load_b128 v[139:142], v45 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v78, v78, v43
	v_mul_f32_e32 v0, v75, v44
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v75, v68, v8 :: v_dual_mul_f32 v70, v78, v146
	v_mul_f32_e32 v79, v67, v10
	v_mul_f32_e32 v45, v16, v8
	v_dual_mul_f32 v67, v15, v9 :: v_dual_mul_f32 v68, v13, v10
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v13, v14, v44 :: v_dual_mul_f32 v14, v19, v43
	v_mul_f32_e32 v15, v18, v43
	v_dual_mul_f32 v16, v17, v43 :: v_dual_mul_f32 v17, v22, v42
	v_mul_f32_e32 v18, v21, v42
	v_mul_f32_e32 v19, v20, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v0, v0, v7
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v21, v24, v41 :: v_dual_mul_f32 v146, v26, v7
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v26, v11, v9 :: v_dual_mul_f32 v1, v1, v139
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v11, v65, v44 :: v_dual_mul_f32 v22, v23, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v19, v19, v142
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v12, v12, v42 :: v_dual_mul_f32 v15, v15, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v23, v11, v141
	v_dual_mul_f32 v11, v2, v139 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v0
	v_mul_f32_e32 v69, v69, v7
	v_dual_mul_f32 v147, v33, v7 :: v_dual_mul_f32 v12, v12, v8
	v_mul_f32_e32 v7, v143, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v20, v25, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v78, v39, v9 :: v_dual_mul_f32 v13, v13, v142
	v_mul_f32_e32 v8, v144, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v9, v145, v10
	v_mul_f32_e32 v17, v17, v140
	v_mul_f32_e32 v33, v82, v10
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v10, v66, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v66, v5, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v6, v6, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v25, v20, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v41, v21, v141 :: v_dual_mul_f32 v42, v22, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v6, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v5, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v6, v5
	v_fma_f32 v20, -v5, v6, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, v20, v6
	v_div_scale_f32 v20, vcc_lo, v0, v2, v0
	v_dual_mul_f32 v21, v20, v6 :: v_dual_mul_f32 v10, v10, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v5, v21, v20
	v_fmac_f32_e32 v21, v22, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v21, v20
	v_div_fmas_f32 v5, v5, v6, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v5, v2, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v0, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v53, v53, v2
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v6, v6, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v10, v6, v10
	v_mul_f32_e32 v24, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v20, v24, v22
	v_fmac_f32_e32 v24, v39, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v24, v22
	v_div_fmas_f32 v20, v20, v21, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v21, v21, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v22
	v_fma_f32 v39, -v22, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v39, v24
	v_div_scale_f32 v39, vcc_lo, v23, v21, v23
	v_mul_f32_e32 v43, v39, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v22, v43, v39
	v_fmac_f32_e32 v43, v44, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v43, v39
	v_div_fmas_f32 v22, v22, v24, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v13
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v5
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v5, null, v0, v0, v13
	v_rcp_f32_e32 v24, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v5, v24, 1.0
	v_fmac_f32_e32 v24, v39, v24
	v_div_scale_f32 v39, vcc_lo, v13, v0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v16, v16, v142 :: v_dual_mul_f32 v43, v39, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v5, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v24
	v_fma_f32 v5, -v5, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v24, v5, v24, v43
	v_div_fixup_f32 v5, v20, v6, v10
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v69
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v10
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v20, v20, v69
	v_rcp_f32_e32 v10, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v6, v10, 1.0
	v_fmac_f32_e32 v10, v39, v10
	v_div_scale_f32 v39, vcc_lo, v69, v20, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v14, v14, v140 :: v_dual_mul_f32 v43, v39, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v6, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v18, v18, v141 :: v_dual_fmac_f32 v43, v44, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v6, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v6, v10, v43
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v10, 0xbfb8aa3b, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v22, v21, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v132, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v21, v21, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v10
	v_fma_f32 v23, -v10, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v14, v21, v14
	v_mul_f32_e32 v43, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v10, v43, v23
	v_fmac_f32_e32 v43, v44, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v43, v23
	v_div_fmas_f32 v22, v10, v22, v43
	v_div_fixup_f32 v10, v24, v0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v14, v22, v21, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v146
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v15
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v13
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v0, v0, v15
	v_rcp_f32_e32 v23, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v13, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v24, v23
	v_fma_f32 v44, -v13, v43, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v23
	v_fma_f32 v13, -v13, v43, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v13, v23, v43
	v_div_fixup_f32 v13, v39, v20, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v23, v0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v20, v20, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v24
	v_fma_f32 v43, -v24, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, vcc_lo, v16, v20, v16
	v_mul_f32_e32 v44, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v24, v44, v43
	v_fmac_f32_e32 v44, v65, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v44, v43
	v_div_fmas_f32 v24, v24, v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v24, v20, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v20, 0xbfb8aa3b, v18
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v21, v21, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v22
	v_fma_f32 v43, -v22, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, vcc_lo, v146, v21, v146
	v_mul_f32_e32 v44, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v22, v44, v43
	v_fmac_f32_e32 v44, v65, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v44, v43
	v_div_fmas_f32 v22, v22, v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v17
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v0, v0, v17
	v_rcp_f32_e32 v39, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v23, v39, 1.0
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, vcc_lo, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v39
	v_fma_f32 v65, -v23, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v65, v39
	v_fma_f32 v23, -v23, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v24, v24, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v20
	v_fma_f32 v43, -v20, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, vcc_lo, v18, v24, v18
	v_mul_f32_e32 v44, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v20, v44, v43
	v_fmac_f32_e32 v44, v65, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v44, v43
	v_div_fmas_f32 v39, v20, v39, v44
	v_div_fixup_f32 v20, v22, v21, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v43, v43, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v44, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v44, v22
	v_div_scale_f32 v44, vcc_lo, v19, v43, v19
	v_mul_f32_e32 v65, v44, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v21, v65, v44
	v_fmac_f32_e32 v65, v69, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v65, v44
	v_div_fmas_f32 v44, v21, v22, v65
	v_div_fixup_f32 v21, v23, v0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v0, v0, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v17
	v_fma_f32 v23, -v17, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v147, v0, v147
	v_mul_f32_e32 v65, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v17, v65, v23
	v_fmac_f32_e32 v65, v69, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v65, v23
	v_div_fmas_f32 v17, v17, v22, v65
	v_div_fixup_f32 v22, v39, v24, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v18, v18, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v39, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v39, v24
	v_div_scale_f32 v39, vcc_lo, v25, v18, v25
	v_mul_f32_e32 v65, v39, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v23, v65, v39
	v_fmac_f32_e32 v65, v69, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v65, v39
	v_div_fmas_f32 v39, v23, v24, v65
	v_div_fixup_f32 v23, v44, v43, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v39, v18, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v135
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v41
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v19, v19, v41
	v_rcp_f32_e32 v43, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v24, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v41, v19, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v44, v43
	v_fma_f32 v69, -v24, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v69, v43
	v_fma_f32 v24, -v24, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v43, v24, v43, v65
	v_div_fixup_f32 v24, v17, v0, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v43, v19, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v0, v0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v17
	v_fma_f32 v65, -v17, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v42, v0, v42
	v_mul_f32_e32 v69, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v17, v69, v65
	v_fmac_f32_e32 v69, v139, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v69, v65
	v_div_fmas_f32 v17, v17, v44, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v135
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v18, v18, v135
	v_rcp_f32_e32 v44, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v25, v44, 1.0
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v135, v18, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v65, v44
	v_fma_f32 v139, -v25, v69, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v139, v44
	v_fma_f32 v25, -v25, v69, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v44, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v19, v19, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v65, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v93, v19, v93
	v_mul_f32_e32 v69, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v43, v69, v65
	v_fmac_f32_e32 v69, v139, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v69, v65
	v_div_fmas_f32 v44, v43, v44, v69
	v_div_fixup_f32 v43, v17, v0, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v0, v0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v17
	v_fma_f32 v65, -v17, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v92, v0, v92
	v_mul_f32_e32 v69, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v17, v69, v65
	v_fmac_f32_e32 v69, v139, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v69, v65
	v_div_fmas_f32 v42, v17, v42, v69
	v_div_fixup_f32 v17, v25, v18, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v25, v25, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v18
	v_fma_f32 v69, -v18, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v69, v65
	v_div_scale_f32 v69, vcc_lo, v89, v25, v89
	v_mul_f32_e32 v135, v69, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v18, v135, v69
	v_fmac_f32_e32 v135, v139, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v135, v69
	v_div_fmas_f32 v65, v18, v65, v135
	v_div_fixup_f32 v18, v44, v19, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v69, v69, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v19
	v_fma_f32 v93, -v19, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v93, v44
	v_div_scale_f32 v93, vcc_lo, v80, v69, v80
	v_mul_f32_e32 v135, v93, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v19, v135, v93
	v_fmac_f32_e32 v135, v139, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v135, v93
	v_div_fmas_f32 v93, v19, v44, v135
	v_div_fixup_f32 v19, v42, v0, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v0, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v92, -v42, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v92, v44
	v_div_scale_f32 v92, vcc_lo, v81, v0, v81
	v_mul_f32_e32 v135, v92, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v42, v135, v92
	v_fmac_f32_e32 v135, v139, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v135, v92
	v_div_fmas_f32 v42, v42, v44, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v44, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v75
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v90
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v92, v92, v90
	v_rcp_f32_e32 v135, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v44, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v90, v92, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v135
	v_fma_f32 v141, -v44, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v135
	v_fma_f32 v44, -v44, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v135, v44, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v44, 0xbfb8aa3b, v91
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v91
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v139, v139, v91
	v_rcp_f32_e32 v140, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v44, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v91, v139, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v44, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v44, -v44, v142, v141
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v140, v44, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v65, v25, v89
	v_div_fixup_f32 v25, v93, v69, v80
	v_div_fixup_f32 v65, v135, v92, v90
	v_div_fixup_f32 v69, v140, v139, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v75
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v0, v0, v75
	v_rcp_f32_e32 v81, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v80, v81, 1.0
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, vcc_lo, v75, v0, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v81
	v_fma_f32 v91, -v80, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v81
	v_fma_f32 v80, -v80, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v81, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v80, v0, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_mul_f32_e32 v0, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v89, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v89, null, v81, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v78, v81, v78
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v79
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v0, v0, v79
	v_rcp_f32_e32 v90, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v80, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v79, v0, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v80, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v80, -v80, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v90, v80, v90, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v80, 0xbfb8aa3b, v82
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v82
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v91, v91, v82
	v_rcp_f32_e32 v92, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v80, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v82, v91, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v93, v92
	v_fma_f32 v139, -v80, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v92
	v_fma_f32 v80, -v80, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v80, v92, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v80, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v82, v92, v91, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v80, v80, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v93, v93, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v80
	v_fma_f32 v139, -v80, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v87, v93, v87
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v80, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v80, v140, v139
	v_div_fmas_f32 v135, v80, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v80, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v80, v80, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v139, v139, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v80
	v_fma_f32 v141, -v80, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v88, v139, v88
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v80, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v80, v142, v141
	v_div_fmas_f32 v140, v80, v140, v142
	v_div_fixup_f32 v80, v89, v81, v78
	v_div_fixup_f32 v81, v90, v0, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v135, v93, v87
	v_div_fixup_f32 v79, v140, v139, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v55, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v85
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v0, v0, v85
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v85, v0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v87, v0, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_mul_f32_e32 v0, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v89, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v88, v88, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v88, 1.0, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v89, null, v88, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v86, v88, v86
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v90, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v89, v88, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v71
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v90, v90, v71
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v71, v90, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v93, v92
	v_fma_f32 v139, -v91, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v92
	v_fma_f32 v91, -v91, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v71, v91, v90, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v92, v92
	v_ldexp_f32 v92, v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v93
	v_fma_f32 v139, -v93, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v72, v92, v72
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v93, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v93, v140, v139
	v_div_fmas_f32 v93, v93, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v72, v93, v92, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v73
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v135, v135, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v73
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v73, v135, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v139, v135, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v70
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v0, v0, v70
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v70, v0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v87, v88, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v89, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v45
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v89, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v89, v89, v45
	v_rcp_f32_e32 v90, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v88, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v45, v89, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v88, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v88, -v88, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v88, v90, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v90, v89, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v88, v88, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v91, v91, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v88
	v_fma_f32 v93, -v88, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v67, v91, v67
	v_mul_f32_e32 v135, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v88, v135, v93
	v_fmac_f32_e32 v135, v139, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v135, v93
	v_div_fmas_f32 v92, v88, v92, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v88, v88, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v93, v93, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v88
	v_fma_f32 v139, -v88, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v68, v93, v68
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v88, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v140, v139
	v_div_fmas_f32 v135, v88, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v88, v88, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v139, v139, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v88
	v_fma_f32 v141, -v88, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v66, v139, v66
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v88, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v142, v141
	v_div_fmas_f32 v140, v88, v140, v142
	v_div_fixup_f32 v88, v87, v0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v70, v92, v91, v67
	v_div_fixup_f32 v87, v135, v93, v68
	v_div_fixup_f32 v89, v140, v139, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v0, v0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v84, v0, v84
	v_mul_f32_e32 v90, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v66, v90, v68
	v_fmac_f32_e32 v90, v91, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v90, v68
	v_div_fmas_f32 v66, v66, v67, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v66, v0, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_mul_f32_e32 v0, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v46
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v46
	v_rcp_f32_e32 v90, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v68, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v46, v67, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v68, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v68, -v68, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v68, v90, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v68, v67, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v56, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v76, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v0, v0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v66
	v_fma_f32 v91, -v66, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v47, v0, v47
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v66, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v92, v91
	v_div_fmas_f32 v66, v66, v90, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v90, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v66, v0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v83
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v90, v90, v83
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v83, v90, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v93, v92
	v_fma_f32 v139, -v91, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v92
	v_fma_f32 v91, -v91, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v91, v90, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v92, v92
	v_ldexp_f32 v92, v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v93
	v_fma_f32 v139, -v93, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v38, v92, v38
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v93, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v93, v140, v139
	v_div_fmas_f32 v93, v93, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v90, v93, v92, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_mul_f32_e32 v38, 0xbfb8aa3b, v36
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
	v_div_fixup_f32 v91, v139, v135, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v36
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v38, v38, v36
	v_rcp_f32_e32 v47, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v40, v47, 1.0
	v_fmac_f32_e32 v47, v66, v47
	v_div_scale_f32 v66, vcc_lo, v36, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v47
	v_fma_f32 v68, -v40, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v47
	v_fma_f32 v40, -v40, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v47, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v47, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v37
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v47, v47, v37
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v37, v47, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v68, v67
	v_fma_f32 v93, -v66, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v67
	v_fma_f32 v66, -v66, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v67, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v12
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v12
	v_rcp_f32_e32 v92, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v68, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v12, v67, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v93, v92
	v_fma_f32 v139, -v68, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v92
	v_fma_f32 v68, -v68, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v92, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v26
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v26
	v_rcp_f32_e32 v135, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v93, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v26, v92, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v135
	v_fma_f32 v141, -v93, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v135
	v_fma_f32 v93, -v93, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v93, v93, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v92, v93, v92, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v135, v135, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v139
	v_fma_f32 v141, -v139, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v33, v135, v33
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v139, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v139, -v139, v142, v141
	v_div_fixup_f32 v141, v66, v47, v37
	v_div_fmas_f32 v139, v139, v140, v142
	v_div_fixup_f32 v142, v68, v67, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v140, v40, v38, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v139, v135, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v106, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v33
	v_fma_f32 v37, -v33, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v11, v12, v11
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v33, v38, v37
	v_fmac_f32_e32 v38, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v38, v37
	v_div_fmas_f32 v33, v33, v36, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v36, v36, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v40, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, vcc_lo, v31, v36, v31
	v_mul_f32_e32 v47, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v37, v47, v40
	v_fmac_f32_e32 v47, v66, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v47, v40
	v_div_fmas_f32 v37, v37, v38, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v38, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v37, v36, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v32
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v38, v38, v32
	v_rcp_f32_e32 v47, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v40, v47, 1.0
	v_fmac_f32_e32 v47, v66, v47
	v_div_scale_f32 v66, vcc_lo, v32, v38, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v47
	v_fma_f32 v68, -v40, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v47
	v_fma_f32 v40, -v40, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v47, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v47, 0xbfb8aa3b, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v40, v38, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v47, v47, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v47, v47, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v34, v47, v34
	v_mul_f32_e32 v93, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v66, v93, v68
	v_fmac_f32_e32 v93, v135, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v93, v68
	v_div_fmas_f32 v66, v66, v67, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v68
	v_fma_f32 v135, -v68, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v135, v93
	v_div_scale_f32 v135, vcc_lo, v35, v67, v35
	v_mul_f32_e32 v139, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v68, v139, v135
	v_fmac_f32_e32 v139, v143, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v68, -v68, v139, v135
	v_div_fixup_f32 v135, v66, v47, v34
	v_div_fmas_f32 v68, v68, v93, v139
	v_div_fixup_f32 v93, v33, v12, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v139, v68, v67, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v27
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v11, v11, v27
	v_rcp_f32_e32 v33, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v12, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v27, v11, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v12, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v12, -v12, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v12, v33, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v33, v33, v28
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v34, v35, 1.0
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v28, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v35
	v_fma_f32 v38, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v35
	v_fma_f32 v34, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v29
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v35, v35, v29
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v29, v35, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v38, v37
	v_fma_f32 v47, -v36, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v47, v37
	v_fma_f32 v36, -v36, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v37, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v30
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v37, v37, v30
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v38, v40, 1.0
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, vcc_lo, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v47, v40
	v_fma_f32 v67, -v38, v66, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v40
	v_fma_f32 v38, -v38, v66, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v40, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v40, 0xbfb8aa3b, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v38, v37, v30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v37, v128, v14 :: v_dual_mul_f32 v14, v130, v16
	v_mul_f32_e32 v16, v117, v88
	v_mul_f32_e32 v38, v62, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v51, v32
	v_mul_f32_e32 v30, v110, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v7
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v40, v40, v7
	v_rcp_f32_e32 v66, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v47, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v7, v40, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v143, -v47, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v143, v66
	v_fma_f32 v47, -v47, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v47, v47, v66, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v8
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v66, v66, v8
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v143, v68
	v_div_scale_f32 v143, vcc_lo, v8, v66, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v143, v68
	v_fma_f32 v145, -v67, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v68
	v_fma_f32 v67, -v67, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v68, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v9
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v143, null, v68, v68, v9
	v_rcp_f32_e32 v144, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v143, v144, 1.0
	v_fmac_f32_e32 v144, v145, v144
	v_div_scale_f32 v145, vcc_lo, v9, v68, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v146, v145, v144
	v_fma_f32 v147, -v143, v146, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v147, v144
	v_fma_f32 v143, -v143, v146, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v143, v143, v144, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v144, 0xbfb8aa3b, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v143, v143, v68, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v9, v122, v69 :: v_dual_mul_f32 v68, v57, v78
	v_mul_f32_e32 v57, v102, v89
	v_mul_f32_e32 v69, v109, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v144, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v1
	v_exp_f32_e32 v144, v144
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v144, v144, v145
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v144, 1.0, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v145, null, v144, v144, v1
	v_rcp_f32_e32 v146, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v145, v146, 1.0
	v_fmac_f32_e32 v146, v147, v146
	v_div_scale_f32 v147, vcc_lo, v1, v144, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v148, v147, v146
	v_fma_f32 v149, -v145, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v149, v146
	v_fma_f32 v145, -v145, v148, v147
	v_div_fixup_f32 v147, v34, v33, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v131, v5
	v_mul_f32_e32 v34, v64, v86
	v_mul_f32_e32 v33, v116, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v145, v145, v146, v148
	v_div_fixup_f32 v146, v12, v11, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v121, v65
	v_mul_f32_e32 v65, v119, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v36, v35, v29
	v_div_fixup_f32 v1, v145, v144, v1
	v_div_fixup_f32 v144, v67, v66, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v50, v17
	v_mul_f32_e32 v50, v52, v18
	v_mul_f32_e32 v8, v59, v19
	v_mul_f32_e32 v18, v118, v44
	v_mul_f32_e32 v44, v120, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v47, v40, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v133, v10
	v_mul_f32_e32 v52, v134, v82
	v_dual_mul_f32 v10, v138, v81 :: v_dual_mul_f32 v11, v137, v80
	v_mul_f32_e32 v36, v136, v75
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v66|, |v50|
	v_max3_f32 v5, |v8|, |v65|, |v44|
	v_max3_f32 v17, |v52|, |v28|, |v6|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v127, v13
	v_mul_f32_e32 v13, v129, v15
	v_mul_f32_e32 v15, v61, v85
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, |v18|, v5
	v_max3_f32 v5, |v36|, |v11|, |v10|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v115, v72
	v_mul_f32_e32 v67, v114, v71
	v_dual_mul_f32 v19, v125, v70 :: v_dual_mul_f32 v42, v124, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v17, |v7|
	v_max3_f32 v17, |v12|, |v9|, |v53|
	v_max3_f32 v25, |v15|, |v67|, |v47|
	v_max3_f32 v27, |v57|, |v37|, |v13|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v99, v21 :: v_dual_mul_f32 v21, v100, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, v17, v5
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v126, v87
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v68|, |v55|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v22, v101, v23 :: v_dual_mul_f32 v23, v60, v0
	v_dual_mul_f32 v70, v49, v84 :: v_dual_mul_f32 v49, v111, v91
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v34|, v25
	v_max3_f32 v25, |v42|, |v19|, |v17|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v123, v20 :: v_dual_mul_f32 v60, v98, v93
	v_mul_f32_e32 v45, v104, v142
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v70|, |v56|
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v25, v25, v27, |v14|
	v_max3_f32 v27, |v33|, |v16|, |v59|
	v_max3_f32 v20, |v23|, |v69|, |v49|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v112, v140
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v60|, |v40|, |v21|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v48, v31
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v27, v25
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v105, v92
	v_mul_f32_e32 v25, v113, v141
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, |v38|, v20
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v107, v147
	v_mul_f32_e32 v71, v63, v146
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, |v45|, |v27|, |v26|
.Ltmp26:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v103, v24
	v_mul_f32_e32 v24, v77, v41
	v_mul_f32_e32 v63, v74, v1
	v_mul_f32_e32 v31, v96, v143
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, v29, |v22|
	v_max3_f32 v29, |v35|, |v25|, |v61|
.Ltmp28:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v95, v144
	v_mul_f32_e32 v48, v94, v145
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v72|, |v62|
.Ltmp30:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v108, v148
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, v29, v20
.Ltmp32:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v54, v135
	v_mul_f32_e32 v20, v97, v43
	v_mul_f32_e32 v43, v58, v139
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v54, |v63|, |v46|, |v24|
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v58, 1, v171
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v41, |v29|, |v71|, |v51|
.Ltmp36:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v91.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v1, |v43|, v41
	v_max3_f32 v41, |v48|, |v32|, |v31|
	v_max3_f32 v41, v41, v54, |v20|
	v_max3_f32 v54, |v39|, |v30|, |v64|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v1, v1, v54, v41
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v41, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v73, v2, v41
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v5, v54 :: v_dual_and_b32 v5, 8, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v2, v2 :: v_dual_and_b32 v41, 0x60, v169
	v_max_f32_e32 v75, v0, v2
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v76, v1, v0
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v169
	v_and_b32_e32 v1, 4, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v2, v0, 9, 0
	v_lshlrev_b32_e32 v54, 5, v0
	v_lshl_add_u32 v2, v1, 2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v77, v54, v41
	v_lshl_add_u32 v2, v5, 4, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v2, v58, v77
	v_lshl_add_u32 v58, v1, 6, 0
	ds_store_b128 v2, v[73:76]
	v_lshlrev_b32_e32 v74, 4, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_or_b32 v2, 0x680, v74, v54
	v_lshrrev_b32_e32 v54, 3, v171
	v_xor_b32_e32 v2, v2, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v58, v54, v2
	ds_load_b128 v[75:78], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v54, v75
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v75, v75 :: v_dual_mov_b32 v58, v76
	v_dual_max_f32 v76, v76, v76 :: v_dual_mov_b32 v73, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v78, v78
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v54, v54
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v54, v75, v54
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v58, v76, v58 :: v_dual_mov_b32 v75, v54
	v_max_f32_e32 v2, v2, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v54, v54, v75
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v58
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v58, v58, v75
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v76, v58
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v75, v75 :: v_dual_max_f32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v75, v54, v75 :: v_dual_max_f32 v54, v73, v73
	v_max_f32_e32 v76, v58, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v54, v77, v54
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v54, v54, v58
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v77, v54, v58
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v54, v2
	v_lshlrev_b32_e32 v58, 4, v0
	v_lshlrev_b32_e32 v0, 5, v1
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v58
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v54
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v78, v2, v54
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 3, v5
	v_lshrrev_b32_e32 v5, 1, v41
	v_add_nc_u32_e32 v54, 0, v171
	v_add3_u32 v0, v1, v0, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v5, v54, v5, v2
	ds_store_b128 v5, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v0
.Ltmp69:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v75, v75
	v_dual_max_f32 v2, v76, v76 :: v_dual_max_f32 v1, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, v78, v78 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v54, null, 0x40e00000, 0x40e00000, v0
	v_rcp_f32_e32 v73, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v54, v73, 1.0
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v73
	v_fma_f32 v77, -v54, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v73
	v_fma_f32 v54, -v54, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v54, v73, v76
	v_div_scale_f32 v54, null, 0x40e00000, 0x40e00000, v1
	v_div_fixup_f32 v0, v73, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v54
	v_fma_f32 v76, -v54, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v54, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v54, v77, v76
	v_div_fmas_f32 v75, v54, v75, v77
	v_max_f32_e32 v54, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v75, 0x40e00000, v1
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v91.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v76, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v2, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v54, 0x40e00000, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v2, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v2, -v2, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v2, v76, v78
	v_max_f32_e32 v2, 0x2b8cbccc, v5
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v5
	v_fma_f32 v77, -v5, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v5, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v78, v77
	v_div_fmas_f32 v5, v5, v76, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v5, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v91
	v_mov_b16_e32 v91.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v5, 0x7fff
	v_and_b32_e32 v5, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v5, 0x7fff
	v_mov_b16_e32 v5.l, v0.h
	v_mov_b16_e32 v5.h, v91.h
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v73, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v73, v73, v66
	v_rcp_f32_e32 v75, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v0, v75, 1.0
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v66, v73, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v75
	v_fma_f32 v78, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v75
	v_fma_f32 v0, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v0, v75, v77
	v_div_scale_f32 v0, null, v73, v73, v50
	v_rcp_f32_e32 v75, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v0, v75, 1.0
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v50, v73, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v75
	v_fma_f32 v78, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v75
	v_fma_f32 v0, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v79, v0, v75, v77
	v_div_scale_f32 v0, null, v73, v73, v18
	v_rcp_f32_e32 v75, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v0, v75, 1.0
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v18, v73, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v75
	v_fma_f32 v78, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v75
	v_fma_f32 v0, -v0, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v76, v0, v75, v77
	v_div_scale_f32 v0, null, v73, v73, v8
	v_rcp_f32_e32 v75, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v0, v75, 1.0
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, vcc_lo, v8, v73, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v75
	v_fma_f32 v80, -v0, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v80, v75
	v_fma_f32 v0, -v0, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v75, v0, v75, v78
	v_div_scale_f32 v0, null, v73, v73, v65
	v_rcp_f32_e32 v77, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v0, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v65, v73, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v78, v77
	v_fma_f32 v81, -v0, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v77
	v_fma_f32 v0, -v0, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v0, v77, v80
	v_div_scale_f32 v0, null, v73, v73, v44
	v_div_fixup_f32 v65, v90, v73, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v77, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v65, v65, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v0, v77, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v44, v73, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v80, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v0, v80, v78
	v_fmac_f32_e32 v80, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v80, v78
	v_div_fmas_f32 v81, v0, v77, v80
	v_div_scale_f32 v0, null, v73, v73, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v0
	v_fma_f32 v78, -v0, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v12, v73, v12
	v_mul_f32_e32 v80, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v0, v80, v78
	v_fmac_f32_e32 v80, v82, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v80, v78
	v_div_fmas_f32 v78, v0, v77, v80
	v_div_scale_f32 v0, null, v73, v73, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v0
	v_fma_f32 v80, -v0, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, vcc_lo, v9, v73, v9
	v_mul_f32_e32 v82, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, v80
	v_fmac_f32_e32 v82, v83, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v82, v80
	v_div_fmas_f32 v77, v0, v77, v82
	v_div_scale_f32 v0, null, v73, v73, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v9, v77, v73, v9
	v_rcp_f32_e32 v80, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v80, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, vcc_lo, v53, v73, v53
	v_mul_f32_e32 v83, v82, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, v82
	v_fmac_f32_e32 v83, v84, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v83, v82
	v_div_fmas_f32 v89, v0, v80, v83
	v_div_scale_f32 v0, null, v73, v73, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v53, v89, v73, v53
	v_rcp_f32_e32 v80, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v53, v53, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v80, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, vcc_lo, v36, v73, v36
	v_mul_f32_e32 v83, v82, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, v82
	v_fmac_f32_e32 v83, v84, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v83, v82
	v_div_fmas_f32 v83, v0, v80, v83
	v_div_scale_f32 v0, null, v73, v73, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v0
	v_fma_f32 v82, -v0, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, vcc_lo, v11, v73, v11
	v_mul_f32_e32 v84, v82, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v84, v82
	v_fmac_f32_e32 v84, v86, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v84, v82
	v_div_fmas_f32 v80, v0, v80, v84
	v_div_scale_f32 v0, null, v73, v73, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v80, v73, v11
	v_rcp_f32_e32 v82, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v0, v82, 1.0
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, vcc_lo, v10, v73, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v84, v82
	v_fma_f32 v88, -v0, v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v88, v82
	v_fma_f32 v0, -v0, v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v82, v0, v82, v86
	v_div_scale_f32 v0, null, v73, v73, v52
	v_rcp_f32_e32 v84, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v84, 1.0
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, vcc_lo, v52, v73, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v86, v84
	v_fma_f32 v92, -v0, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v92, v84
	v_fma_f32 v0, -v0, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v0, v84, v88
	v_div_scale_f32 v0, null, v73, v73, v28
	v_rcp_f32_e32 v84, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v84, 1.0
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, vcc_lo, v28, v73, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v86, v84
	v_fma_f32 v92, -v0, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v92, v84
	v_fma_f32 v0, -v0, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v88, v0, v84, v88
	v_div_scale_f32 v0, null, v73, v73, v6
	v_rcp_f32_e32 v84, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v84, 1.0
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, vcc_lo, v6, v73, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v86, v84
	v_fma_f32 v94, -v0, v92, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v94, v84
	v_fma_f32 v0, -v0, v92, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v84, v0, v84, v92
	v_div_scale_f32 v0, null, v73, v73, v7
	v_rcp_f32_e32 v86, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v0, v86, 1.0
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, vcc_lo, v7, v73, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v92, v86
	v_fma_f32 v95, -v0, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v86
	v_fma_f32 v0, -v0, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v86, v0, v86, v94
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v85, 0x40e00000, v54
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v91.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v54, 1, v91
	v_add3_u32 v54, v0, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v85, 0xffff0000, v54
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v85, v85, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v0
	v_fma_f32 v92, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v68, v85, v68
	v_mul_f32_e32 v94, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v0, v94, v92
	v_fmac_f32_e32 v94, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v94, v92
	v_div_fmas_f32 v104, v0, v91, v94
	v_div_scale_f32 v0, null, v85, v85, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v0
	v_fma_f32 v92, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v55, v85, v55
	v_mul_f32_e32 v94, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v0, v94, v92
	v_fmac_f32_e32 v94, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v94, v92
	v_div_fmas_f32 v96, v0, v91, v94
	v_div_scale_f32 v0, null, v85, v85, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v0
	v_fma_f32 v92, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v34, v85, v34
	v_mul_f32_e32 v94, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v0, v94, v92
	v_fmac_f32_e32 v94, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v94, v92
	v_div_fmas_f32 v92, v0, v91, v94
	v_div_scale_f32 v0, null, v85, v85, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v0
	v_fma_f32 v94, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, vcc_lo, v15, v85, v15
	v_mul_f32_e32 v95, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v0, v95, v94
	v_fmac_f32_e32 v95, v97, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v95, v94
	v_div_fmas_f32 v91, v0, v91, v95
	v_div_scale_f32 v0, null, v85, v85, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v0
	v_fma_f32 v95, -v0, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v67, v85, v67
	v_mul_f32_e32 v97, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v0, v97, v95
	v_fmac_f32_e32 v97, v98, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v97, v95
	v_div_fmas_f32 v107, v0, v94, v97
	v_div_scale_f32 v0, null, v85, v85, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v0
	v_fma_f32 v95, -v0, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v47, v85, v47
	v_mul_f32_e32 v97, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v0, v97, v95
	v_fmac_f32_e32 v97, v98, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v97, v95
	v_div_fmas_f32 v98, v0, v94, v97
	v_div_scale_f32 v0, null, v85, v85, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v98, v85, v47
	v_rcp_f32_e32 v94, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v0, v94, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v33, v85, v33
	v_mul_f32_e32 v97, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v0, v97, v95
	v_fmac_f32_e32 v97, v99, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v97, v95
	v_div_fmas_f32 v95, v0, v94, v97
	v_div_scale_f32 v0, null, v85, v85, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v0
	v_fma_f32 v97, -v0, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v97, v94
	v_div_scale_f32 v97, vcc_lo, v16, v85, v16
	v_mul_f32_e32 v99, v97, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v100, -v0, v99, v97
	v_fmac_f32_e32 v99, v100, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v99, v97
	v_div_fmas_f32 v94, v0, v94, v99
	v_div_scale_f32 v0, null, v85, v85, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v97, v0
	v_fma_f32 v99, -v0, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, vcc_lo, v59, v85, v59
	v_mul_f32_e32 v100, v99, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v0, v100, v99
	v_fmac_f32_e32 v100, v101, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v100, v99
	v_div_fmas_f32 v106, v0, v97, v100
	v_div_scale_f32 v0, null, v85, v85, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v59, v106, v85, v59
	v_rcp_f32_e32 v97, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v59, v59, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v0, v97, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, vcc_lo, v42, v85, v42
	v_mul_f32_e32 v100, v99, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v0, v100, v99
	v_fmac_f32_e32 v100, v101, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v100, v99
	v_div_fmas_f32 v100, v0, v97, v100
	v_div_scale_f32 v0, null, v85, v85, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v97, v0
	v_fma_f32 v99, -v0, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, vcc_lo, v19, v85, v19
	v_mul_f32_e32 v101, v99, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v0, v101, v99
	v_fmac_f32_e32 v101, v102, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v101, v99
	v_div_fmas_f32 v97, v0, v97, v101
	v_div_scale_f32 v0, null, v85, v85, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v99, v0
	v_fma_f32 v101, -v0, v99, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v101, v99
	v_div_scale_f32 v101, vcc_lo, v17, v85, v17
	v_mul_f32_e32 v102, v101, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v0, v102, v101
	v_fmac_f32_e32 v102, v103, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v102, v101
	v_div_fmas_f32 v99, v0, v99, v102
	v_div_scale_f32 v0, null, v85, v85, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v101, v0
	v_fma_f32 v102, -v0, v101, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v102, v101
	v_div_scale_f32 v102, vcc_lo, v57, v85, v57
	v_mul_f32_e32 v103, v102, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v105, -v0, v103, v102
	v_fmac_f32_e32 v103, v105, v101
	v_div_fixup_f32 v50, v79, v73, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v103, v102
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v110, v0, v101, v103
	v_div_scale_f32 v0, null, v85, v85, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v101, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v102, -v0, v101, 1.0
	v_fmac_f32_e32 v101, v102, v101
	v_div_scale_f32 v102, vcc_lo, v37, v85, v37
	v_div_fixup_f32 v8, v75, v73, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v103, v102, v101
	v_div_fixup_f32 v44, v81, v73, v44
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v105, -v0, v103, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v103, v105, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_cvt_i32_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v0, v103, v102
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v105, v0, v101, v103
	v_div_scale_f32 v0, null, v85, v85, v13
	v_rcp_f32_e32 v101, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v0, v101, 1.0
	v_fmac_f32_e32 v101, v102, v101
	v_div_scale_f32 v102, vcc_lo, v13, v85, v13
	v_div_fixup_f32 v36, v83, v73, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v103, v102, v101
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v108, -v0, v103, v102
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v36, v36, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v103, v108, v101
	v_div_fixup_f32 v52, v93, v73, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v0, v103, v102
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v101, v0, v101, v103
	v_div_scale_f32 v0, null, v85, v85, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v101, v85, v13
	v_rcp_f32_e32 v102, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v103, -v0, v102, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v103, v102
	v_div_scale_f32 v103, vcc_lo, v14, v85, v14
	v_mul_f32_e32 v108, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v0, v108, v103
	v_fmac_f32_e32 v108, v109, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v108, v103
	v_div_fmas_f32 v103, v0, v102, v108
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v102, 0xffff0000, v1
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v102, v102, v70
	v_rcp_f32_e32 v108, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v0, v108, 1.0
	v_fmac_f32_e32 v108, v109, v108
	v_div_scale_f32 v109, vcc_lo, v70, v102, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v111, v109, v108
	v_fma_f32 v112, -v0, v111, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v111, v112, v108
	v_div_fixup_f32 v28, v88, v73, v28
	v_fma_f32 v0, -v0, v111, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v123, v0, v108, v111
	v_div_scale_f32 v0, null, v102, v102, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v108, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v109, -v0, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v109, v108
	v_div_scale_f32 v109, vcc_lo, v56, v102, v56
	v_mul_f32_e32 v111, v109, v108
	v_div_fixup_f32 v66, v87, v73, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v112, -v0, v111, v109
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v111, v112, v108
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v0, v111, v109
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v114, v0, v108, v111
	v_div_scale_f32 v0, null, v102, v102, v38
	v_rcp_f32_e32 v108, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v0, v108, 1.0
	v_fmac_f32_e32 v108, v109, v108
	v_div_scale_f32 v109, vcc_lo, v38, v102, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v111, v109, v108
	v_div_fixup_f32 v10, v82, v73, v10
	v_fma_f32 v112, -v0, v111, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v111, v112, v108
	v_div_fixup_f32 v68, v104, v85, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v111, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v109, v0, v108, v111
	v_div_scale_f32 v0, null, v102, v102, v23
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v108, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v111, -v0, v108, 1.0
	v_fmac_f32_e32 v108, v111, v108
	v_div_scale_f32 v111, vcc_lo, v23, v102, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v112, v111, v108
	v_fma_f32 v113, -v0, v112, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v108
	v_fma_f32 v0, -v0, v112, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v108, v0, v108, v112
	v_div_scale_f32 v0, null, v102, v102, v69
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v112, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v112, v111
	v_div_scale_f32 v112, vcc_lo, v69, v102, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v113, v112, v111
	v_fma_f32 v115, -v0, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v113, v115, v111
	v_div_fixup_f32 v42, v100, v85, v42
	v_fma_f32 v0, -v0, v113, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v125, v0, v111, v113
	v_div_scale_f32 v0, null, v102, v102, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v112, -v0, v111, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v112, v111
	v_div_scale_f32 v112, vcc_lo, v49, v102, v49
	v_mul_f32_e32 v113, v112, v111
	v_div_fixup_f32 v70, v123, v102, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v0, v113, v112
	v_fmac_f32_e32 v113, v115, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v113, v112
	v_div_fmas_f32 v116, v0, v111, v113
	v_div_scale_f32 v0, null, v102, v102, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v111, v0
	v_fma_f32 v112, -v0, v111, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v112, v111
	v_div_scale_f32 v112, vcc_lo, v35, v102, v35
	v_mul_f32_e32 v113, v112, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v0, v113, v112
	v_fmac_f32_e32 v113, v115, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v113, v112
	v_div_fmas_f32 v113, v0, v111, v113
	v_div_scale_f32 v0, null, v102, v102, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v111, v0
	v_fma_f32 v112, -v0, v111, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v112, v111
	v_div_scale_f32 v112, vcc_lo, v25, v102, v25
	v_mul_f32_e32 v115, v112, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v117, -v0, v115, v112
	v_fmac_f32_e32 v115, v117, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v115, v112
	v_div_fmas_f32 v112, v0, v111, v115
	v_div_scale_f32 v0, null, v102, v102, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v112, v102, v25
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v115, v111
	v_div_scale_f32 v115, vcc_lo, v61, v102, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v115, v111
	v_fma_f32 v118, -v0, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v111
	v_fma_f32 v0, -v0, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v124, v0, v111, v117
	v_div_scale_f32 v0, null, v102, v102, v45
	v_div_fixup_f32 v61, v124, v102, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v111, v0
	v_fma_f32 v115, -v0, v111, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v115, v111
	v_div_scale_f32 v115, vcc_lo, v45, v102, v45
	v_mul_f32_e32 v117, v115, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v118, -v0, v117, v115
	v_fmac_f32_e32 v117, v118, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v117, v115
	v_div_fmas_f32 v118, v0, v111, v117
	v_div_scale_f32 v0, null, v102, v102, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v118, v102, v45
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v115, v111
	v_div_scale_f32 v115, vcc_lo, v27, v102, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v115, v111
	v_fma_f32 v119, -v0, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v119, v111
	v_fma_f32 v0, -v0, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v115, v0, v111, v117
	v_div_scale_f32 v0, null, v102, v102, v26
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v117, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v117, v111
	v_div_scale_f32 v117, vcc_lo, v26, v102, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v119, v117, v111 :: v_dual_and_b32 v74, 0x2f0, v74
	v_fma_f32 v120, -v0, v119, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v119, v120, v111
	v_fma_f32 v0, -v0, v119, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v117, v0, v111, v119
	v_div_scale_f32 v0, null, v102, v102, v60
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v119, v111
	v_div_scale_f32 v119, vcc_lo, v60, v102, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v120, v119, v111
	v_fma_f32 v121, -v0, v120, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v121, v111
	v_fma_f32 v0, -v0, v120, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v126, v0, v111, v120
	v_div_scale_f32 v0, null, v102, v102, v40
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v119, v111
	v_div_scale_f32 v119, vcc_lo, v40, v102, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v120, v119, v111
	v_fma_f32 v121, -v0, v120, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v121, v111
	v_fma_f32 v0, -v0, v120, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v122, v0, v111, v120
	v_div_scale_f32 v0, null, v102, v102, v21
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v119, v111
	v_div_scale_f32 v119, vcc_lo, v21, v102, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v120, v119, v111
	v_fma_f32 v121, -v0, v120, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v121, v111
	v_fma_f32 v0, -v0, v120, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v120, v0, v111, v120
	v_div_scale_f32 v0, null, v102, v102, v22
	v_div_fixup_f32 v21, v120, v102, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v111, v0
	v_fma_f32 v119, -v0, v111, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v119, v111
	v_div_scale_f32 v119, vcc_lo, v22, v102, v22
	v_mul_f32_e32 v121, v119, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v0, v121, v119
	v_fmac_f32_e32 v121, v127, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v0, v121, v119
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v119, 0xffff0000, v2
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v54.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v121, v0, v111, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v0, null, v119, v119, v72
	v_rcp_f32_e32 v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v0, v111, 1.0
	v_fmac_f32_e32 v111, v127, v111
	v_div_scale_f32 v127, vcc_lo, v72, v119, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v128, v127, v111
	v_fma_f32 v129, -v0, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v129, v111
	v_fma_f32 v0, -v0, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v127, v0, v111, v128
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v111, 16, v169
	v_lshlrev_b32_e32 v0, 13, v169
	v_lshlrev_b32_e32 v128, 8, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, 0xe000, v0, v128
	v_and_b32_e32 v128, 64, v169
	v_xor_b32_e32 v74, v74, v128
	v_lshlrev_b32_e32 v128, 3, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or3_b32 v74, v0, v128, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v119, v119, v62
	v_rcp_f32_e32 v128, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v129, -v0, v128, 1.0
	v_fmac_f32_e32 v128, v129, v128
	v_div_scale_f32 v129, vcc_lo, v62, v119, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v131, -v0, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v131, v128
	v_fma_f32 v0, -v0, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v128, v130
	v_div_scale_f32 v128, null, v119, v119, v43
	v_div_fixup_f32 v0, v0, v119, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v129, v128
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v130, -v128, v129, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v43, v119, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v62, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v116, v102, v49
	v_mul_f32_e32 v131, v130, v129
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v44, null, v119, v119, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v132, -v128, v131, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v131, v132, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v128, -v128, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v131, v128, v129, v131
	v_div_scale_f32 v128, null, v119, v119, v29
	v_rcp_f32_e32 v129, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v130, -v128, v129, 1.0
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v29, v119, v29
	v_div_fixup_f32 v72, v127, v119, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v127, 15, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_mul_f32_e32 v132, v130, v129
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v133, -v128, v132, v130
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v132, v133, v129
	v_fma_f32 v128, -v128, v132, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v132, v128, v129, v132
	v_div_scale_f32 v128, null, v119, v119, v71
	v_div_fixup_f32 v29, v132, v119, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v128
	v_fma_f32 v130, -v128, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v71, v119, v71
	v_mul_f32_e32 v133, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v128, v133, v130
	v_fmac_f32_e32 v133, v134, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v128, -v128, v133, v130
	v_div_fmas_f32 v133, v128, v129, v133
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v129, 15, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v66, v107, v85, v67
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v128, 15, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v68, v133, v119, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v72, 0, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v67, v67
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v66, v66
	v_and_b32_e32 v130, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v67, v125, v102, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v66, 15, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v72, v[127:130]
	ds_store_b128 v72, v[65:68] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v119, v119, v51
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v51, v119, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v65, v66, v68
	v_div_scale_f32 v65, null, v119, v119, v39
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v39, v119, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v90, v65, v66, v68
	v_div_scale_f32 v65, null, v119, v119, v30
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v30, v119, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v104, v65, v66, v68
	v_div_scale_f32 v65, null, v119, v119, v64
	v_div_fixup_f32 v30, v104, v119, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v64, v119, v64
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v65, v65, v66, v68
	v_div_scale_f32 v66, null, v119, v119, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v48, v119, v48
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v107, v66, v67, v69
	v_div_scale_f32 v66, null, v119, v119, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v32, v119, v32
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v123, v66, v67, v69
	v_div_scale_f32 v66, null, v119, v119, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v123, v119, v32
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v31, v119, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v125, v66, v67, v69
	v_div_scale_f32 v66, null, v119, v119, v63
	v_div_fixup_f32 v31, v125, v119, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v63, v119, v63
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v68, v66, v67, v69
	v_div_fixup_f32 v67, v65, v119, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v64, 15, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v59, v68, v119, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 15, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v110, v85, v57
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v67
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v67, 15, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v126, v102, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v114, v102, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v57
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v52, v52
	v_and_b32_e32 v70, 15, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v71, 15, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v96, v85, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v50
	v_and_b32_e32 v50, 15, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v47, v44
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v72, v[64:67] offset:2048
	ds_store_b128 v72, v[68:71] offset:2304
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v60, 15, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v87, v119, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v52, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v74, 16, 0
	ds_store_b128 v0, v[59:62]
	ds_store_b128 v0, v[49:52] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v49, -v44, v47, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, vcc_lo, v46, v119, v46
	v_mul_f32_e32 v50, v49, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v44, v50, v49
	v_fmac_f32_e32 v50, v51, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v44, v50, v49
	v_div_fmas_f32 v44, v44, v47, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v45
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v50, v107, v119, v48
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v49, 15, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v36, v105, v85, v37
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v50
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v50, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v122, v102, v40
	v_div_fixup_f32 v40, v44, v119, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v28, v28
	v_and_b32_e32 v61, 15, v28
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v62, 15, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[47:50] offset:2048
	ds_store_b128 v0, v[59:62] offset:2304
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v76, v73, v18
	v_div_fixup_f32 v18, v92, v85, v34
	v_div_fixup_f32 v28, v109, v102, v38
	v_div_fixup_f32 v34, v131, v119, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v42, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v34
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v28, v90, v119, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v44, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v78, v73, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v18, v113, v102, v35
	v_div_fixup_f32 v12, v95, v85, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v33, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v34, 15, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v84, v73, v6
	v_div_fixup_f32 v6, v91, v85, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v97, v85, v19
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v35, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v28, v86, v73, v7
	v_div_fixup_f32 v7, v94, v85, v16
	v_div_fixup_f32 v16, v99, v85, v17
	v_div_fixup_f32 v17, v103, v85, v14
	v_div_scale_f32 v14, null, v119, v119, v24
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v18, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v36, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v74, 32, 0
	ds_store_b128 v0, v[42:45]
	ds_store_b128 v0, v[33:36] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v19, -v14, v18, 1.0
	v_div_fixup_f32 v36, v121, v102, v22
	v_div_fixup_f32 v33, v108, v102, v23
	v_div_fixup_f32 v35, v117, v102, v26
	v_div_fixup_f32 v34, v115, v102, v27
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v24, v119, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v19, v18
	v_fma_f32 v23, -v14, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v18
	v_fma_f32 v14, -v14, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v14, v14, v18, v22
	v_div_scale_f32 v18, null, v119, v119, v20
	v_div_fixup_f32 v37, v14, v119, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v14, 5, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v22, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v22, v19
	v_div_scale_f32 v22, vcc_lo, v20, v119, v20
	v_mul_f32_e32 v23, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v18, v23, v22
	v_fmac_f32_e32 v23, v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v18, v23, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_cndmask_b32_e64 v22, 0x2010, 0, s2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v18, v18, v19, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v19, 6, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v18, v119, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v14, 0x300, v19, v14
	v_xor_b32_e32 v18, v22, v58
	v_lshlrev_b32_e32 v19, 2, v111
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v6
	v_and_b32_e32 v6, 15, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v42, v18, v14, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v10, s0, 0x40e00000
	v_and_b32_e32 v10, 15, v9
	v_cvt_i32_f32_e32 v9, v11
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v8, v22, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_and_b32_e32 v7, 15, v20
	v_cvt_i32_f32_e32 v18, v14
	v_and_b32_e32 v14, 15, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v19, v15
	v_and_b32_e32 v15, 15, v18
	v_and_b32_e32 v18, 15, v16
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_and_b32_e32 v11, 15, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v12
	v_rndne_f32_e32 v13, v29
	v_rndne_f32_e32 v29, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v9, v9
	v_and_b32_e32 v19, 15, v19
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_and_b32_e32 v23, 15, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v29, v29
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_and_b32_e32 v22, 15, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_and_b32_e32 v29, 15, v29
	v_cvt_i32_f32_e32 v9, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v38, 0x8040, v42, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v27, 15, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_and_b32_e32 v26, 15, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 15, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v34, 0x4020, v42, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_and_b32_e32 v8, 15, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v9, v9
	v_and_b32_e32 v16, 15, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v20, 15, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v21
	v_rndne_f32_e32 v21, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v21, v21
	v_and_b32_e32 v24, 15, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v25, 15, v21
	v_and_b32_e32 v21, 15, v31
	v_med3_f32 v9, v9, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v9, v9
	v_and_b32_e32 v28, 15, v9
	v_and_b32_e32 v9, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v13
	v_and_b32_e32 v13, 15, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v17, 15, v30
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v30, v74, 48, 0
	ds_store_b128 v0, v[14:17] offset:2048
	ds_store_b128 v0, v[22:25] offset:2304
	ds_store_b128 v30, v[6:9]
	ds_store_b128 v30, v[10:13] offset:256
	v_add_nc_u32_e32 v0, 0, v42
	ds_store_b128 v30, v[18:21] offset:2048
	ds_store_b128 v30, v[26:29] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v0
	ds_load_b128 v[10:13], v0 offset:4096
	ds_load_b128 v[14:17], v34
	ds_load_b128 v[18:21], v34 offset:4096
	ds_load_b128 v[22:25], v0 offset:128
	ds_load_b128 v[26:29], v0 offset:4224
	ds_load_b128 v[30:33], v34 offset:128
	ds_load_b128 v[34:37], v34 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v0, v10, 4, v6
	v_lshl_or_b32 v55, v11, 4, v7
	v_lshl_or_b32 v56, v12, 4, v8
	v_lshl_or_b32 v6, v13, 4, v9
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v57, v18, 4, v14
	v_lshl_or_b32 v58, v19, 4, v15
	v_lshl_or_b32 v59, v20, 4, v16
	v_lshl_or_b32 v8, v21, 4, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[9:12], v38 offset:4096
	ds_load_b128 v[13:16], v38
	ds_load_b128 v[17:20], v38 offset:128
	ds_load_b128 v[38:41], v38 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v24, v28, 4, v24
	v_lshl_or_b32 v22, v26, 4, v22
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v26, v35, 4, v31
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v7, 0xc060, v42, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v27, 4, v23
	v_lshl_or_b32 v27, v36, 4, v32
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v60, v10, 4, v14
	v_lshl_or_b32 v61, v11, 4, v15
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v28, v38, 4, v17
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v17, 7, v171
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v9, 4, v13
	v_lshl_or_b32 v9, v12, 4, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[10:13], v7 offset:4096
	ds_load_b128 v[42:45], v7
	ds_load_b128 v[46:49], v7 offset:128
	ds_load_b128 v[50:53], v7 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v39, 4, v18
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 62, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, v17, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 60, v31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 60, v17
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v16, v10, 4, v42
	v_lshl_or_b32 v42, v11, 4, v43
	v_lshl_or_b32 v11, v29, 4, v25
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s1, s78, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s79, 0, s1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v34, 4, v30
	v_lshl_or_b32 v29, v40, 4, v19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v50, 4, v46
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 58, v17
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v12, 4, v44
	v_lshl_or_b32 v12, v41, 4, v20
	v_lshl_or_b32 v20, v51, 4, v47
	v_lshl_or_b32 v30, v52, 4, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s3, s78, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s79, 0, s3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v10, v13, 4, v45
	v_lshl_or_b32 v13, v37, 4, v33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 56, v17
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v53, 4, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s5, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s4
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s7, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s7
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s9, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s9
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s7, s7, s8
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s11, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s11
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s9, s9, s10
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s13, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s13
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s11, s11, s12
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 46, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s15, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s15
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s13, s13, s14
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s17, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s17
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s15, s15, s16
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 42, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s19, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s19
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s17, s17, s18
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s21, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s21
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s19, s19, s20
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 38, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s23, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s23
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s21, s21, s22
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s25, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s25
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s23, s23, s24
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s27, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s27
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s25, s25, s26
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s29, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s29
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s27, s27, s28
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 30, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s31, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s31
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s29, s29, s30
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 28, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s34, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s34
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s31, s31, s33
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 26, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s36, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s36
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s34, s34, s35
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s38, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s38
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s36, s36, s37
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 22, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s40, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s40
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s38, s38, s39
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s42, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s42
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s40, s40, s41
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s44, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s44
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s42, s42, s43
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s46, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s46
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s44, s44, s45
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 14, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s48, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s48
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s46, s46, s47
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s50, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s50
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s48, s48, s49
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 10, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s52, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s52
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s50, s50, s51
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s54, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s54
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s52, s52, s53
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 6, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s56, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s56
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s54, s54, s55
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s58, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s58
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s56, s56, s57
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 2, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v14, s60, s78, v14
	v_add_co_ci_u32_e64 v15, null, s79, 0, s60
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s58, s58, s59
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[14:15]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v14, s62, s78, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s79, 0, s62
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[14:15]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v31, s73, v[4:5]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s62
	buffer_store_b8 v0, v14, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v0, 2, v31
	v_mad_u64_u32 v[14:15], null, v0, s73, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v14, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 4, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v57, v0, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v14, s73, v[4:5]
	v_add_nc_u32_e32 v0, 6, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v17, 0x80000000, v14, s58
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v0, s73, v[4:5]
	v_add_nc_u32_e32 v0, 8, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v21, v17, s[68:71], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v14, s56
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v0, s73, v[4:5]
	v_add_nc_u32_e32 v0, 10, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v16, v17, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 12, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v16, 0x80000000, v14, s54
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v0, s73, v[4:5]
	v_add_nc_u32_e32 v0, 14, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v22, v16, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[15:16], null, v17, s73, v[4:5]
	v_mad_u64_u32 v[16:17], null, v0, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s52
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v0, 16, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v17, 0x80000000, v15, s50
	buffer_store_b8 v25, v14, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v0, s73, v[4:5]
	v_add_nc_u32_e32 v0, 18, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v21, 0x80000000, v16, s48
	buffer_store_b8 v28, v17, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v25, 50, v31
	v_add_nc_u32_e32 v28, 58, v31
	v_mad_u64_u32 v[15:16], null, v0, s73, v[4:5]
	v_add_nc_u32_e32 v0, 20, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v22, 0x80000000, v14, s46
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 22, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[16:17], null, v0, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v15, s44
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v14, s73, v[4:5]
	v_add_nc_u32_e32 v15, 24, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x2
	buffer_store_b8 v19, v21, s[68:71], 0 offen
	buffer_store_b8 v55, v22, s[68:71], 0 offen
	buffer_store_b8 v58, v0, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 32, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v16, s42
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 26, v31
	v_add_nc_u32_e32 v22, 40, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v17, 0x80000000, v14, s40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s73, v[4:5]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[15:16], null, v16, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v60, v0, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v0, 28, v31
	v_add_nc_u32_e32 v16, 30, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v42, v17, s[68:71], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v14, s38
	v_cndmask_b32_e64 v21, 0x80000000, v15, s36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v0, s73, v[4:5]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[4:5]
	v_add_nc_u32_e32 v0, 34, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v23, v17, s[68:71], 0 offen
	buffer_store_b8 v26, v21, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 36, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v16, 0x80000000, v14, s34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 38, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v23, 0x80000000, v15, s31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v19, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v18, v16, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[15:16], null, v0, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v20, v23, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 42, v31
	v_add_nc_u32_e32 v0, 44, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v16, 0x80000000, v14, s29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 46, v31
	v_add_nc_u32_e32 v20, 48, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v23, 0x80000000, v15, s27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v17, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v56, v16, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[15:16], null, v21, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v59, v23, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 52, v31
	v_add_nc_u32_e32 v23, 54, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s25
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v26, 56, v31
	v_add_nc_u32_e32 v31, 62, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v16, 0x80000000, v15, s23
	buffer_store_b8 v61, v14, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v22, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v43, v16, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[15:16], null, v18, s73, v[4:5]
	v_mad_u64_u32 v[16:17], null, v0, s73, v[4:5]
	v_mad_u64_u32 v[17:18], null, v19, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v14, s21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[18:19], null, v25, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v22, 0x80000000, v15, s19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v20, s73, v[4:5]
	v_mad_u64_u32 v[19:20], null, v21, s73, v[4:5]
	v_mad_u64_u32 v[20:21], null, v23, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v24, v0, s[68:71], 0 offen
	buffer_store_b8 v27, v22, s[68:71], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[21:22], null, v26, s73, v[4:5]
	v_mad_u64_u32 v[22:23], null, v28, s73, v[4:5]
	v_mad_u64_u32 v[23:24], null, v32, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v16, s17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[24:25], null, v31, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v17, s15
	v_cndmask_b32_e64 v17, 0x80000000, v14, s13
	v_cndmask_b32_e64 v18, 0x80000000, v18, s11
	v_cndmask_b32_e64 v19, 0x80000000, v19, s9
	s_clause 0x3
	buffer_store_b8 v29, v0, s[68:71], 0 offen
	buffer_store_b8 v30, v4, s[68:71], 0 offen
	buffer_store_b8 v6, v17, s[68:71], 0 offen
	buffer_store_b8 v8, v18, s[68:71], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v20, s7
	v_cndmask_b32_e64 v8, 0x80000000, v23, s1
	v_cndmask_b32_e64 v4, 0x80000000, v21, s5
	v_cndmask_b32_e64 v6, 0x80000000, v22, s3
	s_clause 0x4
	buffer_store_b8 v9, v19, s[68:71], 0 offen
	buffer_store_b8 v10, v0, s[68:71], 0 offen
	buffer_store_b8 v11, v4, s[68:71], 0 offen
	buffer_store_b8 v13, v6, s[68:71], 0 offen
	buffer_store_b8 v12, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v24, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v169
	v_lshrrev_b32_e32 v8, 2, v111
	v_lshlrev_b32_e32 v4, 3, v170
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v16, 63, v169
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v7, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s72, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s1, s1, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, v16, v3
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_add3_u32 v4, v7, v6, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s11, s78, v16
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s79, 0, s11
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v169
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[14:15]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	v_cmp_eq_u32_e64 s1, 0, v2
	v_add_lshl_u32 v1, v1, s80, 1
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
.Ltmp70:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 196
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 196
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32092
; TotalNumSgprs: 83
; NumVgprs: 256
; ScratchSize: 196
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 196
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 48
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
