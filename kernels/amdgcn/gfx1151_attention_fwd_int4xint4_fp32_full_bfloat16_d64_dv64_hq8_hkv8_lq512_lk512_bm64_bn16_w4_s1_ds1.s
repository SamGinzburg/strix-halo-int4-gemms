	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x60
	s_load_b256 s[24:31], s[0:1], 0x0
	v_dual_mov_b32 v48, 0x7632 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s7, s3, 9
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s8, s6, s7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v3, s8, v2
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v39, 0x60, v0
	s_mov_b32 s43, 0x31027000
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	s_mov_b32 s42, 0x7ffffffe
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v76, 0xff800000
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s36, v3, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s36, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	v_dual_mov_b32 v87, 0xff800000 :: v_dual_lshlrev_b32 v50, 1, v0
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_and_b32 v40, 15, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v52, 12, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v45, v0, 4, 1
	v_dual_mov_b32 v59, 0xff800000 :: v_dual_and_b32 v44, 3, v0
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[34:37], v1, s[40:43], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v39
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	v_dual_mov_b32 v20, v33 :: v_dual_and_b32 v63, 28, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v40
	v_bfe_i32 v64, v0, 5, 1
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v54, 48, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v61, 64, v0
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v53, s8, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v1
	v_mov_b32_e32 v47, 0x5410
	v_dual_mov_b32 v19, v33 :: v_dual_lshlrev_b32 v68, 1, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v53
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_dual_mov_b32 v21, v33 :: v_dual_lshlrev_b32 v60, 3, v40
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v50, v50, 30, v45
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v38, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_lshlrev_b32_e32 v62, 5, v0
	.loc	1 584 86                        ; attention.py:584:86
	v_bfe_i32 v49, v0, 0, 1
	v_dual_mov_b32 v30, v33 :: v_dual_lshlrev_b32 v57, 2, v0
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v46, v1, s[40:43], 0 offen
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v32, v33 :: v_dual_and_b32 v51, 0x70, v0
	v_dual_mov_b32 v22, v33 :: v_dual_lshlrev_b32 v65, 7, v0
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v84, 2, v44
	v_dual_mov_b32 v13, v33 :: v_dual_and_b32 v64, 0x120, v64
	v_lshl_or_b32 v44, v44, 5, v63
	s_load_b256 s[16:23], s[0:1], 0x20
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v43, 3, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v58, 4, v0
	v_dual_mov_b32 v23, v33 :: v_dual_lshlrev_b32 v70, 1, v61
	v_dual_mov_b32 v24, v33 :: v_dual_and_b32 v71, 0x260, v62
	v_dual_mov_b32 v11, v33 :: v_dual_lshlrev_b32 v52, 8, v52
	v_dual_mov_b32 v5, v33 :: v_dual_lshlrev_b32 v50, 2, v50
	v_lshrrev_b32_e32 v67, 2, v39
	v_lshrrev_b32_e32 v69, 1, v54
	v_lshl_or_b32 v54, v54, 6, v60
	v_lshl_or_b32 v39, v39, 2, v68
	v_mov_b32_e32 v31, v33
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v65, 0x700, v65
	v_dual_mov_b32 v14, v33 :: v_dual_and_b32 v49, 0x90, v49
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v79, s6, v38
	.loc	1 711 49                        ; attention.py:711:49
	v_and_b32_e32 v38, 28, v57
	v_lshrrev_b32_e32 v51, 2, v51
	v_xor_b32_e32 v44, v44, v64
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v56, 0x7c, v0
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v55, 16, v0
	v_bfe_i32 v66, v0, 2, 1
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v0, 2, v40
	v_dual_mov_b32 v10, v33 :: v_dual_and_b32 v63, 0x300, v62
	v_dual_mov_b32 v15, v33 :: v_dual_and_b32 v72, 0xfc, v57
	v_dual_mov_b32 v2, v33 :: v_dual_add_nc_u32 v75, 0, v70
	v_dual_mov_b32 v3, v33 :: v_dual_and_b32 v62, 0x160, v62
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s1
	v_lshrrev_b32_e32 v61, 5, v61
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_or_b32 v73, s3, 8, v58
	v_or_b32_e32 v74, s7, v43
	v_xor_b32_e32 v43, v57, v67
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v85, 4, v50
	v_xor_b32_e32 v54, v54, v69
	v_or3_b32 v52, v52, v71, v39
	v_dual_mov_b32 v16, v33 :: v_dual_lshlrev_b32 v45, 1, v45
	v_mov_b32_e32 v4, v33
	v_xor_b32_e32 v49, v49, v51
	v_add_nc_u32_e32 v51, 0, v65
	.loc	1 707 13                        ; attention.py:707:13
	v_or_b32_e32 v78, 32, v79
	v_or_b32_e32 v39, v44, v70
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s1, s36, v38
	v_lshl_or_b32 v40, v40, 5, v68
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s0, s39, s0
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s6, s4, s8
	v_mov_b32_e32 v7, v33
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s0, s0, s6
	v_or3_b32 v67, v63, v72, v61
	v_and_or_b32 v65, 0x90, v66, v62
	v_add_nc_u32_e32 v62, 0, v43
	v_add_nc_u32_e32 v66, v75, v44
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s4, s37, v0
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[43:44], null, s37, v73, v[0:1]
	v_xor_b32_e32 v0, 8, v52
	v_add_nc_u32_e32 v69, v75, v54
	v_lshl_or_b32 v61, s3, 10, v45
	v_add_nc_u32_e32 v64, v51, v49
	v_mad_u64_u32 v[44:45], null, s36, v74, v[38:39]
	v_xor_b32_e32 v51, 0x240, v39
	v_mad_u64_u32 v[38:39], null, s5, v78, s[0:1]
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v63, 0, v40
	v_xor_b32_e32 v72, 8, v40
	v_xor_b32_e32 v77, 16, v40
	v_xor_b32_e32 v80, 24, v40
	v_mad_u64_u32 v[39:40], null, s5, v79, s[0:1]
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v79
	v_xor_b32_e32 v83, 0x60, v67
	v_add_nc_u32_e32 v79, 0, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v55
	v_xor_b32_e32 v45, 16, v52
	v_add_nc_u32_e32 v70, 0, v72
	v_add_nc_u32_e32 v75, 0, v83
	.loc	1 707 13                        ; attention.py:707:13
	v_add_lshl_u32 v83, v38, v84, 2
	v_add_lshl_u32 v84, v39, v84, 2
	v_cndmask_b32_e64 v40, 0x1054, v47, s0
	v_cndmask_b32_e64 v47, 0x3276, v48, s0
	v_add_nc_u32_e32 v72, 0, v80
	v_add_nc_u32_e32 v80, 0, v45
	v_xor_b32_e32 v81, 32, v67
	v_lshl_or_b32 v40, v40, 8, v40
	v_lshl_or_b32 v48, v47, 8, v47
	v_xor_b32_e32 v82, 64, v67
	v_xor_b32_e32 v88, 16, v65
	v_xor_b32_e32 v49, 24, v52
	s_mul_i32 s3, s3, s37
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v65, 0, v65
	v_add_nc_u32_e32 v67, 0, v67
	v_lshl_add_u32 v68, s3, 6, v60
	v_add_nc_u32_e32 v71, 0, v77
	v_add_nc_u32_e32 v73, 0, v81
	v_add_nc_u32_e32 v74, 0, v82
	v_add_nc_u32_e32 v77, 0, v88
	v_add_nc_u32_e32 v78, 0, v52
	v_add_nc_u32_e32 v81, 0, v49
	v_add_nc_u32_e32 v82, 0, v51
	v_mov_b32_e32 v88, 0xff800000
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s35, s38, 0x3fb8aa3b
	s_and_b32 s27, s27, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s33, -16
	s_mov_b32 s34, 0x76543210
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	s_and_b32 s29, s29, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s38, s37, 1
	s_lshl_b32 s39, s37, 3
	s_lshl_b32 s36, s36, 4
	s_mov_b32 s44, s16
	s_mov_b32 s48, s20
	s_mov_b32 s24, s18
	s_mov_b32 s45, s17
	s_mov_b32 s49, s21
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s40, s26
	s_mov_b32 s41, s27
	s_mov_b32 s25, s19
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v54, v50, v34
	ds_bpermute_b32 v34, v85, v34
	ds_bpermute_b32 v0, v50, v35
	ds_bpermute_b32 v35, v85, v35
	ds_bpermute_b32 v38, v50, v36
	ds_bpermute_b32 v36, v85, v36
	ds_bpermute_b32 v39, v50, v37
	ds_bpermute_b32 v37, v85, v37
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v45, v34, v54, s0
	v_cndmask_b32_e64 v47, v54, v34, s0
	v_and_b32_e32 v34, 0x540054, v40
	v_and_b32_e32 v40, 0x760076, v48
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v48, v0, v35, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v49, v36, v38, s0
	v_cndmask_b32_e64 v51, v38, v36, s0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v85, 16, v46
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v46, v35, v0, s0
	v_lshl_or_b32 v0, v34, 4, v34
	v_lshl_or_b32 v34, v40, 4, v40
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v50, v37, v39, s0
	v_cndmask_b32_e64 v52, v39, v37, s0
	v_and_b32_e32 v0, 0x5040504, v0
	v_and_b32_e32 v54, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v89, 0x80000000, v44, s1
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v36, v33 :: v_dual_max_f32 v109, v86, v86
	v_dual_mov_b32 v35, v33 :: v_dual_cndmask_b32 v90, 0x80000000, v84
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v86, v89, s[40:43], 0 offen
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v34, v33 :: v_dual_cndmask_b32 v91, 0x80000000, v83
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v37, v33 :: v_dual_max_f32 v110, v87, v87
	v_dual_mov_b32 v39, v33 :: v_dual_mov_b32 v96, v42
	v_dual_mov_b32 v95, v41 :: v_dual_max_f32 v42, v76, v76
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v92.l, 0
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v94, 0x80000000, v68, s4
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v93, 0x80000000, v43, s4
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s33, s33, 16
	.loc	1 763 25                        ; attention.py:763:25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v112.h, v92.l
	v_mov_b16_e32 v111.h, v92.l
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v62, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	s_clause 0x1
	buffer_load_b128 v[97:100], v90, s[48:51], 0 offen
	buffer_load_b128 v[101:104], v91, s[48:51], 0 offen
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[86:87], v63
	ds_load_b64 v[89:90], v70
	ds_load_b64 v[105:106], v71
	ds_load_b64 v[107:108], v72
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v38, v33
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x3
	buffer_load_u16 v91, v61, s[44:47], 0 offen
	buffer_load_u16 v114, v61, s[44:47], 0 offen offset:8
	buffer_load_u16 v115, v61, s[44:47], 0 offen offset:12
	buffer_load_u16 v116, v61, s[44:47], 0 offen offset:16
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[86:87], v[45:46], v[34:41] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	buffer_load_u16 v86, v61, s[44:47], 0 offen offset:4
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[89:90], v[49:50], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[105:106], v[47:48], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[107:108], v[51:52], v[34:41] neg_lo:[1,1,0]
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v87, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v90, v36
	v_cvt_f32_i32_e32 v105, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v41
	v_cvt_f32_i32_e32 v89, v35
	v_cvt_f32_i32_e32 v107, v39
	v_cvt_f32_i32_e32 v108, v40
	v_cvt_f32_i32_e32 v106, v38
	v_mul_f32_e32 v87, v85, v87
	v_mul_f32_e32 v89, v85, v89
	v_mul_f32_e32 v90, v85, v90
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(6)
	v_dual_cndmask_b32 v34, 0xff800000, v98 :: v_dual_cndmask_b32 v37, 0xff800000, v99
	v_cndmask_b32_e32 v36, 0xff800000, v97, vcc_lo
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x2
	buffer_load_u16 v97, v61, s[44:47], 0 offen offset:20
	buffer_load_u16 v98, v61, s[44:47], 0 offen offset:24
	buffer_load_u16 v99, v61, s[44:47], 0 offen offset:28
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e32 v41, 0xff800000, v103, vcc_lo
	v_cndmask_b32_e32 v35, 0xff800000, v100, vcc_lo
	v_dual_cndmask_b32 v39, 0xff800000, v104 :: v_dual_cndmask_b32 v40, 0xff800000, v101
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s3, 0xff800000, v41
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e32 v38, 0xff800000, v102, vcc_lo
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v36
	v_cmp_neq_f32_e64 s10, 0xff800000, v35
	v_cmp_neq_f32_e64 s12, 0xff800000, v39
	v_cmp_neq_f32_e64 s5, 0xff800000, v40
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s7, vcc_lo, s7
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v34
	v_cmp_neq_f32_e64 s8, 0xff800000, v38
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s9, vcc_lo, s6
	s_and_b32 s6, vcc_lo, s12
	s_and_b32 s10, vcc_lo, s10
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v69, v[36:37], v[40:41] offset1:32
	ds_store_2addr_b64 v69, v[34:35], v[38:39] offset0:64 offset1:96
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v34, 0, 1, s3
	v_cndmask_b32_e64 v36, 0, 1, s7
	v_cndmask_b32_e64 v38, 0, 1, s6
	v_cndmask_b32_e64 v40, 0, 1, s10
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s11, vcc_lo, s11
	v_cndmask_b32_e64 v35, 0, 1, s5
	v_cndmask_b32_e64 v37, 0, 1, s9
	v_lshlrev_b16 v34.l, 8, v34.l
	v_lshlrev_b16 v34.h, 8, v36.l
	v_cndmask_b32_e64 v39, 0, 1, s8
	v_cndmask_b32_e64 v41, 0, 1, s11
	v_lshlrev_b16 v35.h, 8, v38.l
	v_lshlrev_b16 v36.l, 8, v40.l
	.loc	1 732 30                        ; attention.py:732:30
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v100, v85, v105 :: v_dual_lshlrev_b32 v105, 16, v114
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v101, v85, v106 :: v_dual_lshlrev_b32 v106, 16, v115
	v_mul_f32_e32 v102, v85, v107
	v_mul_f32_e32 v103, v85, v108
	v_dual_mul_f32 v104, v85, v113 :: v_dual_lshlrev_b32 v91, 16, v91
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v86, 16, v86
	v_lshlrev_b32_e32 v107, 16, v116
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v37.h, v35.l, v34.l
	v_or_b16 v37.l, v37.l, v34.h
	v_or_b16 v34.h, v39.l, v35.h
	v_or_b16 v34.l, v41.l, v36.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v91, v87, v91 :: v_dual_mul_f32 v108, v89, v86
	v_dual_mul_f32 v105, v90, v105 :: v_dual_mul_f32 v106, v100, v106
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v113.h, v92.l
	.loc	1 707 13                        ; attention.py:707:13
	s_cmpk_lt_u32 s33, 0x1f0
	v_add_nc_u32_e32 v61, 32, v61
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v97, 16, v97
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v98, 16, v98
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v101, v101, v107 :: v_dual_mul_f32 v102, v102, v97
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v103, v103, v98 :: v_dual_mul_f32 v104, v104, v99
	.loc	1 762 35                        ; attention.py:762:35
	ds_load_b64 v[86:87], v78
	ds_load_b64 v[89:90], v79
	ds_load_b64 v[97:98], v80
	ds_load_b64 v[99:100], v81
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v66, v37
	ds_store_b32 v82, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v34, v67
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v34, v73
	ds_load_u16_d16 v35, v74
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v35, v75
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v38, 0x3fb8aa3b, v86 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v87
	v_dual_mul_f32 v40, 0x3fb8aa3b, v89 :: v_dual_mul_f32 v41, 0x3fb8aa3b, v90
	v_dual_mul_f32 v87, 0x3fb8aa3b, v97 :: v_dual_mul_f32 v90, 0x3fb8aa3b, v99
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v36.l, 1, v34.l
	v_and_b16 v36.h, 1, v34.h
	v_and_b16 v37.l, 1, v35.l
	v_lshrrev_b16 v34.l, 8, v34.l
	v_lshrrev_b16 v34.h, 8, v34.h
	v_lshrrev_b16 v35.l, 8, v35.l
	v_lshrrev_b16 v37.h, 8, v35.h
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v97, 0x3fb8aa3b, v98 :: v_dual_mul_f32 v98, 0x3fb8aa3b, v100
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v35.h, 1, v35.h
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	v_and_b16 v35.l, 1, v35.l
	v_and_b16 v37.h, 1, v37.h
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v38, s35, v91 :: v_dual_fmac_f32 v39, s35, v108
	v_dual_fmac_f32 v40, s35, v105 :: v_dual_fmac_f32 v41, s35, v106
	v_dual_fmac_f32 v87, s35, v101 :: v_dual_fmac_f32 v90, s35, v103
	v_dual_fmac_f32 v97, s35, v102 :: v_dual_fmac_f32 v98, s35, v104
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s12, 1, v36.l
	v_cmp_eq_u16_e64 s13, 1, v36.h
	v_cmp_eq_u16_e64 s14, 1, v37.l
	v_cmp_eq_u16_e64 s15, 1, v35.h
	v_cmp_eq_u16_e64 s16, 1, v34.l
	v_cmp_eq_u16_e64 s17, 1, v34.h
	v_cmp_eq_u16_e64 s18, 1, v35.l
	v_cmp_eq_u16_e64 s19, 1, v37.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v86, 0xff800000, v38, s12
	v_cndmask_b32_e64 v89, 0xff800000, v40, s13
	v_cndmask_b32_e64 v101, 0xff800000, v87, s14
	v_cndmask_b32_e64 v103, 0xff800000, v90, s15
	v_cndmask_b32_e64 v87, 0xff800000, v39, s16
	v_cndmask_b32_e64 v90, 0xff800000, v41, s17
	v_cndmask_b32_e64 v102, 0xff800000, v97, s18
	v_cndmask_b32_e64 v104, 0xff800000, v98, s19
	ds_store_b64 v78, v[86:87]
	ds_store_b64 v79, v[89:90]
	ds_store_b64 v80, v[101:102]
	ds_store_b64 v81, v[103:104]
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v91, v86, v87, v89
	v_max3_f32 v97, v90, v101, v102
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[34:37], v69 offset0:64 offset1:96
	ds_load_2addr_b64 v[38:41], v69 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v98, v103, v104
