	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4                          ; -- Begin function amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4,@function
amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4:                                 ; @amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_gluon.py"
	.loc	1 77 0                          ; kda_gluon.py:77:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b32 s33, s[0:1], 0x68
.Ltmp0:
	.loc	1 190 9 prologue_end            ; kda_gluon.py:190:9
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s33, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; kda_gluon.py:0:9
	s_clause 0x5
	s_load_b64 s[6:7], s[0:1], 0x6c
	s_load_b32 s34, s[0:1], 0x84
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s5, s[0:1], 0x78
	s_load_b64 s[16:17], s[0:1], 0x48
	s_load_b64 s[28:29], s[0:1], 0x20
	.loc	1 118 23 is_stmt 1              ; kda_gluon.py:118:23
	s_abs_i32 s18, s2
	.loc	1 123 21                        ; kda_gluon.py:123:21
	s_lshl_b32 s3, s3, 6
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	v_bfe_i32 v3, v0, 5, 1
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v8, 15, v0
	v_bfe_i32 v9, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v5, 0x60, v5
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v2, 32, v0
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s19, s6
	s_xor_b32 s25, s2, s6
	s_cvt_f32_u32 s0, s19
	s_sub_i32 s21, 0, s19
	s_ashr_i32 s25, s25, 31
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v6, 48, v0
	v_rcp_iflag_f32_e32 v10, s0
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v15, 4, v8
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v3, 0x140, v3
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v9, 0x140, v9
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v5, 0, v5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s0, v10
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s24, s6, s33
	.loc	1 123 21                        ; kda_gluon.py:123:21
	v_or_b32_e32 v11, s3, v0
	.loc	1 122 21                        ; kda_gluon.py:122:21
	v_or_b32_e32 v1, 64, v0
	v_lshrrev_b32_e32 v2, 3, v2
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_mul_f32 s1, s0, 0x4f7ffffe
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v12, 4, v4
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v13, 24, v7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s20, s1
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v14, 1, v6
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v8, 3, v8
	s_mul_i32 s21, s21, s20
	v_xor_b32_e32 v3, v3, v15
	s_mul_hi_u32 s21, s20, s21
	v_xor_b32_e32 v9, v9, v15
	s_add_i32 s20, s20, s21
	v_lshl_add_u32 v5, v6, 3, v5
	s_mul_hi_u32 s26, s18, s20
	.loc	1 129 18                        ; kda_gluon.py:129:18
	v_cmp_gt_i32_e64 s4, s5, v11
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_mul_i32 s20, s26, s19
	s_add_i32 s30, s26, 1
	s_sub_i32 s18, s18, s20
	s_mov_b32 s20, s8
	s_sub_i32 s31, s18, s19
	s_cmp_ge_u32 s18, s19
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s21, s5, s6
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_cselect_b32 s26, s30, s26
	s_cselect_b32 s8, s31, s18
	s_add_i32 s18, s26, 1
	s_cmp_ge_u32 s8, s19
	s_mov_b32 s8, s10
	s_cselect_b32 s10, s18, s26
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s0, s7, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_xor_b32 s10, s10, s25
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s1, s7, v1
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_sub_i32 s10, s10, s25
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v72, 0, v2
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_mul_i32 s18, s10, s6
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s10, s24, s10
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_sub_i32 s2, s2, s18
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v73, 0, v12
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_add_i32 s30, s10, s2
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v74, v5, v13
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s2, s5, s30
	s_mul_i32 s5, s7, s30
	s_add_i32 s2, s2, s3
	v_lshl_add_u32 v69, s5, 1, v7
	v_lshl_add_u32 v70, s5, 2, v4
	v_add_lshl_u32 v71, s2, v0, 1
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v75, 0, v14
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v76, 0, v3
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v77, 0, v9
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v78, 0, v8
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v79, 0, v4
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
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v207, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mul_i32 s27, s7, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_lshl_b32 s35, s21, 1
	s_lshl_b32 s36, s27, 1
	s_lshl_b32 s37, s27, 2
	s_mov_b32 s21, s9
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s7, 0x76543210
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_add_nc_u32_e32 v0, 0x80, v69
	v_cndmask_b32_e64 v1, 0x80000000, v69, s0
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_add_nc_u32_e32 v2, 0x100, v70
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_ashr_i32 s31, s30, 31
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v4, 0x80000000, v70, s0
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_load_u16 v3, v1, s[20:23], 0 offen
	.loc	1 235 21                        ; kda_gluon.py:235:21
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v5, 0x80000000, v2, s1
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_lshl_b64 s[2:3], s[30:31], 2
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_cndmask_b32_e64 v208, 0x80000000, v71, s4
	.loc	1 229 21                        ; kda_gluon.py:229:21
	buffer_load_u16 v2, v0, s[20:23], 0 offen
	.loc	1 235 21                        ; kda_gluon.py:235:21
	buffer_load_u16 v0, v0, s[8:11], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_add_u32 s2, s28, s2
	s_addc_u32 s3, s29, s3
	.loc	1 190 9                         ; kda_gluon.py:190:9
	v_add_nc_u32_e32 v70, s37, v70
	s_add_i32 s33, s33, -1
	.loc	1 333 13                        ; kda_gluon.py:333:13
	s_add_i32 s30, s30, s6
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cmp_lg_u32 s33, 0
	v_add_nc_u32_e32 v69, s36, v69
	v_add_nc_u32_e32 v71, s35, v71
	.loc	1 229 21                        ; kda_gluon.py:229:21
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v3, 16, v3
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0, v3, s0
	v_cndmask_b32_e64 v3, 0, v6, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 242 41                        ; kda_gluon.py:242:41
	v_dual_mul_f32 v6, v3, v3 :: v_dual_lshlrev_b32 v1, 16, v1
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_fmac_f32_e32 v6, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v6, v6, v6 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v6, v6, v6 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v6, v6, v6 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_permlanex16_b32 v8, v6, -1, -1 op_sel:[1,0]
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_e32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp6:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_readlane_b32 s5, v6, 31
.Ltmp7:
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v0
	v_cndmask_b32_e64 v0, 0, v1, s0
