	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v178, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v18, 4, v178
	v_and_b32_e32 v17, 0x7f, v178
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
	s_ashr_i32 s24, s7, 31
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
	s_xor_b32 s25, s3, s24
	s_sub_i32 s79, s25, s24
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
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v105, 8, v178
	v_lshlrev_b32_e32 v0, 4, v178
.Ltmp4:
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v7, 0x7f, v178
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow576
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[2:3], 0x0
	s_load_b64 s[76:77], s[6:7], 0x0
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v182, 0x80, v178
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v206, 15, v178
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v57, 0
	v_lshrrev_b32_e32 v179, 4, v178
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s2, 0, v182
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v193, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v244, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v192, 0
	v_mov_b32_e32 v124, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s33, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s72, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s73, 0, s0
	v_add_co_u32 v6, s0, s72, v206
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v7, null, s73, 0, s0
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v6, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v7, vcc_lo
	v_add_co_u32 v12, vcc_lo, v6, 32
	v_add_co_ci_u32_e64 v13, null, 0, v7, vcc_lo
	v_add_co_u32 v14, vcc_lo, v6, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s26, s6, s4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, 0, v7, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[0:1]
	v_cmp_le_i64_e64 s4, s[74:75], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[0:1]
	v_cmp_gt_i64_e64 s12, s[76:77], v[6:7]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_addc_u32 s27, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[4:5]
	v_bfe_i32 v4, v178, 3, 1
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v5, 3, v178
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[10:11]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s35, vcc_lo, s8
	s_and_b32 vcc_lo, s4, s12
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s4, s[26:27], 0x0
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v11, s72, v179
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v6, 0x70, v18
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_dual_mov_b32 v202, 0 :: v_dual_and_b32 v5, 0x700, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[12:13]
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v12, 16, v11
	v_mul_lo_u32 v13, v11, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[76:77], v[8:9]
	v_or3_b32 v9, v6, v5, v4
	v_mul_lo_u32 v12, v12, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[14:15]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:156
	scratch_store_b32 off, v13, off offset:160
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v13, 32, v11
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v11, 48, v11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[14:15]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s36, s0, s9
	s_and_b32 s0, s5, s13
	v_mul_lo_u32 v11, v11, s33
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	scratch_store_b32 off, v12, off offset:164 ; 4-byte Folded Spill
	v_mul_lo_u32 v12, v13, s33
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s34, s4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s37, s1, s10
	s_and_b32 s1, s6, s14
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s6, s5, 1
	s_mul_i32 s5, s5, s78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s38, s3, s11
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v0, s72, v206
	s_and_b32 s3, s7, s15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s7, s25, 8
	s_lshl_b32 s5, s5, 1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v12, off offset:168
	scratch_store_b32 off, v182, off offset:332
	scratch_store_b32 off, v178, off offset:320
	v_add3_u32 v12, s5, s7, v178
	s_lshl_b32 s5, s4, 1
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v3, 48, v0
	s_or_b32 s5, s5, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v1, 16, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s5, s78, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, s34, v3
	v_add3_u32 v13, s5, s7, v179
	s_lshl_b32 s9, s24, 8
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_mul_lo_u32 v1, s34, v1
	v_subrev_nc_u32_e32 v14, s9, v13
	v_mul_lo_u32 v0, s34, v0
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v31, 1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v3, 0xf0, v14
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v182, 1, v1
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v36, 1, v0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, 0xe0, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v1, s33, v3
	scratch_store_b32 off, v11, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s34, v2
	v_mov_b32_e32 v84, 0
	v_mul_lo_u32 v0, s33, v0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v107, 0
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v3, 0xb0, v14
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0xd0, v14
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v133, 1, v2
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v2, 0xc0, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, s33, v1
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v0, 0xa0, v14
	v_mov_b32_e32 v244, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v90, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v0, s33, v0
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v2
	v_add_nc_u32_e32 v2, 0x70, v14
	s_mul_i32 s4, s78, s4
	v_mov_b32_e32 v67, 0
	s_lshl_b32 s4, s4, 1
	s_or_b32 s6, s6, 1
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0x80, v14
	s_mul_i32 s6, s78, s6
	v_mov_b32_e32 v45, 0
	v_add3_u32 v11, s6, s7, v178
	v_mov_b32_e32 v72, 0
	v_mul_lo_u32 v0, s33, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:188
	scratch_store_b32 off, v179, off offset:324
	v_mul_lo_u32 v1, s33, v3
	v_add_nc_u32_e32 v3, 0x60, v14
	v_subrev_nc_u32_e32 v11, s9, v11
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v47, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v2
	v_add_nc_u32_e32 v2, 48, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:192
	scratch_store_b32 off, v206, off offset:328
	v_add_nc_u32_e32 v1, 0x90, v14
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v13, 1, v11
	v_add_nc_u32_e32 v11, 16, v14
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v1
	v_mul_lo_u32 v0, s33, v3
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v3, 32, v14
	v_subrev_nc_u32_e32 v12, s9, v12
	v_mov_b32_e32 v140, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v71, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:200
	scratch_store_b32 off, v17, off offset:336
	scratch_store_b32 off, v0, off offset:212
	v_add_nc_u32_e32 v1, 0x50, v14
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v30, 1, v12
	v_or_b32_e32 v8, v4, v6
	v_cndmask_b32_e64 v7, 0x88, 0, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v0, s33, v1
	scratch_store_b32 off, v18, off offset:340 ; 4-byte Folded Spill
	v_add3_u32 v1, s4, s7, v179
	v_mov_b32_e32 v69, 0
	v_xor_b32_e32 v6, 8, v8
	v_dual_mov_b32 v183, v206 :: v_dual_and_b32 v16, 0xf0, v178
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v5, 5, v178
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 64, v14
	v_mov_b32_e32 v134, 0
	v_xor_b32_e32 v4, v7, v17
	v_xor_b32_e32 v7, 8, v9
	v_dual_mov_b32 v194, 0 :: v_dual_lshlrev_b32 v9, 2, v16
	v_mul_lo_u32 v0, s33, v0
	v_dual_mov_b32 v199, 0 :: v_dual_lshlrev_b32 v10, 1, v178
	v_dual_mov_b32 v226, 0 :: v_dual_and_b32 v5, 32, v5
	v_mov_b32_e32 v128, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v10, 28, v10
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v1
	v_mul_lo_u32 v1, s33, v2
	v_mov_b32_e32 v253, 0
	v_add3_u32 v5, 0, v9, v5
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v9, 1, v16
	v_add_nc_u32_e32 v2, 0xe0, v0
	v_add_nc_u32_e32 v12, 0xb0, v0
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v177, 0, v4
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v3
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v3, 0xd0, v0
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v59, 0, v9
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v231, 0
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v11
	v_add_nc_u32_e32 v11, 0xc0, v0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v238, 0
	v_mov_b32_e32 v89, 0
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v14
	v_mov_b32_e32 v46, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v139, 0
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, 0xf0, v0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, s33, v1
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v191, 0
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v2
	v_add_nc_u32_e32 v2, 0x90, v0
	v_mov_b32_e32 v224, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v125, 0
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v3
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v3, 0x80, v0
	v_mov_b32_e32 v55, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v196, 0
	v_mov_b32_e32 v115, 0
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v11
	v_add_nc_u32_e32 v11, 0x70, v0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v111, 0
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v12
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v12, 0x60, v0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v99, 0
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, 0xa0, v0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v112, 0
	v_mov_b32_e32 v79, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, s33, v1
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v2
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v2, 64, v0
	v_mov_b32_e32 v58, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v51, 0
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v3
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mov_b32_e32 v48, 0
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v11
	v_add_nc_u32_e32 v11, 32, v0
	s_mov_b32 s8, 0
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_lshl_b32 s6, s78, 2
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v12
	v_add_nc_u32_e32 v12, 16, v0
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s24, s16
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0x50, v0
	v_mul_lo_u32 v0, s33, v0
	s_mov_b32 s25, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	v_mul_lo_u32 v1, s33, v1
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s28, s20
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	s_mov_b32 s29, s21
	s_mov_b32 s30, s26
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v2
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	s_mov_b32 s31, s27
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:308
	scratch_store_b32 off, v1, off offset:284
	v_mul_lo_u32 v1, s33, v3
	v_add_nc_u32_e32 v0, v5, v10
	s_mov_b32 s23, s27
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:316
	scratch_store_b32 off, v1, off offset:292
	v_mul_lo_u32 v1, s33, v12
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v4, off, off offset:284
	scratch_load_b32 v12, off, off offset:252
	scratch_load_b32 v5, off, off offset:280
	scratch_load_b32 v6, off, off offset:276
	scratch_load_b32 v3, off, off offset:288
	scratch_load_b32 v11, off, off offset:256
	scratch_load_b32 v2, off, off offset:292
	scratch_load_b32 v10, off, off offset:260
	scratch_load_b32 v1, off, off offset:296
	scratch_load_b32 v9, off, off offset:264
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v8, off, off offset:268
	scratch_load_b32 v7, off, off offset:272
	v_cmp_gt_i32_e64 s4, s33, v183
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v22, off offset:152
	scratch_store_b32 off, v205, off offset:148
	scratch_store_b32 off, v204, off offset:144
	scratch_store_b32 off, v203, off offset:140
	scratch_store_b32 off, v201, off offset:136
	scratch_store_b32 off, v200, off offset:132
	scratch_store_b32 off, v199, off offset:128
	scratch_store_b32 off, v202, off offset:124
	scratch_store_b32 off, v195, off offset:120
	scratch_store_b32 off, v194, off offset:116
	scratch_store_b32 off, v193, off offset:112
	scratch_store_b32 off, v192, off offset:108
	scratch_store_b32 off, v224, off offset:104
	scratch_store_b32 off, v244, off offset:100
	scratch_store_b32 off, v243, off offset:96
	scratch_store_b32 off, v238, off offset:92
	scratch_store_b32 off, v231, off offset:88
	scratch_store_b32 off, v230, off offset:84
	scratch_store_b32 off, v254, off offset:80
	scratch_store_b32 off, v228, off offset:76
	scratch_store_b32 off, v220, off offset:72
	scratch_store_b32 off, v219, off offset:68
	scratch_store_b32 off, v218, off offset:64
	scratch_store_b32 off, v131, off offset:60
	scratch_store_b32 off, v253, off offset:56
	scratch_store_b32 off, v217, off offset:52
	scratch_store_b32 off, v216, off offset:48
	scratch_store_b32 off, v225, off offset:44
	scratch_store_b32 off, v145, off offset:40
	scratch_store_b32 off, v129, off offset:36
	scratch_store_b32 off, v140, off offset:32
	scratch_store_b32 off, v236, off offset:28
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v134, off offset:24
	scratch_store_b32 off, v226, off offset:20
	scratch_store_b32 off, v198, off offset:16
	scratch_store_b32 off, v197, off offset:12
	scratch_store_b32 off, v196, off offset:8
	scratch_store_b32 off, v191, off offset:4
	scratch_store_b32 off, v123, off
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s34, s34, -1
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	v_mov_b32_e32 v191, s15
	v_mov_b32_e32 v179, v54
	s_and_b32 s5, s35, s4
	v_dual_mov_b32 v190, s14 :: v_dual_mov_b32 v189, s13
	v_dual_mov_b32 v188, s12 :: v_dual_mov_b32 v187, s11
	v_dual_mov_b32 v186, s10 :: v_dual_mov_b32 v185, s9
	v_dual_mov_b32 v54, v36 :: v_dual_mov_b32 v141, v42
	v_dual_mov_b32 v131, v97 :: v_dual_mov_b32 v134, v31
	v_mov_b32_e32 v140, v80
	v_dual_mov_b32 v144, v43 :: v_dual_mov_b32 v85, v30
	v_dual_mov_b32 v97, v73 :: v_dual_mov_b32 v184, s8
	v_mov_b32_e32 v80, v39
	v_dual_mov_b32 v142, v125 :: v_dual_mov_b32 v129, v98
	v_dual_mov_b32 v143, v44 :: v_dual_mov_b32 v98, v74
	v_dual_mov_b32 v73, v48 :: v_dual_mov_b32 v74, v49
	v_mov_b32_e32 v130, v50
	v_mov_b32_e32 v181, v46
	v_mov_b32_e32 v125, v115
	v_mov_b32_e32 v115, v122
	v_dual_mov_b32 v105, v132 :: v_dual_mov_b32 v132, v118
	v_dual_mov_b32 v118, v106 :: v_dual_mov_b32 v123, v53
	v_mov_b32_e32 v106, v47
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v4, v4, v183
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v14, v12, v183
	scratch_load_b32 v12, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v5, v5, v183
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v3, v3, v183
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v2, v2, v183
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v1, v1, v183
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, v0, v183
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, v12, v183
	scratch_load_b32 v12, off, off offset:244 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v6, v6, v183
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, v12, v183
	scratch_load_b32 v12, off, off offset:160 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v11, v11, v183
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, v12, v183
	scratch_load_b32 v12, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v10, v10, v183
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	s_and_b32 s5, s36, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, v12, v183
	scratch_load_b32 v12, off, off offset:168 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v9, v9, v183
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	s_and_b32 s5, s37, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, v12, v183
	scratch_load_b32 v12, off, off offset:172 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v8, v8, v183
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	s_and_b32 s5, s38, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s34, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, v12, v183
	scratch_load_b32 v12, off, off offset:240 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v7, v7, v183
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, v12, v183
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v0, v0, s[16:19], 0 offen
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	buffer_load_u8 v5, v5, s[16:19], 0 offen
	buffer_load_u8 v6, v6, s[16:19], 0 offen
	buffer_load_u8 v7, v7, s[16:19], 0 offen
	buffer_load_u8 v8, v8, s[16:19], 0 offen
	buffer_load_u8 v9, v9, s[16:19], 0 offen
	buffer_load_u8 v10, v10, s[16:19], 0 offen
	buffer_load_u8 v11, v11, s[16:19], 0 offen
	buffer_load_u8 v14, v14, s[16:19], 0 offen
	buffer_load_u8 v15, v15, s[16:19], 0 offen
	buffer_load_u8 v16, v16, s[16:19], 0 offen
	buffer_load_u8 v24, v21, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(19)
	ds_store_b8 v177, v17
	s_waitcnt vmcnt(18)
	ds_store_b8 v177, v18 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v177, v19 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v177, v20 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[20:23], v12 offset1:32
	ds_load_2addr_b64 v[224:227], v12 offset0:64 offset1:96
	scratch_load_b32 v12, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[228:231], v12 offset1:32
	ds_load_2addr_b64 v[240:243], v12 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v177, v0
	ds_store_b8 v177, v1 offset:256
	ds_store_b8 v177, v2 offset:512
	ds_store_b8 v177, v3 offset:768
	ds_store_b8 v177, v4 offset:1024
	ds_store_b8 v177, v5 offset:1280
	ds_store_b8 v177, v6 offset:1536
	ds_store_b8 v177, v7 offset:1792
	ds_store_b8 v177, v8 offset:2048
	ds_store_b8 v177, v9 offset:2304
	ds_store_b8 v177, v10 offset:2560
	ds_store_b8 v177, v11 offset:2816
	ds_store_b8 v177, v14 offset:3072
	ds_store_b8 v177, v15 offset:3328
	ds_store_b8 v177, v16 offset:3584
	ds_store_b8 v177, v24 offset:3840
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v0, off, off offset:236
	scratch_load_b32 v4, off, off offset:220
	scratch_load_b32 v8, off, off offset:204
	scratch_load_b32 v12, off, off offset:188
	scratch_load_b32 v1, off, off offset:232
	scratch_load_b32 v5, off, off offset:216
	scratch_load_b32 v9, off, off offset:200
	scratch_load_b32 v2, off, off offset:228
	scratch_load_b32 v6, off, off offset:212
	scratch_load_b32 v10, off, off offset:196
	scratch_load_b32 v3, off, off offset:224
	scratch_load_b32 v7, off, off offset:208
	scratch_load_b32 v11, off, off offset:192
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v0, v0, v183
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v4, v4, v183
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v8, v8, v183
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v14, v12, v183
	scratch_load_b32 v12, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v1, v1, v183
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v5, v5, v183
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v2, v2, v183
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v6, v6, v183
	v_add_nc_u32_e32 v9, v9, v183
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v3, v3, v183
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v7, v7, v183
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, v12, v183
	scratch_load_b32 v12, off, off offset:180 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v10, v10, v183
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, v12, v183
	scratch_load_b32 v12, off, off offset:176 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v11, v11, v183
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, v12, v183
	scratch_load_b32 v12, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v183, 16, v183
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v18, v0, s[16:19], 0 offen
	buffer_load_u8 v19, v1, s[16:19], 0 offen
	buffer_load_u8 v24, v2, s[16:19], 0 offen
	buffer_load_u8 v25, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	buffer_load_u8 v5, v5, s[16:19], 0 offen
	buffer_load_u8 v6, v6, s[16:19], 0 offen
	buffer_load_u8 v7, v7, s[16:19], 0 offen
	buffer_load_u8 v8, v8, s[16:19], 0 offen
	buffer_load_u8 v9, v9, s[16:19], 0 offen
	buffer_load_u8 v10, v10, s[16:19], 0 offen
	buffer_load_u8 v11, v11, s[16:19], 0 offen
	buffer_load_u8 v14, v14, s[16:19], 0 offen
	buffer_load_u8 v15, v15, s[16:19], 0 offen
	buffer_load_u8 v16, v16, s[16:19], 0 offen
	buffer_load_u8 v17, v17, s[16:19], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(17)
	ds_load_2addr_stride64_b64 v[252:255], v12 offset1:4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, 0, v0
	ds_load_2addr_stride64_b64 v[0:3], v26 offset1:4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v177, v18
	ds_store_b8 v177, v19 offset:256
	ds_store_b8 v177, v24 offset:512
	ds_store_b8 v177, v25 offset:768
	ds_store_b8 v177, v4 offset:1024
	ds_store_b8 v177, v5 offset:1280
	ds_store_b8 v177, v6 offset:1536
	ds_store_b8 v177, v7 offset:1792
	ds_store_b8 v177, v8 offset:2048
	ds_store_b8 v177, v9 offset:2304
	ds_store_b8 v177, v10 offset:2560
	ds_store_b8 v177, v11 offset:2816
	ds_store_b8 v177, v14 offset:3072
	ds_store_b8 v177, v15 offset:3328
	ds_store_b8 v177, v16 offset:3584
	ds_store_b8 v177, v17 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[192:199], v[0:1], v[20:21], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[2:3], v[20:21], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[216:223], v[2:3], v[22:23], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[2:3], v[224:225], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[2:3], v[226:227], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[252:253], v[228:229], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[254:255], v[228:229], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[216:223], v[254:255], v[230:231], v[216:223] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[254:255], v[240:241], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[254:255], v[242:243], v[153:160] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v255, v199
	v_cvt_f32_i32_e32 v199, v203
	v_mov_b32_e32 v203, v78
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[8:11], v26 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[208:215], v[0:1], v[22:23], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[232:239], v[0:1], v[224:225], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[0:1], v[226:227], v[184:191] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[208:215], v[252:253], v[230:231], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[232:239], v[252:253], v[240:241], v[232:239] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v254, v198
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[145:152], v[252:253], v[242:243], v[145:152] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v252, v196
	v_cvt_f32_i32_e32 v178, v210
	v_cvt_f32_i32_e32 v253, v197
	v_mov_b32_e32 v196, v110
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v198, v222
	v_cvt_f32_i32_e32 v197, v223
	v_cvt_f32_i32_e32 v110, v239
	v_cvt_f32_i32_e32 v76, v235
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[8:9], v[20:21], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[10:11], v[20:21], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[22:23], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[14:21], v[10:11], v[22:23], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[22:29], v[8:9], v[224:225], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[10:11], v[224:225], v[184:191] neg_lo:[1,1,0]
	v_mov_b32_e32 v225, v116
	v_mov_b32_e32 v116, v84
	v_mov_b32_e32 v84, v94
	v_mov_b32_e32 v94, v45
	v_wmma_i32_16x16x16_iu4 v[38:45], v[8:9], v[226:227], v[184:191] neg_lo:[1,1,0]
	v_mov_b32_e32 v224, v51
	v_mov_b32_e32 v122, v52
	v_wmma_i32_16x16x16_iu4 v[46:53], v[10:11], v[226:227], v[184:191] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[8:11], v12 offset1:4
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v226, v200
	v_cvt_f32_i32_e32 v200, v201
	v_cvt_f32_i32_e32 v201, v220
	v_mov_b32_e32 v188, v82
	v_mov_b32_e32 v82, v65
	v_cvt_f32_i32_e32 v184, v215
	v_cvt_f32_i32_e32 v185, v216
	v_cvt_f32_i32_e32 v186, v221
	v_mov_b32_e32 v190, v180
	v_cvt_f32_i32_e32 v180, v208
	v_cvt_f32_i32_e32 v12, v209
	v_cvt_f32_i32_e32 v189, v233
	v_cvt_f32_i32_e32 v191, v211
	v_cvt_f32_i32_e32 v65, v232
	v_cvt_f32_i32_e32 v187, v234
	v_cvt_f32_i32_e32 v209, v217
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v208, v218
	v_cvt_f32_i32_e32 v244, v244
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[22:29], v[8:9], v[240:241], v[22:29] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[10:11], v[240:241], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[230:231], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[10:11], v[242:243], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[8:9], v[228:229], v[161:168] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v227, v27
	v_cvt_f32_i32_e32 v27, v36
	v_mov_b32_e32 v36, v54
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[169:176], v[10:11], v[228:229], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[14:21], v[10:11], v[230:231], v[14:21] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[38:45], v[8:9], v[242:243], v[38:45] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v194
	v_cvt_f32_i32_e32 v194, v213
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v242, v0
	v_cvt_f32_i32_e32 v241, v1
	v_cvt_f32_i32_e32 v213, v48
	v_mov_b32_e32 v48, v73
	v_dual_mov_b32 v73, v97 :: v_dual_cndmask_b32 v0, 0x80000000, v36
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v1, 0x80000000, v182, s0
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v220, v165
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v173, v14
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v210, v31
	v_mov_b32_e32 v31, v134
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	buffer_load_u16 v22, v1, s[28:31], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v133, s1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v206
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v206, v15
	v_cvt_f32_i32_e32 v15, v23
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v228, v207
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v23, v1, s[28:31], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v31, s3
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v207, v30
	v_mov_b32_e32 v30, v85
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v8, v192
	v_cvt_f32_i32_e32 v231, v205
	v_cvt_f32_i32_e32 v243, v204
	v_cvt_f32_i32_e32 v204, v219
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v219, v166
	v_cvt_f32_i32_e32 v166, v19
	v_cvt_f32_i32_e32 v205, v16
	v_cvt_f32_i32_e32 v16, v24
	v_cvt_f32_i32_e32 v19, v39
	v_mov_b32_e32 v39, v80
	v_mov_b32_e32 v192, v120
	v_mov_b32_e32 v120, v61
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v61, v212
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v212, v49
	v_mov_b32_e32 v49, v74
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v24, v1, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v1, v30, s[20:23], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v9, v193
	v_cvt_f32_i32_e32 v11, v195
	v_cvt_f32_i32_e32 v195, v202
	v_cvt_f32_i32_e32 v193, v214
	v_mov_b32_e32 v202, v79
	v_cvt_f32_i32_e32 v79, v238
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v238, v162
	v_cvt_f32_i32_e32 v162, v174
	v_cvt_f32_i32_e32 v174, v171
	v_cvt_f32_i32_e32 v171, v172
	v_cvt_f32_i32_e32 v172, v28
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v37, v53
	v_mov_b32_e32 v53, v123
	v_cvt_f32_i32_e32 v214, v47
	v_mov_b32_e32 v47, v106
	v_dual_mov_b32 v106, v118 :: v_dual_mov_b32 v97, v131
	v_mov_b32_e32 v118, v132
	v_mov_b32_e32 v132, v105
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v105, off, off offset:312 ; 4-byte Folded Reload
	v_mov_b32_e32 v54, v179
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v169
	v_cvt_f32_i32_e32 v240, v2
	v_cvt_f32_i32_e32 v239, v3
	v_cvt_f32_i32_e32 v169, v4
	v_cvt_f32_i32_e32 v223, v5
	v_cvt_f32_i32_e32 v222, v6
	v_cvt_f32_i32_e32 v221, v7
	v_mov_b32_e32 v80, v140
	v_cvt_f32_i32_e32 v85, v33
	v_cvt_f32_i32_e32 v33, v51
	v_mov_b32_e32 v51, v224
	v_cvt_f32_i32_e32 v235, v42
	v_cvt_f32_i32_e32 v233, v44
	v_cvt_f32_i32_e32 v232, v45
	v_mov_b32_e32 v45, v94
	v_cvt_f32_i32_e32 v211, v46
	v_cvt_f32_i32_e32 v229, v26
	v_cvt_f32_i32_e32 v26, v35
	v_cvt_f32_i32_e32 v35, v52
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v245, v245
	v_cvt_f32_i32_e32 v246, v246
	v_cvt_f32_i32_e32 v247, v247
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v218, v167
	v_cvt_f32_i32_e32 v167, v20
	v_cvt_f32_i32_e32 v20, v40
	v_cvt_f32_i32_e32 v40, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v78, v237
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v237, v163
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v77, v236
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v236, v164
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v164, v176
	v_cvt_f32_i32_e32 v176, v17
	v_cvt_f32_i32_e32 v17, v25
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v163, v175
	v_cvt_f32_i32_e32 v175, v170
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v234, v43
	v_mov_b32_e32 v43, v144
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v248, v248
	v_cvt_f32_i32_e32 v249, v249
	v_cvt_f32_i32_e32 v250, v250
	v_cvt_f32_i32_e32 v251, v251
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v179, v32
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v25, v29
	v_cvt_f32_i32_e32 v29, v34
	v_cvt_f32_i32_e32 v170, v18
	v_cvt_f32_i32_e32 v18, v38
	v_cvt_f32_i32_e32 v217, v168
	v_cvt_f32_i32_e32 v168, v21
	v_cvt_f32_i32_e32 v21, v41
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v31, 2, v31
	v_add_nc_u32_e32 v133, 2, v133
	v_add_nc_u32_e32 v182, 2, v182
	v_add_nc_u32_e32 v36, 2, v36
	v_add_nc_u32_e32 v30, s6, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v215, 16, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v8, v215, v8 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v105, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v59
	ds_load_b128 v[4:7], v59 offset:16
	scratch_load_b32 v224, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v104, v8, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v215, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v8, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v215, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v8, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v215, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v42, v141 :: v_dual_fmac_f32 v109, v8, v3
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v8, 16, v22
	scratch_load_b32 v22, off, off offset:152 ; 4-byte Folded Reload
	v_mov_b32_e32 v44, v143
	v_mov_b32_e32 v46, v181
	v_dual_mov_b32 v52, v122 :: v_dual_mul_f32 v9, v8, v180
	v_dual_mov_b32 v122, v115 :: v_dual_mov_b32 v115, v125
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v125, v142 :: v_dual_fmac_f32 v22, v9, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v8, v12
	v_dual_mov_b32 v94, v84 :: v_dual_fmac_f32 v39, v9, v1
	v_mul_f32_e32 v9, v8, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v80, v9, v2 :: v_dual_mul_f32 v9, v8, v191
	v_mov_b32_e32 v84, v116
	v_mov_b32_e32 v116, v225
	v_fmac_f32_e32 v135, v9, v3
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v9, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v10, v9, v65 :: v_dual_mov_b32 v65, v82
	v_mov_b32_e32 v82, v188
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v10, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v9, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v53, v10, v1 :: v_dual_mul_f32 v10, v9, v187
	v_dual_fmac_f32 v115, v10, v2 :: v_dual_mul_f32 v10, v9, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v10, v3
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v10, 16, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v10, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v11, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v146
	v_mul_f32_e32 v11, v226, v215
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v83, v0, v1 :: v_dual_mul_f32 v0, v10, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v74, v98 :: v_dual_fmac_f32 v93, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v148
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v0, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v215, v252
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v96, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v215, v253
	v_mov_b32_e32 v98, v129
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v253, off, off offset:56
	scratch_load_b32 v131, off, off offset:60
	scratch_load_b32 v129, off, off offset:36
	scratch_load_b32 v145, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v97, v0, v5 :: v_dual_mul_f32 v0, v215, v254
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v254, off, off offset:80
	scratch_load_b32 v225, off, off offset:44
	v_fmac_f32_e32 v98, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v215, v255
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v50, v130 :: v_dual_fmac_f32 v99, v0, v7
	v_mul_f32_e32 v0, v8, v61
	v_mov_b32_e32 v61, v120
	v_mov_b32_e32 v120, v192
	scratch_load_b32 v192, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v253, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v8, v194
	scratch_load_b32 v194, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v131, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v8, v193
	scratch_load_b32 v193, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v129, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v8, v184
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v145, v0, v7 :: v_dual_mul_f32 v0, v9, v77
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v12, v167, v8
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v224, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v45, v0, v5 :: v_dual_mul_f32 v0, v9, v79
	v_dual_mov_b32 v79, v202 :: v_dual_fmac_f32 v46, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v110
	v_mov_b32_e32 v110, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v47, v0, v7 :: v_dual_mul_f32 v0, v10, v149
	v_fmac_f32_e32 v56, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v65, v0, v5 :: v_dual_mul_f32 v0, v10, v151
	v_fmac_f32_e32 v66, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v152
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v0, v7
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[0:3], v59 offset:512
	ds_load_b128 v[4:7], v59 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_fmac_f32_e32 v193, v11, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v215, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v11, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v215, v195
	scratch_load_b32 v195, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v11, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v215, v199
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v254, v11, v3 :: v_dual_mul_f32 v11, v185, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v192, v11, v0 :: v_dual_mul_f32 v11, v8, v209
	v_dual_fmac_f32 v60, v11, v1 :: v_dual_mul_f32 v11, v8, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v11, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v8, v204
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v62, v11, v3 :: v_dual_mul_f32 v11, v244, v9
	scratch_load_b32 v244, off, off offset:100 ; 4-byte Folded Reload
	v_dual_fmac_f32 v114, v11, v0 :: v_dual_mul_f32 v11, v9, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v100, v11, v1 :: v_dual_mul_f32 v11, v9, v246
	v_fmac_f32_e32 v101, v11, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v9, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v11, v3 :: v_dual_mul_f32 v11, v153, v10
	v_fmac_f32_e32 v94, v11, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v154
	v_dual_mov_b32 v180, v190 :: v_dual_mul_f32 v11, v215, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v49, v0, v1 :: v_dual_mul_f32 v0, v10, v155
	v_fmac_f32_e32 v50, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v156
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v0, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v215, v243
	scratch_load_b32 v243, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v88, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v231, v215
	scratch_load_b32 v231, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v0, v5 :: v_dual_mul_f32 v0, v230, v215
	scratch_load_b32 v230, off, off offset:84 ; 4-byte Folded Reload
	v_fmac_f32_e32 v121, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v228, v215
	scratch_load_b32 v228, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v8, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v78, v203 :: v_dual_fmac_f32 v63, v0, v4
	v_mul_f32_e32 v0, v186, v8
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v198, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v117, v0, v6 :: v_dual_mul_f32 v0, v197, v8
	v_fmac_f32_e32 v116, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v103, v0, v4 :: v_dual_mul_f32 v0, v249, v9
	v_fmac_f32_e32 v107, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v250, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v251, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v158, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v244, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v159, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v180, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v160, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v0, v7
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v13, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v13, s6, v13
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v105, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v59
	ds_load_b128 v[4:7], v59 offset:16
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v199, off, off offset:128
	scratch_load_b32 v201, off, off offset:136
	scratch_load_b32 v204, off, off offset:144
	scratch_load_b32 v197, off, off offset:12
	scratch_load_b32 v202, off, off offset:124
	scratch_load_b32 v203, off, off offset:140
	scratch_load_b32 v191, off, off offset:4
	scratch_load_b32 v200, off, off offset:132
	scratch_load_b32 v198, off, off offset:16
	scratch_load_b32 v196, off, off offset:8
	scratch_load_b32 v123, off, off
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v243, v11, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v215, v238
	scratch_load_b32 v238, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v238, v11, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v215, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v231, v11, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v215, v236
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v230, v11, v3 :: v_dual_mul_f32 v11, v8, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v11, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v8, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v138, v11, v1 :: v_dual_mul_f32 v11, v8, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v136, v11, v2 :: v_dual_mul_f32 v11, v8, v239
	v_fmac_f32_e32 v137, v11, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v9, v14 :: v_dual_mul_f32 v14, v168, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v126, v11, v0 :: v_dual_mul_f32 v11, v9, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v26, v9
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v11, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v9, v16 :: v_dual_mul_f32 v16, v27, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v55, v11, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v9, v17
	v_dual_mul_f32 v17, v28, v9 :: v_dual_fmac_f32 v110, v11, v3
	v_mul_f32_e32 v11, v10, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v18, v33, v10 :: v_dual_fmac_f32 v95, v11, v0
	v_mul_f32_e32 v0, v10, v19
	v_mul_f32_e32 v11, v216, v215
	scratch_load_b32 v216, off, off offset:48 ; 4-byte Folded Reload
	v_mul_f32_e32 v19, v35, v10
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v79, v0, v1 :: v_dual_mul_f32 v0, v10, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v20, v37, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v81, v0, v2 :: v_dual_mul_f32 v0, v10, v21
	v_dual_fmac_f32 v91, v0, v3 :: v_dual_mul_f32 v0, v215, v220
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v220, off, off offset:72
	scratch_load_b32 v140, off, off offset:32
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v228, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v215, v219
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:68
	scratch_load_b32 v236, off, off offset:28
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v220, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v215, v218
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v218, off, off offset:64
	scratch_load_b32 v134, off, off offset:24
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v219, v0, v6 :: v_dual_mul_f32 v0, v215, v217
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v217, off, off offset:52
	scratch_load_b32 v226, off, off offset:20
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v218, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v8, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v71, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v8, v223
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v8, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v8, v221
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v69, v0, v7 :: v_dual_mul_f32 v0, v9, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v9, v227
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v236, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v9, v172
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v9, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v226, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v72, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v234
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v75, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v232
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v73, v0, v7
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[0:3], v59 offset:512
	ds_load_b128 v[4:7], v59 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v42, v11, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v11, v215, v175 :: v_dual_fmac_f32 v200, v12, v6
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v199, v14, v7 :: v_dual_fmac_f32 v44, v15, v5
	v_fmac_f32_e32 v195, v16, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v217, v11, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v215, v174 :: v_dual_fmac_f32 v194, v17, v7
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v120, v18, v5 :: v_dual_fmac_f32 v119, v19, v6
	v_fmac_f32_e32 v118, v20, v7
	v_fmac_f32_e32 v216, v11, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v215, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v11, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v173, v8
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v43, v11, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v8, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v198, v11, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v8, v205
	scratch_load_b32 v205, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v197, v11, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v8, v176
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v196, v11, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v207, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v202, v11, v0 :: v_dual_mul_f32 v11, v9, v210
	v_fmac_f32_e32 v123, v11, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v9, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v113, v11, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v9, v85
	v_mul_f32_e32 v9, v9, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v111, v11, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v211, v10 :: v_dual_fmac_f32 v112, v9, v4
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v11, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v214
	v_dual_mul_f32 v11, v166, v8 :: v_dual_mul_f32 v8, v8, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v57, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v10, v213 :: v_dual_mul_f32 v1, v163, v215
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v191, v8, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v201, v11, v5 :: v_dual_fmac_f32 v58, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v212
	v_mul_f32_e32 v2, v164, v215
	v_mul_f32_e32 v10, v10, v40
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v1, v6
	v_fmac_f32_e32 v78, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v162, v215 :: v_dual_mul_f32 v3, v215, v165
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v203, v2, v7
	v_fmac_f32_e32 v64, v10, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v225, v3, v4
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v205, v0, v5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v178, off, off offset:320
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b32 v7, off, off offset:336
	scratch_load_b32 v179, off, off offset:324
	scratch_load_b32 v206, off, off offset:328
	scratch_load_b32 v182, off, off offset:332
	v_dual_mov_b32 v77, v39 :: v_dual_mov_b32 v76, v22
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v105, 8, v178
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v13, 7, v182
	v_and_b32_e32 v190, 63, v178
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v203 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v228
	v_dual_mul_f32 v18, 0xbfb8aa3b, v43 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v13
	v_or_b32_e32 v5, 60, v13
	v_or_b32_e32 v8, 58, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v10
	v_mul_f32_e32 v162, 0xbfb8aa3b, v55
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_u32 v5, s1, s72, v5
	v_add_co_ci_u32_e64 v6, null, s73, 0, s1
	v_add_co_u32 v1, s0, s72, v190
	v_add_co_u32 v8, s1, s72, v8
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 56, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	v_add_co_u32 v5, s6, s72, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s73, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 52, v13
	v_or_b32_e32 v9, 50, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[5:6]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	v_add_co_u32 v8, s10, s72, v9
	v_add_co_ci_u32_e64 v9, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 48, v13
	v_or_b32_e32 v6, 46, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[8:9]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	v_add_co_u32 v5, s14, s72, v6
	v_add_co_ci_u32_e64 v6, null, s73, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 44, v13
	v_or_b32_e32 v9, 42, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[5:6]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	v_add_co_u32 v8, s18, s72, v9
	v_add_co_ci_u32_e64 v9, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 40, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 38, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s22, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v6, null, s73, 0, s22
	v_add_co_u32 v3, s22, s72, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[8:9]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v8, 0xbfb8aa3b, v42 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v243
	v_mul_f32_e32 v9, 0xbfb8aa3b, v204
	v_cndmask_b32_e64 v14, 0, 0x42800000, s27
	v_mul_f32_e32 v183, 0xbfb8aa3b, v219
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[5:6]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[5:6]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v6, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v218
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v11, 0, 0x42800000, s26
	v_mul_f32_e32 v188, 0xbfb8aa3b, v238
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v203
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v42 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v204
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s27
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_dual_mul_f32 v177, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v19, 0xbfb8aa3b, v199 :: v_dual_fmac_f32 v6, 0xbfb8aa3b, v205
	v_mul_f32_e32 v167, 0xbfb8aa3b, v196
	v_ldexp_f32 v8, v8, v5
	v_mul_f32_e32 v5, 0xbfb8aa3b, v225
	v_exp_f32_e32 v17, v14
	v_ldexp_f32 v10, v11, v10
	v_exp_f32_e32 v16, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v19
	v_mul_f32_e32 v163, 0xbfb8aa3b, v110
	v_mul_f32_e32 v23, 0xbfb8aa3b, v194
	v_mul_f32_e32 v158, 0xbfb8aa3b, v226
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, s27
	v_ldexp_f32 v11, v17, v12
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v174, 0xbfb8aa3b, v136
	v_ldexp_f32 v9, v16, v9
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v16, 0xbfb8aa3b, v201 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v43
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s27
	v_mul_f32_e32 v147, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v22, v22
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v23
	v_mul_f32_e32 v155, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v153, 0xbfb8aa3b, v95
	v_dual_mul_f32 v152, 0xbfb8aa3b, v79 :: v_dual_add_f32 v9, 1.0, v9
	v_cndmask_b32_e64 v26, 0, 0x42800000, s27
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s27
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v12, v17, v12
	v_mul_f32_e32 v17, 0xbfb8aa3b, v202
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v194
	v_mul_f32_e32 v27, 0xbfb8aa3b, v118
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v20, 0, 0x42800000, s26
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v201
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s26
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v200
	v_exp_f32_e32 v18, v18
	v_dual_mul_f32 v151, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v150, 0xbfb8aa3b, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s27, v204, v10, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v186, 0xbfb8aa3b, v231 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v230
	v_ldexp_f32 v16, v18, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v12, v12, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v184, 0xbfb8aa3b, v220 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v217
	v_ldexp_f32 v18, v20, v19
	v_ldexp_f32 v19, v22, v21
	v_mul_f32_e32 v22, 0xbfb8aa3b, v195
	v_mul_f32_e32 v20, 0xbfb8aa3b, v44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v202
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v14, 0xbfb8aa3b, v216 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v24, 0, 0x42800000, s26
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v195
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v44
	v_dual_mul_f32 v176, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v71
	v_dual_mul_f32 v172, 0xbfb8aa3b, v70 :: v_dual_mul_f32 v161, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v17, v21, v17
	v_mul_f32_e32 v148, 0xbfb8aa3b, v75
	v_dual_mul_f32 v170, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v198
	v_dual_mul_f32 v168, 0xbfb8aa3b, v197 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v134
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v191
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v165, 0xbfb8aa3b, v126
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v21, v24, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v128
	v_mul_f32_e32 v24, 0xbfb8aa3b, v120
	v_ldexp_f32 v20, v22, v20
	v_ldexp_f32 v22, v26, v25
	v_mul_f32_e32 v25, 0xbfb8aa3b, v119
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v164, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v157, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v28, 0, 0x42800000, s26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v27
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v128
	v_dual_mul_f32 v156, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v149, 0xbfb8aa3b, v72
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v30, 0, 0x42800000, s26
	v_mul_f32_e32 v160, 0xbfb8aa3b, v236
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s26
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v119 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v118
	v_exp_f32_e32 v24, v24
	v_dual_mul_f32 v154, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v143, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v30, v30
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v141, 36, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[3:4]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v24, v23
	v_mul_f32_e32 v146, 0xbfb8aa3b, v73
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v27, v25
	v_ldexp_f32 v27, v30, v29
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v10, v10, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v8, 1.0, v8 :: v_dual_add_f32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v9, v9, v205
	v_rcp_f32_e32 v33, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v31, null, v8, v8, v42
	v_div_scale_f32 v32, vcc_lo, v42, v8, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	s_mov_b32 s71, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v30, v33, 1.0
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v120
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v37, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v11, v11, v203
	v_mul_f32_e32 v40, v38, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v39, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v28, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v31, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v28, v24
	v_rcp_f32_e32 v28, v29
	v_mul_f32_e32 v34, v32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v31, v34, v32
	v_fma_f32 v35, -v29, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v36, v24
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s26, v205, v9, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v31, v34, v32
	v_mul_f32_e32 v36, v35, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v31, v24, v34
	v_rcp_f32_e32 v31, v41
	v_fma_f32 v32, -v29, v36, v35
	v_fma_f32 v34, -v37, v39, 1.0
	s_mov_b32 vcc_lo, s26
	v_div_fixup_f32 v8, v24, v8, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v142, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v32, v28
	v_fma_f32 v32, -v30, v40, v38
	v_fmac_f32_e32 v39, v34, v39
	v_div_scale_f32 v34, s26, v43, v12, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v29, v36, v35
	v_fmac_f32_e32 v40, v32, v33
	v_fma_f32 v32, -v41, v31, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v144, 0xbfb8aa3b, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, s28, v203, v11, v203
	v_div_fmas_f32 v24, v24, v28, v36
	v_fma_f32 v28, -v30, v40, v38
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, null, v16, v16, v201
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v9, v24, v9, v205
	v_mul_f32_e32 v30, v29, v39
	v_div_fmas_f32 v28, v28, v33, v40
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v34, v31 :: v_dual_mul_f32 v127, v127, v9
	v_fma_f32 v35, -v37, v30, v29
	v_div_scale_f32 v38, null, v18, v18, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v41, v36, v34
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v30, v35, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v32, v33, 1.0
	v_fmac_f32_e32 v36, v24, v31
	v_div_scale_f32 v24, s27, v201, v16, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v37, v30, v29
	v_div_scale_f32 v37, null, v19, v19, v199
	v_fmac_f32_e32 v33, v35, v33
	v_div_fixup_f32 v10, v28, v10, v204
	v_rcp_f32_e32 v28, v38
	v_rcp_f32_e32 v35, v37
	v_div_fmas_f32 v29, v29, v39, v30
	v_fma_f32 v30, -v41, v36, v34
	v_mul_f32_e32 v34, v24, v33
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v39, s28, v200, v18, v200
	v_div_scale_f32 v41, null, v17, v17, v202
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v38, v28, 1.0
	v_div_fmas_f32 v30, v30, v31, v36
	v_fma_f32 v31, -v32, v34, v24
	v_div_scale_f32 v42, s26, v199, v19, v199
	v_fmac_f32_e32 v28, v40, v28
	v_fma_f32 v40, -v37, v35, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v130, 0xbfb8aa3b, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v31, v33
	v_div_scale_f32 v31, null, v20, v20, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v39, v28 :: v_dual_fmac_f32 v35, v40, v35
	v_rcp_f32_e32 v40, v41
	v_div_fixup_f32 v11, v29, v11, v203
	v_div_fixup_f32 v12, v30, v12, v43
	v_fma_f32 v29, -v38, v36, v39
	v_mul_f32_e32 v30, v42, v35
	v_fma_f32 v24, -v32, v34, v24
	v_rcp_f32_e32 v32, v31
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v36, v29, v28
	v_fma_f32 v29, -v37, v30, v42
	v_fma_f32 v43, -v41, v40, 1.0
	v_div_fmas_f32 v24, v24, v33, v34
	s_mov_b32 vcc_lo, s28
	v_fma_f32 v33, -v38, v36, v39
	v_fmac_f32_e32 v30, v29, v35
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, s29, v202, v17, v202
	v_fma_f32 v34, -v31, v32, 1.0
	v_div_fmas_f32 v28, v33, v28, v36
	v_fma_f32 v33, -v37, v30, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v29, v43, v40
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v32, v34, v32
	v_div_scale_f32 v34, null, v21, v21, v195
	v_fma_f32 v36, -v41, v29, v43
	v_div_scale_f32 v37, s27, v44, v20, v44
	v_div_fmas_f32 v30, v33, v35, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_fmac_f32 v29, v36, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_mul_f32 v35, v37, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v24, v16, v201
	v_div_fixup_f32 v18, v28, v18, v200
	v_div_fixup_f32 v19, v30, v19, v199
	v_fma_f32 v24, -v41, v29, v43
	v_fma_f32 v28, -v31, v35, v37
	v_div_scale_f32 v30, null, v22, v22, v194
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v34, v33, 1.0
	s_mov_b32 vcc_lo, s29
	v_fmac_f32_e32 v35, v28, v32
	v_div_fmas_f32 v24, v24, v40, v29
	v_rcp_f32_e32 v29, v30
	v_fmac_f32_e32 v33, v36, v33
	v_div_scale_f32 v28, s26, v195, v21, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v24, v17, v202
	v_fma_f32 v24, -v31, v35, v37
	v_div_scale_f32 v36, null, v23, v23, v128
	v_mul_f32_e32 v31, v28, v33
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v30, v29, 1.0
	v_div_fmas_f32 v24, v24, v32, v35
	v_div_scale_f32 v35, null, v26, v26, v120
	v_fma_f32 v32, -v34, v31, v28
	v_rcp_f32_e32 v38, v36
	v_fmac_f32_e32 v29, v37, v29
	v_div_scale_f32 v37, s27, v194, v22, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v32, v33
	v_div_fixup_f32 v20, v24, v20, v44
	v_rcp_f32_e32 v24, v35
	v_mul_f32_e32 v32, v37, v29
	v_div_scale_f32 v40, null, v25, v25, v119
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v36, v38, 1.0
	v_fma_f32 v28, -v34, v31, v28
	v_fma_f32 v34, -v30, v32, v37
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v44, null, v27, v27, v118
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v35, v24, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, s28, v128, v23, v128
	v_div_fmas_f32 v28, v28, v33, v31
	v_fmac_f32_e32 v32, v34, v29
	v_fmac_f32_e32 v24, v42, v24
	v_div_scale_f32 v34, s26, v120, v26, v120
	v_mul_f32_e32 v41, v39, v38
	v_rcp_f32_e32 v43, v40
	v_rcp_f32_e32 v33, v44
	v_div_fixup_f32 v21, v28, v21, v195
	v_fma_f32 v28, -v30, v32, v37
	v_mul_f32_e32 v30, v34, v24
	v_fma_f32 v31, -v36, v41, v39
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v124, v124, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v29, v32
	v_fma_f32 v32, -v35, v30, v34
	v_fma_f32 v42, -v40, v43, 1.0
	v_fmac_f32_e32 v41, v31, v38
	v_fma_f32 v37, -v44, v33, 1.0
	v_div_scale_f32 v31, s29, v119, v25, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v30, v32, v24 :: v_dual_fmac_f32 v43, v42, v43
	v_fma_f32 v29, -v36, v41, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, s27, v118, v27, v118
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v22, v28, v22, v194
	v_fma_f32 v28, -v35, v30, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v31, v43
	v_div_fmas_f32 v29, v29, v38, v41
	s_mov_b32 vcc_lo, s26
	v_mul_f32_e32 v38, v37, v33
	v_div_fmas_f32 v24, v28, v24, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v40, v36, v31
	v_div_fixup_f32 v23, v29, v23, v128
	v_fma_f32 v29, -v44, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v188
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v243
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v32, v43
	s_mov_b32 vcc_lo, s29
	v_fmac_f32_e32 v38, v29, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s28
	v_exp_f32_e32 v30, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v40, v36, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v128, v193, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v44, v38, v37
	v_div_fixup_f32 v24, v24, v26, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v43, v36
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v120, v192, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v33, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	v_ldexp_f32 v8, v30, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v121, v121, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v31, v27, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v238
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	v_exp_f32_e32 v9, v33
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v230
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v8, v8, v243
	v_div_fixup_f32 v25, v28, v25, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v12, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v132, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v9, v9, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v118, v117, v18 :: v_dual_mul_f32 v117, v116, v19
	v_mul_f32_e32 v116, v114, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v231 :: v_dual_add_f32 v9, 1.0, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v10, v12, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v11, v27, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v106, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v9, v9, v238
	v_fmac_f32_e32 v27, v12, v27
	v_div_scale_f32 v12, vcc_lo, v243, v8, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v19, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v94, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v21, v12, v27 :: v_dual_mul_f32 v114, v107, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v84, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v10, v10, v230
	v_fma_f32 v23, -v11, v21, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v18, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v17, v19, 1.0
	v_rcp_f32_e32 v18, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v21, v23, v27 :: v_dual_add_f32 v16, 1.0, v16
	v_fmac_f32_e32 v19, v22, v19
	v_div_scale_f32 v22, s26, v238, v9, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v11, v21, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v244, v24
	v_mul_f32_e32 v85, v180, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v23, v22, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v20, v18, 1.0
	v_div_fmas_f32 v11, v11, v27, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v16, v16, v231
	v_fma_f32 v12, -v17, v23, v22
	v_dual_fmac_f32 v18, v24, v18 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v228
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v90, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, s27, v230, v10, v230
	v_fmac_f32_e32 v23, v12, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v26, v18
	v_div_fixup_f32 v8, v11, v8, v243
	v_fma_f32 v11, -v17, v23, v22
	v_fma_f32 v28, -v25, v24, 1.0
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v17, -v20, v27, v26
	v_div_scale_f32 v22, s28, v231, v16, v231
	v_div_fmas_f32 v11, v11, v19, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_ldexp_f32 v12, v21, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v28, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v17, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v22, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v20, v27, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v219
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v12, v12, v228
	v_fma_f32 v17, -v25, v19, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v220
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v20, v18, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v15, v26
	v_fmac_f32_e32 v19, v17, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v11, v9, v238
	v_div_fixup_f32 v10, v18, v10, v230
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v25, v19, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v20, v20, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v26, v15, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v108, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v23
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v218
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v22, v24, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v15, v21, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, vcc_lo, v228, v12, v228
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v20, v20, v219
	v_mul_f32_e32 v28, v21, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v22, null, v17, v17, v220
	v_div_fixup_f32 v11, v19, v16, v231
	v_rcp_f32_e32 v16, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v26, v28, v21
	v_rcp_f32_e32 v24, v22
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v25, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v132, v54, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, s26, v220, v17, v220
	v_dual_fmac_f32 v28, v18, v15 :: v_dual_add_f32 v9, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v168
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v27, v16, 1.0
	v_fma_f32 v10, -v26, v28, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v22, v24, 1.0
	v_div_scale_f32 v21, null, v9, v9, v218
	v_fmac_f32_e32 v16, v18, v16
	v_div_scale_f32 v18, s27, v219, v20, v219
	v_div_fmas_f32 v10, v10, v15, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v19, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v25, v18, v16
	v_rcp_f32_e32 v15, v21
	v_div_fixup_f32 v8, v10, v12, v228
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v11, v24
	v_fma_f32 v10, -v27, v25, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v217
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v22, v19, v11
	v_fmac_f32_e32 v25, v10, v16
	v_fma_f32 v12, -v21, v15, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v10, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v23, v24
	v_fma_f32 v18, -v27, v25, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v15, v12, v15 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v22, v19, v11
	v_div_scale_f32 v22, s28, v218, v9, v218
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v10, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v11, v24, v19
	v_mul_f32_e32 v19, v22, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_exp_f32_e32 v6, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v11, v17, v220
	v_fma_f32 v14, -v21, v19, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v10, v10, v217
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v19, v14, v15
	v_div_fmas_f32 v16, v18, v16, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v12, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v14, v16, v20, v219
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v21, v19, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v97, v97, v11 :: v_dual_mul_f32 v98, v98, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v6, v6, v216
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v26, v12, 1.0
	v_div_fmas_f32 v15, v16, v15, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v16, v18
	v_div_scale_f32 v5, s26, v217, v10, v217
	v_fmac_f32_e32 v12, v20, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v15, v9, v218
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v23
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v20, v5, v12 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v225
	v_fma_f32 v21, -v18, v16, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v99, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v26, v20, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v21, v16
	v_div_scale_f32 v21, s27, v216, v6, v216
	v_div_scale_f32 v22, null, v9, v9, v89
	v_fmac_f32_e32 v20, v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v17, v21, v16
	s_mov_b32 vcc_lo, s26
	v_rcp_f32_e32 v11, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v15, v19, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v26, v20, v5
	v_fma_f32 v14, -v18, v17, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v96, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v176
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v5, v12, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v14, v16
	v_fma_f32 v12, -v22, v11, 1.0
	v_div_scale_f32 v14, null, v8, v8, v225
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v10, v217
	v_fma_f32 v10, -v18, v17, v21
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, s26, v89, v9, v89
	v_rcp_f32_e32 v15, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v139
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v20, v12, v11
	v_div_fmas_f32 v10, v10, v16, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, s28
	v_exp_f32_e32 v19, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v14, v15, 1.0
	v_div_fixup_f32 v6, v10, v6, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v22, v20, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v21, v15
	v_div_scale_f32 v21, s27, v225, v8, v225
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v10, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v19, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v18, v21, v15 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v22, v20, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v14, v18, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v16, v17, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v17, null, v10, v10, v139
	v_fmac_f32_e32 v18, v22, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v17
	v_div_fmas_f32 v11, v12, v11, v20
	v_fma_f32 v12, -v14, v18, v21
	v_div_scale_f32 v24, null, v16, v16, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v9, v11, v9, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v24
	v_div_fmas_f32 v12, v12, v15, v18
	v_fma_f32 v25, -v17, v23, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, vcc_lo, v139, v10, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v15, v22, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v25, v23
	v_div_fixup_f32 v8, v12, v8, v225
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v24, v21, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v20, v18, v23 :: v_dual_mul_f32 v89, v88, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v19, v21
	v_div_scale_f32 v19, s26, v138, v16, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v17, v20, v18
	v_div_scale_f32 v22, null, v15, v15, v137
	v_mul_f32_e32 v11, v19, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v254, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v8, v23
	v_rcp_f32_e32 v25, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v12, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v24, v11, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v87, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v17, v20, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v5
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v8, v21
	v_div_scale_f32 v14, s27, v137, v15, v137
	v_div_fmas_f32 v6, v6, v23, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v22, v25, 1.0
	v_div_scale_f32 v9, null, v5, v5, v136
	v_fma_f32 v12, -v24, v11, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v25, v8, v25
	v_rcp_f32_e32 v8, v9
	v_div_fmas_f32 v11, v12, v21, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v10, v139
	v_mul_f32_e32 v10, v14, v25
	v_div_fixup_f32 v11, v11, v16, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v18
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, s26, v136, v5, v136
	v_fma_f32 v12, -v9, v8, 1.0
	v_fma_f32 v18, -v22, v10, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v77, v77, v11 :: v_dual_mul_f32 v76, v76, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v8, v12, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	v_ldexp_f32 v16, v16, v17
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v10, v18, v25 :: v_dual_mul_f32 v17, v20, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v22, v10, v14
	v_fma_f32 v23, -v9, v17, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v16, v16, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v19, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v23, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_exp_f32_e32 v21, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v9, v17, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v20, null, v12, v12, v70
	v_div_fmas_f32 v10, v14, v25, v10
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v21, v18
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v22, v19, 1.0
	v_div_fmas_f32 v8, v9, v8, v17
	v_rcp_f32_e32 v17, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v18, v19
	v_div_scale_f32 v18, vcc_lo, v71, v16, v71
	v_div_fixup_f32 v10, v10, v15, v137
	v_div_fixup_f32 v5, v8, v5, v136
	v_div_scale_f32 v8, null, v14, v14, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v15, v18, v19
	v_fma_f32 v21, -v20, v17, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v133, v80, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v9, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v9, v8
	v_fma_f32 v23, -v22, v15, v18
	v_fmac_f32_e32 v17, v21, v17
	v_div_scale_f32 v21, s26, v70, v12, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v135, v135, v10
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v15, v23, v19 :: v_dual_mul_f32 v10, v21, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v8, v9, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v23, null, v5, v5, v69
	v_fma_f32 v6, -v22, v15, v18
	v_fma_f32 v18, -v20, v10, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v9, v11, v9
	v_rcp_f32_e32 v11, v23
	v_div_scale_f32 v22, s27, v68, v14, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v10, v18, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v6, v6, v19, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v22, v9
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v198
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v23, v11, 1.0
	v_div_fixup_f32 v6, v6, v16, v71
	v_fma_f32 v16, -v20, v10, v21
	v_div_scale_f32 v21, s28, v69, v5, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v24, v11
	v_fma_f32 v20, -v8, v19, v22
	v_div_fmas_f32 v10, v16, v17, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, s29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v16, v21, v11 :: v_dual_fmac_f32 v19, v20, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s29
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v197
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v15, v18, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v23, v16, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v8, v19, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v20, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v24
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v22, null, v15, v15, v198
	v_div_fmas_f32 v8, v8, v9, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v22
	v_fma_f32 v21, -v23, v16, v21
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v20, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v10, v12, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v8, v8, v14, v68
	v_div_fmas_f32 v11, v21, v11, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v9, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v22, v19, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v11, v5, v69
	v_div_scale_f32 v18, null, v16, v16, v197
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v17, v19
	v_div_scale_f32 v17, vcc_lo, v198, v15, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v21, v18
	v_div_scale_f32 v24, null, v9, v9, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v25, v17, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v145, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v11, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v131, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v22, v25, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v129, v8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v18, v21, 1.0
	v_div_scale_f32 v8, s26, v197, v16, v197
	v_fmac_f32_e32 v25, v12, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v23, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v14, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v12, -v24, v11, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v253, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v22, v25, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v14, v8, v21
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, s27, v196, v9, v196
	v_div_fmas_f32 v10, v10, v19, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v5, v5, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v12, v11
	v_fma_f32 v20, -v18, v14, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v17
	v_div_fixup_f32 v6, v10, v15, v198
	v_fma_f32 v10, -v24, v22, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v126 :: v_dual_fmac_f32 v14, v20, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v10, v11
	v_div_scale_f32 v20, s28, v191, v5, v191
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v17, v19, 1.0
	v_fma_f32 v8, -v18, v14, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v24, v22, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v60, v60, v6 :: v_dual_fmac_f32 v19, v15, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v10, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v21, v14
	v_mul_f32_e32 v14, v20, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v8, v16, v197
	v_fma_f32 v21, -v17, v14, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v10, v10, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v14, v21, v19
	v_div_fmas_f32 v11, v12, v11, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v18, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v15, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v9, v11, v9, v196
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v17, v14, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v61, v8 :: v_dual_mul_f32 v62, v62, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v12, v12, v125
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v25, v15, 1.0
	v_div_fmas_f32 v11, v11, v19, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v14, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v18, v15
	v_div_scale_f32 v18, s26, v126, v10, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v11, v5, v191
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v18, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v17, v14, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v63, v5
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v25, v20, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v21, v14
	v_div_scale_f32 v21, s27, v125, v12, v125
	v_div_scale_f32 v22, null, v5, v5, v110
	v_fmac_f32_e32 v20, v16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v16, v21, v14
	s_mov_b32 vcc_lo, s26
	v_rcp_f32_e32 v8, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v19, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v25, v20, v18
	v_fma_f32 v18, -v17, v16, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v15, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v18, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v11, -v22, v8, 1.0
	v_div_scale_f32 v15, null, v6, v6, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v9, v10, v126
	v_fma_f32 v10, -v17, v16, v21
	v_fmac_f32_e32 v8, v11, v8
	v_div_scale_f32 v11, s26, v110, v5, v110
	v_rcp_f32_e32 v17, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v20, v11, v8
	v_div_fmas_f32 v10, v10, v14, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s28
	v_exp_f32_e32 v19, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v15, v17, 1.0
	v_div_fixup_f32 v10, v10, v12, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v236
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v22, v20, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v21, v17
	v_div_scale_f32 v21, s27, v55, v6, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v12, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v19, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v18, v21, v17 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v22, v20, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v15, v18, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v16, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v16, null, v12, v12, v140
	v_fmac_f32_e32 v18, v22, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v16
	v_div_fmas_f32 v8, v11, v8, v20
	v_fma_f32 v11, -v15, v18, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v24, null, v14, v14, v236
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v11, v11, v17, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v226
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, vcc_lo, v140, v12, v140
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v25, -v16, v23, 1.0
	v_rcp_f32_e32 v21, v24
	v_div_fixup_f32 v6, v11, v6, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v20
	v_ldexp_f32 v17, v22, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v25, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v115, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v8, v5, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v20, v18, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v24, v21, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v52, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v122, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v17, v17, v134
	v_fma_f32 v6, -v16, v20, v18
	v_fmac_f32_e32 v21, v19, v21
	v_div_scale_f32 v19, s26, v236, v14, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v25, v22
	v_fmac_f32_e32 v20, v6, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v8, v19, v21 :: v_dual_mul_f32 v53, v53, v10
	v_div_scale_f32 v15, s27, v134, v17, v134
	v_fma_f32 v9, -v16, v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v6, -v24, v8, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v23, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v8, v6, v21
	v_fma_f32 v6, -v22, v25, 1.0
	v_div_scale_f32 v10, null, v5, v5, v226
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v24, v8, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v6, v25
	v_rcp_f32_e32 v6, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fixup_f32 v9, v9, v12, v140
	v_div_fmas_f32 v8, v11, v21, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v11, v15, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v224, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v10, v6, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v8, v14, v236
	v_fma_f32 v14, -v22, v11, v15
	v_fmac_f32_e32 v6, v12, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v18, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, s26, v226, v5, v226
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v113
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_fmac_f32 v11, v14, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v14, v12, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v16, v16, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v22, v11, v15
	v_fma_f32 v22, -v10, v14, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	v_exp_f32_e32 v21, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v20, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v22, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v45, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v15, v25, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v10, v14, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v15, v21, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v23, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v20, null, v12, v12, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_fmac_f32 v24, v18, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, s27, v123, v16, v123
	v_rcp_f32_e32 v21, v20
	v_div_fmas_f32 v6, v10, v6, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v10, null, v15, v15, v111
	v_mul_f32_e32 v14, v18, v24
	v_div_fixup_f32 v11, v11, v17, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v5, v6, v5, v226
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v19, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v10
	v_fma_f32 v19, -v23, v14, v18
	v_fma_f32 v22, -v20, v21, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v47, v47, v5 :: v_dual_mul_f32 v46, v46, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v5, 1.0, v6 :: v_dual_fmac_f32 v14, v19, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v6, s26, v113, v12, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v10, v17, 1.0
	v_fma_f32 v18, -v23, v14, v18
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v19, null, v5, v5, v112
	v_mul_f32_e32 v22, v6, v21
	v_fmac_f32_e32 v17, v11, v17
	v_div_scale_f32 v11, s28, v111, v15, v111
	v_div_fmas_f32 v14, v18, v24, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v19
	v_fma_f32 v8, -v20, v22, v6
	v_mul_f32_e32 v9, v11, v17
	v_div_fixup_f32 v14, v14, v16, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v8, v21
	v_fma_f32 v8, -v10, v9, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v100, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v19, v23, 1.0
	v_fmac_f32_e32 v9, v8, v17
	v_fma_f32 v6, -v20, v22, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v24
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v16, v23
	v_div_scale_f32 v16, s27, v112, v5, v112
	v_fma_f32 v10, -v10, v9, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v26
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_mul_f32_e32 v20, v16, v23
	v_div_fmas_f32 v6, v6, v21, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v151
	v_ldexp_f32 v8, v8, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v19, v20, v16
	v_div_fixup_f32 v6, v6, v12, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v10, v17, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v11, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v21, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v8, v8, v95
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v19, v20, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v11
	v_div_scale_f32 v24, null, v10, v10, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v9, v9, v15, v111
	v_div_fmas_f32 v16, v16, v23, v20
	v_rcp_f32_e32 v20, v24
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v18
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v11, v19, 1.0
	v_div_fixup_f32 v5, v16, v5, v112
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v102, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v18, v19
	v_div_scale_f32 v18, vcc_lo, v95, v8, v95
	v_fma_f32 v22, -v24, v20, 1.0
	v_div_scale_f32 v17, null, v12, v12, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v15, v18, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v103, v5 :: v_dual_fmac_f32 v20, v22, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, s26, v79, v10, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v5, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v101, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v16, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v11, v15, v18
	v_mul_f32_e32 v16, v22, v20
	v_div_scale_f32 v14, s27, v91, v12, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_fmac_f32 v15, v9, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v24, v16, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v17, v5, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v11, v15, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, v9, v20
	v_fmac_f32_e32 v5, v21, v5
	v_div_scale_f32 v21, null, v6, v6, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v11, v11, v19, v15
	v_fma_f32 v15, -v24, v16, v22
	s_mov_b32 vcc_lo, s26
	v_mul_f32_e32 v9, v14, v5
	v_rcp_f32_e32 v18, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v20, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v17, v9, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s28
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v11, v8, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v9, v19, v5
	v_fma_f32 v16, -v21, v18, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v25
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v16, v18
	v_div_scale_f32 v16, s26, v81, v6, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v17, v9, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v17, v16, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v14, v5, v9
	v_fma_f32 v9, -v21, v17, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v22, v20
	v_exp_f32_e32 v14, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v19, v19, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v9, v18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v12, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v9, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v21, v17, v16
	v_div_scale_f32 v16, null, v11, v11, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v14, v24
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v16
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v23, v9, 1.0
	v_div_fmas_f32 v12, v12, v18, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, vcc_lo, v72, v19, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v9, v22, v9
	v_div_scale_f32 v17, null, v14, v14, v74
	v_fma_f32 v22, -v16, v24, 1.0
	v_div_fixup_f32 v6, v12, v6, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v17
	v_mul_f32_e32 v25, v18, v9
	v_fmac_f32_e32 v24, v22, v24
	v_div_scale_f32 v22, s26, v75, v11, v75
	v_div_fixup_f32 v10, v15, v10, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v93, v6 :: v_dual_mul_f32 v30, v92, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v23, v25, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v6, v22, v24
	v_fma_f32 v15, -v17, v21, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v83, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v12, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v5, v9
	v_fma_f32 v5, -v16, v6, v22
	v_fmac_f32_e32 v21, v15, v21
	v_div_scale_f32 v12, s27, v74, v14, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v82, v8
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v23, v25, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v6, v5, v24 :: v_dual_mul_f32 v5, v12, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v10, v9, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v10, -v16, v6, v22
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v15, -v17, v5, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s28
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v6, v10, v24, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v5, v15, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v8, v8, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v17, v5, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v11, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v17, v15
	v_div_fmas_f32 v5, v12, v21, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v20
	v_cndmask_b32_e64 v21, 0, 0x42800000, s26
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v78
	v_ldexp_f32 v10, v16, v10
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v14, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v64
	v_exp_f32_e32 v16, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v15, v17, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v12, v18
	v_exp_f32_e32 v12, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, vcc_lo, v73, v8, v73
	v_div_scale_f32 v14, null, v10, v10, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v24, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v14
	v_div_fixup_f32 v9, v9, v19, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v12, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v11, v11, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v23, v18, v17 :: v_dual_add_f32 v12, 1.0, v12
	v_div_scale_f32 v20, null, v16, v16, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v24, v22
	v_fma_f32 v25, -v14, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v32, null, v12, v12, v64
	v_rcp_f32_e32 v26, v20
	v_fma_f32 v27, -v15, v23, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v25, v21
	v_rcp_f32_e32 v34, v32
	v_div_scale_f32 v25, s26, v57, v10, v57
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v22, v24, 1.0
	v_fmac_f32_e32 v23, v27, v17
	v_mul_f32_e32 v35, v25, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v20, v26, 1.0
	v_fmac_f32_e32 v24, v33, v24
	v_div_scale_f32 v33, s27, v58, v11, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, s28, v78, v16, v78
	v_fma_f32 v15, -v15, v23, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v34
	v_div_scale_f32 v40, s29, v64, v12, v64
	v_mul_f32_e32 v41, v33, v24
	v_fma_f32 v18, -v14, v35, v25
	v_mul_f32_e32 v42, v27, v26
	v_div_fmas_f32 v15, v15, v17, v23
	v_mul_f32_e32 v23, v40, v34
	v_fma_f32 v17, -v22, v41, v33
	v_fmac_f32_e32 v35, v18, v21
	v_fma_f32 v18, -v20, v42, v27
	v_div_fixup_f32 v8, v15, v8, v73
	v_fma_f32 v15, -v32, v23, v40
	v_fmac_f32_e32 v41, v17, v24
	v_fma_f32 v14, -v14, v35, v25
	v_fmac_f32_e32 v42, v18, v26
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v23, v15, v34
	v_fma_f32 v17, -v22, v41, v33
	v_div_fmas_f32 v14, v14, v21, v35
	v_fma_f32 v15, -v20, v42, v27
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v18, -v32, v23, v40
	v_div_fmas_f32 v17, v17, v24, v41
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v66, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v26, v42
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v65, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v34, v23
	v_div_fixup_f32 v10, v14, v10, v57
	v_div_fixup_f32 v6, v15, v16, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v67, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v17, v11, v58
	v_div_fixup_f32 v5, v18, v12, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v56, v9 :: v_dual_mul_f32 v19, v51, v6
	v_mul_f32_e32 v24, v49, v10
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v109|, |v96|, |v97|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v48, v5
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v104|, |v108|
	v_max3_f32 v9, |v86|, |v87|, |v88|
	v_max3_f32 v10, |v89|, |v127|, |v121|
	v_max_f32_e64 v11, |v76|, |v77|
	v_max3_f32 v12, |v135|, |v68|, |v69|
	v_max3_f32 v14, |v60|, |v61|, |v62|
	v_max3_f32 v15, |v63|, |v119|, |v118|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v50, v8
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, |v98|, |v99|, |v128|
	v_max3_f32 v5, v5, |v132|, v6
	v_max3_f32 v6, v9, v10, |v124|
	v_max3_f32 v9, |v70|, |v71|, |v120|
	v_max3_f32 v10, v11, |v133|, v12
	v_max3_f32 v11, v14, v15, |v117|
	v_max_f32_e64 v12, |v52|, |v53|
	v_max3_f32 v14, |v54|, |v44|, |v45|
	v_max3_f32 v15, |v36|, |v37|, |v38|
	v_max3_f32 v16, |v39|, |v114|, |v106|
	v_max3_f32 v8, v5, v8, v6
	v_max3_f32 v9, v10, v9, v11
	v_max3_f32 v5, |v46|, |v47|, |v116|
	v_max3_f32 v6, v12, |v55|, v14
	v_max3_f32 v10, v15, v16, |v107|
	v_max_f32_e64 v11, |v28|, |v29|
	v_max3_f32 v12, |v30|, |v26|, |v25|
	v_max3_f32 v14, |v24|, |v21|, |v19|
	v_max3_f32 v15, |v18|, |v84|, |v85|
	s_mov_b32 s26, 0x76543210
	v_max3_f32 v10, v6, v5, v10
	v_max3_f32 v16, |v22|, |v23|, |v94|
	v_max3_f32 v11, v11, |v31|, v12
	v_max3_f32 v12, v14, v15, |v90|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v8, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v9, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v10, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 4, v178
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, v11, v16, v12
	v_max_f32_e32 v14, v14, v14
	v_dual_max_f32 v15, v15, v15 :: v_dual_and_b32 v12, 3, v178