.Ltmp4:
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v93, v93, s[28:31], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v91, v91, v97, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v97, v91, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v91, v59, v91, v97
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v68, s38, v68
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v97, v34, v34 :: v_dual_add_nc_u32 v84, 64, v84
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v98, v38, v38 :: v_dual_sub_f32 v87, v87, v91
	v_dual_max_f32 v99, v36, v36 :: v_dual_sub_f32 v86, v86, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v100, v40, v40 :: v_dual_max_f32 v97, v98, v97
.Ltmp9:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v87, v87
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_dual_sub_f32 v103, v103, v91 :: v_dual_add_nc_u32 v44, s36, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v86, v86
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v97, v97, v39, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v98, v100, v99 :: v_dual_mov_b32 v99, v97
	v_max3_f32 v98, v98, v41, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp11:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v87, 0, v87, s16
	v_cndmask_b32_e64 v86, 0, v86, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v99, v99 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v100, v98
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp13:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v111.l, v87.h
	v_cmp_o_f32_e64 s12, v87, v87
	v_mov_b16_e32 v112.l, v86.h
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v99, v99, v99
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v105, 1, v111
	v_cmp_o_f32_e64 s16, v86, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v97, v97, v99 :: v_dual_and_b32 v106, 1, v112
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v87, v87, v105, 0x7fff
	v_add3_u32 v86, v86, v106, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v99, v97 :: v_dual_max_f32 v98, v98, v100