.Ltmp8:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_e32 v6, s5
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp9:
	.loc	1 235 21                        ; kda_gluon.py:235:21
	v_cndmask_b32_e64 v1, 0, v7, s1
.Ltmp10:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	ds_store_b32 v72, v6
.Ltmp11:
	.loc	1 243 41                        ; kda_gluon.py:243:41
	v_mul_f32_e32 v7, v1, v1
.Ltmp12:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v8, v73
.Ltmp13:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_fmac_f32_e32 v7, v0, v0
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v7, v7, v7 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v7, v7, v7 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v7, v7, v7 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_permlanex16_b32 v9, v7, -1, -1 op_sel:[1,0]
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v7, v7, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_readlane_b32 s31, v7, 31
	v_mov_b32_e32 v7, s31
	ds_store_b32 v72, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp20:
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_clause 0x1
	buffer_load_b32 v4, v4, s[12:15], 0 offen
	buffer_load_b32 v5, v5, s[12:15], 0 offen
	.loc	1 267 21                        ; kda_gluon.py:267:21
	buffer_load_u16 v6, v208, s[24:27], 0 offen
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	ds_load_b32 v7, v73
.Ltmp22:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_e32 v9, v8
.Ltmp23:
	.loc	1 281 26 is_stmt 1              ; kda_gluon.py:281:26
	global_load_b32 v34, v68, s[2:3]
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_e32 v10, v7
.Ltmp25:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_dual_add_f32 v8, v8, v9 :: v_dual_add_f32 v7, v7, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	1 242 26                        ; kda_gluon.py:242:26
	v_sqrt_f32_e32 v8, v8
	.loc	1 243 26                        ; kda_gluon.py:243:26
	v_sqrt_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 25                        ; kda_gluon.py:244:25
	v_dual_max_f32 v8, 0x2b8cbccc, v8 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	.loc	1 244 21 is_stmt 0              ; kda_gluon.py:244:21
	v_div_scale_f32 v11, null, v8, v8, v2
	v_div_scale_f32 v13, null, v8, v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 245 21 is_stmt 1              ; kda_gluon.py:245:21
	v_div_scale_f32 v15, null, v7, v7, v0
	v_div_scale_f32 v17, null, v7, v7, v1
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_rcp_f32_e32 v19, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v20, v13
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_rcp_f32_e32 v21, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v9, v17
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v12, vcc_lo, v2, v8, v2
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_div_scale_f32 v16, s5, v0, v7, v0
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v14, s2, v3, v8, v3
	v_fma_f32 v10, -v11, v19, 1.0
	v_fma_f32 v22, -v13, v20, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_fma_f32 v23, -v15, v21, 1.0
	v_fma_f32 v24, -v17, v9, 1.0
	v_div_scale_f32 v18, s3, v1, v7, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_dual_fmac_f32 v20, v22, v20 :: v_dual_fmac_f32 v21, v23, v21
	v_fmac_f32_e32 v19, v10, v19
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_fmac_f32_e32 v9, v24, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_dual_mul_f32 v23, v14, v20 :: v_dual_mul_f32 v24, v16, v21
	v_mul_f32_e32 v22, v12, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v13, v23, v14
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_fma_f32 v27, -v15, v24, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fma_f32 v25, -v11, v22, v12
	v_dual_fmac_f32 v23, v26, v20 :: v_dual_fmac_f32 v24, v27, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v22, v25, v19
	v_fma_f32 v14, -v13, v23, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_fma_f32 v15, -v15, v24, v16
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fma_f32 v12, -v11, v22, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v12, v19, v22
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v12, v14, v20, v23
	.loc	1 245 21                        ; kda_gluon.py:245:21
	s_mov_b32 vcc_lo, s5
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v2, v13, v8, v2
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_div_fmas_f32 v14, v15, v21, v24
	s_mov_b32 vcc_lo, s3
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v3, v12, v8, v3
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_mul_f32_e32 v10, v18, v9
	.loc	1 295 21                        ; kda_gluon.py:295:21
	v_mul_f32_e32 v32, s34, v2
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_div_fixup_f32 v0, v14, v7, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 295 21                        ; kda_gluon.py:295:21
	v_mul_f32_e32 v33, s34, v3
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_fma_f32 v28, -v17, v10, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v28, v9
	v_fma_f32 v11, -v17, v10, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v9, v11, v9, v10
	v_div_fixup_f32 v1, v9, v7, v1
	.loc	1 280 21                        ; kda_gluon.py:280:21
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v3, 0x3fb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v2, 0x3fb8aa3b, v4 :: v_dual_fmac_f32 v3, 0x3fb8aa3b, v5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v2, 0x3fb8aa3b, v4
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v3, v3, v5
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v3, 1.0, v3, s1
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_ldexp_f32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v2, 1.0, v2, s0
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_store_b64 v74, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v75
	ds_load_b128 v[39:42], v75 offset:16
	ds_load_b128 v[43:46], v75 offset:128
	ds_load_b128 v[47:50], v75 offset:144
	ds_load_b128 v[51:54], v75 offset:256
	ds_load_b128 v[55:58], v75 offset:272
	ds_load_b128 v[59:62], v75 offset:384
	ds_load_b128 v[63:66], v75 offset:400
	.loc	1 267 21                        ; kda_gluon.py:267:21
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 283 23                        ; kda_gluon.py:283:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v74, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v83, v83, v35
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_cndmask_b32_e64 v67, 0, v6, s4
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_load_b128 v[28:31], v75
	ds_load_b128 v[24:27], v75 offset:16
	ds_load_b128 v[20:23], v75 offset:128
	ds_load_b128 v[16:19], v75 offset:144
	ds_load_b128 v[12:15], v75 offset:256
	ds_load_b128 v[8:11], v75 offset:272
	ds_load_b128 v[4:7], v75 offset:384
	ds_load_b128 v[0:3], v75 offset:400
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v84, v84, v37 :: v_dual_mul_f32 v147, v147, v36
	v_dual_mul_f32 v92, v92, v41 :: v_dual_mul_f32 v155, v155, v40
	v_dual_mul_f32 v80, v80, v35 :: v_dual_mul_f32 v87, v87, v37
	v_mul_f32_e32 v81, v81, v35
	v_dual_mul_f32 v82, v82, v35 :: v_dual_mul_f32 v145, v145, v36
	v_dual_mul_f32 v144, v144, v36 :: v_dual_mul_f32 v151, v151, v38
	v_dual_mul_f32 v146, v146, v36 :: v_dual_mul_f32 v89, v89, v39
	v_dual_mul_f32 v88, v88, v39 :: v_dual_mul_f32 v95, v95, v41
	v_dual_mul_f32 v102, v102, v45 :: v_dual_mul_f32 v165, v165, v46
	v_dual_mul_f32 v108, v108, v49 :: v_dual_mul_f32 v171, v171, v48
	v_dual_mul_f32 v110, v110, v49 :: v_dual_mul_f32 v173, v173, v50
	v_dual_mul_f32 v116, v116, v53 :: v_dual_mul_f32 v179, v179, v52
	v_dual_mul_f32 v118, v118, v53 :: v_dual_mul_f32 v181, v181, v54
	v_dual_mul_f32 v126, v126, v57 :: v_dual_mul_f32 v189, v189, v58
	v_dual_mul_f32 v132, v132, v61 :: v_dual_mul_f32 v195, v195, v60
	v_dual_mul_f32 v198, v198, v62 :: v_dual_mul_f32 v141, v141, v65
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v202, v202, v64 :: v_dual_mul_f32 v35, v84, v30
	.loc	1 285 33                        ; kda_gluon.py:285:33
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v36, v92, v26 :: v_dual_mul_f32 v85, v85, v37
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v86, v86, v37 :: v_dual_mul_f32 v149, v149, v38
	v_dual_mul_f32 v148, v148, v38 :: v_dual_mul_f32 v91, v91, v39
	v_dual_mul_f32 v150, v150, v38 :: v_dual_mul_f32 v93, v93, v41
	v_dual_mul_f32 v90, v90, v39 :: v_dual_mul_f32 v153, v153, v40
	v_dual_mul_f32 v94, v94, v41 :: v_dual_mul_f32 v157, v157, v42
	v_dual_mul_f32 v156, v156, v42 :: v_dual_mul_f32 v99, v99, v43
	v_dual_mul_f32 v98, v98, v43 :: v_dual_mul_f32 v161, v161, v44
	v_dual_mul_f32 v100, v100, v45 :: v_dual_mul_f32 v163, v163, v44
	v_dual_mul_f32 v164, v164, v46 :: v_dual_mul_f32 v107, v107, v47
	v_dual_mul_f32 v106, v106, v47 :: v_dual_mul_f32 v169, v169, v48
	v_dual_mul_f32 v114, v114, v51 :: v_dual_mul_f32 v177, v177, v52
	v_dual_mul_f32 v122, v122, v55 :: v_dual_mul_f32 v185, v185, v56
	v_dual_mul_f32 v184, v184, v56 :: v_dual_mul_f32 v191, v191, v58
	v_dual_mul_f32 v188, v188, v58 :: v_dual_mul_f32 v131, v131, v59
	v_dual_mul_f32 v190, v190, v58 :: v_dual_mul_f32 v133, v133, v61
	v_dual_mul_f32 v128, v128, v59 :: v_dual_mul_f32 v135, v135, v61
	v_dual_mul_f32 v134, v134, v61 :: v_dual_mul_f32 v197, v197, v62
	v_dual_mul_f32 v192, v192, v60 :: v_dual_mul_f32 v199, v199, v62
	v_dual_mul_f32 v194, v194, v60 :: v_dual_mul_f32 v137, v137, v63
	v_dual_mul_f32 v196, v196, v62 :: v_dual_mul_f32 v139, v139, v63
	v_dual_mul_f32 v136, v136, v63 :: v_dual_mul_f32 v143, v143, v65
	v_dual_mul_f32 v138, v138, v63 :: v_dual_mul_f32 v201, v201, v64
	v_dual_mul_f32 v140, v140, v65 :: v_dual_mul_f32 v203, v203, v64
	v_dual_mul_f32 v142, v142, v65 :: v_dual_mul_f32 v205, v205, v66
	v_dual_mul_f32 v200, v200, v64 :: v_dual_mul_f32 v207, v207, v66
	.loc	1 285 33                        ; kda_gluon.py:285:33
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v38, v108, v18 :: v_dual_mul_f32 v63, v181, v15
	v_dual_mul_f32 v39, v116, v14 :: v_dual_mul_f32 v62, v173, v19
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v41, v132, v6 :: v_dual_mul_f32 v64, v189, v11
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v58, v141, v2 :: v_dual_fmac_f32 v35, v80, v28
	v_mul_f32_e32 v61, v165, v23
	v_dual_mul_f32 v211, v102, v22 :: v_dual_fmac_f32 v36, v88, v24
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v152, v152, v40 :: v_dual_mul_f32 v159, v159, v42
	v_dual_mul_f32 v158, v158, v42 :: v_dual_mul_f32 v101, v101, v45
	v_dual_mul_f32 v96, v96, v43 :: v_dual_mul_f32 v103, v103, v45
	v_dual_mul_f32 v160, v160, v44 :: v_dual_mul_f32 v167, v167, v46
	v_dual_mul_f32 v162, v162, v44 :: v_dual_mul_f32 v105, v105, v47
	v_dual_mul_f32 v168, v168, v48 :: v_dual_mul_f32 v175, v175, v50
	v_dual_mul_f32 v170, v170, v48 :: v_dual_mul_f32 v113, v113, v51
	v_dual_mul_f32 v172, v172, v50 :: v_dual_mul_f32 v115, v115, v51
	v_dual_mul_f32 v174, v174, v50 :: v_dual_mul_f32 v117, v117, v53
	v_dual_mul_f32 v112, v112, v51 :: v_dual_mul_f32 v119, v119, v53
	v_dual_mul_f32 v176, v176, v52 :: v_dual_mul_f32 v183, v183, v54
	v_dual_mul_f32 v178, v178, v52 :: v_dual_mul_f32 v121, v121, v55
	v_dual_mul_f32 v130, v130, v59 :: v_dual_mul_f32 v193, v193, v60
	v_mul_f32_e32 v204, v204, v66
	v_mul_f32_e32 v206, v206, v66
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v37, v100, v22 :: v_dual_mul_f32 v60, v157, v27
	v_dual_mul_f32 v42, v140, v2 :: v_dual_add_f32 v35, v35, v36
	v_dual_mul_f32 v44, v156, v27 :: v_dual_mul_f32 v51, v85, v30
	v_dual_mul_f32 v45, v164, v23 :: v_dual_mul_f32 v52, v93, v26
	v_mul_f32_e32 v48, v188, v11
	v_dual_mul_f32 v66, v205, v3 :: v_dual_mul_f32 v209, v86, v30
	v_dual_mul_f32 v36, v110, v18 :: v_dual_fmac_f32 v39, v112, v12
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v61, v161, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v62, v169, v17 :: v_dual_fmac_f32 v209, v82, v28
	v_fmac_f32_e32 v63, v177, v13
	v_dual_fmac_f32 v64, v185, v9 :: v_dual_fmac_f32 v211, v98, v20