.Ltmp14:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.h, 0
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v32, 1, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v14
	v_max_f32_e32 v14, v17, v17
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v16, v12, 9, 0
	v_permlanex16_b32 v17, v11, s26, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v27, 5, v12
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v9, v15 :: v_dual_max_f32 v10, v10, v14
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v15, 0x60, v178
	v_lshl_add_u32 v14, v20, 2, v16
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v17, v17
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v17, 0x680, v0, v27
	v_lshrrev_b32_e32 v33, 3, v182
	v_xor_b32_e32 v27, v27, v15
	v_lshl_add_u32 v14, v105, 4, v14
	v_lshl_add_u32 v34, v20, 6, 0
	v_xor_b32_e32 v17, v17, v15
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v16
.Ltmp23:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 34, v13
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v14, v14, v32, v27
.Ltmp25:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s27, s72, v141
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v17, v34, v33, v17
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s26, s72, v16
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v14, v[8:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v17
.Ltmp29:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s27
	v_add_co_ci_u32_e64 v17, null, s73, 0, s26
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 32, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 30, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[16:17]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s72, v3
	v_add_co_ci_u32_e64 v4, null, s73, 0, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, s31, s72, v5
	v_add_co_ci_u32_e64 v6, null, s73, 0, s31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[3:4]
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v14, v8
.Ltmp31:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[3:4]
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v3, v9
.Ltmp33:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[5:6]
.Ltmp34:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v10
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v8, v8 :: v_dual_max_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v8, v14, v14
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v14, v11, v11
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v8 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v8, v9, v3 :: v_dual_max_f32 v9, v10, v10
	v_max_f32_e32 v10, v11, v11
.Ltmp40:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 28, v13
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[16:17]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v11, v6 :: v_dual_mov_b32 v16, v8
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v9, v5 :: v_dual_max_f32 v10, v14, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v4
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v14, v10
.Ltmp45:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v11, v11 :: v_dual_max_f32 v4, v16, v16
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 26, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v6, v3 :: v_dual_max_f32 v4, v8, v4
	v_max_f32_e32 v6, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v14
.Ltmp50:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s38, s72, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v16, v4 :: v_dual_max_f32 v5, v5, v6
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v10, v14 :: v_dual_mov_b32 v11, v3
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v32, 0, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v14, v5 :: v_dual_mov_b32 v17, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v11, v11
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v16
	v_max_f32_e32 v14, v14, v14
	v_dual_max_f32 v16, v17, v17 :: v_dual_lshlrev_b32 v17, 4, v12
	v_max_f32_e32 v3, v3, v27
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v27, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v14 :: v_dual_lshlrev_b32 v12, 3, v105
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v14, 5, v20
	v_add_nc_u32_e32 v20, 0, v17
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v16
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v16, v32, v27, v12
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 24, v13
	v_or_b32_e32 v27, 22, v13
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v12, v20, v14, v12
.Ltmp66:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s73, 0, s38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v16, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v12
.Ltmp68:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s39, s72, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s73, 0, s39
	v_add_co_u32 v32, s39, s72, v27
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v33, null, s73, 0, s39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 20, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[10:11]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v10, 18, v13
	v_or_b32_e32 v14, 12, v13
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v8, s44, s72, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s73, 0, s44
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v3, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s44, s72, v10
	v_add_co_ci_u32_e64 v11, null, s73, 0, s44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v12, 0x2b8cbccc, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[8:9]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v8, 16, v13
	v_or_b32_e32 v3, 14, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[10:11]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s48, s72, v8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[10:11]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s73, 0, s48
	v_add_co_u32 v10, s48, s72, v3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[32:33]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[32:33]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v32, s48, s72, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[10:11]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	v_fma_f32 v10, -v16, v3, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v33, null, s73, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[8:9]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v8, 10, v13
	v_or_b32_e32 v11, 8, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	v_fmac_f32_e32 v3, v10, v3
	v_div_scale_f32 v14, vcc_lo, v12, 0x40e00000, v12
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s54, s72, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s73, 0, s54
	v_add_co_u32 v10, s54, s72, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v27, v14, v3 :: v_dual_max_f32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[32:33]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[32:33]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[8:9]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v32, v20
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[8:9]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[10:11]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v8, -v16, v27, v14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[10:11]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v10, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 6, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v27, v8, v3 :: v_dual_and_b32 v0, 0x2f0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v8, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v10
	v_fma_f32 v4, -v20, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v16, v27, v14
	v_div_scale_f32 v14, s60, v5, 0x40e00000, v5
	v_rcp_f32_e32 v16, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v4, v32
	v_div_fmas_f32 v11, v11, v3, v27
	v_div_scale_f32 v33, null, 0x40e00000, 0x40e00000, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v27, v14, v32
	v_div_fixup_f32 v11, v11, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v34, v33
	v_fma_f32 v9, -v6, v16, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v12, -v20, v27, v14
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v9, v16
	v_div_scale_f32 v9, s61, v10, 0x40e00000, v10
	v_fmac_f32_e32 v27, v12, v32
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v12.h, v35.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v40, v9, v16
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v41, -v33, v34, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v20, v27, v14
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v12, -v6, v40, v9
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v20, s62, v8, 0x40e00000, v8
	v_div_fmas_f32 v3, v3, v32, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v12, v16
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v11, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v12, v20, v34
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v6, v40, v9
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v9, 0xffff0000, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v33, v12, v20
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v13
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.l, v3.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v11, v5, v16, v40
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v32, null, v9, v9, v104
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v12, v6, v34
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v40, v32
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v4, -v33, v12, v20
	v_div_fixup_f32 v10, v11, 0x40e00000, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v11, null, v9, v9, v108
	v_div_scale_f32 v41, null, v9, v9, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v34, v12
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v12, 1, v35
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v16, -v32, v40, 1.0
	v_rcp_f32_e32 v33, v11
	v_div_scale_f32 v34, vcc_lo, v104, v9, v104
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v10.h
	v_mov_b16_e32 v8.h, v35.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v16, v40
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v12, 0x7fff
	v_mov_b16_e32 v35.l, v4.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v42, null, v9, v9, v109
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v8, 1, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v12, v34, v40
	v_fma_f32 v27, -v11, v33, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v16, v10, v8, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v8, -v32, v12, v34
	v_rcp_f32_e32 v10, v41
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v35, 1, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v27, v33
	v_div_scale_f32 v43, s60, v108, v9, v108
	v_fmac_f32_e32 v12, v8, v40
	v_rcp_f32_e32 v8, v42
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v35, v43, v33
	v_div_scale_f32 v50, null, v9, v9, v96
	v_fma_f32 v48, -v41, v10, 1.0
	v_fma_f32 v32, -v32, v12, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v11, v35, v43
	v_div_scale_f32 v51, null, v9, v9, v97
	v_fmac_f32_e32 v10, v48, v10
	v_div_scale_f32 v48, s61, v132, v9, v132
	v_fma_f32 v49, -v42, v8, 1.0
	v_div_fmas_f32 v12, v32, v40, v12
	v_rcp_f32_e32 v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v34, v33 :: v_dual_mul_f32 v34, v48, v10
	v_fmac_f32_e32 v8, v49, v8
	v_div_scale_f32 v49, s62, v109, v9, v109
	v_div_fixup_f32 v32, v12, v9, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v11, v35, v43
	v_fma_f32 v12, -v41, v34, v48
	v_mul_f32_e32 v43, v49, v8
	v_rcp_f32_e32 v57, v51
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v58, -v50, v40, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v34, v12, v10
	v_div_fmas_f32 v11, v11, v33, v35
	v_fma_f32 v12, -v42, v43, v49
	v_fmac_f32_e32 v40, v58, v40
	v_div_scale_f32 v58, s60, v96, v9, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v33, v11, v9, v108
	v_fma_f32 v35, -v51, v57, 1.0
	v_fma_f32 v11, -v41, v34, v48
	v_fmac_f32_e32 v43, v12, v8
	v_mul_f32_e32 v12, v58, v40
	v_div_scale_f32 v48, null, v9, v9, v98
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v57, v35, v57
	v_div_scale_f32 v41, s63, v97, v9, v97
	v_div_fmas_f32 v10, v11, v10, v34
	v_fma_f32 v11, -v42, v43, v49
	v_fma_f32 v34, -v50, v12, v58
	v_rcp_f32_e32 v42, v48
	v_div_scale_f32 v59, null, v9, v9, v99
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v49, v41, v57
	v_div_fmas_f32 v8, v11, v8, v43
	v_fmac_f32_e32 v12, v34, v40
	v_rcp_f32_e32 v11, v59
	v_div_fixup_f32 v34, v10, v9, v132
	v_fma_f32 v43, -v51, v49, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v48, v42, 1.0
	v_div_fixup_f32 v35, v8, v9, v109
	v_fma_f32 v8, -v50, v12, v58
	v_div_scale_f32 v50, null, v9, v9, v128
	v_dual_fmac_f32 v49, v43, v57 :: v_dual_fmac_f32 v42, v64, v42
	v_div_scale_f32 v10, s61, v98, v9, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v59, v11, 1.0
	v_rcp_f32_e32 v58, v50
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v64, null, v9, v9, v86
	v_div_fmas_f32 v8, v8, v40, v12
	v_fma_f32 v12, -v51, v49, v41
	v_mul_f32_e32 v51, v10, v42
	v_fmac_f32_e32 v11, v43, v11
	v_div_scale_f32 v43, s60, v99, v9, v99
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v65, -v50, v58, 1.0
	v_div_fmas_f32 v12, v12, v57, v49
	v_fma_f32 v49, -v48, v51, v10
	v_mul_f32_e32 v57, v43, v11
	v_rcp_f32_e32 v66, v64
	v_div_fixup_f32 v40, v8, v9, v96
	v_fmac_f32_e32 v58, v65, v58
	v_fmac_f32_e32 v51, v49, v42
	v_fma_f32 v8, -v59, v57, v43
	v_div_scale_f32 v65, null, v9, v9, v87
	v_div_fixup_f32 v41, v12, v9, v97
	v_div_scale_f32 v12, s62, v128, v9, v128
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v64, v66, 1.0
	v_fma_f32 v10, -v48, v51, v10
	v_fmac_f32_e32 v57, v8, v11
	v_rcp_f32_e32 v67, v65
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v8, v12, v58
	v_fmac_f32_e32 v66, v49, v66
	v_div_scale_f32 v48, s63, v86, v9, v86
	v_div_fmas_f32 v10, v10, v42, v51
	v_fma_f32 v42, -v59, v57, v43
	v_div_scale_f32 v59, null, v9, v9, v88
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v43, -v50, v8, v12
	v_mul_f32_e32 v49, v48, v66
	v_fma_f32 v51, -v65, v67, 1.0
	v_div_fmas_f32 v11, v42, v11, v57
	v_rcp_f32_e32 v57, v59
	v_fmac_f32_e32 v8, v43, v58
	v_fma_f32 v72, -v64, v49, v48
	v_fmac_f32_e32 v67, v51, v67
	v_div_scale_f32 v51, s60, v87, v9, v87
	v_div_fixup_f32 v42, v10, v9, v98
	v_div_fixup_f32 v43, v11, v9, v99
	v_fma_f32 v10, -v50, v8, v12
	v_fmac_f32_e32 v49, v72, v66
	v_mul_f32_e32 v11, v51, v67
	v_fma_f32 v12, -v59, v57, 1.0
	v_div_scale_f32 v72, null, v9, v9, v89
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v74, null, v9, v9, v121
	v_div_fmas_f32 v8, v10, v58, v8
	v_fma_f32 v10, -v64, v49, v48
	v_fma_f32 v48, -v65, v11, v51
	v_fmac_f32_e32 v57, v12, v57
	v_rcp_f32_e32 v12, v72
	v_div_scale_f32 v58, s61, v88, v9, v88
	v_div_scale_f32 v64, null, v9, v9, v127
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v11, v48, v67
	v_div_fmas_f32 v10, v10, v66, v49
	v_rcp_f32_e32 v66, v64
	v_mul_f32_e32 v73, v58, v57
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v72, v12, 1.0
	v_div_fixup_f32 v48, v8, v9, v128
	v_div_fixup_f32 v49, v10, v9, v86
	v_fma_f32 v8, -v65, v11, v51
	v_fma_f32 v10, -v59, v73, v58
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v12, v50, v12
	v_div_scale_f32 v65, s62, v89, v9, v89
	v_fma_f32 v50, -v64, v66, 1.0
	v_div_fmas_f32 v8, v8, v67, v11
	v_fmac_f32_e32 v73, v10, v57
	v_rcp_f32_e32 v11, v74
	v_div_scale_f32 v80, null, v9, v9, v124
	v_mul_f32_e32 v10, v65, v12
	v_fmac_f32_e32 v66, v50, v66
	v_div_scale_f32 v67, s60, v127, v9, v127
	v_div_fixup_f32 v50, v8, v9, v87
	v_fma_f32 v8, -v59, v73, v58
	v_rcp_f32_e32 v59, v80
	v_fma_f32 v51, -v72, v10, v65
	v_mul_f32_e32 v58, v67, v66
	v_fma_f32 v81, -v74, v11, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v8, v8, v57, v73
	v_fmac_f32_e32 v10, v51, v12
	v_fma_f32 v57, -v64, v58, v67
	v_fmac_f32_e32 v11, v81, v11
	v_div_scale_f32 v73, s61, v121, v9, v121
	v_fma_f32 v81, -v80, v59, 1.0
	v_div_fixup_f32 v51, v8, v9, v88
	v_fma_f32 v8, -v72, v10, v65
	v_fmac_f32_e32 v58, v57, v66
	v_mul_f32_e32 v65, v73, v11
	v_fmac_f32_e32 v59, v81, v59
	v_div_scale_f32 v81, null, v75, v75, v76
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v72, s63, v124, v9, v124
	v_div_fmas_f32 v8, v8, v12, v10
	v_fma_f32 v10, -v64, v58, v67
	v_fma_f32 v12, -v74, v65, v73
	v_rcp_f32_e32 v67, v81
	v_div_scale_f32 v82, null, v75, v75, v77
	v_mul_f32_e32 v64, v72, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v12, v11
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v12, v82
	v_div_fmas_f32 v10, v10, v66, v58
	v_fma_f32 v66, -v80, v64, v72
	v_div_fixup_f32 v57, v8, v9, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v81, v67, 1.0
	v_fma_f32 v8, -v74, v65, v73
	v_div_fixup_f32 v58, v10, v9, v127
	v_fmac_f32_e32 v64, v66, v59
	v_div_scale_f32 v10, s60, v76, v75, v76
	v_fmac_f32_e32 v67, v83, v67
	v_fma_f32 v66, -v82, v12, 1.0
	v_div_scale_f32 v73, null, v75, v75, v133
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v74, null, v75, v75, v135
	v_div_fmas_f32 v8, v8, v11, v65
	v_fma_f32 v11, -v80, v64, v72
	v_mul_f32_e32 v65, v10, v67
	v_fmac_f32_e32 v12, v66, v12
	v_rcp_f32_e32 v72, v73
	v_div_scale_f32 v66, s61, v77, v75, v77
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v80, -v81, v65, v10
	v_div_fmas_f32 v11, v11, v59, v64
	v_mul_f32_e32 v83, v66, v12
	v_rcp_f32_e32 v87, v74
	v_div_fixup_f32 v59, v8, v9, v121
	v_fmac_f32_e32 v65, v80, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v73, v72, 1.0
	v_div_fixup_f32 v64, v11, v9, v124
	v_fma_f32 v8, -v82, v83, v66
	v_div_scale_f32 v11, null, v75, v75, v68
	v_fmac_f32_e32 v72, v86, v72
	v_div_scale_f32 v9, s62, v133, v75, v133
	v_fma_f32 v10, -v81, v65, v10
	v_fmac_f32_e32 v83, v8, v12
	v_rcp_f32_e32 v81, v11
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v80, -v74, v87, 1.0
	v_mul_f32_e32 v8, v9, v72
	v_div_fmas_f32 v10, v10, v67, v65
	v_fma_f32 v65, -v82, v83, v66
	v_div_scale_f32 v86, null, v75, v75, v69
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, s63, v135, v75, v135
	v_fma_f32 v66, -v73, v8, v9
	v_fma_f32 v82, -v11, v81, 1.0
	v_div_fmas_f32 v12, v65, v12, v83
	v_rcp_f32_e32 v83, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v67, v80, v87 :: v_dual_fmac_f32 v8, v66, v72
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, s60, v68, v75, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v74, v67, v80
	v_div_fixup_f32 v65, v10, v75, v76
	v_div_fixup_f32 v66, v12, v75, v77
	v_fma_f32 v9, -v73, v8, v9
	v_mul_f32_e32 v10, v82, v81
	v_fma_f32 v12, -v86, v83, 1.0
	v_div_scale_f32 v73, null, v75, v75, v70
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v67, v88, v87
	v_div_fmas_f32 v8, v9, v72, v8
	v_fma_f32 v72, -v11, v10, v82
	v_fmac_f32_e32 v83, v12, v83
	v_rcp_f32_e32 v12, v73
	v_div_scale_f32 v76, null, v75, v75, v71
	v_fma_f32 v9, -v74, v67, v80
	v_div_scale_f32 v74, s61, v69, v75, v69
	v_fmac_f32_e32 v10, v72, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v77, v76
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v80, v74, v83
	v_div_fmas_f32 v9, v9, v87, v67
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v73, v12, 1.0
	v_div_fixup_f32 v67, v8, v75, v133
	v_fma_f32 v8, -v11, v10, v82
	v_div_scale_f32 v79, null, v75, v75, v120
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v72, v9, v75, v135
	v_fma_f32 v9, -v86, v80, v74
	v_fmac_f32_e32 v12, v87, v12
	v_div_scale_f32 v11, s62, v70, v75, v70
	v_fma_f32 v78, -v76, v77, 1.0
	v_div_fmas_f32 v8, v8, v81, v10
	v_rcp_f32_e32 v10, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v9, v83 :: v_dual_mul_f32 v9, v11, v12
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, s60, v71, v75, v71
	v_div_scale_f32 v81, null, v75, v75, v60
	v_div_fixup_f32 v68, v8, v75, v68
	v_fma_f32 v8, -v86, v80, v74
	v_fma_f32 v74, -v73, v9, v11
	v_mul_f32_e32 v82, v78, v77
	v_rcp_f32_e32 v86, v81
	v_fma_f32 v87, -v79, v10, 1.0
	s_mov_b32 vcc_lo, s61
	v_dual_fmac_f32 v9, v74, v12 :: v_dual_and_b32 v56, 0xffff0000, v3
	v_div_fmas_f32 v8, v8, v83, v80
	v_fma_f32 v74, -v76, v82, v78
	v_fmac_f32_e32 v10, v87, v10
	v_div_scale_f32 v80, s61, v120, v75, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v81, v86, 1.0
	v_div_fixup_f32 v69, v8, v75, v69
	v_fma_f32 v8, -v73, v9, v11
	v_dual_fmac_f32 v82, v74, v77 :: v_dual_mul_f32 v11, v80, v10
	v_div_scale_f32 v74, null, v75, v75, v61
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v73, s63, v60, v75, v60
	v_div_fmas_f32 v8, v8, v12, v9
	v_fma_f32 v9, -v76, v82, v78
	v_fma_f32 v12, -v79, v11, v80
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v83, null, v75, v75, v62
	v_mul_f32_e32 v78, v73, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v11, v12, v10
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v12, v83
	v_div_fmas_f32 v9, v9, v77, v82
	v_fma_f32 v77, -v81, v78, v73
	v_div_fixup_f32 v70, v8, v75, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v74, v76, 1.0
	v_fma_f32 v8, -v79, v11, v80
	v_div_fixup_f32 v71, v9, v75, v71
	v_fmac_f32_e32 v78, v77, v86
	v_div_scale_f32 v9, s60, v61, v75, v61
	v_fmac_f32_e32 v76, v82, v76
	v_fma_f32 v77, -v83, v12, 1.0
	v_div_scale_f32 v79, null, v75, v75, v63
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v80, s61, v62, v75, v62
	v_div_fmas_f32 v8, v8, v10, v11
	v_fma_f32 v10, -v81, v78, v73
	v_mul_f32_e32 v11, v9, v76
	v_fmac_f32_e32 v12, v77, v12
	v_rcp_f32_e32 v77, v79
	v_div_scale_f32 v81, null, v75, v75, v119
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v82, v80, v12
	v_div_fmas_f32 v10, v10, v86, v78
	v_fma_f32 v78, -v74, v11, v9
	v_rcp_f32_e32 v87, v81
	v_div_fixup_f32 v73, v8, v75, v120
	v_fma_f32 v8, -v83, v82, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v79, v77, 1.0
	v_fmac_f32_e32 v11, v78, v76
	v_div_scale_f32 v78, null, v75, v75, v118
	v_div_fixup_f32 v60, v10, v75, v60
	v_fmac_f32_e32 v77, v86, v77
	v_div_scale_f32 v10, s62, v63, v75, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v81, v87, 1.0
	v_fma_f32 v9, -v74, v11, v9
	v_fmac_f32_e32 v82, v8, v12
	v_rcp_f32_e32 v88, v78
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v8, v10, v77
	v_fmac_f32_e32 v87, v86, v87
	v_div_scale_f32 v74, s63, v119, v75, v119
	v_div_fmas_f32 v9, v9, v76, v11
	v_fma_f32 v11, -v83, v82, v80
	v_div_scale_f32 v86, null, v75, v75, v117
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v76, -v79, v8, v10
	v_mul_f32_e32 v80, v74, v87
	v_fma_f32 v83, -v78, v88, 1.0
	v_div_fmas_f32 v11, v11, v12, v82
	v_rcp_f32_e32 v12, v86
	v_fmac_f32_e32 v8, v76, v77
	v_fma_f32 v76, -v81, v80, v74
	v_fmac_f32_e32 v88, v83, v88
	v_div_scale_f32 v82, s60, v118, v75, v118
	v_div_fixup_f32 v61, v9, v75, v61
	v_div_fixup_f32 v62, v11, v75, v62
	v_fma_f32 v9, -v79, v8, v10
	v_fmac_f32_e32 v80, v76, v87
	v_mul_f32_e32 v10, v82, v88
	v_fma_f32 v11, -v86, v12, 1.0
	v_div_scale_f32 v79, null, v56, v56, v52
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v8, v9, v77, v8
	v_fma_f32 v9, -v81, v80, v74
	v_fma_f32 v74, -v78, v10, v82
	v_fmac_f32_e32 v12, v11, v12
	v_rcp_f32_e32 v11, v79
	v_div_scale_f32 v81, null, v56, v56, v53
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v77, s61, v117, v75, v117
	v_div_fmas_f32 v9, v9, v87, v80
	v_fmac_f32_e32 v10, v74, v88
	v_rcp_f32_e32 v80, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v83, v77, v12
	v_fma_f32 v76, -v79, v11, 1.0
	v_div_fixup_f32 v63, v8, v75, v63
	v_fma_f32 v8, -v78, v10, v82
	v_div_scale_f32 v82, null, v56, v56, v55
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v74, v9, v75, v119
	v_fma_f32 v9, -v86, v83, v77
	v_fmac_f32_e32 v11, v76, v11
	v_div_scale_f32 v78, s62, v52, v56, v52
	v_fma_f32 v76, -v81, v80, 1.0
	v_div_fmas_f32 v8, v8, v88, v10
	v_rcp_f32_e32 v10, v82
	v_fmac_f32_e32 v83, v9, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v9, v78, v11 :: v_dual_fmac_f32 v80, v76, v80
	v_div_scale_f32 v87, s60, v53, v56, v53
	v_div_scale_f32 v88, null, v56, v56, v54
	v_div_fixup_f32 v76, v8, v75, v118
	v_fma_f32 v8, -v86, v83, v77
	v_fma_f32 v77, -v79, v9, v78
	v_mul_f32_e32 v86, v87, v80
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v91, -v82, v10, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v9, v77, v11
	v_div_fmas_f32 v8, v8, v12, v83
	v_fma_f32 v12, -v81, v86, v87
	v_fmac_f32_e32 v10, v91, v10
	v_div_scale_f32 v77, s61, v55, v56, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v75, v8, v75, v117
	v_fma_f32 v83, -v88, v89, 1.0
	v_fma_f32 v8, -v79, v9, v78
	v_fmac_f32_e32 v86, v12, v80
	v_mul_f32_e32 v12, v77, v10
	v_div_scale_f32 v79, null, v56, v56, v44
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v78, s63, v54, v56, v54
	v_div_fmas_f32 v8, v8, v11, v9
	v_fma_f32 v9, -v81, v86, v87
	v_fma_f32 v11, -v82, v12, v77
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v87, null, v56, v56, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v83, v78, v89 :: v_dual_fmac_f32 v12, v11, v10
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v11, v87
	v_div_fmas_f32 v9, v9, v80, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v88, v83, v78
	v_div_fixup_f32 v52, v8, v56, v52
	v_fma_f32 v86, -v79, v81, 1.0
	v_fma_f32 v8, -v82, v12, v77
	v_div_fixup_f32 v53, v9, v56, v53
	v_fmac_f32_e32 v83, v80, v89
	v_div_scale_f32 v9, s60, v44, v56, v44
	v_fmac_f32_e32 v81, v86, v81
	v_fma_f32 v77, -v87, v11, 1.0
	v_div_scale_f32 v80, null, v56, v56, v46
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v82, null, v56, v56, v47
	v_div_fmas_f32 v8, v8, v10, v12
	v_fma_f32 v10, -v88, v83, v78
	v_mul_f32_e32 v12, v9, v81
	v_fmac_f32_e32 v11, v77, v11
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v78, s61, v45, v56, v45
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v55, v8, v56, v55
	v_div_fmas_f32 v10, v10, v89, v83
	v_fma_f32 v83, -v79, v12, v9
	v_mul_f32_e32 v86, v78, v11
	v_rcp_f32_e32 v89, v82
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v80, v77, 1.0
	v_fmac_f32_e32 v12, v83, v81
	v_fma_f32 v8, -v87, v86, v78
	v_div_fixup_f32 v54, v10, v56, v54
	v_div_scale_f32 v10, s62, v46, v56, v46
	v_fmac_f32_e32 v77, v88, v77
	v_div_scale_f32 v83, null, v56, v56, v116
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v82, v89, 1.0
	v_fma_f32 v9, -v79, v12, v9
	v_fmac_f32_e32 v86, v8, v11
	v_mul_f32_e32 v8, v10, v77
	v_rcp_f32_e32 v79, v83
	v_fmac_f32_e32 v89, v88, v89
	v_div_scale_f32 v88, s63, v47, v56, v47
	v_div_fmas_f32 v9, v9, v81, v12
	v_fma_f32 v12, -v87, v86, v78
	v_div_scale_f32 v91, null, v56, v56, v36
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v78, -v80, v8, v10
	v_mul_f32_e32 v81, v88, v89
	v_div_fmas_f32 v11, v12, v11, v86
	v_rcp_f32_e32 v12, v91
	v_fma_f32 v87, -v83, v79, 1.0
	v_fmac_f32_e32 v8, v78, v77
	v_fma_f32 v78, -v82, v81, v88
	v_div_scale_f32 v86, s60, v116, v56, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v87, v79
	v_div_fixup_f32 v45, v11, v56, v45
	v_fmac_f32_e32 v81, v78, v89
	v_div_scale_f32 v78, null, v56, v56, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v11, -v91, v12, 1.0
	v_div_fixup_f32 v44, v9, v56, v44
	v_fma_f32 v9, -v80, v8, v10
	v_mul_f32_e32 v10, v86, v79
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v12, v11, v12
	v_rcp_f32_e32 v11, v78
	v_div_fmas_f32 v8, v9, v77, v8
	v_fma_f32 v9, -v82, v81, v88
	v_fma_f32 v77, -v83, v10, v86
	v_div_scale_f32 v82, null, v56, v56, v38
	v_div_scale_f32 v80, s61, v36, v56, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v10, v77, v79
	v_rcp_f32_e32 v77, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v78, v11, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v46, v8, v56, v46
	v_div_fmas_f32 v9, v9, v89, v81
	v_mul_f32_e32 v81, v80, v12
	v_fma_f32 v8, -v83, v10, v86
	v_fmac_f32_e32 v11, v87, v11
	v_div_scale_f32 v87, null, v56, v56, v39
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v47, v9, v56, v47
	v_fma_f32 v9, -v91, v81, v80
	v_div_scale_f32 v83, s62, v37, v56, v37
	v_fma_f32 v86, -v82, v77, 1.0
	v_div_fmas_f32 v8, v8, v79, v10
	v_rcp_f32_e32 v10, v87
	v_fmac_f32_e32 v81, v9, v12
	v_mul_f32_e32 v9, v83, v11
	v_fmac_f32_e32 v77, v86, v77
	v_div_scale_f32 v79, s60, v38, v56, v38
	v_div_scale_f32 v86, null, v56, v56, v114
	v_fma_f32 v80, -v91, v81, v80
	v_fma_f32 v88, -v78, v9, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v79, v77
	v_rcp_f32_e32 v91, v86
	v_fma_f32 v92, -v87, v10, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v9, v88, v11
	v_div_fmas_f32 v12, v80, v12, v81
	v_fma_f32 v80, -v82, v89, v79
	v_fmac_f32_e32 v10, v92, v10
	v_div_scale_f32 v81, s61, v39, v56, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v12, v56, v36
	v_fma_f32 v88, -v86, v91, 1.0
	v_fma_f32 v36, -v78, v9, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v89, v80, v77 :: v_dual_mul_f32 v78, v81, v10
	v_div_scale_f32 v83, null, v56, v56, v106
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v80, s63, v114, v56, v114
	v_div_fmas_f32 v9, v36, v11, v9
	v_fma_f32 v11, -v82, v89, v79
	v_fma_f32 v36, -v87, v78, v81
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v88, null, v56, v56, v107
	v_mul_f32_e32 v82, v80, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v36, v10
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v36, v88
	v_div_fmas_f32 v11, v11, v77, v89
	v_fma_f32 v77, -v86, v82, v80
	v_div_fixup_f32 v9, v9, v56, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fma_f32 v37, -v87, v78, v81
	v_div_fixup_f32 v11, v11, v56, v38
	v_fmac_f32_e32 v82, v77, v91
	v_div_scale_f32 v38, s60, v106, v56, v106
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v77, -v88, v36, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v87, null, v27, v27, v29
	v_div_fmas_f32 v10, v37, v10, v78
	v_fma_f32 v37, -v86, v82, v80
	v_mul_f32_e32 v78, v38, v79
	v_fmac_f32_e32 v36, v77, v36
	v_div_scale_f32 v77, null, v27, v27, v28
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v80, s61, v107, v56, v107
	v_div_fmas_f32 v37, v37, v91, v82
	v_rcp_f32_e32 v81, v77
	v_fma_f32 v82, -v83, v78, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v80, v36
	v_div_fixup_f32 v10, v10, v56, v39
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v92, null, v27, v27, v30
	v_fmac_f32_e32 v78, v82, v79
	v_rcp_f32_e32 v82, v87
	v_fma_f32 v39, -v88, v86, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v77, v81, 1.0
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v38, -v83, v78, v38
	v_div_scale_f32 v83, null, v27, v27, v31
	v_dual_fmac_f32 v81, v89, v81 :: v_dual_fmac_f32 v86, v39, v36
	v_div_scale_f32 v39, s62, v28, v27, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v89, v83
	v_fma_f32 v91, -v87, v82, 1.0
	v_div_fmas_f32 v38, v38, v79, v78
	v_fma_f32 v78, -v88, v86, v80
	v_div_scale_f32 v80, s60, v29, v27, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v91, v82
	v_mul_f32_e32 v79, v39, v81
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v8, v8, v56, v116
	v_fma_f32 v88, -v83, v89, 1.0
	v_mul_f32_e32 v93, v80, v82
	v_fma_f32 v91, -v77, v79, v39
	v_div_fmas_f32 v36, v78, v36, v86
	v_div_fixup_f32 v37, v37, v56, v114
	v_fmac_f32_e32 v89, v88, v89
	v_div_scale_f32 v88, s63, v31, v27, v31
	v_fma_f32 v78, -v87, v93, v80
	v_fmac_f32_e32 v79, v91, v81
	v_div_fixup_f32 v38, v38, v56, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v88, v89
	v_div_fixup_f32 v36, v36, v56, v107
	v_fmac_f32_e32 v93, v78, v82
	v_div_scale_f32 v78, null, v27, v27, v26
	v_fma_f32 v56, -v83, v86, v88
	v_fma_f32 v39, -v77, v79, v39
	v_fma_f32 v77, -v92, v95, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v56, v89
	v_rcp_f32_e32 v56, v78
	v_div_fmas_f32 v39, v39, v81, v79
	v_fma_f32 v79, -v87, v93, v80
	v_fmac_f32_e32 v95, v77, v95
	v_div_scale_f32 v77, s61, v30, v27, v30
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v80, -v83, v86, v88
	v_div_fmas_f32 v79, v79, v82, v93
	v_mul_f32_e32 v81, v77, v95
	v_div_scale_f32 v82, null, v27, v27, v25
	v_fma_f32 v83, -v78, v56, 1.0
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v87, -v92, v81, v77
	v_div_fmas_f32 v80, v80, v89, v86
	v_rcp_f32_e32 v86, v82
	v_fmac_f32_e32 v56, v83, v56
	v_div_scale_f32 v83, s60, v26, v27, v26
	v_div_fixup_f32 v28, v39, v27, v28
	v_fmac_f32_e32 v81, v87, v95
	v_div_fixup_f32 v29, v79, v27, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v39, v83, v56
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v31, v80, v27, v31
	v_fma_f32 v79, -v82, v86, 1.0
	v_fma_f32 v77, -v92, v81, v77
	v_fma_f32 v87, -v78, v39, v83
	v_div_scale_f32 v80, null, v27, v27, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v79, s62, v25, v27, v25
	v_div_fmas_f32 v77, v77, v95, v81
	v_fmac_f32_e32 v39, v87, v56
	v_rcp_f32_e32 v88, v80
	v_mul_f32_e32 v81, v79, v86
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v30, v77, v27, v30
	v_fma_f32 v77, -v78, v39, v83
	v_div_scale_f32 v87, null, v27, v27, v23
	v_fma_f32 v78, -v82, v81, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v39, v77, v56, v39
	v_div_scale_f32 v56, null, v27, v27, v94
	v_fma_f32 v83, -v80, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v81, v78, v86
	v_rcp_f32_e32 v78, v56
	v_div_scale_f32 v77, s60, v22, v27, v22
	v_fmac_f32_e32 v88, v83, v88
	v_div_scale_f32 v83, null, v27, v27, v24
	v_div_fixup_f32 v26, v39, v27, v26
	v_fma_f32 v79, -v82, v81, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v87, v89, 1.0
	v_rcp_f32_e32 v92, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v56, v78, 1.0
	v_mul_f32_e32 v82, v77, v88
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v39, v89
	v_div_scale_f32 v39, s61, v23, v27, v23
	v_fmac_f32_e32 v78, v91, v78
	v_div_scale_f32 v91, null, v27, v27, v21
	v_div_fmas_f32 v79, v79, v86, v81
	v_fma_f32 v81, -v80, v82, v77
	v_mul_f32_e32 v86, v39, v89
	v_div_scale_f32 v93, s62, v94, v27, v94
	v_fma_f32 v95, -v83, v92, 1.0
	v_rcp_f32_e32 v96, v91
	v_fmac_f32_e32 v82, v81, v88
	v_fma_f32 v81, -v87, v86, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v97, v93, v78 :: v_dual_fmac_f32 v92, v95, v92
	v_div_scale_f32 v95, s63, v24, v27, v24
	v_div_fixup_f32 v25, v79, v27, v25
	v_fma_f32 v77, -v80, v82, v77
	v_fmac_f32_e32 v86, v81, v89
	v_fma_f32 v79, -v56, v97, v93
	v_mul_f32_e32 v80, v95, v92
	v_fma_f32 v81, -v91, v96, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v39, -v87, v86, v39
	v_fmac_f32_e32 v97, v79, v78
	v_fma_f32 v79, -v83, v80, v95
	v_fmac_f32_e32 v96, v81, v96
	v_div_scale_f32 v81, s60, v21, v27, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v56, v97, v93
	v_fmac_f32_e32 v80, v79, v92
	v_div_fmas_f32 v77, v77, v88, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v81, v96
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v82, null, v27, v27, v19
	v_div_fmas_f32 v39, v39, v89, v86
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v22, v77, v27, v22
	v_div_fmas_f32 v56, v56, v78, v97
	v_fma_f32 v78, -v83, v80, v95
	v_fma_f32 v83, -v91, v79, v81
	v_rcp_f32_e32 v86, v82
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v23, v39, v27, v23
	v_div_fmas_f32 v78, v78, v92, v80
	v_fmac_f32_e32 v79, v83, v96
	v_div_fixup_f32 v39, v56, v27, v94
	v_div_scale_f32 v77, null, v27, v27, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v78, v27, v24
	v_fma_f32 v56, -v91, v79, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v82, v86, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v80, null, v27, v27, v85
	v_div_fmas_f32 v56, v56, v96, v79
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v86, v78, v86
	v_div_scale_f32 v78, null, v27, v27, v84
	v_div_scale_f32 v89, null, v27, v27, v90
	v_rcp_f32_e32 v87, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v83, v78
	v_div_scale_f32 v81, vcc_lo, v19, v27, v19
	v_div_fixup_f32 v21, v56, v27, v21
	v_fma_f32 v56, -v77, v79, 1.0
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v81, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v56, v79
	v_div_scale_f32 v56, s60, v18, v27, v18
	v_fma_f32 v91, -v78, v83, 1.0
	v_fma_f32 v94, -v80, v87, 1.0
	v_fma_f32 v93, -v82, v88, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v95, v56, v79
	v_fma_f32 v96, -v89, v92, 1.0
	v_fmac_f32_e32 v83, v91, v83
	v_div_scale_f32 v91, s61, v84, v27, v84
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s62, v85, v27, v85
	v_fmac_f32_e32 v88, v93, v86
	v_fma_f32 v93, -v77, v95, v56
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s63, v90, v27, v90
	v_mul_f32_e32 v97, v91, v83
	v_mul_f32_e32 v98, v94, v87
	v_fmac_f32_e32 v95, v93, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v99, v96, v92
	v_fma_f32 v81, -v82, v88, v81
	v_fma_f32 v82, -v78, v97, v91
	v_fma_f32 v93, -v80, v98, v94
	v_fma_f32 v56, -v77, v95, v56
	v_fma_f32 v77, -v89, v99, v96
	v_div_fmas_f32 v81, v81, v86, v88
	v_fmac_f32_e32 v97, v82, v83
	v_fmac_f32_e32 v98, v93, v87
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v99, v77, v92
	v_div_fmas_f32 v56, v56, v79, v95
	v_fma_f32 v78, -v78, v97, v91
	v_fma_f32 v77, -v80, v98, v94
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v79, -v89, v99, v96
	s_mov_b32 s60, 0xc1000000
	v_div_fmas_f32 v78, v78, v83, v97
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v19, v81, v27, v19
	v_div_fmas_f32 v77, v77, v87, v98
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v18, v56, v27, v18
	v_div_fmas_f32 v79, v79, v92, v99
	v_div_fixup_f32 v56, v78, v27, v84
	v_div_fixup_f32 v77, v77, v27, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v27, v79, v27, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v92, v38
	v_and_b32_e32 v38, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v81, 16, v178
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_cvt_i32_f32_e32 v78, v49
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v93, v29
	v_cvt_i32_f32_e32 v105, v27
	v_and_b32_e32 v29, 15, v35
	v_and_b32_e32 v49, 15, v48
	v_and_b32_e32 v27, 15, v55
	v_and_b32_e32 v35, 15, v44
	v_and_b32_e32 v55, 15, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v12, 13, v178
	v_lshlrev_b32_e32 v44, 8, v81
	v_and_b32_e32 v48, 64, v178
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_cvt_i32_f32_e32 v85, v54
	v_and_b32_e32 v54, 15, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v60, 3, v182
	v_and_or_b32 v12, 0xe000, v12, v44
	v_xor_b32_e32 v0, v0, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v80, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v12, v60, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v79, v57
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v96, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_cvt_i32_f32_e32 v88, v8
	v_cvt_i32_f32_e32 v89, v9
	v_cvt_i32_f32_e32 v90, v10
	v_cvt_i32_f32_e32 v98, v22
	v_and_b32_e32 v8, 15, v32
	v_and_b32_e32 v9, 15, v80
	v_and_b32_e32 v22, 15, v66
	v_and_b32_e32 v66, 15, v63
	v_and_b32_e32 v10, 15, v52
	v_and_b32_e32 v63, 15, v11
	v_and_b32_e32 v11, 15, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v12, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v77, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_cvt_i32_f32_e32 v97, v25
	v_cvt_i32_f32_e32 v102, v21
	v_and_b32_e32 v21, 15, v33
	v_and_b32_e32 v25, 15, v34
	v_and_b32_e32 v33, 15, v40
	v_and_b32_e32 v65, 15, v79
	v_and_b32_e32 v34, 15, v68
	v_and_b32_e32 v79, 15, v36
	v_and_b32_e32 v36, 15, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v82, v73
	v_cvt_i32_f32_e32 v100, v39
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[8:11]
	ds_store_b128 v12, v[33:36] offset:256
	v_lshlrev_b32_e32 v9, 6, v178
	v_lshlrev_b32_e32 v10, 5, v15
	v_cndmask_b32_e64 v11, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v18, v18
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v83, v61
	v_cvt_i32_f32_e32 v84, v53
	v_cvt_i32_f32_e32 v94, v31
	v_cvt_i32_f32_e32 v101, v24
	v_and_b32_e32 v57, 15, v50
	v_and_b32_e32 v61, 15, v51
	v_and_b32_e32 v50, 15, v82
	v_and_b32_e32 v51, 15, v88
	v_and_b32_e32 v52, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v15, 2, v81
	v_and_or_b32 v9, 0x300, v9, v10
	v_xor_b32_e32 v10, v11, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v86, v45
	v_cvt_i32_f32_e32 v87, v46
	v_cvt_i32_f32_e32 v91, v37
	v_cvt_i32_f32_e32 v103, v56
	v_cvt_i32_f32_e32 v104, v77
	v_and_b32_e32 v26, 15, v67
	v_and_b32_e32 v67, 15, v90
	v_and_b32_e32 v68, 15, v18
	v_cvt_i32_f32_e32 v95, v30
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v99, v23
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v19, v19
	v_and_b32_e32 v53, 15, v78
	v_and_b32_e32 v69, 15, v58
	v_and_b32_e32 v73, 15, v59
	v_and_b32_e32 v58, 15, v83
	v_and_b32_e32 v23, 15, v84
	v_and_b32_e32 v59, 15, v89
	v_and_b32_e32 v24, 15, v93
	v_and_b32_e32 v28, 15, v94
	v_and_b32_e32 v56, 15, v101
	v_and_b32_e32 v60, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v8, v0, 16, 0
	ds_store_b128 v12, v[49:52] offset:2048
	ds_store_b128 v12, v[65:68] offset:2304
	v_xad_u32 v12, v0, 32, 0
	v_or3_b32 v15, v10, v9, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v37, 15, v41
	v_and_b32_e32 v41, 15, v42
	v_and_b32_e32 v45, 15, v43
	v_and_b32_e32 v30, 15, v72
	v_and_b32_e32 v42, 15, v70
	v_and_b32_e32 v46, 15, v71
	v_and_b32_e32 v70, 15, v74
	v_and_b32_e32 v74, 15, v76
	v_and_b32_e32 v78, 15, v75
	v_and_b32_e32 v39, 15, v86
	v_and_b32_e32 v43, 15, v87
	v_and_b32_e32 v71, 15, v91
	v_and_b32_e32 v75, 15, v92
	v_and_b32_e32 v40, 15, v97
	v_and_b32_e32 v44, 15, v98
	v_and_b32_e32 v72, 15, v103
	v_and_b32_e32 v76, 15, v104
	v_and_b32_e32 v31, 15, v85
	v_and_b32_e32 v32, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v47
	v_and_b32_e32 v48, 15, v99
	v_and_b32_e32 v77, 15, v64
	v_and_b32_e32 v62, 15, v62
	v_and_b32_e32 v64, 15, v19
	v_and_b32_e32 v80, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[21:24]
	ds_store_b128 v8, v[37:40] offset:256
	ds_store_b128 v8, v[53:56] offset:2048
	ds_store_b128 v8, v[69:72] offset:2304
	ds_store_b128 v12, v[25:28]
	ds_store_b128 v12, v[41:44] offset:256
	ds_store_b128 v12, v[57:60] offset:2048
	ds_store_b128 v12, v[73:76] offset:2304
	ds_store_b128 v0, v[29:32]
	ds_store_b128 v0, v[45:48] offset:256
	v_add_nc_u32_e32 v12, 0, v15
	ds_store_b128 v0, v[61:64] offset:2048
	ds_store_b128 v0, v[77:80] offset:2304
	v_xad_u32 v0, 0x4020, v15, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[21:24], v12 offset:128
	ds_load_b128 v[25:28], v12 offset:4096
	ds_load_b128 v[29:32], v12 offset:4224
	v_xad_u32 v12, 0x8040, v15, 0
	ds_load_b128 v[33:36], v0
	ds_load_b128 v[37:40], v0 offset:128
	ds_load_b128 v[41:44], v0 offset:4096
	ds_load_b128 v[45:48], v0 offset:4224
	v_xad_u32 v0, 0xc060, v15, 0
	ds_load_b128 v[49:52], v12
	ds_load_b128 v[53:56], v12 offset:128
	ds_load_b128 v[57:60], v12 offset:4096
	ds_load_b128 v[61:64], v12 offset:4224
	ds_load_b128 v[65:68], v0 offset:4096
	ds_load_b128 v[69:72], v0
	ds_load_b128 v[73:76], v0 offset:128
	ds_load_b128 v[77:80], v0 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 2, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s79, 7, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v16.h
	v_mov_b16_e32 v3.l, v14.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s2, s72, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s73, 0, s2
	v_add_co_u32 v19, s2, s72, v13
	v_add_co_ci_u32_e64 v20, null, s73, 0, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s72, v13
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v15, v25, 4, v8
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v49, v57, 4, v49
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v26, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v5
	v_add_nc_u32_e32 v9, 4, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v27, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 6, v5
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v28, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 8, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[17:18]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[19:20]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[19:20]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v82, v41, 4, v33
	v_lshl_or_b32 v65, v29, 4, v21
	v_lshl_or_b32 v45, v45, 4, v37
	v_lshl_or_b32 v42, v42, 4, v34
	v_lshl_or_b32 v66, v30, 4, v22
	v_lshl_or_b32 v46, v46, 4, v38
	v_lshl_or_b32 v43, v43, 4, v35
	v_lshl_or_b32 v67, v31, 4, v23
	v_lshl_or_b32 v47, v47, 4, v39
	v_lshl_or_b32 v44, v44, 4, v36
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v32, 4, v24
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 10, v5
	v_add_nc_u32_e32 v13, 12, v5
	v_add_nc_u32_e32 v17, 14, v5
	v_add_nc_u32_e32 v18, 16, v5
	v_add_nc_u32_e32 v19, 18, v5
	v_add_nc_u32_e32 v20, 20, v5
	v_add_nc_u32_e32 v21, 22, v5
	v_add_nc_u32_e32 v22, 24, v5
	v_add_nc_u32_e32 v23, 26, v5
	v_add_nc_u32_e32 v24, 28, v5
	v_add_nc_u32_e32 v25, 30, v5
	v_add_nc_u32_e32 v26, 32, v5
	v_add_nc_u32_e32 v27, 34, v5
	v_add_nc_u32_e32 v28, 36, v5
	v_add_nc_u32_e32 v29, 38, v5
	v_add_nc_u32_e32 v30, 40, v5
	v_add_nc_u32_e32 v31, 42, v5
	v_add_nc_u32_e32 v32, 44, v5
	v_add_nc_u32_e32 v33, 46, v5
	v_add_nc_u32_e32 v34, 48, v5
	v_add_nc_u32_e32 v35, 50, v5
	v_add_nc_u32_e32 v36, 52, v5
	v_add_nc_u32_e32 v37, 54, v5
	v_add_nc_u32_e32 v38, 56, v5
	v_add_nc_u32_e32 v39, 58, v5
	v_add_nc_u32_e32 v40, 60, v5
	v_add_nc_u32_e32 v41, 62, v5
	v_mad_u64_u32 v[5:6], null, v5, s73, v[0:1]
	v_mad_u64_u32 v[6:7], null, v8, s73, v[0:1]
	v_mad_u64_u32 v[7:8], null, v9, s73, v[0:1]
	v_mad_u64_u32 v[8:9], null, v10, s73, v[0:1]
	v_mad_u64_u32 v[9:10], null, v11, s73, v[0:1]
	v_mad_u64_u32 v[10:11], null, v12, s73, v[0:1]
	v_mad_u64_u32 v[11:12], null, v13, s73, v[0:1]
	v_mad_u64_u32 v[12:13], null, v17, s73, v[0:1]
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
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[32:33], null, v33, s73, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[34:35], null, v35, s73, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[37:38], null, v38, s73, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v15, v5, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[39:40], null, v40, s73, v[0:1]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s60
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v82, v0, s[68:71], 0 offen
	buffer_store_b8 v49, v5, s[68:71], 0 offen
	buffer_store_b8 v57, v6, s[68:71], 0 offen
	buffer_store_b8 v65, v7, s[68:71], 0 offen
	buffer_store_b8 v45, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v0, s[68:71], 0 offen
	buffer_store_b8 v61, v5, s[68:71], 0 offen
	buffer_store_b8 v69, v6, s[68:71], 0 offen
	buffer_store_b8 v42, v7, s[68:71], 0 offen
	buffer_store_b8 v50, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v58, v0, s[68:71], 0 offen
	buffer_store_b8 v66, v5, s[68:71], 0 offen
	buffer_store_b8 v46, v6, s[68:71], 0 offen
	buffer_store_b8 v54, v7, s[68:71], 0 offen
	buffer_store_b8 v62, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v70, v0, s[68:71], 0 offen
	buffer_store_b8 v43, v5, s[68:71], 0 offen
	buffer_store_b8 v51, v6, s[68:71], 0 offen
	buffer_store_b8 v59, v7, s[68:71], 0 offen
	buffer_store_b8 v67, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v0, s[68:71], 0 offen
	buffer_store_b8 v55, v5, s[68:71], 0 offen
	buffer_store_b8 v63, v6, s[68:71], 0 offen
	buffer_store_b8 v71, v7, s[68:71], 0 offen
	buffer_store_b8 v44, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v5, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v52, v0, s[68:71], 0 offen
	buffer_store_b8 v60, v5, s[68:71], 0 offen
	buffer_store_b8 v68, v6, s[68:71], 0 offen
	buffer_store_b8 v48, v7, s[68:71], 0 offen
	buffer_store_b8 v56, v8, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v81
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v40 :: v_dual_lshlrev_b32 v5, 3, v206
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v179
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v8, s72, v190
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	buffer_store_b8 v64, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v5
	v_add3_u32 v5, v6, v7, v5
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v8, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v178
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
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 348
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 348
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29736
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 348
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 348
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 86
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