.Ltmp20:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v105.h, 0x7fff, v87.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v105.l, 0x7fff, v86.h, s16
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v106, v105, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v86, v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v100, v98 :: v_dual_max_f32 v107, v97, v86
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v97, v106, v105, v0
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v86, v109, v107 :: v_dual_max_f32 v87, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v42, v42, v107 :: v_dual_sub_f32 v39, v39, v86
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v108, v98, v87
.Ltmp27:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v98, v106, v105, v54
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v105, v88, v88
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v106.h, v92.l
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v39, v39
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v87, v110, v108
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v109, v35, v86
	v_sub_f32_e32 v35, v90, v91
	v_sub_f32_e32 v38, v38, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v34, v34, v86 :: v_dual_sub_f32 v37, v37, v87
	v_sub_f32_e32 v40, v40, v87
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v35, v35
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v110, v36, v87
	v_sub_f32_e32 v36, v89, v91
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v89.h, v92.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v41, v41, v87
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v41, v41
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v107, v109
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v121, v105, v108
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v39, 0, v39, s7
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v89.l, v35.h
	v_cmp_o_f32_e64 s12, v35, v35
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v36, s13
	v_cndmask_b32_e64 v37, 0, v37, s6
	v_cndmask_b32_e64 v41, 0, v41, s3
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v89, 1, v89
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v108, v110
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s13, v36, v36
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v40, 0, v40, s5
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v41, v37
.Ltmp29:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v35, v35, v89, 0x7fff
	v_mov_b16_e32 v89.h, v92.l
	v_mov_b16_e32 v89.l, v36.h
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v38, 0, v38, s9
	v_cndmask_b32_e64 v34, 0, v34, s11
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s12
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v43, s39, v43
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v105, v88, v121 :: v_dual_add_f32 v34, v38, v34
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v36, v36, v89, 0x7fff
	v_mov_b16_e32 v89.h, v92.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v123, v105
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v35, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v99, v36, v35, v0
	v_perm_b32 v100, v36, v35, v54
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v36, v102, v91
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v35.h, v92.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v36, v36
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v36, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v89.l, v36.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v90, v101, v91
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s12, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v89, 1, v89
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v36, v36, v89, 0x7fff
	v_mov_b16_e32 v89.h, v92.l
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v90, 0, v90, s14
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v35.l, v90.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v90, v90
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v90, v35, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v90.h, v92.l
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v36, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v35, v36, v0
	v_perm_b32 v102, v35, v36, v54
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v35, v104, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v35, v35
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v35, 0, v35, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v106.l, v35.h
	v_cmp_o_f32_e64 s12, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v36, 1, v106
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v106, v59, v91
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v104, v35, v36, 0x7fff
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[35:36], v94, s[24:27], 0 offen
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v94, v103
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v106, v106
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s12
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v59
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v94, 0, v94, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v59, 0, v106, s12
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v106.h, v92.l
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v89.l, v94.h
	v_cmp_o_f32_e64 s13, v94, v94
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v59
	v_mul_f32_e32 v26, v26, v59
	v_mul_f32_e32 v27, v27, v59
	v_dual_mul_f32 v28, v28, v59 :: v_dual_and_b32 v89, 1, v89
	v_mul_f32_e32 v29, v29, v59
	v_mul_f32_e32 v30, v30, v59
	v_mul_f32_e32 v32, v32, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v89, v94, v89, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v94.h, v92.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v17, v17, v59
	v_mul_f32_e32 v18, v18, v59
	v_mul_f32_e32 v20, v20, v59
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v104.l, 0x7fff, v89.h, s13
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v21, v21, v59
	v_mul_f32_e32 v22, v22, v59
	v_mul_f32_e32 v23, v23, v59
	v_mul_f32_e32 v24, v24, v59
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v89, v104, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v59
	v_mul_f32_e32 v10, v10, v59
	v_mul_f32_e32 v11, v11, v59
	v_mul_f32_e32 v12, v12, v59
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v103, v89, v104, v0
	v_perm_b32 v104, v89, v104, v54
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v89.l, v92.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v13, v13, v59
	v_mul_f32_e32 v14, v14, v59
	v_mul_f32_e32 v15, v15, v59
	v_mul_f32_e32 v1, v1, v59
	v_mul_f32_e32 v2, v2, v59
	v_mul_f32_e32 v3, v3, v59
	v_mul_f32_e32 v4, v4, v59
	v_mul_f32_e32 v5, v5, v59
	v_mul_f32_e32 v6, v6, v59
	v_mul_f32_e32 v7, v7, v59
	v_mul_f32_e32 v8, v8, v59
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v88
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v41.l, v93.h
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v92.h, v35.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v31, v31, v59
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v89.h, v36.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v19, v19, v59
	v_mul_f32_e32 v16, v16, v59
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v59, v76, v42
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v76, 0, v108, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v122, v59
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v59, 0, v107, s10
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v38, v39, v59
.Ltmp31:
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v83, 64, v83
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v39, v40, v76
.Ltmp33:
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v40, 0xffff0000, v36
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v59, 24, v93
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp35:
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v76, 20, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v37, v39, v37 :: v_dual_mov_b32 v38, v34
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v39, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v88, v34, v38
.Ltmp39:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v93.l, 15
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v124, v37, v39
.Ltmp41:
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v37, v93, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.h, 4, v93.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v38, 8, v93
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v34.l
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v39, 0xffff0000, v35
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v36.l, v37.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.h, v34.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v37, v38, 0, 8
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v35.h, 0, -16, s3
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v93.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v36.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v36.l, v37.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v90.l, v34.l, v35.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.l, v34.h, -16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v35.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v37, v59, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v35.h, v76.l, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v93.l, v34.h, v34.l, s5
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.l, 4, v38.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.h, v38.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v38, v41, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v36.l
	v_cmp_gt_i16_e64 s7, 0, v37.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.l, v34.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v36.l, v38.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v36.h, v34.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s6, 0, v36.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v36.l, 0, -16, s3
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v34.h
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v37.l, v34.l, v36.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v38.l, v35.l, v36.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v59.l, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v34.l, 0, -16, s3
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v36.l, 4, v59.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v59, v93, 0, 16
	v_bfe_i32 v38, v38, 0, 16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v35.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_or_b16 v41.l, v34.h, v34.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b16 v34.l, v35.h, -16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v34.h, v92.l
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v59, v59
	v_bfe_i32 v37, v37, 0, 16
	v_bfe_i32 v41, v41, 0, 16
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v76.l, v35.h, v34.l, s6
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v34.l, 0, -16, s3
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v35.h, v92.l
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v93, v92, v59
	v_mov_b32_e32 v59, v91
	v_bfe_i32 v76, v76, 0, 16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v35.l, v35.l, v34.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.l, v36.l, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v34.l, v36.l, v34.l, s7
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v36, v90, 0, 16
	v_dual_mul_f32 v38, v89, v38 :: v_dual_mul_f32 v37, v39, v37
	v_mul_f32_e32 v39, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v91, v34, 0, 16
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v111.l, v93.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v41, v89, v76
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v113.l, v38.h
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v91, v91
	v_mul_f32_e32 v36, v92, v36
	v_bfe_i32 v92, v35, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v112.l, v37.h
	v_mov_b16_e32 v94.l, v39.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v76, v40, v91
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v90.l, v36.h
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v91, 1, v113
	v_mov_b16_e32 v106.l, v41.h
	v_mov_b16_e32 v34.l, v76.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v40, v40, v92 :: v_dual_and_b32 v89, 1, v90
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v90, 1, v111
	v_cmp_o_f32_e64 s3, v36, v36
	v_and_b32_e32 v92, 1, v94
	v_add3_u32 v36, v36, v89, 0x7fff
	v_mov_b16_e32 v35.l, v40.h
	v_add3_u32 v89, v93, v90, 0x7fff
	v_and_b32_e32 v90, 1, v112
	v_cmp_o_f32_e64 s6, v38, v38
	v_add3_u32 v38, v38, v91, 0x7fff
	v_and_b32_e32 v91, 1, v106
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v35, 1, v35
	v_cmp_o_f32_e64 s5, v93, v93
	v_cmp_o_f32_e64 s7, v37, v37
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v37, v37, v90, 0x7fff
	v_add3_u32 v39, v39, v92, 0x7fff
	v_cmp_o_f32_e64 s9, v41, v41
	v_cmp_o_f32_e64 s10, v76, v76
	v_cmp_o_f32_e64 s11, v40, v40
	v_cndmask_b16 v89.l, 0x7fff, v36.h, s3
	v_add3_u32 v36, v41, v91, 0x7fff
	v_add3_u32 v34, v76, v34, 0x7fff
	v_add3_u32 v35, v40, v35, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s5
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s6
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s9
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s10
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s11
	ds_store_2addr_b32 v64, v89, v37 offset1:8
	ds_store_2addr_b32 v64, v36, v34 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v77
	ds_load_b128 v[34:37], v65
	ds_load_b128 v[105:108], v65 offset:512
	ds_load_b128 v[109:112], v77 offset:512
	ds_load_b128 v[113:116], v65 offset:1024
	.loc	1 816 23 is_stmt 1              ; attention.py:816:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[34:41], v[97:104], v[25:32]
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v34, v88
.Ltmp43:
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[97:104], v[17:24]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[105:108], v65 offset:1536
	ds_load_b128 v[117:120], v77 offset:1024
	ds_load_b128 v[109:112], v77 offset:1536
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v35, v124 :: v_dual_mov_b32 v76, v42
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v36, 0, v122, s12
	v_cndmask_b32_e64 v37, 0, v123, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v41, v88, v34 :: v_dual_mov_b32 v88, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v42, v124, v35 :: v_dual_fmac_f32 v41, v95, v36