.Ltmp30:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v166, v166, v46 :: v_dual_mul_f32 v109, v109, v49
	v_dual_mul_f32 v104, v104, v47 :: v_dual_mul_f32 v111, v111, v49
	v_dual_mul_f32 v180, v180, v54 :: v_dual_mul_f32 v123, v123, v55
	v_dual_mul_f32 v182, v182, v54 :: v_dual_mul_f32 v125, v125, v57
	v_dual_mul_f32 v120, v120, v55 :: v_dual_mul_f32 v127, v127, v57
	v_dual_mul_f32 v186, v186, v56 :: v_dual_mul_f32 v129, v129, v59
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v46, v172, v19 :: v_dual_mul_f32 v53, v101, v22
	v_mul_f32_e32 v49, v196, v7
	v_mul_f32_e32 v55, v117, v14
	v_mul_f32_e32 v59, v149, v31
	v_mul_f32_e32 v50, v204, v3
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v48, v184, v9 :: v_dual_fmac_f32 v51, v81, v28
	v_fmac_f32_e32 v52, v89, v24
	v_dual_fmac_f32 v60, v153, v25 :: v_dual_add_f32 v63, v63, v64
.Ltmp32:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v64, v95, v26
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v61, v61, v62 :: v_dual_fmac_f32 v36, v106, v16
.Ltmp34:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v124, v124, v57 :: v_dual_mul_f32 v187, v187, v56
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v56, v125, v10
	v_mul_f32_e32 v57, v133, v6
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v45, v160, v21
	v_dual_fmac_f32 v49, v192, v5 :: v_dual_add_f32 v36, v211, v36
