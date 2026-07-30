	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 584 86 prologue_end           ; attention.py:584:86
	v_and_b32_e32 v35, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s6, s3, 9
	s_mov_b32 s15, 0x31027000
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s9, s4, s6
	.loc	1 584 86 is_stmt 0              ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 4, v35
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v3, s9, v2
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s4, v2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v56, v0, 4, 1
	s_load_b32 s7, s[0:1], 0x88
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v37, 0x60, v0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v34, 15, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v52, 16, v0
	s_mov_b32 s8, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v6, 1, v37
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s5, v3, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s5, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v5, v36, 30, v56
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s16, s4, s7
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s16, s16, 64
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v5, 2, v5
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_gt_i32 s16, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v7, 4, v5
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v38, v5, v1
	ds_bpermute_b32 v39, v5, v2
	ds_bpermute_b32 v40, v5, v3
	ds_bpermute_b32 v45, v5, v4
	ds_bpermute_b32 v47, v7, v1
	ds_bpermute_b32 v48, v7, v2
	ds_bpermute_b32 v49, v7, v3
	ds_bpermute_b32 v46, v7, v4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v6, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v41, s4, v1
	.loc	1 585 26 is_stmt 1              ; attention.py:585:26
	v_cmp_eq_u32_e64 s4, 0, v52
	v_or_b32_e32 v54, s9, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v41
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v33, s9, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s4
	v_cndmask_b32_e64 v3, 0x3276, v3, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v51, 0x5040504, v2
	v_and_b32_e32 v53, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow66
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s22, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v55, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v8, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v54
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_dual_mov_b32 v7, 0x5410 :: v_dual_lshlrev_b32 v50, 2, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v2, 0x70, v0
	v_lshlrev_b32_e32 v10, 5, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v3, 4, v0
	v_and_b32_e32 v6, 24, v36
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x28
	s_load_b32 s1, s[0:1], 0x68
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v57, s7, v41
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s0, s16, 0x200
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 707 13                        ; attention.py:707:13
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s7, s3, s22
	v_lshrrev_b32_e32 v5, 2, v37
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	v_bfe_i32 v55, v0, 2, 1
	buffer_load_u16 v53, v1, s[24:27], 0 offen
	.loc	1 711 49                        ; attention.py:711:49
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 707 13                        ; attention.py:707:13
	v_lshlrev_b32_e32 v11, 1, v56
	v_cndmask_b32_e64 v62, 0x1054, v7, s4
	v_cndmask_b32_e64 v63, 0x3276, v8, s4
	v_dual_mov_b32 v37, v33 :: v_dual_and_b32 v66, 0x160, v10
	v_mov_b32_e32 v25, v33
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s0, s0, 15
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s7, s7, 6
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v42, v45, v46, s4
	v_cndmask_b32_e64 v41, v40, v49, s4
	v_cndmask_b32_e64 v46, v46, v45, s4
	v_cndmask_b32_e64 v45, v49, v40, s4
	v_cndmask_b32_e64 v49, 0x90, 0, vcc_lo
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s12, s0, 31
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v58, v34, 3, s7
	v_lshrrev_b32_e32 v65, 2, v2
	v_lshl_or_b32 v67, s3, 8, v3
	v_mov_b32_e32 v35, v33
	v_lshl_or_b32 v61, v34, 5, v6
	v_dual_mov_b32 v34, v33 :: v_dual_and_b32 v51, 28, v1
	v_mov_b32_e32 v40, v33
	v_dual_mov_b32 v27, v33 :: v_dual_add_nc_u32 v68, s6, v4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v43, v38, v47, s4
	v_cndmask_b32_e64 v47, v47, v38, s4
	v_dual_mov_b32 v36, v33 :: v_dual_lshlrev_b32 v9, 7, v0
	v_mov_b32_e32 v38, v33
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_or_b32 v59, s3, 10, v11
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s3, s12, 28
	v_lshl_or_b32 v62, v62, 8, v62
	v_lshl_or_b32 v63, v63, 8, v63
	v_and_or_b32 v55, 0x90, v55, v66
	s_add_i32 s0, s0, s3
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e32 vcc_lo, s22, v50
	v_xor_b32_e32 v65, v49, v65
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[49:50], null, s22, v67, v[50:51]
	.loc	1 622 33                        ; attention.py:622:33
	s_and_b32 s44, s0, -16
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s0, s5, v51
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[50:51], null, s5, v68, v[51:52]
	v_and_b32_e32 v64, 0x700, v9
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v51, 0x540054, v62
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v67, 0x760076, v63
	v_xor_b32_e32 v68, 16, v55
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v44, v39, v48, s4
	v_cndmask_b32_e64 v48, v48, v39, s4
	v_xor_b32_e32 v60, v1, v5
	v_mov_b32_e32 v39, v33
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v72, 0, v64
	v_mov_b32_e32 v20, v33
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v66, 0, v55
	v_mov_b32_e32 v23, v33
	v_xor_b32_e32 v69, 8, v61
	v_xor_b32_e32 v70, 16, v61
	v_xor_b32_e32 v71, 24, v61
	v_lshl_or_b32 v51, v51, 4, v51
	v_lshl_or_b32 v55, v67, 4, v67
	v_add_nc_u32_e32 v67, 0, v68
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s45, s1, 0x3fb8aa3b
	v_mov_b32_e32 v0, 0xff800000
	v_dual_mov_b32 v26, v33 :: v_dual_add_nc_u32 v61, 0, v61
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v60, 0, v60
	v_dual_mov_b32 v32, v33 :: v_dual_add_nc_u32 v63, 0, v70
	v_dual_mov_b32 v17, v33 :: v_dual_add_nc_u32 v62, 0, v69
	v_dual_mov_b32 v18, v33 :: v_dual_add_nc_u32 v65, v72, v65
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v64, 0, v71
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v51, 0x5040504, v51
	v_mov_b32_e32 v24, v33
	v_mov_b32_e32 v11, v33
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v14, v33
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v5, v33
	v_mov_b32_e32 v6, v33
	v_mov_b32_e32 v7, v33
	v_mov_b32_e32 v8, v33
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s23, 0
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s33, s22, 1
	s_lshl_b32 s34, s22, 3
	s_lshl_b32 s35, s5, 4
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s14
	s_mov_b32 s40, s10
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s37, s15
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s46, s45
	s_mov_b32 s47, s45
	s_mov_b32 s48, s45
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s49, 0x76543210
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v9, v33 :: v_dual_lshlrev_b32 v68, 16, v53
	v_mov_b32_e32 v10, v33
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v53, 0x7060706, v55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v70, v68
	v_mov_b32_e32 v71, v68
	v_mov_b32_e32 v55, v33
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v72, 0x80000000, v50, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v112, v55 :: v_dual_add_nc_u32 v75, s23, v56
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v76.l, 0
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v0
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v74, v72, s[24:27], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	v_dual_cndmask_b32 v72, 0x80000000, v49 :: v_dual_cndmask_b32 v73, 0x80000000, v58
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v55, 2, v75
	v_add_nc_u32_e32 v77, 4, v75
	v_add_nc_u32_e32 v78, 6, v75
	v_add_nc_u32_e32 v79, 8, v75
	v_add_nc_u32_e32 v80, 10, v75
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v81, 14, v75
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v82, 12, v75
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s1, v75, v57
	v_cmp_le_i32_e64 s7, v79, v57
	v_cmp_le_i32_e64 s6, v80, v57
	v_cmp_le_i32_e64 s3, v81, v57
	v_cmp_le_i32_e64 s5, v82, v57
	v_cmp_le_i32_e64 s8, v78, v57
	v_cmp_le_i32_e64 s9, v77, v57
	v_cmp_le_i32_e64 s10, v55, v57
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v92.h, v76.l
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s6, s2, s6
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v91.l, v76.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v93.h, v76.l
	v_mov_b16_e32 v94.h, v76.l
	v_mov_b16_e32 v95.h, v76.l
	v_mov_b16_e32 v96.h, v76.l
	v_mov_b16_e32 v97.h, v76.l
	v_mov_b16_e32 v98.h, v76.l
	v_mov_b16_e32 v99.h, v76.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v100.h, v76.l
	v_mov_b16_e32 v101.h, v76.l
	v_mov_b16_e32 v102.h, v76.l
	v_mov_b16_e32 v103.h, v76.l
	v_mov_b16_e32 v104.h, v76.l
	v_mov_b16_e32 v105.h, v76.l
	v_mov_b16_e32 v106.h, v76.l
	v_mov_b16_e32 v107.h, v76.l
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s23, s23, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s23, s44
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v60, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v108, v59, s[36:39], 0 offen
	buffer_load_u16 v109, v59, s[36:39], 0 offen offset:4
	buffer_load_u16 v110, v59, s[36:39], 0 offen offset:8
	buffer_load_u16 v111, v59, s[36:39], 0 offen offset:12
	buffer_load_u16 v113, v59, s[36:39], 0 offen offset:24
	buffer_load_u16 v114, v59, s[36:39], 0 offen offset:28
	buffer_load_u16 v115, v59, s[36:39], 0 offen offset:16
	buffer_load_u16 v116, v59, s[36:39], 0 offen offset:20
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v117, v72, s[40:43], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[72:73], v73, s[28:31], 0 offen
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[74:75], v61
	ds_load_b64 v[85:86], v62
	ds_load_b64 v[87:88], v63
	ds_load_b64 v[89:90], v64
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 717 33                        ; attention.py:717:33
	v_wmma_i32_16x16x16_iu4 v[77:84], v[74:75], v[47:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[85:86], v[45:46], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[87:88], v[43:44], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[89:90], v[41:42], v[77:84] neg_lo:[1,1,0]
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v55, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v74, v79
	v_cvt_f32_i32_e32 v75, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v79, v81
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v58, s33, v58
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v75, v69, v75 :: v_dual_add_nc_u32 v50, s35, v50
	v_cvt_f32_i32_e32 v78, v82
	v_cvt_f32_i32_e32 v80, v84
	v_cvt_f32_i32_e32 v81, v83
	v_dual_mul_f32 v77, v68, v77 :: v_dual_mul_f32 v82, v71, v55
	v_mul_f32_e32 v79, v68, v79
	v_dual_mul_f32 v74, v70, v74 :: v_dual_add_nc_u32 v49, s34, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v71, v80 :: v_dual_mul_f32 v81, v70, v81
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v78, v69, v78 :: v_dual_lshlrev_b32 v83, 16, v108
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v84, 16, v109
	.loc	1 732 30                        ; attention.py:732:30
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v77, v77, v83 :: v_dual_lshlrev_b32 v88, 16, v114
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v85, 16, v110
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v108, v117, 0, 8
	v_lshrrev_b32_e32 v109, 8, v117
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v55.h, 4, v117.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v84, v75, v84 :: v_dual_lshlrev_b32 v87, 16, v113
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v89, 16, v115
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v92.l, v117.h
	v_lshrrev_b32_e32 v110, 24, v117
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v91.h, v73.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v80, v80, v88 :: v_dual_and_b32 v113, 0xffff0000, v73
	v_dual_mul_f32 v85, v74, v85 :: v_dual_lshlrev_b32 v86, 16, v111
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v73.l, v108.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v55.h, v55.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v83, v109, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v73.h, 4, v109.l
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v84, s46, v84
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v81, v81, v87 :: v_dual_lshlrev_b32 v90, 16, v116
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v59, 32, v59
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v114, 20, v117
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v87, v110, 0, 8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v78, v78, v90
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v88, s45, v77
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v79, v79, v89
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v85, s47, v85 :: v_dual_mul_f32 v82, v82, v86
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v86, v92, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s13, 0, v73.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v75.h, v55.h, -16
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v77.l, v83.l
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	v_and_b16 v73.h, v73.h, 15
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v82, s48, v82 :: v_dual_and_b32 v111, 0xffff0000, v72
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v55.l, v117.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v74.l, v114.l, 15
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v81, s47, v81 :: v_dual_mul_f32 v90, s46, v78
	v_mul_f32_e32 v89, s45, v79
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v78.l, v86.l
	v_mov_b16_e32 v79.l, v87.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v87, 0xff800000, v88, s1
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v88.l, v55.h, v75.h, s13
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s13, 0, v77.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v55.h, v73.h, -16
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_mov_b16_e32 v76.h, v72.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v72.l, v117.h, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v55.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v78.h, v74.l, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s14, 0, v78.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v78.l, v73.h, v55.h, s13
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s12, 7, v72.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v74.h, v110.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v75.l, 4, v110.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v73.l, 0, -16, s11
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v74.l, v74.l, v78.h, s14
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v78, v78, 0, 16
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v80, s48, v80
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v77.h, 0, -16, s12
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s12, 7, v74.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b16 v79.h, v75.l, -16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v73.l, v55.l, v73.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s15, 0, v79.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v72.h, v109.l, 15
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v83, 0xff800000, v90, s6
	v_cndmask_b32_e64 v80, 0xff800000, v80, s3
	v_cndmask_b32_e64 v81, 0xff800000, v81, s5
	v_cndmask_b32_e64 v85, 0xff800000, v85, s9
	v_cndmask_b32_e64 v84, 0xff800000, v84, s10
	v_cndmask_b32_e64 v82, 0xff800000, v82, s8
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v77.l, v72.l, v77.h
	v_cndmask_b16 v72.l, 0, -16, s12
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v75.l, v75.l, v79.h, s15
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v73, v73, 0, 16
	v_bfe_i32 v79, v88, 0, 16
	v_mul_f32_e32 v78, v111, v78
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v86, 0xff800000, v89, s7
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v72.h
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v90, v87, v84, v85
.Ltmp2:
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v72.l, v74.h, v72.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v74, v74, 0, 16
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v108, v82, v86, v83
.Ltmp4:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v79, v79
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v89, v81, v80
.Ltmp6:
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v55.l, 0, -16, s11
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v74, v74
	v_mul_f32_e32 v73, v76, v73
	v_mul_f32_e32 v76, v76, v79
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v88, v90, v108, v89
.Ltmp8:
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v55.l, v72.h, v55.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v77, v77, 0, 16
	v_bfe_i32 v72, v72, 0, 16
	v_bfe_i32 v75, v75, 0, 16
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v89, v88, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v55, v55, 0, 16
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v72, v72
	v_mul_f32_e32 v74, v91, v74
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v79, v0, v88, v89
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v77, v91, v77 :: v_dual_mul_f32 v72, v113, v72
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v91, v0, v79
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v93.l, v73.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v55, v111, v55
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v92.l, v76.h
	v_mov_b16_e32 v95.l, v77.h
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v91, v91
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v88, 1, v93
	v_mov_b16_e32 v96.l, v55.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v75, v113, v75
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s11, v73, v73
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_dual_sub_f32 v84, v84, v79 :: v_dual_and_b32 v89, 1, v92
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v94.l, v78.h
	v_mov_b16_e32 v97.l, v74.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v87, v87, v79
	v_sub_f32_e32 v82, v82, v79
	v_dual_sub_f32 v85, v85, v79 :: v_dual_mov_b32 v0, v79
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v73, v73, v88, 0x7fff
	v_and_b32_e32 v88, 1, v96
	v_mov_b16_e32 v98.l, v75.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v86, v86, v79
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v113, 0, v91, s19
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v90, 1, v95
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v83, v83, v79
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s12, v76, v76
	v_cmp_o_f32_e64 s13, v77, v77
	v_mov_b16_e32 v99.l, v72.h
	v_add3_u32 v76, v76, v89, 0x7fff
	v_and_b32_e32 v89, 1, v94
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v84, v84
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v93, 1, v98
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v86, v86
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v113
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v77, v77, v90, 0x7fff
	v_and_b32_e32 v90, 1, v97
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v87, v87
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v28, v28, v113
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v83, v83
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_dual_sub_f32 v81, v81, v79 :: v_dual_mul_f32 v30, v30, v113
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v29, v29, v113 :: v_dual_and_b32 v92, 1, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s17, v72, v72
	v_cmp_o_f32_e64 s18, v75, v75
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v80, v80, v79 :: v_dual_mul_f32 v27, v27, v113
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v81, v81
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_add3_u32 v72, v72, v92, 0x7fff
	v_add3_u32 v75, v75, v93, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v92, 0, v84, s10
	v_cndmask_b32_e64 v93, 0, v87, s1
	v_cndmask_b32_e64 v94, 0, v82, s8
	v_cndmask_b32_e64 v95, 0, v85, s9
	v_cndmask_b32_e64 v96, 0, v83, s6
	v_cndmask_b32_e64 v97, 0, v86, s7
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s14, v55, v55
	v_cmp_o_f32_e64 s15, v78, v78
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v80, v80
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v76.l, 0x7fff, v73.h, s11
	v_add3_u32 v55, v55, v88, 0x7fff
	v_add3_u32 v73, v78, v89, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v100.l, v92.h
	v_mov_b16_e32 v101.l, v93.h
	v_mov_b16_e32 v102.l, v94.h
	v_mov_b16_e32 v103.l, v95.h
	v_mov_b16_e32 v104.l, v96.h
	v_mov_b16_e32 v105.l, v97.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s16, v74, v74
	v_add3_u32 v74, v74, v90, 0x7fff
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s12
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s15
	v_cndmask_b16 v73.l, 0x7fff, v55.h, s14
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v99, 0, v81, s5
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v31, v31, v113 :: v_dual_and_b32 v100, 1, v100
	v_dual_mul_f32 v19, v19, v113 :: v_dual_and_b32 v102, 1, v102
	v_dual_mul_f32 v22, v22, v113 :: v_dual_and_b32 v103, 1, v103
	v_dual_mul_f32 v23, v23, v113 :: v_dual_and_b32 v104, 1, v104
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v101, 1, v101
	v_and_b32_e32 v105, 1, v105
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v55.l, 0x7fff, v77.h, s13
	v_cndmask_b16 v55.h, 0x7fff, v74.h, s16
	v_cndmask_b16 v74.h, 0x7fff, v75.h, s18
	v_cndmask_b16 v74.l, 0x7fff, v72.h, s17
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v98, 0, v80, s3
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s1, v92, v92
	v_cmp_o_f32_e64 s3, v93, v93
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v65, v76, v73 offset1:8
	ds_store_2addr_b32 v65, v55, v74 offset0:16 offset1:24
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s5, v94, v94
	v_cmp_o_f32_e64 s6, v95, v95
	v_cmp_o_f32_e64 s7, v96, v96
	v_cmp_o_f32_e64 s8, v97, v97
	v_mov_b16_e32 v107.l, v99.h
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v32, v32, v113 :: v_dual_add_f32 v55, v93, v92
	v_dual_mul_f32 v17, v17, v113 :: v_dual_add_f32 v108, v95, v94
	v_dual_mul_f32 v18, v18, v113 :: v_dual_add_f32 v109, v97, v96
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v92, v92, v100, 0x7fff
	v_add3_u32 v93, v93, v101, 0x7fff
	v_add3_u32 v94, v94, v102, 0x7fff
	v_add3_u32 v95, v95, v103, 0x7fff
	v_add3_u32 v96, v96, v104, 0x7fff
	v_add3_u32 v97, v97, v105, 0x7fff
	v_mov_b16_e32 v106.l, v98.h
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v20, v20, v113 :: v_dual_add_f32 v55, v55, v108
	v_dual_mul_f32 v21, v21, v113 :: v_dual_add_f32 v108, v99, v98
	v_dual_mul_f32 v24, v24, v113 :: v_dual_and_b32 v107, 1, v107
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v92.h, 0x7fff, v92.h, s1
	v_cndmask_b16 v92.l, 0x7fff, v93.h, s3
	v_cndmask_b16 v93.h, 0x7fff, v94.h, s5
	v_cndmask_b16 v93.l, 0x7fff, v95.h, s6
	v_cndmask_b16 v94.h, 0x7fff, v96.h, s7
	v_cndmask_b16 v94.l, 0x7fff, v97.h, s8
	v_cmp_o_f32_e64 s10, v99, v99
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v9, v9, v113 :: v_dual_and_b32 v106, 1, v106
	v_dual_mul_f32 v11, v11, v113 :: v_dual_add_f32 v108, v109, v108
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v103, v99, v107, 0x7fff
	v_permlanex16_b32 v95, v92, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v99, v93, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v101, v94, s49, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s9, v98, v98
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[72:75], v66
	ds_load_b128 v[80:83], v66 offset:512
	ds_load_b128 v[76:79], v67
	ds_load_b128 v[84:87], v67 offset:512
	ds_load_b128 v[88:91], v66 offset:1024
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v10, v10, v113 :: v_dual_add_f32 v55, v55, v108
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v102, v98, v106, 0x7fff
	v_perm_b32 v96, v95, v92, v51
	v_perm_b32 v97, v95, v92, v53
	v_perm_b32 v98, v99, v93, v51
	v_perm_b32 v99, v99, v93, v53
	v_perm_b32 v100, v101, v94, v51
	v_perm_b32 v101, v101, v94, v53
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[104:107], v66 offset:1536
	ds_load_b128 v[92:95], v67 offset:1024
	ds_load_b128 v[108:111], v67 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v114.h, 0x7fff, v102.h, s9
	v_cndmask_b16 v114.l, 0x7fff, v103.h, s10
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v102, v55, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v113
	v_mul_f32_e32 v12, v12, v113
	v_mul_f32_e32 v13, v13, v113
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v103, v114, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v14, v14, v113
	v_mul_f32_e32 v15, v15, v113
	v_mul_f32_e32 v16, v16, v113
	v_mul_f32_e32 v1, v1, v113
	v_mul_f32_e32 v2, v2, v113
	v_mul_f32_e32 v3, v3, v113
	v_mul_f32_e32 v4, v4, v113
	v_mul_f32_e32 v5, v5, v113
	v_mul_f32_e32 v6, v6, v113
	v_mul_f32_e32 v7, v7, v113
	v_dual_mul_f32 v8, v8, v113 :: v_dual_add_f32 v55, v55, v102
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v102, v103, v114, v51
	v_perm_b32 v103, v103, v114, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v55, v112, v113
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[72:79], v[96:103], v[25:32]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[80:87], v[96:103], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[88:95], v[96:103], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[104:111], v[96:103], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v54
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v0, null, v55, v55, v25
	v_div_scale_f32 v34, null, v55, v55, v26
	v_div_scale_f32 v35, null, v55, v55, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, vcc_lo, v25, v55, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v55, v26
	v_div_scale_f32 v43, null, v55, v55, v28
	v_div_scale_f32 v49, s3, v28, v55, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v33, s22, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_div_scale_f32 v41, s1, v27, v55, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	v_rcp_f32_e32 v42, v43
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v55, v55, v29
	v_fma_f32 v50, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v0, v44, v39
	v_fma_f32 v34, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v55, v55, v30
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v42, v50, v42
	v_div_fmas_f32 v34, v34, v37, v45
	v_rcp_f32_e32 v44, v40
	v_div_fixup_f32 v0, v0, v55, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v55, v26
	v_div_scale_f32 v34, s5, v29, v55, v29
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v55
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v55, v55, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v54, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_fmac_f32_e32 v46, v54, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v35, v46, v41
	v_dual_mul_f32 v41, v34, v39 :: v_dual_mul_f32 v36, v49, v42
	v_fma_f32 v35, -v40, v44, 1.0
	v_div_fmas_f32 v26, v26, v38, v46
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v44, v35, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v26, v55, v27
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v55, v55, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v37, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v46, v35
	v_fma_f32 v38, -v43, v36, v49
	v_div_scale_f32 v43, s1, v30, v55, v30
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v43, v44
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v46, v48
	v_div_fixup_f32 v27, v36, v55, v28
	v_fmac_f32_e32 v41, v38, v39
	v_fma_f32 v28, -v40, v42, v43
	v_div_scale_f32 v36, s3, v31, v55, v31
	v_div_scale_f32 v38, null, v55, v55, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v47, v41, v34
	v_fmac_f32_e32 v42, v28, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v36, v35
	v_rcp_f32_e32 v49, v38
	v_div_scale_f32 v46, s6, v32, v55, v32
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v34, -v40, v42, v43
	v_fma_f32 v39, -v37, v47, v36
	v_div_scale_f32 v43, null, v55, v55, v18
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v38, v49, 1.0
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_div_fixup_f32 v28, v28, v55, v29
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v55, v17
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v29, v34, v55, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_fma_f32 v36, -v43, v39, 1.0
	v_div_scale_f32 v37, null, v55, v55, v19
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v55, v55, v20
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v55, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v55, v31
	v_div_fixup_f32 v31, v35, v55, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s5, v19, v55, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v55, v55, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v55, v20
	v_div_scale_f32 v47, null, v55, v55, v22
	v_div_fixup_f32 v17, v32, v55, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v55, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v55, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v55, v55, v23
	s_mov_b32 vcc_lo, s5
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s6, v22, v55, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v55, v55, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v55, v19
	v_div_fixup_f32 v20, v34, v55, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v55, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v55, v55, v9
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v55, v24
	v_div_scale_f32 v46, null, v55, v55, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v55, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v55, v55, v11
	v_div_fixup_f32 v21, v32, v55, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v55, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s5, v9, v55, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v55, v55, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s6, v11, v55, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v55, v23
	v_div_fixup_f32 v24, v36, v55, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v55, v55, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v55, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v55, v55, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v55, v13
	v_div_fixup_f32 v9, v32, v55, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v55, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v55, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v55, v55, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s5, v14, v55, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v55, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v55, v55, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v55, v55, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v55, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v55, v55, v2
	v_div_fixup_f32 v13, v32, v55, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v55, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v55, v55, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s5, v1, v55, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v54, v48, v37 :: v_dual_fmac_f32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v55, v2
	v_div_fixup_f32 v14, v35, v55, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v54, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v54, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v55, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v55, v55, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v54, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v55, v15
	v_div_fmas_f32 v34, v34, v37, v54
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v16, v32, v55, v16
	v_div_fixup_f32 v1, v34, v55, v1
	v_div_scale_f32 v34, null, v55, v55, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v55, v55, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v55, v55, v6
	v_div_fixup_f32 v2, v37, v55, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v55, v55, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v55, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v55, v3
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v32, -v34, v36, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v55, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v55, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v55, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v54, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v48, v41
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v55, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v54, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v56, v48
	v_mul_f32_e32 v57, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v54, v40, v39
	v_fma_f32 v32, -v34, v49, v32
	v_fmac_f32_e32 v56, v47, v41
	v_fma_f32 v34, -v44, v57, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v54, v45
	v_div_fmas_f32 v32, v32, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v57, v34, v46
	v_fma_f32 v34, -v37, v56, v48
	v_div_fmas_f32 v35, v35, v39, v54
	v_div_fixup_f32 v4, v38, v55, v4
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s5, v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v56
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e64 s5, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v18, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v44, v57, v50
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v46, v57
	v_div_fixup_f32 v5, v32, v55, v5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v35, v55, v6
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v55, v7
	v_div_fixup_f32 v8, v36, v55, v8
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v32, 1, v52
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v27, v0, s4
	v_cndmask_b32_e64 v0, v0, v27, s4
	v_cndmask_b32_e64 v6, v17, v25, s4
	v_cndmask_b32_e64 v7, v25, v17, s4
	v_cndmask_b32_e64 v13, v28, v20, s4
	v_cndmask_b32_e64 v15, v18, v19, s4
	v_cndmask_b32_e64 v16, v12, v9, s4
	v_cndmask_b32_e64 v9, v9, v12, s4
	v_cndmask_b32_e64 v12, v11, v10, s4
	v_cndmask_b32_e64 v10, v10, v11, s4
	v_cndmask_b32_e64 v17, v3, v1, s4
	v_cndmask_b32_e64 v1, v1, v3, s4
	v_cndmask_b32_e64 v14, v19, v18, s4
	v_cndmask_b32_e64 v18, v4, v2, s4
	v_cndmask_b32_e64 v2, v2, v4, s4
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v8, v20, v28, s4
	v_permlanex16_b32 v3, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v19, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s22, v34
	v_cmp_gt_i32_e64 s3, s22, v32
	v_cmp_gt_i32_e64 s0, s22, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v3, v5, v51
	v_perm_b32 v1, v3, v5, v53
	v_perm_b32 v2, v4, v6, v51
	v_perm_b32 v3, v4, v6, v53
	v_perm_b32 v4, v7, v8, v51
	v_perm_b32 v5, v7, v8, v53
	v_perm_b32 v6, v11, v14, v51
	v_perm_b32 v7, v11, v14, v53
	v_perm_b32 v10, v13, v12, v51
	v_perm_b32 v11, v13, v12, v53
	v_perm_b32 v12, v15, v17, v51
	v_perm_b32 v13, v15, v17, v53
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v9, v16, v51
	v_perm_b32 v9, v9, v16, v53
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s22, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v19, v18, v51
	v_perm_b32 v15, v19, v18, v53
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v33, v35, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v33, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v17, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v19, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 118
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 118
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8712
; TotalNumSgprs: 52
; NumVgprs: 118
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 118
; Occupancy: 12
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
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
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
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
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     118
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