.Ltmp48:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v42, v96, v37
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[97:104], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[97:104], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_and_b32_e32 v33, 0x80, v57
	v_and_b32_e32 v34, 4, v58
	v_add_nc_u32_e32 v35, 0, v60
	v_lshl_add_u32 v36, v56, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	v_add3_u32 v33, v35, v33, v34
	ds_store_b64 v36, v[41:42]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s10, 0x7ffffffe
	ds_load_b32 v33, v33
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v33, v33, v25
	v_div_scale_f32 v38, null, v33, v33, v27
	v_div_scale_f32 v36, null, v33, v33, v26
	v_div_scale_f32 v40, null, v33, v33, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v34
	v_rcp_f32_e32 v47, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v36
	v_div_scale_f32 v42, null, v33, v33, v29
	v_rcp_f32_e32 v48, v40
	v_div_scale_f32 v35, vcc_lo, v25, v33, v25
	v_rcp_f32_e32 v49, v42
	v_div_scale_f32 v39, s3, v27, v33, v27
	v_fma_f32 v57, -v34, v45, 1.0
	v_fma_f32 v59, -v38, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v58, -v36, v46, 1.0
	v_div_scale_f32 v37, s1, v26, v33, v26
	v_fma_f32 v60, -v40, v48, 1.0
	v_fmac_f32_e32 v45, v57, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v47, v59, v47 :: v_dual_fmac_f32 v46, v58, v46
	v_fma_f32 v61, -v42, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v60, v48
	v_mul_f32_e32 v58, v35, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v39, v47
	v_div_scale_f32 v41, s4, v28, v33, v28
	v_div_scale_f32 v43, null, v33, v33, v30
	v_mul_f32_e32 v59, v37, v46
	v_fma_f32 v64, -v38, v60, v39
	v_fmac_f32_e32 v49, v61, v49
	v_fma_f32 v61, -v34, v58, v35
	v_rcp_f32_e32 v52, v43
	v_fma_f32 v63, -v36, v59, v37
	v_mul_f32_e32 v62, v41, v48
	v_fmac_f32_e32 v60, v64, v47
	v_fmac_f32_e32 v58, v61, v45
	v_div_scale_f32 v50, s5, v29, v33, v29
	v_fmac_f32_e32 v59, v63, v46
	v_fma_f32 v65, -v40, v62, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v34, v58, v35
	v_fma_f32 v57, -v43, v52, 1.0
	v_div_scale_f32 v51, s6, v30, v33, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v62, v65, v48
	v_fma_f32 v35, -v36, v59, v37
	v_fma_f32 v36, -v38, v60, v39
	v_div_fmas_f32 v34, v34, v45, v58
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v52, v57, v52 :: v_dual_mul_f32 v57, v50, v49
	v_fma_f32 v37, -v40, v62, v41
	v_div_fmas_f32 v35, v35, v46, v59
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, null, v33, v33, v31
	v_div_fmas_f32 v36, v36, v47, v60
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v35, v33, v26
	v_div_fmas_f32 v35, v37, v48, v62
	v_fma_f32 v37, -v42, v57, v50
	v_mul_f32_e32 v38, v51, v52
	v_rcp_f32_e32 v56, v44
	v_div_fixup_f32 v25, v34, v33, v25
	v_div_fixup_f32 v28, v35, v33, v28
	v_fmac_f32_e32 v57, v37, v49
	v_fma_f32 v35, -v43, v38, v51
	v_div_scale_f32 v34, null, v33, v33, v32
	v_div_scale_f32 v48, null, v33, v33, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v38, v35, v52
	v_fma_f32 v41, -v42, v57, v50
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v40, v34
	v_fma_f32 v39, -v44, v56, 1.0
	v_fma_f32 v43, -v43, v38, v51
	v_div_fmas_f32 v41, v41, v49, v57
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v37, null, v33, v33, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v38, v43, v52, v38
	v_rcp_f32_e32 v43, v48
	v_div_fixup_f32 v27, v36, v33, v27
	v_div_scale_f32 v36, s3, v31, v33, v31
	v_rcp_f32_e32 v42, v37
	v_div_fixup_f32 v29, v41, v33, v29
	v_div_fixup_f32 v30, v38, v33, v30
	s_mov_b32 vcc_lo, s3
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v48, v43, 1.0
	v_fmac_f32_e32 v56, v39, v56
	v_fma_f32 v39, -v34, v40, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v47, -v37, v42, 1.0
	v_fmac_f32_e32 v43, v41, v43
	v_mul_f32_e32 v35, v36, v56
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, s4, v32, v33, v32
	v_fmac_f32_e32 v42, v47, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v44, v35, v36
	v_div_scale_f32 v47, s5, v17, v33, v17
	v_mul_f32_e32 v46, v39, v40
	v_div_scale_f32 v41, s3, v18, v33, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v45, v56 :: v_dual_mul_f32 v38, v47, v42
	v_fma_f32 v45, -v34, v46, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v44, v35, v36
	v_div_scale_f32 v44, null, v33, v33, v19
	v_fmac_f32_e32 v46, v45, v40
	v_div_scale_f32 v45, null, v33, v33, v20
	v_div_fmas_f32 v35, v36, v56, v35
	v_fma_f32 v36, -v37, v38, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v34, -v34, v46, v39
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v39, v44
	v_div_fixup_f32 v31, v35, v33, v31
	v_fmac_f32_e32 v38, v36, v42
	v_div_fmas_f32 v34, v34, v40, v46
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v36, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v32, v34, v33, v32
	v_fma_f32 v34, -v37, v38, v47
	v_div_scale_f32 v47, null, v33, v33, v21
	v_fma_f32 v46, -v44, v39, 1.0
	v_div_scale_f32 v37, s4, v19, v33, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v42, v38
	v_rcp_f32_e32 v38, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v46, v39
	v_fma_f32 v46, -v45, v36, 1.0
	v_div_scale_f32 v42, s5, v20, v33, v20
	v_div_fixup_f32 v17, v34, v33, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v33, v33, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v47, v38, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v27, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v49, v46
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v50, v38
	v_mul_f32_e32 v40, v41, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v48, v40, v41
	v_fmac_f32_e32 v40, v35, v43
	v_mul_f32_e32 v35, v37, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v48, v40, v41
	v_fma_f32 v41, -v44, v35, v37
	v_mul_f32_e32 v48, v42, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v43, v40
	v_fmac_f32_e32 v35, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v45, v48, v42
	v_fma_f32 v43, -v46, v49, 1.0
	v_div_scale_f32 v41, s3, v21, v33, v21
	v_div_fixup_f32 v18, v34, v33, v18
	v_fma_f32 v34, -v44, v35, v37
	v_dual_fmac_f32 v48, v40, v36 :: v_dual_fmac_f32 v49, v43, v49
	v_div_scale_f32 v43, null, v33, v33, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v41, v38
	v_div_scale_f32 v40, s6, v22, v33, v22
	v_div_fmas_f32 v34, v34, v39, v35
	v_fma_f32 v35, -v45, v48, v42
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v45, null, v33, v33, v24
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v39, -v47, v37, v41
	v_mul_f32_e32 v44, v40, v49
	v_div_fmas_f32 v35, v35, v36, v48
	v_rcp_f32_e32 v36, v45
	v_div_fixup_f32 v19, v34, v33, v19
	v_fmac_f32_e32 v37, v39, v38
	v_fma_f32 v39, -v46, v44, v40
	v_fma_f32 v48, -v43, v42, 1.0
	v_div_fixup_f32 v20, v35, v33, v20
	v_div_scale_f32 v35, s4, v23, v33, v23
	v_fma_f32 v34, -v47, v37, v41
	v_fmac_f32_e32 v44, v39, v49
	v_fmac_f32_e32 v42, v48, v42
	v_fma_f32 v39, -v45, v36, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v47, null, v33, v33, v10
	v_div_fmas_f32 v34, v34, v38, v37
	v_fma_f32 v37, -v46, v44, v40
	v_mul_f32_e32 v38, v35, v42
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, null, v33, v33, v9
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v40, s3, v24, v33, v24
	v_div_fmas_f32 v37, v37, v49, v44
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v44, -v43, v38, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v40, v36
	v_div_fixup_f32 v21, v34, v33, v21
	v_div_fixup_f32 v22, v37, v33, v22
	v_rcp_f32_e32 v37, v47
	v_fmac_f32_e32 v38, v44, v42
	v_fma_f32 v34, -v45, v46, v40
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v49, null, v33, v33, v12
	v_fma_f32 v44, -v39, v41, 1.0
	v_fma_f32 v35, -v43, v38, v35
	v_div_scale_f32 v43, null, v33, v33, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v46, v34, v36 :: v_dual_fmac_f32 v41, v44, v41
	v_fma_f32 v48, -v47, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v43
	v_div_fmas_f32 v35, v35, v42, v38
	v_fma_f32 v38, -v45, v46, v40
	v_div_scale_f32 v42, s4, v10, v33, v10
	v_fmac_f32_e32 v37, v48, v37
	v_div_scale_f32 v34, s5, v9, v33, v9
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v43, v44, 1.0
	v_mul_f32_e32 v50, v42, v37
	v_mul_f32_e32 v40, v34, v41
	v_div_fmas_f32 v36, v38, v36, v46
	v_div_fixup_f32 v23, v35, v33, v23
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s6, v11, v33, v11
	v_fma_f32 v38, -v47, v50, v42
	v_fma_f32 v48, -v39, v40, v34
	v_div_fixup_f32 v24, v36, v33, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v36, -v49, v51, 1.0
	v_fmac_f32_e32 v50, v38, v37
	v_div_scale_f32 v38, null, v33, v33, v13
	v_fma_f32 v35, -v43, v46, v45
	v_fmac_f32_e32 v40, v48, v41
	v_fmac_f32_e32 v51, v36, v51
	v_div_scale_f32 v36, s3, v12, v33, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v46, v35, v44
	v_rcp_f32_e32 v35, v38
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v47, v50, v42
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v40
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v40, v36, v51
	v_div_fmas_f32 v37, v39, v37, v50
	v_fma_f32 v39, -v43, v46, v45
	v_div_scale_f32 v41, null, v33, v33, v14
	v_fma_f32 v42, -v38, v35, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v34, v33, v9
	v_div_fmas_f32 v39, v39, v44, v46
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v49, v40, v36
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s4, v13, v33, v13
	v_div_fixup_f32 v10, v37, v33, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v51
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v42, v35
	v_div_fixup_f32 v11, v39, v33, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v43, 1.0
	v_fma_f32 v36, -v49, v40, v36
	v_div_scale_f32 v39, null, v33, v33, v15
	v_fma_f32 v44, -v38, v34, v42
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s5, v14, v33, v14
	v_div_fmas_f32 v36, v36, v51, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v44, v35
	v_rcp_f32_e32 v45, v39
	v_mul_f32_e32 v40, v37, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v12, v36, v33, v12
	v_fma_f32 v36, -v38, v34, v42
	v_div_scale_f32 v44, null, v33, v33, v16
	v_fma_f32 v38, -v41, v40, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v36, v35, v34
	v_div_scale_f32 v35, null, v33, v33, v1
	v_fma_f32 v42, -v39, v45, 1.0
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v40, v38, v43
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v36, s3, v15, v33, v15
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v33, v33, v2
	v_div_fixup_f32 v13, v34, v33, v13
	v_fma_f32 v37, -v41, v40, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v35, v38, 1.0
	v_mul_f32_e32 v41, v36, v45
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v46, v34, v46
	v_div_scale_f32 v34, s4, v16, v33, v16
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v33, v33, v3
	v_div_fmas_f32 v37, v37, v43, v40
	v_fma_f32 v40, -v39, v41, v36
	v_mul_f32_e32 v43, v34, v46
	v_div_scale_f32 v49, s5, v1, v33, v1
	v_fma_f32 v50, -v42, v48, 1.0
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	v_mul_f32_e32 v52, v49, v38
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s6, v2, v33, v2
	v_div_fixup_f32 v14, v37, v33, v14
	v_fma_f32 v36, -v39, v41, v36
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v44, v43, v34
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_fmac_f32_e32 v51, v40, v51
	v_div_scale_f32 v40, s3, v3, v33, v3
	v_div_fmas_f32 v36, v36, v45, v41
	v_div_scale_f32 v41, null, v33, v33, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_mul_f32_e32 v37, v40, v51
	v_div_fmas_f32 v34, v34, v46, v43
	v_rcp_f32_e32 v43, v41
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v36, v33, v15
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v16, v34, v33, v16
	v_div_fixup_f32 v1, v35, v33, v1
	v_div_scale_f32 v35, null, v33, v33, v5
	v_fmac_f32_e32 v37, v42, v51
	v_fma_f32 v36, -v41, v43, 1.0
	v_div_fmas_f32 v38, v38, v48, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v33, v33, v8
	v_fma_f32 v34, -v47, v37, v40
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v33, v33, v6
	v_div_fixup_f32 v2, v38, v33, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_div_scale_f32 v38, null, v33, v33, v7
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v39, vcc_lo, v4, v33, v4
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v3, v34, v33, v3
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v34, -v35, v37, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v48, -v41, v44, v39
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s3, v5, v33, v5
	v_fma_f32 v49, -v38, v42, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s4, v6, v33, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v34, v37
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s5, v7, v33, v7
	v_fma_f32 v51, -v45, v47, 1.0
	v_fmac_f32_e32 v44, v48, v43
	v_mul_f32_e32 v52, v46, v40
	v_fma_f32 v48, -v35, v50, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v56, v49, v42 :: v_dual_fmac_f32 v47, v51, v47
	v_div_scale_f32 v51, s6, v8, v33, v8
	v_fma_f32 v39, -v41, v44, v39
	v_fma_f32 v41, -v36, v52, v46
	v_fmac_f32_e32 v50, v48, v37
	v_fma_f32 v48, -v38, v56, v49
	v_mul_f32_e32 v57, v51, v47
	v_div_fmas_f32 v39, v39, v43, v44
	v_fmac_f32_e32 v52, v41, v40
	v_fma_f32 v34, -v35, v50, v34
	v_fmac_f32_e32 v56, v48, v42
	v_fma_f32 v35, -v45, v57, v51
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v36, v52, v46
	v_div_fmas_f32 v34, v34, v37, v50
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v57, v35, v47
	v_fma_f32 v35, -v38, v56, v49
	v_div_fmas_f32 v36, v36, v40, v52
	v_div_fixup_f32 v4, v39, v33, v4
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	v_bfe_u32 v40, v27, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v42, v56
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_add3_u32 v25, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_add3_u32 v26, v27, v40, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v38.h, s5
	v_bfe_u32 v38, v29, 16, 1
	v_bfe_u32 v39, v30, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v45, v57, v51
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v47, v57
	v_div_fixup_f32 v5, v34, v33, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_bfe_u32 v15, v2, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v36, v33, v6
	v_div_fixup_f32 v7, v35, v33, v7
	v_div_fixup_f32 v8, v37, v33, v8
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_cmp_o_f32_e64 s5, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
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
	v_lshrrev_b32_e32 v33, 1, v55
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v7, v17, v26, s0
	v_cndmask_b32_e64 v8, v26, v17, s0
	v_cndmask_b32_e64 v17, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v6, v25, v28, s0
	v_cndmask_b32_e64 v14, v29, v20, s0
	v_cndmask_b32_e64 v15, v19, v18, s0
	v_cndmask_b32_e64 v16, v18, v19, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v18, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v19, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v37, s37, v53
	.loc	1 843 74 is_stmt 0              ; attention.py:843:74
	v_or_b32_e32 v34, 16, v33
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v35, 32, v33
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_permlanex16_b32 v11, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v5, v28, v25, s0
	v_cndmask_b32_e64 v13, v20, v29, s0
	v_permlanex16_b32 v3, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v33
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s37, v34
	v_cmp_gt_i32_e64 s4, s37, v33
	v_cmp_gt_i32_e64 s1, s37, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v9, v11, v17, v0
	v_perm_b32 v10, v11, v17, v54
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v37, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v3, v5, v0
	v_perm_b32 v2, v3, v5, v54
	v_perm_b32 v3, v4, v7, v0
	v_perm_b32 v4, v4, v7, v54
	v_perm_b32 v5, v6, v13, v0
	v_perm_b32 v6, v6, v13, v54
	v_perm_b32 v7, v8, v15, v0
	v_perm_b32 v8, v8, v15, v54
	v_perm_b32 v11, v14, v12, v0
	v_perm_b32 v13, v16, v18, v0
	v_perm_b32 v15, v20, v19, v0
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v37, v33, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s37, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v12, v14, v12, v54
	v_perm_b32 v14, v16, v18, v54
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v37, v35, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v16, v20, v19, v54
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s0, s2, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v37, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[8:11], 0 offen
	buffer_store_b128 v[5:8], v17, s[8:11], 0 offen
	buffer_store_b128 v[9:12], v18, s[8:11], 0 offen
	buffer_store_b128 v[13:16], v19, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp49:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 125
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 125
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10016
; TotalNumSgprs: 54
; NumVgprs: 125
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 125
; Occupancy: 10
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     125
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