.Ltmp36:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v211, v119, v14 :: v_dual_fmac_f32 v50, v200, v1
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v51, v51, v52 :: v_dual_fmac_f32 v46, v168, v17
.Ltmp38:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v154, v154, v40 :: v_dual_mul_f32 v97, v97, v43
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v40, v124, v10 :: v_dual_mul_f32 v65, v197, v7
	v_dual_mul_f32 v210, v94, v26 :: v_dual_fmac_f32 v37, v96, v20
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v41, v128, v4
	v_dual_add_f32 v49, v49, v50 :: v_dual_fmac_f32 v42, v136, v0
	v_dual_add_f32 v45, v45, v46 :: v_dual_fmac_f32 v38, v104, v16
.Ltmp40:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v43, v148, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v40, v120, v8 :: v_dual_add_f32 v41, v41, v42
	v_fmac_f32_e32 v57, v129, v4
	v_add_f32_e32 v37, v37, v38
	v_fmac_f32_e32 v58, v137, v0
	v_dual_fmac_f32 v59, v145, v29 :: v_dual_mul_f32 v62, v87, v30
.Ltmp42:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v38, v118, v14 :: v_dual_add_f32 v39, v39, v40
	v_dual_mul_f32 v40, v126, v10 :: v_dual_fmac_f32 v43, v144, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v59, v59, v60 :: v_dual_fmac_f32 v66, v201, v1
.Ltmp44:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v60, v206, v3 :: v_dual_fmac_f32 v65, v193, v5
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v210, v90, v24 :: v_dual_add_f32 v35, v35, v37
	v_dual_add_f32 v57, v57, v58 :: v_dual_fmac_f32 v38, v114, v12
	v_dual_fmac_f32 v40, v122, v8 :: v_dual_add_f32 v209, v209, v210
.Ltmp46:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v210, v111, v18
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v65, v65, v66 :: v_dual_mul_f32 v46, v150, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v38, v38, v40 :: v_dual_add_f32 v37, v39, v41
.Ltmp48:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v40, v127, v10 :: v_dual_mul_f32 v47, v180, v15
	v_mul_f32_e32 v54, v109, v18
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v46, v146, v29 :: v_dual_fmac_f32 v211, v115, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v123, v8
.Ltmp50:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v52, v174, v19 :: v_dual_fmac_f32 v53, v97, v20
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v54, v105, v16
	v_fmac_f32_e32 v55, v113, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v40, v211, v40
.Ltmp52:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v211, v191, v11 :: v_dual_fmac_f32 v56, v121, v8
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v47, v176, v13
	v_fmac_f32_e32 v44, v152, v25
.Ltmp54:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v50, v166, v23 :: v_dual_add_f32 v53, v53, v54
	v_dual_mul_f32 v54, v182, v15 :: v_dual_fmac_f32 v211, v187, v9
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v55, v55, v56 :: v_dual_mul_f32 v58, v198, v7
.Ltmp56:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v56, v190, v11
	v_dual_mul_f32 v42, v134, v6 :: v_dual_add_f32 v47, v47, v48
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v43, v43, v44 :: v_dual_mul_f32 v44, v142, v2
	v_fmac_f32_e32 v50, v162, v21
	v_fmac_f32_e32 v52, v170, v17
	v_fmac_f32_e32 v54, v178, v13
	v_fmac_f32_e32 v56, v186, v9
	v_dual_fmac_f32 v42, v130, v4 :: v_dual_add_f32 v39, v43, v45
	v_dual_fmac_f32 v44, v138, v0 :: v_dual_add_f32 v41, v47, v49
	v_dual_add_f32 v50, v50, v52 :: v_dual_add_f32 v47, v59, v61
.Ltmp58:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v52, v151, v31
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v54, v54, v56 :: v_dual_add_f32 v49, v63, v65
.Ltmp60:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v56, v159, v27
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v58, v194, v5
	v_fmac_f32_e32 v60, v202, v1
	v_fmac_f32_e32 v62, v83, v28
	v_fmac_f32_e32 v64, v91, v24
.Ltmp62:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v48, v158, v27
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v52, v147, v29
	v_dual_add_f32 v58, v58, v60 :: v_dual_add_f32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_add_f32 v62, v62, v64 :: v_dual_add_f32 v37, v39, v41
	v_fmac_f32_e32 v56, v155, v25
.Ltmp64:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v66, v103, v22
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v42, v42, v44 :: v_dual_add_f32 v43, v51, v53
	v_dual_add_f32 v35, v35, v37 :: v_dual_add_f32 v52, v52, v56
	v_fmac_f32_e32 v48, v154, v25
.Ltmp66:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v44, v135, v6
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v66, v99, v20
	v_fmac_f32_e32 v210, v107, v16
.Ltmp68:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v60, v167, v23
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v46, v46, v48 :: v_dual_add_f32 v45, v55, v57
.Ltmp70:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v48, v143, v2
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v44, v131, v4
.Ltmp72:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v64, v175, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v66, v66, v210 :: v_dual_add_f32 v39, v43, v45
	v_fmac_f32_e32 v48, v139, v0
.Ltmp74:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v210, v183, v15
	v_mul_f32_e32 v56, v207, v3
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v60, v163, v21
	v_fmac_f32_e32 v64, v171, v17
	v_dual_add_f32 v44, v44, v48 :: v_dual_add_f32 v41, v47, v49
.Ltmp76:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v48, v199, v7
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v210, v179, v13
	v_fmac_f32_e32 v56, v203, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v60, v60, v64 :: v_dual_add_f32 v37, v39, v41
	v_fmac_f32_e32 v48, v195, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v64, v210, v211
	v_add_f32_e32 v36, v209, v36
	v_add_f32_e32 v38, v38, v42
	v_add_f32_e32 v42, v46, v50
	v_add_f32_e32 v48, v48, v56
	v_add_f32_e32 v46, v54, v58
	v_add_f32_e32 v50, v62, v66
	v_add_f32_e32 v40, v40, v44
	v_add_f32_e32 v44, v52, v60
	v_add_f32_e32 v48, v64, v48
	v_add_f32_e32 v36, v36, v38
	v_add_f32_e32 v38, v42, v46
	v_add_f32_e32 v40, v50, v40
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	s_waitcnt lgkmcnt(0)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v42, v44, v48
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	s_barrier
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v38, v36, v38
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v36, v35, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v39, v40, v42
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v40, v37, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v38, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v42, v39, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v36, v37, v40 :: v_dual_add_f32 v37, v38, v41
	v_add_f32_e32 v38, v39, v42
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	ds_store_b128 v76, v[35:38]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v77
.Ltmp89:
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v39, v35, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v36, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v37, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v38, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v35, v35, v39 :: v_dual_add_f32 v36, v36, v40
	v_dual_add_f32 v37, v37, v41 :: v_dual_add_f32 v38, v38, v42
.Ltmp92:
	.loc	1 286 26                        ; kda_gluon.py:286:26
	ds_store_2addr_b64 v78, v[35:36], v[37:38] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v35, v79
	.loc	1 288 30                        ; kda_gluon.py:288:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 287 24                        ; kda_gluon.py:287:24
	v_sub_f32_e32 v35, v67, v35
	.loc	1 289 17                        ; kda_gluon.py:289:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v34, v34, v35
	.loc	1 288 30                        ; kda_gluon.py:288:30
	ds_store_b32 v79, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[40:43], v78 offset1:16
	.loc	1 294 27                        ; kda_gluon.py:294:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v74, v[32:33]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v75
	ds_load_b128 v[32:35], v75 offset:16
	ds_load_b128 v[64:67], v75 offset:128
	ds_load_b128 v[60:63], v75 offset:144
	ds_load_b128 v[56:59], v75 offset:256
	ds_load_b128 v[52:55], v75 offset:272
	ds_load_b128 v[48:51], v75 offset:384
	ds_load_b128 v[44:47], v75 offset:400
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp94:
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v150, v31, v42 :: v_dual_fmac_f32 v195, v5, v43
	v_fmac_f32_e32 v173, v19, v41
	v_fmac_f32_e32 v172, v19, v40
	v_dual_fmac_f32 v146, v29, v42 :: v_dual_fmac_f32 v197, v7, v41
	v_dual_fmac_f32 v148, v31, v40 :: v_dual_fmac_f32 v193, v5, v41
	v_dual_fmac_f32 v149, v31, v41 :: v_dual_fmac_f32 v152, v25, v40
	v_fmac_f32_e32 v143, v2, v43
	v_fmac_f32_e32 v153, v25, v41
	v_dual_fmac_f32 v154, v25, v42 :: v_dual_fmac_f32 v205, v3, v41
	v_dual_fmac_f32 v155, v25, v43 :: v_dual_fmac_f32 v156, v27, v40
	v_fmac_f32_e32 v201, v1, v41
	v_fmac_f32_e32 v157, v27, v41
	v_dual_fmac_f32 v158, v27, v42 :: v_dual_fmac_f32 v203, v1, v43
	v_dual_fmac_f32 v159, v27, v43 :: v_dual_fmac_f32 v160, v21, v40
	v_fmac_f32_e32 v162, v21, v42
	v_fmac_f32_e32 v188, v11, v40
	v_fmac_f32_e32 v182, v15, v42
	v_fmac_f32_e32 v192, v5, v40
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v27, v173, v63
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v170, v17, v42 :: v_dual_mul_f32 v25, v172, v63
	v_fmac_f32_e32 v196, v7, v40
	v_dual_fmac_f32 v194, v5, v42 :: v_dual_mul_f32 v5, v150, v39
	v_dual_fmac_f32 v80, v28, v40 :: v_dual_fmac_f32 v191, v11, v43
	v_fmac_f32_e32 v81, v28, v41
	v_dual_fmac_f32 v82, v28, v42 :: v_dual_fmac_f32 v133, v6, v41
	v_dual_fmac_f32 v83, v28, v43 :: v_dual_fmac_f32 v84, v30, v40
	v_fmac_f32_e32 v129, v4, v41
	v_fmac_f32_e32 v85, v30, v41
	v_dual_fmac_f32 v86, v30, v42 :: v_dual_fmac_f32 v131, v4, v43
	v_dual_fmac_f32 v87, v30, v43 :: v_dual_fmac_f32 v144, v29, v40
	v_fmac_f32_e32 v135, v6, v43
	v_fmac_f32_e32 v145, v29, v41
	v_fmac_f32_e32 v147, v29, v43
	v_dual_fmac_f32 v151, v31, v43 :: v_dual_fmac_f32 v88, v24, v40
	v_fmac_f32_e32 v199, v7, v43
	v_fmac_f32_e32 v89, v24, v41
	v_dual_fmac_f32 v90, v24, v42 :: v_dual_fmac_f32 v141, v2, v41
	v_dual_fmac_f32 v91, v24, v43 :: v_dual_fmac_f32 v92, v26, v40
	v_fmac_f32_e32 v137, v0, v41
	v_fmac_f32_e32 v93, v26, v41
	v_dual_fmac_f32 v94, v26, v42 :: v_dual_fmac_f32 v139, v0, v43
	v_dual_fmac_f32 v95, v26, v43 :: v_dual_fmac_f32 v96, v20, v40
	v_fmac_f32_e32 v207, v3, v43
	v_fmac_f32_e32 v97, v20, v41
	v_fmac_f32_e32 v98, v20, v42
	v_fmac_f32_e32 v99, v20, v43
	v_fmac_f32_e32 v101, v22, v41
	v_fmac_f32_e32 v103, v22, v43
	v_fmac_f32_e32 v161, v21, v41
	v_dual_fmac_f32 v163, v21, v43 :: v_dual_fmac_f32 v164, v23, v40
	v_fmac_f32_e32 v165, v23, v41
	v_fmac_f32_e32 v166, v23, v42
	v_fmac_f32_e32 v167, v23, v43
	v_fmac_f32_e32 v105, v16, v41
	v_fmac_f32_e32 v107, v16, v43
	v_fmac_f32_e32 v109, v18, v41
	v_fmac_f32_e32 v111, v18, v43
	v_fmac_f32_e32 v169, v17, v41
	v_fmac_f32_e32 v171, v17, v43
	v_fmac_f32_e32 v175, v19, v43
	v_fmac_f32_e32 v113, v12, v41
	v_fmac_f32_e32 v115, v12, v43
	v_fmac_f32_e32 v117, v14, v41
	v_fmac_f32_e32 v119, v14, v43
	v_fmac_f32_e32 v177, v13, v41
	v_dual_fmac_f32 v178, v13, v42 :: v_dual_fmac_f32 v5, v146, v37
	v_fmac_f32_e32 v179, v13, v43
	v_fmac_f32_e32 v181, v15, v41
	v_fmac_f32_e32 v183, v15, v43
	v_fmac_f32_e32 v121, v8, v41
	v_fmac_f32_e32 v123, v8, v43
	v_fmac_f32_e32 v125, v10, v41
	v_fmac_f32_e32 v127, v10, v43
	v_fmac_f32_e32 v185, v9, v41
	v_fmac_f32_e32 v187, v9, v43
	v_fmac_f32_e32 v189, v11, v41
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v43, v188, v55 :: v_dual_fmac_f32 v176, v13, v40
	v_dual_mul_f32 v41, v182, v59 :: v_dual_fmac_f32 v204, v3, v40
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v206, v3, v42 :: v_dual_mul_f32 v3, v149, v39
	v_fmac_f32_e32 v100, v22, v40
	v_fmac_f32_e32 v102, v22, v42
	v_fmac_f32_e32 v104, v16, v40
	v_fmac_f32_e32 v106, v16, v42
	v_dual_fmac_f32 v110, v18, v42 :: v_dual_mul_f32 v23, v167, v67
	v_dual_fmac_f32 v114, v12, v42 :: v_dual_mul_f32 v31, v175, v63
	v_dual_fmac_f32 v180, v15, v40 :: v_dual_fmac_f32 v3, v145, v37
	v_fmac_f32_e32 v174, v19, v42
	v_fmac_f32_e32 v184, v9, v40
	v_fmac_f32_e32 v190, v11, v42
	v_fmac_f32_e32 v134, v6, v42
	v_dual_fmac_f32 v198, v7, v42 :: v_dual_fmac_f32 v27, v169, v61
	v_fmac_f32_e32 v200, v1, v40
	v_dual_fmac_f32 v202, v1, v42 :: v_dual_mul_f32 v1, v148, v39
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v7, v151, v39
	v_dual_mul_f32 v11, v157, v35 :: v_dual_fmac_f32 v108, v18, v40
	v_dual_mul_f32 v13, v158, v35 :: v_dual_fmac_f32 v168, v17, v40
	v_dual_mul_f32 v21, v166, v67 :: v_dual_fmac_f32 v186, v9, v42
	v_dual_mul_f32 v9, v156, v35 :: v_dual_fmac_f32 v124, v10, v40
	v_dual_mul_f32 v15, v159, v35 :: v_dual_fmac_f32 v126, v10, v42
	v_mul_f32_e32 v17, v164, v67
	v_dual_mul_f32 v19, v165, v67 :: v_dual_fmac_f32 v116, v14, v40
	v_dual_mul_f32 v39, v181, v59 :: v_dual_fmac_f32 v118, v14, v42
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v1, v144, v37
.Ltmp96:
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v120, v8, v40 :: v_dual_fmac_f32 v7, v147, v37
	v_dual_fmac_f32 v122, v8, v42 :: v_dual_fmac_f32 v11, v153, v33
	v_dual_fmac_f32 v130, v4, v42 :: v_dual_fmac_f32 v19, v161, v65
	v_dual_fmac_f32 v132, v6, v40 :: v_dual_fmac_f32 v23, v163, v65
	v_dual_fmac_f32 v138, v0, v42 :: v_dual_fmac_f32 v31, v171, v61
	v_dual_fmac_f32 v142, v2, v42 :: v_dual_fmac_f32 v39, v177, v57
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v10, v93, v34
	v_mul_f32_e32 v24, v108, v62
	v_mul_f32_e32 v26, v109, v62
	v_dual_mul_f32 v28, v110, v62 :: v_dual_mul_f32 v35, v180, v59
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v112, v12, v40 :: v_dual_mul_f32 v29, v174, v63
	v_fmac_f32_e32 v136, v0, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v140, v2, v40 :: v_dual_fmac_f32 v35, v176, v57
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v0, v84, v38
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v9, v152, v33
.Ltmp98:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v37, v124, v54
	v_dual_mul_f32 v2, v85, v38 :: v_dual_fmac_f32 v13, v154, v33
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v15, v155, v33
.Ltmp100:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v33, v126, v54
	v_dual_mul_f32 v6, v87, v38 :: v_dual_fmac_f32 v17, v160, v65
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_fmac_f32_e32 v128, v4, v40
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v4, v86, v38 :: v_dual_fmac_f32 v43, v184, v53
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v21, v162, v65
	v_fmac_f32_e32 v25, v168, v61
.Ltmp102:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v63, v196, v51
	v_dual_mul_f32 v65, v198, v51 :: v_dual_mul_f32 v30, v111, v62
	v_mul_f32_e32 v12, v94, v34
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v4, v82, v36 :: v_dual_add_f32 v3, v3, v11
	v_dual_fmac_f32 v10, v89, v32 :: v_dual_add_f32 v7, v7, v15
	v_fmac_f32_e32 v24, v104, v60
	v_fmac_f32_e32 v26, v105, v60
	v_fmac_f32_e32 v28, v106, v60
	v_dual_fmac_f32 v29, v170, v61 :: v_dual_fmac_f32 v30, v107, v60
.Ltmp104:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v60, v197, v51
	v_dual_mul_f32 v51, v199, v51 :: v_dual_fmac_f32 v0, v80, v36
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v37, v120, v52
	v_fmac_f32_e32 v33, v122, v52
	v_dual_fmac_f32 v6, v83, v36 :: v_dual_add_f32 v5, v5, v13
	v_dual_fmac_f32 v63, v192, v49 :: v_dual_fmac_f32 v2, v81, v36
.Ltmp106:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v36, v183, v59 :: v_dual_add_f32 v13, v21, v29
	v_mul_f32_e32 v38, v117, v58
	v_mul_f32_e32 v40, v118, v58
	v_dual_mul_f32 v59, v190, v55 :: v_dual_mul_f32 v8, v92, v34
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v41, v178, v57
	v_dual_fmac_f32 v36, v179, v57 :: v_dual_mul_f32 v57, v204, v47
.Ltmp108:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v14, v95, v34 :: v_dual_mul_f32 v67, v206, v47
	v_dual_mul_f32 v34, v116, v58 :: v_dual_add_f32 v1, v1, v9
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v60, v193, v49
.Ltmp110:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v42, v119, v58
	v_dual_mul_f32 v58, v125, v54 :: v_dual_add_f32 v11, v19, v27
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v9, v17, v25 :: v_dual_mul_f32 v54, v127, v54
.Ltmp112:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v18, v101, v66 :: v_dual_fmac_f32 v65, v194, v49
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v14, v91, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v58, v121, v52 :: v_dual_fmac_f32 v59, v186, v53
	v_dual_fmac_f32 v8, v88, v32 :: v_dual_fmac_f32 v67, v202, v45
	v_fmac_f32_e32 v12, v90, v32
.Ltmp114:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v32, v189, v55
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v1, v1, v9 :: v_dual_fmac_f32 v54, v123, v52
.Ltmp116:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v52, v205, v47
	v_dual_mul_f32 v20, v102, v66 :: v_dual_fmac_f32 v51, v195, v49
	v_mul_f32_e32 v55, v191, v55
	v_mul_f32_e32 v61, v134, v50
	v_mul_f32_e32 v16, v100, v66
	v_dual_mul_f32 v22, v103, v66 :: v_dual_fmac_f32 v57, v200, v45
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v32, v185, v53 :: v_dual_mul_f32 v47, v207, v47
	v_fmac_f32_e32 v52, v201, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v22, v99, v64 :: v_dual_add_f32 v5, v5, v13
.Ltmp118:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v62, v132, v50 :: v_dual_add_f32 v19, v39, v32
	v_dual_mul_f32 v66, v141, v46 :: v_dual_fmac_f32 v61, v130, v48
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v16, v96, v64 :: v_dual_add_f32 v15, v23, v31
	v_dual_fmac_f32 v47, v203, v45 :: v_dual_fmac_f32 v18, v97, v64
	v_add_f32_e32 v17, v35, v43
	v_dual_add_f32 v25, v63, v57 :: v_dual_fmac_f32 v20, v98, v64
.Ltmp120:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v64, v133, v50 :: v_dual_add_f32 v3, v3, v11
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v27, v60, v52
	v_dual_fmac_f32 v66, v137, v44 :: v_dual_fmac_f32 v55, v187, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v129, v48
	v_dual_add_f32 v2, v2, v10 :: v_dual_add_f32 v11, v19, v27
	v_dual_fmac_f32 v38, v113, v56 :: v_dual_add_f32 v31, v51, v47
	v_dual_add_f32 v7, v7, v15 :: v_dual_add_f32 v10, v18, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v26, v64, v66 :: v_dual_add_f32 v3, v3, v11
	v_dual_add_f32 v18, v38, v58 :: v_dual_add_f32 v23, v36, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v10
	v_fmac_f32_e32 v34, v112, v56
	v_fmac_f32_e32 v62, v128, v48
	v_dual_add_f32 v10, v18, v26 :: v_dual_add_f32 v15, v23, v31
	v_fmac_f32_e32 v40, v114, v56
.Ltmp122:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v53, v142, v46
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v21, v41, v59 :: v_dual_add_f32 v2, v2, v10
	v_fmac_f32_e32 v42, v115, v56
.Ltmp124:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v56, v140, v46
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v0, v0, v8
	v_add_f32_e32 v8, v16, v24
	v_dual_add_f32 v16, v34, v37 :: v_dual_add_f32 v29, v65, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v136, v44
.Ltmp126:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v46, v143, v46
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v8 :: v_dual_add_f32 v9, v17, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v21, v29 :: v_dual_add_f32 v24, v62, v56
.Ltmp128:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v50, v135, v50 :: v_dual_fmac_f32 v53, v138, v44
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v46, v139, v44 :: v_dual_add_f32 v1, v1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v8, v16, v24 :: v_dual_add_f32 v5, v5, v13
	v_fmac_f32_e32 v50, v131, v48
	v_add_f32_e32 v4, v4, v12
	v_add_f32_e32 v12, v20, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v0, v0, v8
	v_add_f32_e32 v28, v61, v53
	v_add_f32_e32 v6, v6, v14
	v_add_f32_e32 v14, v22, v30
	v_dual_add_f32 v30, v50, v46 :: v_dual_add_f32 v7, v7, v15
	v_add_f32_e32 v20, v40, v33
	v_dual_add_f32 v0, v0, v1 :: v_dual_add_f32 v1, v2, v3
	v_add_f32_e32 v22, v42, v54
	v_add_f32_e32 v4, v4, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, v20, v28
	v_add_f32_e32 v6, v6, v14
	v_add_f32_e32 v14, v22, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v4, v4, v12
	v_add_f32_e32 v6, v6, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v4, v5
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v0, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v1, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v3, v6, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v6, v2, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v4 :: v_dual_add_f32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v7, v3, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v2, v2, v6 :: v_dual_add_f32 v3, v3, v7
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	ds_store_b128 v76, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v77
.Ltmp137:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v0, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v2, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v3, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v4 :: v_dual_add_f32 v1, v1, v5
	v_dual_add_f32 v2, v2, v6 :: v_dual_add_f32 v3, v3, v7
.Ltmp140:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	ds_store_2addr_b64 v78, v[0:1], v[2:3] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v79
	.loc	1 302 30                        ; kda_gluon.py:302:30
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	.loc	1 303 17                        ; kda_gluon.py:303:17
	buffer_store_b16 v0, v208, s[16:19], 0 offen
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 77 5                          ; kda_gluon.py:77:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp141:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 212
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4, .Lfunc_end0-amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_vgpr, 212
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5616
; TotalNumSgprs: 40
; NumVgprs: 212
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 212
; Occupancy: 7
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	5                               ; Abbreviation Code
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
	.byte	6                               ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xa2 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x7c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	242                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x67:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	285                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	298                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"kda_gluon.py"                  ; string offset=7 ; kda_gluon.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4"                        ; string offset=88 ; amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
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
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_fwd_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     212
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
